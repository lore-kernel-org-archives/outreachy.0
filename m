X-GM-THRID: 6255614868842348544
X-Received: by 10.25.142.130 with SMTP id q124mr481048lfd.9.1456523136333;
        Fri, 26 Feb 2016 13:45:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.169 with SMTP id 41ls288325lfw.11.gmail; Fri, 26 Feb
 2016 13:45:35 -0800 (PST)
X-Received: by 10.112.173.6 with SMTP id bg6mr491003lbc.0.1456523135468;
        Fri, 26 Feb 2016 13:45:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h126si149300wme.0.2016.02.26.13.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 13:45:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,505,1449529200"; 
   d="scan'208";a="166132459"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2016 22:45:15 +0100
Date: Fri, 26 Feb 2016 22:45:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Replace
 kzalloc with devm_kzalloc
In-Reply-To: <20160226150029.GA32277@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602262242360.2055@localhost6.localdomain6>
References: <20160226150029.GA32277@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 26 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace data allocated by kzalloc to managed data allocated by
> devm_kzalloc. Remove unnecessary kzfree.

Actually, this doesn't preserve the semantics.  kzfree does more than just 
free.  It also zeroes the data first.  This could be useful if the data is 
sensitive in some way.  On the other hand, I don't recall ever seeing a 
kzfree in a platform driver probe function.

Unfortunately, from the git logs, I don't have the impression that anyone 
is really taking responsability for this driver either, so I'm not sure 
who you could ask for more information.

julia

> Also remove a goto by replacing it with returns and dropping the
> unnecessary label.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  .../staging/media/davinci_vpfe/vpfe_mc_capture.c   | 22 +++++++---------------
>  1 file changed, 7 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index bf077f8..5852a6b 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -579,22 +579,20 @@ static int vpfe_probe(struct platform_device *pdev)
>  	struct resource *res1;
>  	int ret = -ENOMEM;
>  
> -	vpfe_dev = kzalloc(sizeof(*vpfe_dev), GFP_KERNEL);
> +	vpfe_dev = devm_kzalloc(&pdev->dev, sizeof(*vpfe_dev), GFP_KERNEL);
>  	if (!vpfe_dev)
>  		return ret;
>  
>  	if (pdev->dev.platform_data == NULL) {
>  		v4l2_err(pdev->dev.driver, "Unable to get vpfe config\n");
> -		ret = -ENOENT;
> -		goto probe_free_dev_mem;
> +		return -ENOENT;
>  	}
>  
>  	vpfe_dev->cfg = pdev->dev.platform_data;
>  	if (vpfe_dev->cfg->card_name == NULL ||
>  			vpfe_dev->cfg->sub_devs == NULL) {
>  		v4l2_err(pdev->dev.driver, "null ptr in vpfe_cfg\n");
> -		ret = -ENOENT;
> -		goto probe_free_dev_mem;
> +		return -ENOENT;
>  	}
>  
>  	/* Get VINT0 irq resource */
> @@ -602,8 +600,7 @@ static int vpfe_probe(struct platform_device *pdev)
>  	if (!res1) {
>  		v4l2_err(pdev->dev.driver,
>  			 "Unable to get interrupt for VINT0\n");
> -		ret = -ENOENT;
> -		goto probe_free_dev_mem;
> +		return -ENOENT;
>  	}
>  	vpfe_dev->ccdc_irq0 = res1->start;
>  
> @@ -612,8 +609,7 @@ static int vpfe_probe(struct platform_device *pdev)
>  	if (!res1) {
>  		v4l2_err(pdev->dev.driver,
>  			 "Unable to get interrupt for VINT1\n");
> -		ret = -ENOENT;
> -		goto probe_free_dev_mem;
> +		return -ENOENT;
>  	}
>  	vpfe_dev->ccdc_irq1 = res1->start;
>  
> @@ -622,8 +618,7 @@ static int vpfe_probe(struct platform_device *pdev)
>  	if (!res1) {
>  		v4l2_err(pdev->dev.driver,
>  			 "Unable to get interrupt for DMA\n");
> -		ret = -ENOENT;
> -		goto probe_free_dev_mem;
> +		return -ENOENT;
>  	}
>  	vpfe_dev->imp_dma_irq = res1->start;
>  
> @@ -632,7 +627,7 @@ static int vpfe_probe(struct platform_device *pdev)
>  	/* enable vpss clocks */
>  	ret = vpfe_enable_clock(vpfe_dev);
>  	if (ret)
> -		goto probe_free_dev_mem;
> +		return ret;
>  
>  	ret = vpfe_initialize_modules(vpfe_dev, pdev);
>  	if (ret)
> @@ -680,8 +675,6 @@ probe_out_entities_cleanup:
>  	vpfe_cleanup_modules(vpfe_dev, pdev);
>  probe_disable_clock:
>  	vpfe_disable_clock(vpfe_dev);
> -probe_free_dev_mem:
> -	kzfree(vpfe_dev);
>  
>  	return ret;
>  }
> @@ -702,7 +695,6 @@ static int vpfe_remove(struct platform_device *pdev)
>  	v4l2_device_unregister(&vpfe_dev->v4l2_dev);
>  	media_device_unregister(&vpfe_dev->media_dev);
>  	vpfe_disable_clock(vpfe_dev);
> -	kzfree(vpfe_dev);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160226150029.GA32277%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

