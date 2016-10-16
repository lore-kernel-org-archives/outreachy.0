X-GM-THRID: 6342042153586262016
X-Received: by 10.200.40.189 with SMTP id i58mr5537160qti.76.1476632153379;
        Sun, 16 Oct 2016 08:35:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls12181828otb.23.gmail; Sun, 16 Oct
 2016 08:35:53 -0700 (PDT)
X-Received: by 10.157.57.194 with SMTP id y60mr5605069otb.113.1476632153003;
        Sun, 16 Oct 2016 08:35:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z76si4119907pff.1.2016.10.16.08.35.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 08:35:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.162.138.181])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 69CC325A;
	Sun, 16 Oct 2016 15:35:52 +0000 (UTC)
Date: Sun, 16 Oct 2016 17:09:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Siddhi Dave <d.sandy5990@gmail.com>
Cc: lidza.louina@gmail.com, markh@compro.net,
	driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: dgnc: Clean up Macros
Message-ID: <20161016150939.GA7287@kroah.com>
References: <20161016124231.GA18162@siddhi-home-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161016124231.GA18162@siddhi-home-laptop>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Sun, Oct 16, 2016 at 06:12:32PM +0530, Siddhi Dave wrote:
> Fix checkpatch warning: Macros with flow control statements should be avoided
> 
> Because Macros with flow control statements (goto and return) are
> not very nice to read as any flow movement is unexpected.
> 
> Signed-off-by: Siddhi Dave <d.sandy5990@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 290bf6e..0767740 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -90,16 +90,16 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	driver_remove_file(driverfs, &driver_attr_pollrate);
>  }
>  
> -#define DGNC_VERIFY_BOARD(p, bd)				\
> -	do {							\
> -		if (!p)						\
> -			return 0;				\
> -								\
> -		bd = dev_get_drvdata(p);			\
> -		if (!bd || bd->magic != DGNC_BOARD_MAGIC)	\
> -			return 0;				\
> -		if (bd->state != BOARD_READY)			\
> -			return 0;				\
> +#define DGNC_VERIFY_BOARD(p, bd)
> +do {
> +	if (!p)
> +		return 0;
> +
> +		bd = dev_get_drvdata(p);
> +		if (!bd || bd->magic != DGNC_BOARD_MAGIC)
> +			return 0;
> +		if (bd->state != BOARD_READY)
> +			return 0;
>  	} while (0)
>  
>  static ssize_t vpd_show(struct device *p, struct device_attribute *attr,

You didn't test-build this code, why not?

Also, please see the archives for why this type of change is not going
to be correct and I can't take it.

And finally, you sent 3 copies of this, why?

thanks,

greg k-h

