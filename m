X-GM-THRID: 6396079372840730624
X-Received: by 10.46.83.76 with SMTP id t12mr4622446ljd.26.1489257663186;
        Sat, 11 Mar 2017 10:41:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls1262793ljn.46.gmail; Sat, 11 Mar 2017
 10:41:02 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr4222172lja.13.1489257662915;
        Sat, 11 Mar 2017 10:41:02 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id b186si267002wme.1.2017.03.11.10.41.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 10:41:02 -0800 (PST)
Received-SPF: neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 178.18.118.26 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 49C004060C;
	Sat, 11 Mar 2017 18:41:02 +0000 (GMT)
Subject: Re: [PATCH v1 06/10] staging: iio: adis16201: Remove exceptional & on
 function name
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
 <1489242404-12352-7-git-send-email-singhalsimran0@gmail.com>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de,
 gregkh@linuxfoundation.org, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <f881fc7d-1e68-c874-8d14-40184aa3bf99@kernel.org>
Date: Sat, 11 Mar 2017 18:41:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1489242404-12352-7-git-send-email-singhalsimran0@gmail.com>
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
>  drivers/staging/iio/accel/adis16201.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
> index d6c8658..7565268 100644
> --- a/drivers/staging/iio/accel/adis16201.c
> +++ b/drivers/staging/iio/accel/adis16201.c
> @@ -285,8 +285,8 @@ static const struct iio_chan_spec adis16201_channels[] = {
>  };
>  
>  static const struct iio_info adis16201_info = {
> -	.read_raw = &adis16201_read_raw,
> -	.write_raw = &adis16201_write_raw,
> +	.read_raw = adis16201_read_raw,
> +	.write_raw = adis16201_write_raw,
>  	.update_scan_mode = adis_update_scan_mode,
>  	.driver_module = THIS_MODULE,
>  };
> 


