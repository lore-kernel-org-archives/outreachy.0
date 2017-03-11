X-GM-THRID: 6396079372840730624
X-Received: by 10.25.40.17 with SMTP id o17mr3386847lfo.25.1489257581135;
        Sat, 11 Mar 2017 10:39:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls1331818ljd.21.gmail; Sat, 11 Mar
 2017 10:39:40 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr4145329lje.3.1489257580851;
        Sat, 11 Mar 2017 10:39:40 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id 82si300439wmg.3.2017.03.11.10.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:39:40 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 397874060C;
	Sat, 11 Mar 2017 18:39:40 +0000 (GMT)
Subject: Re: [PATCH v1 03/10] staging: iio: cdc: ad7746: Remove exceptional &
 on function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-4-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <ce2f8b03-25dd-31d8-65c3-832613092022@kernel.org>
Date: Sat, 11 Mar 2017 18:39:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-4-git-send-email-singhalsimran0@gmail.com>
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

It's a little unobvious that other function pointers in this
one don't have the & as they are only used via macros.

However, I'm in general in favour of the change so don't
really care that much!

Jonathan
> ---
>  drivers/staging/iio/cdc/ad7746.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 81f8b9e..6294de7 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -664,8 +664,8 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
>  
>  static const struct iio_info ad7746_info = {
>  	.attrs = &ad7746_attribute_group,
> -	.read_raw = &ad7746_read_raw,
> -	.write_raw = &ad7746_write_raw,
> +	.read_raw = ad7746_read_raw,
> +	.write_raw = ad7746_write_raw,
>  	.driver_module = THIS_MODULE,
>  };
>  
> 


