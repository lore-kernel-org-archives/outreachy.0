X-GM-THRID: 6208116032868974592
X-Received: by 10.50.79.234 with SMTP id m10mr10894474igx.5.1445762140891;
        Sun, 25 Oct 2015 01:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.234 with SMTP id z10ls1405416obl.91.gmail; Sun, 25 Oct
 2015 01:35:40 -0700 (PDT)
X-Received: by 10.182.181.3 with SMTP id ds3mr24944158obc.5.1445762140605;
        Sun, 25 Oct 2015 01:35:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si1678406pab.0.2015.10.25.01.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7374B67;
	Sun, 25 Oct 2015 08:35:38 +0000 (UTC)
Date: Sat, 24 Oct 2015 19:36:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Fix endian sparse
 warnings
Message-ID: <20151025023656.GA4565@kroah.com>
References: <20151021150043.GA2840@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151021150043.GA2840@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 21, 2015 at 08:30:44PM +0530, Amitoj Kaur Chawla wrote:
> Fix a bug found using sparse which generates the following warnings:
> 
> drivers/staging/fbtft/fbtft-io.c:78:29: warning: incorrect type in
> assignment (different base types)
> drivers/staging/fbtft/fbtft-io.c:78:29: expected unsigned long long
> [unsigned] [long] [long long] [usertype] <noident>
> drivers/staging/fbtft/fbtft-io.c:78:29: got restricted __be64
> [usertype] <noident>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-io.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
> index a6f091f..a9a46c2 100644
> --- a/drivers/staging/fbtft/fbtft-io.c
> +++ b/drivers/staging/fbtft/fbtft-io.c
> @@ -75,7 +75,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
>  			src++;
>  		}
>  		tmp |= ((*src & 0x0100) ? 1 : 0);
> -		*(u64 *)dst = cpu_to_be64(tmp);
> +		*(__be64 *)dst = cpu_to_be64(tmp);

Are you sure this is correct?  Why isn't dst declared as be64 to start
with?  And don't use the __ form of variables unless they are crossing
the user/kernel boundry in a structure somehow.

thanks,

greg k-h

