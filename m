X-GM-THRID: 6396079372840730624
X-Received: by 10.46.82.157 with SMTP id n29mr4422272lje.29.1489257904406;
        Sat, 11 Mar 2017 10:45:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.84 with SMTP id x20ls1216762ljd.47.gmail; Sat, 11 Mar
 2017 10:45:03 -0800 (PST)
X-Received: by 10.25.201.198 with SMTP id z189mr3406351lff.15.1489257903940;
        Sat, 11 Mar 2017 10:45:03 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id e72si282554wma.0.2017.03.11.10.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:45:03 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 11C474060C;
	Sat, 11 Mar 2017 18:45:03 +0000 (GMT)
Subject: Re: [PATCH v1 09/10] staging: iio: resolver: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-10-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <f20cc799-fba7-84b2-b271-9620c370ace7@kernel.org>
Date: Sat, 11 Mar 2017 18:45:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-10-git-send-email-singhalsimran0@gmail.com>
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
Given there aren't any other functional pointers in some the ad2s90
I have amended the patch title to reflect that we are changing
this to have consistency across drivers in the wider subsystem.

Far as I'm concerned, it's nice to tidy up.  I'm not (currently)
advocating a tree wide sweep for these as the churn would be excessive
but it's not a bad thing to do in the staging drivers in my opinion!

Thanks,

Jonathan
> ---
>  drivers/staging/iio/resolver/ad2s1200.c | 2 +-
>  drivers/staging/iio/resolver/ad2s90.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/resolver/ad2s1200.c b/drivers/staging/iio/resolver/ad2s1200.c
> index 82b2d88..a37e199 100644
> --- a/drivers/staging/iio/resolver/ad2s1200.c
> +++ b/drivers/staging/iio/resolver/ad2s1200.c
> @@ -97,7 +97,7 @@ static const struct iio_chan_spec ad2s1200_channels[] = {
>  };
>  
>  static const struct iio_info ad2s1200_info = {
> -	.read_raw = &ad2s1200_read_raw,
> +	.read_raw = ad2s1200_read_raw,
>  	.driver_module = THIS_MODULE,
>  };
>  
> diff --git a/drivers/staging/iio/resolver/ad2s90.c b/drivers/staging/iio/resolver/ad2s90.c
> index 5b1c0db..b227090 100644
> --- a/drivers/staging/iio/resolver/ad2s90.c
> +++ b/drivers/staging/iio/resolver/ad2s90.c
> @@ -47,7 +47,7 @@ static int ad2s90_read_raw(struct iio_dev *indio_dev,
>  }
>  
>  static const struct iio_info ad2s90_info = {
> -	.read_raw = &ad2s90_read_raw,
> +	.read_raw = ad2s90_read_raw,
>  	.driver_module = THIS_MODULE,
>  };
>  
> 


