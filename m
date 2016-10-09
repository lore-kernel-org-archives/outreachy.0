X-GM-THRID: 6337746804060192768
X-Received: by 10.66.154.17 with SMTP id vk17mr6197043pab.173.1476023826805;
        Sun, 09 Oct 2016 07:37:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.85 with SMTP id p79ls8183877ota.25.gmail; Sun, 09 Oct
 2016 07:37:06 -0700 (PDT)
X-Received: by 10.129.145.149 with SMTP id i143mr4681768ywg.55.1476023826462;
        Sun, 09 Oct 2016 07:37:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3726624pfw.0.2016.10.09.07.37.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:37:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB7987AA;
	Sun,  9 Oct 2016 14:37:05 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:37:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161009143713.GB11086@kroah.com>
References: <20161009014024.GA30473@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009014024.GA30473@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 08, 2016 at 10:40:24PM -0300, Elise Lennion wrote:
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
>  drivers/staging/sm750fb/ddk750_help.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
> index 9637dd3..e72a29c 100644
> --- a/drivers/staging/sm750fb/ddk750_help.c
> +++ b/drivers/staging/sm750fb/ddk750_help.c
> @@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
>  	devId750 = devId;
>  	revId750 = revId;
>  	if (revId == 0xfe)
> -		printk("found sm750le\n");
> +		pr_info("found sm750le\n");
>  }

In looking at this further, this is a horrid function.  And it's not
even needed to be in a separate file.  Please merge it into the
ddk750_chip.c, which will allow you to make the variables in this file
static at the same time.

I'll take this patch now, but future cleanups would be great.

thanks,

greg k-h

