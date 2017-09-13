X-GM-THRID: 6465296878768488448
X-Received: by 10.28.229.16 with SMTP id c16mr402600wmh.13.1505333771207;
        Wed, 13 Sep 2017 13:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.162.136 with SMTP id l130ls154907lfe.40.gmail; Wed, 13 Sep
 2017 13:16:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCl+fLCvMjciBkOZUs8UkOSK1BlwgIb545C37yVWEL5ep2sWkIeN8JYZhEvTIH4dotukihW
X-Received: by 10.25.202.17 with SMTP id a17mr1295893lfg.6.1505333769437;
        Wed, 13 Sep 2017 13:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505333769; cv=none;
        d=google.com; s=arc-20160816;
        b=TtkoIgUYxXWK3IwH162ScSGb4OcYRoX/WeZniPveR1OKaLcas3YRDvTq/QeoILUawv
         Zs0OC/nd4E+lchLY8s1u+bt+bxmbj8EaqCTYbJuylLLUzEXE5J39XweZazZZSA5FXT4o
         rhhuJHQjvtMq0N3zH7u09uhHLrBmMHHqCft9xz6Ek1aNH2CwWr2OOucUZzPpA4/Wh8up
         ec9zHVH6kMiHeUoQP3EjpN/9T7r4EUG37aa5lhGRPj3T0coX+hmSrqtLAVkxHy6dyZhj
         wA6SbGBfTOT4OOIvCXcepueKvXffbij3z7tAC1kIHRLLc0Ha2mmdAP+44GvASBFJbLFM
         8kJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=BBSFFkNeMcxm0iV2P5cDCVsW9dYzIY13uQyTNpKq9AQ=;
        b=jTv5cLCx6ReTazrhghUJUc6X5C2j/EKoomS32YFN8mPWaYcTO11WEhQzDkdKxkv60E
         2Fp6b0GBaiDv2qvll/XsKWHCfYCZd9zyAz84bhUkAkgtyU1PFrAtWqfPfneOkIfRTm5M
         spRyOmR03mr24YpiUEGi2mIw/OMbD6gBwI7ay0MoketrgnQhOJXTscfTUZyeMVy1QxU7
         TNDteqK9Qq+tu0LmT4LsgFTFcOG6dZ3ccE18CO6Tma3GdX+icwludS3FCXf03FvqpDRQ
         NBJE3ATSAl323VnzjZPkgjoho6S9QrIf6MM222HBXVeqWb12I5+kLaiupTRF5/nLwiQ9
         EqIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r3si125766wmg.6.2017.09.13.13.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 13:16:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,389,1500933600"; 
   d="scan'208";a="237392178"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 22:16:08 +0200
Date: Wed, 13 Sep 2017 22:16:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] drm: Move EXPORT_SYMBOL so
 that it immediately follows its function
In-Reply-To: <20170913161340.GA3204@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709132214330.2920@hadrien>
References: <20170913161340.GA3204@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> EXPORT_SYMBOL(foo) should immediately follow its function/variable.
> This coding style is preferred.
> Found by checkpath.pl.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/gpu/drm/drm_agpsupport.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
> index c899534..928248e 100644
> --- a/drivers/gpu/drm/drm_agpsupport.c
> +++ b/drivers/gpu/drm/drm_agpsupport.c
> @@ -70,7 +70,6 @@ int drm_agp_info(struct drm_device *dev, struct drm_agp_info *info)
>
>  	return 0;
>  }
> -
>  EXPORT_SYMBOL(drm_agp_info);
>
>  int drm_agp_info_ioctl(struct drm_device *dev, void *data,
> @@ -106,7 +105,6 @@ int drm_agp_acquire(struct drm_device * dev)
>  	dev->agp->acquired = 1;
>  	return 0;
>  }
> -
>  EXPORT_SYMBOL(drm_agp_acquire);
>
>  /**
> @@ -171,7 +169,6 @@ int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
>  	dev->agp->enabled = 1;
>  	return 0;
>  }
> -
>  EXPORT_SYMBOL(drm_agp_enable);
>
>  int drm_agp_enable_ioctl(struct drm_device *dev, void *data,
> @@ -373,7 +370,6 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>  EXPORT_SYMBOL(drm_agp_free);
>
>
> -

I still don't think this change belongs in this patch.  I ran checkpatch
on this file, and I only get warnings about the first three
EXPORT_SYMBOLs.  There is no warning related to EXPORT_SYMBOL after line
175.

julia

>  int drm_agp_free_ioctl(struct drm_device *dev, void *data,
>  		       struct drm_file *file_priv)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161340.GA3204%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

