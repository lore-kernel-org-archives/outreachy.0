X-GM-THRID: 9118866735104
X-Received: by 10.236.19.8 with SMTP id m8mr83816211yhm.53.1426773916053;
        Thu, 19 Mar 2015 07:05:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.186.100 with SMTP id fj4ls476048obc.39.gmail; Thu, 19 Mar
 2015 07:05:15 -0700 (PDT)
X-Received: by 10.182.44.161 with SMTP id f1mr86541413obm.33.1426773915771;
        Thu, 19 Mar 2015 07:05:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si272773pac.0.2015.03.19.07.05.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 07:05:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C97A2AC4;
	Thu, 19 Mar 2015 14:05:14 +0000 (UTC)
Date: Thu, 19 Mar 2015 15:05:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: adc: Call uninitialized_var for
 raw_sample
Message-ID: <20150319140511.GA7046@kroah.com>
References: <1426772061-20753-1-git-send-email-darshanapadmadas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426772061-20753-1-git-send-email-darshanapadmadas@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 19, 2015 at 07:04:21PM +0530, Darshana Padmadas wrote:
> This patch calls uninitialized_var function for uninitialized
> variable raw_sample. This error was reported by the static
> analysis tool, cppcheck.
> 
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/iio/adc/ad_sigma_delta.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
> index d10bd0c..f0bbf3c 100644
> --- a/drivers/iio/adc/ad_sigma_delta.c
> +++ b/drivers/iio/adc/ad_sigma_delta.c
> @@ -248,7 +248,8 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
>  	const struct iio_chan_spec *chan, int *val)
>  {
>  	struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);
> -	unsigned int sample, raw_sample;
> +	unsigned int sample;
> +	unsigned int uninitialized_var(raw_sample);

I don't understand, what exactly is this "fixing"?

And note, cppcheck is known to give you lots of false warnings / errors,
be very careful when using it.  Some kernel developers refuse to take
patches that mention it given that it has been wrong so many times in
the past.

thanks,

greg k-h

