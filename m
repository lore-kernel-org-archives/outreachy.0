X-GM-THRID: 6335442483781042176
X-Received: by 10.107.9.139 with SMTP id 11mr3495891ioj.3.1475422839450;
        Sun, 02 Oct 2016 08:40:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls9293343otj.21.gmail; Sun, 02 Oct
 2016 08:40:39 -0700 (PDT)
X-Received: by 10.31.180.71 with SMTP id d68mr4544692vkf.3.1475422839150;
        Sun, 02 Oct 2016 08:40:39 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 128si977056pfz.2.2016.10.02.08.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 73F1892;
	Sun,  2 Oct 2016 15:40:38 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:40:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: jic23@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 ] staging: iio: cdc: ad7150: add comment to mutex
Message-ID: <20161002154039.GB21118@kroah.com>
References: <20161002153424.GA4211@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002153424.GA4211@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 09:04:43PM +0530, Anchal Jain wrote:
> Add a comment in mutex to explain what the mutex is work here.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index f6b9a10..13709bf 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -78,7 +78,7 @@ struct ad7150_chip_info {
>  	u8 mag_timeout[2][2];
>  	int old_state;
>  	char *conversion_mode;
> -	struct mutex state_lock;
> +	struct mutex state_lock; /* protect hardware state */

I think I need to just not take any of these types of patches, as it's
not exactly a good thing for someone who does not understand the driver
to be able to fix up.

Just ignore these warnings for now please.

thanks,

greg k-h

