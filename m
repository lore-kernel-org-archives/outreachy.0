X-GM-THRID: 6337746804060192768
X-Received: by 10.200.50.52 with SMTP id x49mr2125307qta.45.1475813030687;
        Thu, 06 Oct 2016 21:03:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls4882866otb.23.gmail; Thu, 06 Oct
 2016 21:03:50 -0700 (PDT)
X-Received: by 10.13.246.67 with SMTP id g64mr19754ywf.39.1475813030326;
        Thu, 06 Oct 2016 21:03:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si5481701par.0.2016.10.06.21.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:03:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.38])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8FF9D7AA;
	Fri,  7 Oct 2016 04:03:49 +0000 (UTC)
Date: Thu, 6 Oct 2016 14:48:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161006124826.GA14551@kroah.com>
References: <20161005205247.GA8857@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161005205247.GA8857@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Oct 05, 2016 at 05:52:47PM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: printk() should include KERN_ facility level
> 
> New checkpatch warning appears after including KERN_ facility level.
> 
> Fix checkpatch warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
> 
> v2: Fixed new checkpatch warning noted by Julia Lawall <julia.lawall@lip6.fr>
> Reworked to use pr_info() instead of printk()
> 
>  drivers/staging/sm750fb/ddk750_help.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..475a943 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,5 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		pr_info("found sm750le\n");
>  }
> -
> -

Why are you deleting these extra lines?

And why can't you use dev_info() here instead of pr_info()?

thanks,

greg k-h

