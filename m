X-GM-THRID: 8004958158848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5487500d72398ce3
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.135.194 with SMTP id ih2mr56086086icc.7.1426519154911;
        Mon, 16 Mar 2015 08:19:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.95 with SMTP id l92ls1776282iod.83.gmail; Mon, 16 Mar
 2015 08:19:14 -0700 (PDT)
X-Received: by 10.66.65.165 with SMTP id y5mr62322248pas.43.1426519154707;
        Mon, 16 Mar 2015 08:19:14 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1980724pdb.1.2015.03.16.08.19.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:19:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CD297AAE;
	Mon, 16 Mar 2015 15:19:13 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:19:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Compile driver as a
 module
Message-ID: <20150316151911.GB20416@kroah.com>
References: <1426193381-9039-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426193381-9039-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 09:49:41PM +0100, Ksenija Stanojevic wrote:
> This patch changes Kconfig file so that driver could be compiled as
> a module. Changes have also been made in TODO list by removing this
> task.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/media/omap4iss/Kconfig | 2 +-
>  drivers/staging/media/omap4iss/TODO    | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/Kconfig b/drivers/staging/media/omap4iss/Kconfig
> index b78643f..32403cc 100644
> --- a/drivers/staging/media/omap4iss/Kconfig
> +++ b/drivers/staging/media/omap4iss/Kconfig
> @@ -1,5 +1,5 @@
>  config VIDEO_OMAP4
> -	bool "OMAP 4 Camera support"
> +	tristate "OMAP 4 Camera support"
>  	depends on VIDEO_V4L2=y && VIDEO_V4L2_SUBDEV_API && I2C=y && ARCH_OMAP4
>  	depends on HAS_DMA
>  	select VIDEOBUF2_DMA_CONTIG
> diff --git a/drivers/staging/media/omap4iss/TODO b/drivers/staging/media/omap4iss/TODO
> index fcde888..4d220ef 100644
> --- a/drivers/staging/media/omap4iss/TODO
> +++ b/drivers/staging/media/omap4iss/TODO
> @@ -1,4 +1,3 @@
> -* Make the driver compile as a module
>  * Fix FIFO/buffer overflows and underflows
>  * Replace dummy resizer code with a real implementation
>  * Fix checkpatch errors and warnings

How did you test that this worked?  Did you cross-build for the omap
platform?

thanks,

greg k-h

