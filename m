X-GM-THRID: 6200017795364683776
X-Received: by 10.31.3.93 with SMTP id 90mr24809241vkd.0.1443555488143;
        Tue, 29 Sep 2015 12:38:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.228 with SMTP id v91ls3482310qgd.33.gmail; Tue, 29 Sep
 2015 12:38:07 -0700 (PDT)
X-Received: by 10.140.235.131 with SMTP id g125mr24802474qhc.4.1443555487606;
        Tue, 29 Sep 2015 12:38:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si2660799ywe.3.2015.09.29.12.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.161])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1AD321154;
	Tue, 29 Sep 2015 19:38:05 +0000 (UTC)
Date: Tue, 29 Sep 2015 21:38:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtbt:  show() methods
 should use scnprintf()
Message-ID: <20150929193803.GA23361@kroah.com>
References: <1443554123-15360-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443554123-15360-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 09:15:23PM +0200, Ksenija Stanojevic wrote:
> snprintf() may return a value that exceeds its second argument,
> show() methods should use scnprintf() instead of snprintf().
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 8d8bd12..36a1f4e 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -198,7 +198,7 @@ static ssize_t show_debug(struct device *device,
>  	struct fb_info *fb_info = dev_get_drvdata(device);
>  	struct fbtft_par *par = fb_info->par;
>  
> -	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
> +	return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);

They should?  Why?  This shouldn't be needed at all, and really, a
simple sprintf() is all that is necessary.  I would just leave this
alone, it's fine as-is.

thanks,

greg k-h

