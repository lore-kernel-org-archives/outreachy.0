X-GM-THRID: 10424448712704
X-Received: by 10.182.29.102 with SMTP id j6mr47317495obh.46.1427902641552;
        Wed, 01 Apr 2015 08:37:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.124.193 with SMTP id mk1ls1769511igb.1.canary; Wed, 01 Apr
 2015 08:37:21 -0700 (PDT)
X-Received: by 10.42.255.10 with SMTP id ng10mr72063163icb.18.1427902641340;
        Wed, 01 Apr 2015 08:37:21 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si259047pac.1.2015.04.01.08.37.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:37:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 701FB268;
	Wed,  1 Apr 2015 15:37:20 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:37:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc_sysfs: Replace
 printk(KERN_ERR ) with pr_err()
Message-ID: <20150401153717.GA881@kroah.com>
References: <1427758175-22003-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427758175-22003-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 31, 2015 at 02:29:35AM +0300, Ioana Ciornei wrote:
> Fix the following checkpatch warning:
> WARNING: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... 
> then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
> 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 2df889e..65551d1 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -75,7 +75,7 @@ void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	rc |= driver_create_file(driverfs, &driver_attr_maxboards);
>  	rc |= driver_create_file(driverfs, &driver_attr_pollrate);
>  	if (rc)
> -		printk(KERN_ERR "DGNC: sysfs driver_create_file failed!\n");
> +		pr_err("DGNC: sysfs driver_create_file failed!\n");

You have access to a struct device, so please use it here and use
dev_err().

Actually, no, what a mess, a driver shouldn't be creating files.  Ugh,
I'll take this, but this really needs to be fixed up and just removed...

thanks,

greg k-h

