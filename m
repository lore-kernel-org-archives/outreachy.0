X-GM-THRID: 6396079372840730624
X-Received: by 10.46.15.2 with SMTP id 2mr4231818ljp.31.1489257638898;
        Sat, 11 Mar 2017 10:40:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls1329705ljd.11.gmail; Sat, 11 Mar
 2017 10:40:38 -0800 (PST)
X-Received: by 10.46.21.28 with SMTP id s28mr2144059ljd.14.1489257638475;
        Sat, 11 Mar 2017 10:40:38 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id t131si244726wmf.1.2017.03.11.10.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:40:38 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id F33C14060C;
	Sat, 11 Mar 2017 18:40:37 +0000 (GMT)
Subject: Re: [PATCH v1 05/10] staging: iio: adis16240: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-6-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <fdcffdf9-7f70-6c49-9a82-2effae0d752d@kernel.org>
Date: Sat, 11 Mar 2017 18:40:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-6-git-send-email-singhalsimran0@gmail.com>
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
> ---
>  drivers/staging/iio/accel/adis16240.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 27d7f6a..37a29dc 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -373,8 +373,8 @@ static const struct attribute_group adis16240_attribute_group = {
>  
>  static const struct iio_info adis16240_info = {
>  	.attrs = &adis16240_attribute_group,
> -	.read_raw = &adis16240_read_raw,
> -	.write_raw = &adis16240_write_raw,
> +	.read_raw = adis16240_read_raw,
> +	.write_raw = adis16240_write_raw,
>  	.update_scan_mode = adis_update_scan_mode,
>  	.driver_module = THIS_MODULE,
>  };
> 


