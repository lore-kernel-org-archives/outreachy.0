X-GM-THRID: 6396079372840730624
X-Received: by 10.46.22.86 with SMTP id 22mr448537ljw.9.1489257687868;
        Sat, 11 Mar 2017 10:41:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls1333226ljb.9.gmail; Sat, 11 Mar 2017
 10:41:27 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr4120230ljb.2.1489257687477;
        Sat, 11 Mar 2017 10:41:27 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id p144si260950wme.2.2017.03.11.10.41.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:41:27 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 069124060C;
	Sat, 11 Mar 2017 18:41:26 +0000 (GMT)
Subject: Re: [PATCH v1 07/10] staging: iio: adis16209: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-8-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <107c9ab5-7ad2-9306-3fe3-403e326e7a47@kernel.org>
Date: Sat, 11 Mar 2017 18:41:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-8-git-send-email-singhalsimran0@gmail.com>
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
>  drivers/staging/iio/accel/adis16209.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
> index 8ff537f..56bc2ac 100644
> --- a/drivers/staging/iio/accel/adis16209.c
> +++ b/drivers/staging/iio/accel/adis16209.c
> @@ -285,8 +285,8 @@ static const struct iio_chan_spec adis16209_channels[] = {
>  };
>  
>  static const struct iio_info adis16209_info = {
> -	.read_raw = &adis16209_read_raw,
> -	.write_raw = &adis16209_write_raw,
> +	.read_raw = adis16209_read_raw,
> +	.write_raw = adis16209_write_raw,
>  	.update_scan_mode = adis_update_scan_mode,
>  	.driver_module = THIS_MODULE,
>  };
> 


