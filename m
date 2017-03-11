X-GM-THRID: 6396079372840730624
X-Received: by 10.25.215.37 with SMTP id o37mr3392110lfg.20.1489257394125;
        Sat, 11 Mar 2017 10:36:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.28 with SMTP id s28ls598210ljd.22.gmail; Sat, 11 Mar
 2017 10:36:33 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr3379407lfi.2.1489257393616;
        Sat, 11 Mar 2017 10:36:33 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id i76si268760wmh.1.2017.03.11.10.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:36:33 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id E98974060C;
	Sat, 11 Mar 2017 18:36:32 +0000 (GMT)
Subject: Re: [PATCH v1 01/10] staging: iio: ad7192: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-2-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <a23128c1-a303-4c2a-5440-01cf5e3e0913@kernel.org>
Date: Sat, 11 Mar 2017 18:36:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-2-git-send-email-singhalsimran0@gmail.com>
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
Applied to the togreg branch of iio.git and pushed out as
testing for the autobuilders to play with it.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/adc/ad7192.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 4fc8588..d11c6de 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -564,18 +564,18 @@ static int ad7192_write_raw_get_fmt(struct iio_dev *indio_dev,
>  }
>  
>  static const struct iio_info ad7192_info = {
> -	.read_raw = &ad7192_read_raw,
> -	.write_raw = &ad7192_write_raw,
> -	.write_raw_get_fmt = &ad7192_write_raw_get_fmt,
> +	.read_raw = ad7192_read_raw,
> +	.write_raw = ad7192_write_raw,
> +	.write_raw_get_fmt = ad7192_write_raw_get_fmt,
>  	.attrs = &ad7192_attribute_group,
>  	.validate_trigger = ad_sd_validate_trigger,
>  	.driver_module = THIS_MODULE,
>  };
>  
>  static const struct iio_info ad7195_info = {
> -	.read_raw = &ad7192_read_raw,
> -	.write_raw = &ad7192_write_raw,
> -	.write_raw_get_fmt = &ad7192_write_raw_get_fmt,
> +	.read_raw = ad7192_read_raw,
> +	.write_raw = ad7192_write_raw,
> +	.write_raw_get_fmt = ad7192_write_raw_get_fmt,
>  	.attrs = &ad7195_attribute_group,
>  	.validate_trigger = ad_sd_validate_trigger,
>  	.driver_module = THIS_MODULE,
> 


