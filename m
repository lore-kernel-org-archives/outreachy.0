X-GM-THRID: 6392835608825298944
X-Received: by 10.176.74.12 with SMTP id q12mr3114764uae.41.1488461969621;
        Thu, 02 Mar 2017 05:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls5417345oth.10.gmail; Thu, 02 Mar
 2017 05:39:29 -0800 (PST)
X-Received: by 10.13.214.15 with SMTP id y15mr4966835ywd.100.1488461969263;
        Thu, 02 Mar 2017 05:39:29 -0800 (PST)
Received: by 10.55.163.6 with SMTP id m6msqke;
        Thu, 2 Mar 2017 05:26:42 -0800 (PST)
X-Received: by 10.25.39.85 with SMTP id n82mr93722lfn.10.1488461202499;
        Thu, 02 Mar 2017 05:26:42 -0800 (PST)
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id 14si768234wmn.2.2017.03.02.05.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 05:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:50869 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1cjQkj-00046x-CZ; Thu, 02 Mar 2017 14:26:41 +0100
Subject: Re: [PATCH v2 4/6] staging: fbtft: Fix sparse warnings of incorrect
 type in assignment
To: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org
References: <20170302130459.GA31856@singhal-Inspiron-5558>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 sergio.paracuellos@gmail.com, juliana.orod@gmail.com,
 thomas.petazzoni@free-electrons.com, outreachy-kernel@googlegroups.com
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <fe8d6a85-3d4e-8019-937b-22389b942da3@tronnes.org>
Date: Thu, 2 Mar 2017 14:26:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170302130459.GA31856@singhal-Inspiron-5558>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Den 02.03.2017 14.04, skrev simran singhal:
> This patch fixes the following sparse warnings:
>
> drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in assignment (different base types)
> drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [unsigned] [short] [usertype] <noident>
> drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [usertype] <noident>
>
> drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
> drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
> drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>   
>   v2:
>     -changed commit message
>
>   drivers/staging/fbtft/fbtft-bus.c | 2 +-
>   drivers/staging/fbtft/fbtft-io.c  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
> index ec45043..df2223e 100644
> --- a/drivers/staging/fbtft/fbtft-bus.c
> +++ b/drivers/staging/fbtft/fbtft-bus.c
> @@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
>   						to_copy, remain - to_copy);
>   
>   		for (i = 0; i < to_copy; i++)
> -			txbuf16[i] = cpu_to_be16(vmem16[i]);
> +			txbuf16[i] = vmem16[i];
>   

This change breaks functionality on little endian machines like
the Raspberry Pi.


Noralf.

>   		vmem16 = vmem16 + to_copy;
>   		ret = par->fbtftops.write(par, par->txbuf.buf,
> diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
> index d868405..ffb9a3b 100644
> --- a/drivers/staging/fbtft/fbtft-io.c
> +++ b/drivers/staging/fbtft/fbtft-io.c
> @@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
>   			src++;
>   		}
>   		tmp |= ((*src & 0x0100) ? 1 : 0);
> -		*(u64 *)dst = cpu_to_be64(tmp);
> +		*(__be64 *)dst = cpu_to_be64(tmp);
>   		dst += 8;
>   		*dst++ = (u8)(*src++ & 0x00FF);
>   		added++;


