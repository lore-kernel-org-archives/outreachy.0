X-GM-THRID: 6396079372840730624
X-Received: by 10.25.56.6 with SMTP id f6mr3663756lfa.4.1489257610493;
        Sat, 11 Mar 2017 10:40:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls1323807ljf.39.gmail; Sat, 11 Mar
 2017 10:40:10 -0800 (PST)
X-Received: by 10.46.21.79 with SMTP id 15mr1883121ljv.8.1489257610163;
        Sat, 11 Mar 2017 10:40:10 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id f7si281970wmg.3.2017.03.11.10.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:40:10 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id AC9564060C;
	Sat, 11 Mar 2017 18:40:09 +0000 (GMT)
Subject: Re: [PATCH v1 04/10] staging: iio: cdc: ad7152: Remove exceptional &
 on function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-5-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <7c2e327d-a060-cbb3-ed22-388593729657@kernel.org>
Date: Sat, 11 Mar 2017 18:40:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-5-git-send-email-singhalsimran0@gmail.com>
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
>  drivers/staging/iio/cdc/ad7152.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
> index e8609b8..59ef93c 100644
> --- a/drivers/staging/iio/cdc/ad7152.c
> +++ b/drivers/staging/iio/cdc/ad7152.c
> @@ -441,9 +441,9 @@ static int ad7152_write_raw_get_fmt(struct iio_dev *indio_dev,
>  
>  static const struct iio_info ad7152_info = {
>  	.attrs = &ad7152_attribute_group,
> -	.read_raw = &ad7152_read_raw,
> -	.write_raw = &ad7152_write_raw,
> -	.write_raw_get_fmt = &ad7152_write_raw_get_fmt,
> +	.read_raw = ad7152_read_raw,
> +	.write_raw = ad7152_write_raw,
> +	.write_raw_get_fmt = ad7152_write_raw_get_fmt,
>  	.driver_module = THIS_MODULE,
>  };
>  
> 


