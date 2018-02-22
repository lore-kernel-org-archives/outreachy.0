X-GM-THRID: 6525365385486663680
X-Received: by 10.46.43.193 with SMTP id r62mr430923ljr.42.1519310734355;
        Thu, 22 Feb 2018 06:45:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.15 with SMTP id n15ls439856lja.6.gmail; Thu, 22 Feb 2018
 06:45:33 -0800 (PST)
X-Google-Smtp-Source: AH8x227ncmyRXxsNHknu6MWKJ2KgRcOCRI+t9K+jYn1AJSm1a3tyCxXfCWMVhvko7uMxWjZ1zvYg
X-Received: by 10.46.122.16 with SMTP id v16mr414358ljc.13.1519310733313;
        Thu, 22 Feb 2018 06:45:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519310733; cv=none;
        d=google.com; s=arc-20160816;
        b=cb9OMQ1x4b5gEM05/hcY/lQ0d2LWvOplBFLsHp3pfxaMmXO/xJV+/xJhPTLCoyt8AO
         6Ym9HIfu4dYNNDFrik8e9HAt4ZCI6G0zeEVZoA1XWp+vbMX67McXcHHUHEnZuEy6FJD/
         vklHuLY71g3UynvQ14K+IH+vzqF4y0Z9HXq7ghoNPGAI7qpXtwPQ6j8+3MmChpOPg0m1
         YBIqbxFpEIcW3liVCujF0Iks+Q509X5bQeBiguz6rXKgz+e6JD+Fg2cqcfaEBe7JIO3d
         KswSNkkALFohunZQtLuJrIXqXlcDNj5YUj6NZ9W1+gL1QcjqyiPNDZ4/nJxBmeWRjz67
         BJMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=shK39Y+F9I0j67zUagZ839PlkE6NbHRKOBX8h1B4ZCw=;
        b=A/y08anwxsUC2WoyImEr4pT94tW0mDaeNbuwfCbNZcarvrbxuwDdxXIOyhr2Pn81x/
         n9rgPGuzmdlN/s5b6Ue0xOjEt5XxOwHMt0DQwEtxyhMRb95JGy2yeOuL3VEPSsf9NLKe
         qE6igVviASV8H4XjX3znqIFUTxV5UeBIoWz1odNB6/gbzpQmc/TI1GApbEXQ2VuEvgj9
         dLSm0abCXz2YUHzD8aEdGW15h7/zEnju74Y9xUV+qBG4nvo62XCOG1OJlUKQnYCYCTCL
         lHjsZJVy7xVm69Z0xMV8jZMAut1nKtte7buuJz2wTHL8uiNAyLS2WiMYDDmnFHd/noys
         qZRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Return-Path: <boris.brezillon@bootlin.com>
Received: from mail.free-electrons.com (mail.free-electrons.com. [62.4.15.54])
        by gmr-mx.google.com with ESMTP id z25si11362lfg.5.2018.02.22.06.45.33
        for <outreachy-kernel@googlegroups.com>;
        Thu, 22 Feb 2018 06:45:33 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) client-ip=62.4.15.54;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@bootlin.com designates 62.4.15.54 as permitted sender) smtp.mailfrom=boris.brezillon@bootlin.com
Received: by mail.free-electrons.com (Postfix, from userid 110)
	id EFECF207F1; Thu, 22 Feb 2018 15:45:31 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.0
Received: from bbrezillon (LStLambert-657-1-97-87.w90-63.abo.wanadoo.fr [90.63.216.87])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 59114207BB;
	Thu, 22 Feb 2018 15:45:09 +0100 (CET)
Date: Thu, 22 Feb 2018 15:45:09 +0100
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: boris.brezillon@free-electrons.com, richard@nod.at, dwmw2@infradead.org,
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr, maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH NAND v3] mtd: nand: Replace printk() with appropriate
 pr_*() macro
Message-ID: <20180222154509.4837eb38@bbrezillon>
In-Reply-To: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
References: <1519305014-2547-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Shreeya,

On Thu, 22 Feb 2018 18:40:14 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:


> diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
> index c3aa53c..8643512 100644
> --- a/drivers/mtd/nand/diskonchip.c
> +++ b/drivers/mtd/nand/diskonchip.c

[...]

> @@ -438,7 +438,7 @@ static void __init doc2000_count_chips(struct mtd_info *mtd)
>  			break;
>  	}
>  	doc->chips_per_floor = i;
> -	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
> +	pr_debug("Detected %d chips per floor.\n", i);

Just want to add some more context on pr_debug(), nothing that requires
changes on your side, but as Richard said, it's important to explain it.

pr_debug() and printk(KERN_DEBUG) are not exactly the same. pr_debug()
calls are NOPs by default unless you have enabled the
CONFIG_DYNAMIC_DEBUG option or defined DEBUG (either directly in the
sources or by passing -DDEBUG to gcc). This is not the case with
printk(KERN_DEBUG).

If you want to know more about dynamic debug, you can read [1].

> diff --git a/drivers/mtd/nand/r852.c b/drivers/mtd/nand/r852.c
> index fc9287a..cd3cd1c 100644
> --- a/drivers/mtd/nand/r852.c
> +++ b/drivers/mtd/nand/r852.c
> @@ -7,6 +7,9 @@
>   * published by the Free Software Foundation.
>   */
>  
> +#define DRV_NAME "r852"
> +#define pr_fmt(fmt)  DRV_NAME fmt

It would be nicer with:

#define pr_fmt(fmt)  DRV_NAME ": " fmt

...

> +
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/jiffies.h>
> @@ -935,7 +938,7 @@ static int  r852_probe(struct pci_dev *pci_dev, const struct pci_device_id *id)
>  		&dev->card_detect_work, 0);
>  
>  
> -	printk(KERN_NOTICE DRV_NAME ": driver loaded successfully\n");
> +	pr_notice(": driver loaded successfully\n");

and then

	pr_notice("driver loaded successfully\n");

>  	return 0;
>  
>  error10:
> diff --git a/drivers/mtd/nand/r852.h b/drivers/mtd/nand/r852.h
> index 8713c57..709eced 100644
> --- a/drivers/mtd/nand/r852.h
> +++ b/drivers/mtd/nand/r852.h
> @@ -145,16 +145,16 @@ struct r852_device {
>  };
>  
>  #define DRV_NAME "r852"

You don't need this definition anymore, it's been moved to the .c file.
Actually, if you keep it you'll hit a 'redefine' error.

> -
> +#define pr_fmt(fmt)  DRV_NAME fmt

Why do you redefine it here? The only file including r852.h is r852.c,
and pr_fmt() has been defined before all include directives, so when the
preprocessor reaches this point pr_fmt() already has a valid definition.

>  
>  #define dbg(format, ...) \
>  	if (debug) \
> -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
> +		pr_debug(": " format "\n", ## __VA_ARGS__)
>  
>  #define dbg_verbose(format, ...) \
>  	if (debug > 1) \
> -		printk(KERN_DEBUG DRV_NAME ": " format "\n", ## __VA_ARGS__)
> +		pr_debug(": " format "\n", ## __VA_ARGS__)

With the pr_fmt() definition modified as suggested it should be:

		pr_debug(format "\n", ## __VA_ARGS__)

Regards,

Boris

[1]https://01.org/linuxgraphics/gfx-docs/drm/admin-guide/dynamic-debug-howto.html

-- 
Boris Brezillon, Bootlin (formerly Free Electrons)
Embedded Linux and Kernel engineering
https://bootlin.com

