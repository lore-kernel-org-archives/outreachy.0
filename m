X-GM-THRID: 6254552091181711360
X-Received: by 10.28.129.210 with SMTP id c201mr2122134wmd.1.1456253524764;
        Tue, 23 Feb 2016 10:52:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.200 with SMTP id 69ls507733lfr.13.gmail; Tue, 23 Feb
 2016 10:52:04 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr4383037lbb.20.1456253524073;
        Tue, 23 Feb 2016 10:52:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si1505114wmd.1.2016.02.23.10.52.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:52:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,490,1449529200"; 
   d="scan'208";a="165743730"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2016 19:52:03 +0100
Date: Tue, 23 Feb 2016 19:52:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use devm_ioremap_resource()
 instead of of_iomap()
In-Reply-To: <20160223181623.GA20782@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:

> The adc driver uses of_iomap() which doesn't request the resource and
> isn't device managed so error handling is needed. of_iomap() is mainly
> used in cases where there is no driver or struct device so a switch to
> devm_ functions is required.
> 
> This patch switches to use devm_ioremap_resource() instead which
> automatically requests the resource and is freed when the driver
> detaches. 

The above doesn't explain sufficiently why the transformation is correct.  
You would have to look at the definitions of the functions involved, and 
show that in this case they do the same thing.  Do you have anoher patch 
that makes this transformation?  What kind of justification does it give?

julia

> Removed the error handling to unmap I/O registers i.e. 
> iounmap() in probe and remove functions of this driver and 
> consequently removed an unnecessary label.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/iio/adc/spear_adc.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
> index 0a6d0d7..8dc80b3 100644
> --- a/drivers/staging/iio/adc/spear_adc.c
> +++ b/drivers/staging/iio/adc/spear_adc.c
> @@ -262,6 +262,7 @@ static int spear_adc_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	struct device *dev = &pdev->dev;
>  	struct spear_adc_state *st;
> +	struct resource *res;
>  	struct iio_dev *indio_dev = NULL;
>  	int ret = -ENODEV;
>  	int irq;
> @@ -280,24 +281,24 @@ static int spear_adc_probe(struct platform_device *pdev)
>  	 * (e.g. SPEAr3xx). Let's provide two register base addresses
>  	 * to support multi-arch kernels.
>  	 */
> -	st->adc_base_spear6xx = of_iomap(np, 0);
> -	if (!st->adc_base_spear6xx) {
> -		dev_err(dev, "failed mapping memory\n");
> -		return -ENOMEM;
> -	}
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	st->adc_base_spear6xx = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(st->adc_base_spear6xx))
> +		return PTR_ERR(st->adc_base_spear6xx);
> +
>  	st->adc_base_spear3xx =
>  		(struct adc_regs_spear3xx __iomem *)st->adc_base_spear6xx;
>  
>  	st->clk = devm_clk_get(dev, NULL);
>  	if (IS_ERR(st->clk)) {
>  		dev_err(dev, "failed getting clock\n");
> -		goto errout1;
> +		return ret;
>  	}
>  
>  	ret = clk_prepare_enable(st->clk);
>  	if (ret) {
>  		dev_err(dev, "failed enabling clock\n");
> -		goto errout1;
> +		return ret;
>  	}
>  
>  	irq = platform_get_irq(pdev, 0);
> @@ -356,8 +357,6 @@ static int spear_adc_probe(struct platform_device *pdev)
>  
>  errout2:
>  	clk_disable_unprepare(st->clk);
> -errout1:
> -	iounmap(st->adc_base_spear6xx);
>  	return ret;
>  }
>  
> @@ -367,7 +366,6 @@ static int spear_adc_remove(struct platform_device *pdev)
>  	struct spear_adc_state *st = iio_priv(indio_dev);
>  
>  	clk_disable_unprepare(st->clk);
> -	iounmap(st->adc_base_spear6xx);
>  
>  	return 0;
>  }
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160223181623.GA20782%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

