X-GM-THRID: 6396079372840730624
X-Received: by 10.46.5.136 with SMTP id 130mr4091979ljf.6.1489258108662;
        Sat, 11 Mar 2017 10:48:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls1330376ljd.11.gmail; Sat, 11 Mar
 2017 10:48:28 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr3275570lfa.5.1489258108280;
        Sat, 11 Mar 2017 10:48:28 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id e72si283172wma.0.2017.03.11.10.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:48:28 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 53AE64060C;
	Sat, 11 Mar 2017 18:48:27 +0000 (GMT)
Subject: Re: [PATCH v1 10/10] staging: iio: gyro: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-11-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <563954e3-76f4-d563-1328-3525d15ffdff@kernel.org>
Date: Sat, 11 Mar 2017 18:48:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-11-git-send-email-singhalsimran0@gmail.com>
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
Again, I couldn't identify any other function pointers in this file
so have amended the patch description to reflect that.

I also added a note that will hopefully prevent anyone seeing
this patch deciding to send me the several hundred patches it
'might' - I haven't checked - take to clean up the whole subsystem.

Thanks for the whole series.

Applied to the togreg branhc of iio.git and pushed out as testing.

Jonathan
> ---
>  drivers/staging/iio/gyro/adis16060_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> index ab816a2..c9d46e7 100644
> --- a/drivers/staging/iio/gyro/adis16060_core.c
> +++ b/drivers/staging/iio/gyro/adis16060_core.c
> @@ -117,7 +117,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
>  }
>  
>  static const struct iio_info adis16060_info = {
> -	.read_raw = &adis16060_read_raw,
> +	.read_raw = adis16060_read_raw,
>  	.driver_module = THIS_MODULE,
>  };
>  
> 


