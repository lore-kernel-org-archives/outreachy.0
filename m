X-GM-THRID: 6471138099019644928
X-Received: by 10.157.34.201 with SMTP id y67mr1662953ota.165.1506718399960;
        Fri, 29 Sep 2017 13:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.206.141 with SMTP id e135ls1758525oig.4.gmail; Fri, 29 Sep
 2017 13:53:19 -0700 (PDT)
X-Received: by 10.157.35.29 with SMTP id j29mr1068058otb.105.1506718399072;
        Fri, 29 Sep 2017 13:53:19 -0700 (PDT)
Received: by 10.202.84.139 with SMTP id i133msoib;
        Fri, 29 Sep 2017 08:24:59 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD7iu+luUQjLiwqT8f+3iH2Gk+V3TJkV5GkotJ5toqtLGJCM6Pkb7FHuur9Yc4DEczL3xwW
X-Received: by 10.107.162.83 with SMTP id l80mr4431651ioe.133.1506698698185;
        Fri, 29 Sep 2017 08:24:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506698698; cv=none;
        d=google.com; s=arc-20160816;
        b=kJN5WFEyN6GB1d15LxV7FcvFmzGnWsLW0IZlNPb2lBLrU9Acdq685Yc7aeiAu4muar
         bsqTevi73zRzezclgZvV8sgt+vFlWXpydhn1GSTjzCvmvq9dnQYzSaB75DJHqB61i54w
         jWiT1oW38IIzN7BXAnTM705J0lmssC00vRn1F94QzcwpjlyPNgka1yk2uWCjkBrkUAIZ
         v3IqZZ6rbtkm4KGbnWp9m4Haq84+35Z98a3UHg2w+P1Ux7CeiWSmTk86AZysWxLKpCN9
         PiwF0zsetpETkMWGrpVbJ1jo4NW03dHF53YsASRcYYhsw08RBbnxTDU6H8uPr4mjHEV3
         ez5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=1CS1fvhDs6LVWRVJnenIQqufziC5ISovmikynlZ7FnE=;
        b=0yjMKqP4S7IVxRJXR7MsXMBRvUA3BAyn14KDQ74ASs//JgfnFsbRTpCKEpzsY8dhek
         J9jzI38586/z0XtDwxtpDs/GlKhrtzCoyjihR0IPxOZi7/9ic1gkiNDkTH+RBlmGrTGW
         Nr6sg2hil799C0ZfZvcEBHbUK4eJ+hz+dlSMCfVejQyTNYdRiA2ZAK7/KHjQgdBwGefc
         C/7jEThpW7hwyeAj0meLvw7tmX0ULrN9qjHckwkQG341W/OmLiJHjWxmpk3D4ySH4tk1
         7O1oCY0RHuip6WAFfSrlT9c1fp12rcGkj3Ea1tLnO3WyTtES/OGP9xOnIQgysShOemcQ
         3rSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liviu.dudau@arm.com designates 217.140.101.70 as permitted sender) smtp.mailfrom=Liviu.Dudau@arm.com
Return-Path: <Liviu.Dudau@arm.com>
Received: from foss.arm.com (foss.arm.com. [217.140.101.70])
        by gmr-mx.google.com with ESMTP id m186si186165itd.9.2017.09.29.08.24.57
        for <outreachy-kernel@googlegroups.com>;
        Fri, 29 Sep 2017 08:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of liviu.dudau@arm.com designates 217.140.101.70 as permitted sender) client-ip=217.140.101.70;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of liviu.dudau@arm.com designates 217.140.101.70 as permitted sender) smtp.mailfrom=Liviu.Dudau@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FF591529;
	Fri, 29 Sep 2017 08:24:57 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4AC53F58C;
	Fri, 29 Sep 2017 08:24:56 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
	id 38187680153; Fri, 29 Sep 2017 16:24:55 +0100 (BST)
Date: Fri, 29 Sep 2017 16:24:55 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org, brian.starkey@arm.com,
	malidp@foss.arm.com, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/arm: Replace instances of drm_dev_unref with
 drm_dev_put.
Message-ID: <20170929152455.GL6681@e110455-lin.cambridge.arm.com>
References: <1506679240-7061-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1506679240-7061-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

Hi Srishti,

On Fri, Sep 29, 2017 at 03:30:40PM +0530, Srishti Sharma wrote:
> Replace drm_dev_unref with drm_dev_put as it is more consistent
> with kernel coding style. Done using the following semantic
> patch by coccinelle.

Thanks for the patch!

Acked-by: Liviu Dudau <liviu.dudau@arm.com>

I'm going to pull this patch into the mali-dp tree next week when
I'm preparing an update of that tree.

Best regards,
Liviu

> 
> @r@
> expression e;
> @@
> 
> -drm_dev_unref();
> +drm_dev_put();
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/gpu/drm/arm/hdlcd_drv.c  | 4 ++--
>  drivers/gpu/drm/arm/malidp_drv.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/arm/hdlcd_drv.c b/drivers/gpu/drm/arm/hdlcd_drv.c
> index f9bda7b..1a96462 100644
> --- a/drivers/gpu/drm/arm/hdlcd_drv.c
> +++ b/drivers/gpu/drm/arm/hdlcd_drv.c
> @@ -353,7 +353,7 @@ static int hdlcd_drm_bind(struct device *dev)
>  err_free:
>  	drm_mode_config_cleanup(drm);
>  	dev_set_drvdata(dev, NULL);
> -	drm_dev_unref(drm);
> +	drm_dev_put(drm);
>  
>  	return ret;
>  }
> @@ -378,7 +378,7 @@ static void hdlcd_drm_unbind(struct device *dev)
>  	pm_runtime_disable(drm->dev);
>  	of_reserved_mem_device_release(drm->dev);
>  	drm_mode_config_cleanup(drm);
> -	drm_dev_unref(drm);
> +	drm_dev_put(drm);
>  	drm->dev_private = NULL;
>  	dev_set_drvdata(dev, NULL);
>  }
> diff --git a/drivers/gpu/drm/arm/malidp_drv.c b/drivers/gpu/drm/arm/malidp_drv.c
> index 7ae94a1..1b92f41 100644
> --- a/drivers/gpu/drm/arm/malidp_drv.c
> +++ b/drivers/gpu/drm/arm/malidp_drv.c
> @@ -665,7 +665,7 @@ static int malidp_bind(struct device *dev)
>  		malidp_runtime_pm_suspend(dev);
>  	drm->dev_private = NULL;
>  	dev_set_drvdata(dev, NULL);
> -	drm_dev_unref(drm);
> +	drm_dev_put(drm);
>  alloc_fail:
>  	of_reserved_mem_device_release(dev);
>  
> @@ -698,7 +698,7 @@ static void malidp_unbind(struct device *dev)
>  		malidp_runtime_pm_suspend(dev);
>  	drm->dev_private = NULL;
>  	dev_set_drvdata(dev, NULL);
> -	drm_dev_unref(drm);
> +	drm_dev_put(drm);
>  	of_reserved_mem_device_release(dev);
>  }
>  
> -- 
> 2.7.4
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

