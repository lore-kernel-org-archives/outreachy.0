X-GM-THRID: 6396079372840730624
X-Received: by 10.46.83.7 with SMTP id h7mr4567890ljb.24.1489257431636;
        Sat, 11 Mar 2017 10:37:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls1254602ljt.24.gmail; Sat, 11 Mar
 2017 10:37:11 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr4230902ljp.31.1489257431174;
        Sat, 11 Mar 2017 10:37:11 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id 82si299978wmg.3.2017.03.11.10.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:37:11 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id B37784063D;
	Sat, 11 Mar 2017 18:37:10 +0000 (GMT)
Subject: Re: [PATCH v1 02/10] staging: iio: ad7780: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-3-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <3ba0e7e7-c0a2-9614-37dd-aaf184383148@kernel.org>
Date: Sat, 11 Mar 2017 18:37:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-3-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/03/17 14:26, simran singhal wrote:
> Remove & from function pointers to conform to the style found elsewhere
> in the file.  Done using the following semantic patch
> 
> // <smpl>
> @r@
> identifier f;
> @@
> 
> f(...) { ... }
> @@
> identifier r.f;
> @@
> 
> - &f
> + f
> // </smpl>
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
Applied.

Thanks,
> ---
>  drivers/staging/iio/adc/ad7780.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
> index e149600..dec3ba6 100644
> --- a/drivers/staging/iio/adc/ad7780.c
> +++ b/drivers/staging/iio/adc/ad7780.c
> @@ -154,7 +154,7 @@ static const struct ad7780_chip_info ad7780_chip_info_tbl[] = {
>  };
>  
>  static const struct iio_info ad7780_info = {
> -	.read_raw = &ad7780_read_raw,
> +	.read_raw = ad7780_read_raw,
>  	.driver_module = THIS_MODULE,
>  };
>  
> 


