X-GM-THRID: 6465205340686254080
X-Received: by 10.84.232.134 with SMTP id i6mr11172758plk.42.1505303791020;
        Wed, 13 Sep 2017 04:56:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.211 with SMTP id y202ls3054904itc.17.canary-gmail; Wed,
 13 Sep 2017 04:56:30 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4aNkMC+y5JOEllBYCiinE4jo/zxU7/NyVOJHuD/JVU8O5SiJHytUihwCF6TjsUoYfrMp9e
X-Received: by 10.13.192.5 with SMTP id b5mr11107300ywd.93.1505303790347;
        Wed, 13 Sep 2017 04:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505303790; cv=none;
        d=google.com; s=arc-20160816;
        b=yr4HGXMdw+TbGSkBUgXYryVt9jZNnq1GvKWA4Ys1LLiZh8HN/IeJ2LkV2I0hvq3GAy
         MX3XobslmSnhs4xzdcjRPUK1F19VIaa7WMMPaV2yPGfRX3AemAQXBX7wA0xV6LqZTtlK
         6I4VEnMR4qg2NBGl5+Ntp/HPE8l+8C3+T3+3GyGU6rgzIh3aT3CU8gtTT0PcGV+/s1MV
         3KY/4cCUpIddGzuDW0KanJedW0hGpkS6i6OksJkiaElh62TBwlCDC3q5ykX7hUbbCFME
         SUAtyTz0T2MYs5O8BASBpxkSapy5IAslH6PYHw6WiuUD5JWC523XYlmWAGqi0KM/z7Qx
         Nwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nZUbeyiGA1STWWiB1znUVZUM8J3p8P1WjRH5pB5kotg=;
        b=AJD+bztMR3kuL8G+3xYcsSrq1FZT7RRBmLBWbBFfMtCxSoiFF8y43/ARiKR5ErHsXJ
         4Xjy+LZypNXIEi/FkOFZfIM+uZcVYmC3KDsYEUfeoWGGg9HcpEHlL3gzS47J0XkXInng
         AHpdHsrLJiInDP+bw/B5reCxX3Nu3p9gOkC05MgOO/ctxOC3ex352hz01C8t4A3AX6Cj
         BQVzRkDomZdV9bB9rmNkQIOiFBpfuT2MDnsYbeScRsoylt1mrNW2GLLRwG1N8R3ZrMg4
         vQfKjQMNaylX+Kp8RcsN6jssOW79+48d1NqFXHMlHXsvL6xL+NYAaPYemlJTkxpW7U96
         O6fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e141si16631ite.5.2017.09.13.04.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 04:56:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237330508"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 13:56:28 +0200
Date: Wed, 13 Sep 2017 13:55:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] GPU: DRM: Moved EXPORT_SYMBOL so
 that it immediately followed its function
In-Reply-To: <2f47dda3c36c008a108768d7142684c372f0980f.1505296813.git.meghana.madhyastha@gmail.com>
Message-ID: <alpine.DEB.2.20.1709131355070.26484@hadrien>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com> <2f47dda3c36c008a108768d7142684c372f0980f.1505296813.git.meghana.madhyastha@gmail.com>
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

What was the issue here?  There are indeed too many blank lines, but that
would be a different patch.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2f47dda3c36c008a108768d7142684c372f0980f.1505296813.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

