X-GM-THRID: 6476152782824931328
X-Received: by 10.107.180.72 with SMTP id d69mr392966iof.50.1507881535361;
        Fri, 13 Oct 2017 00:58:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.138 with SMTP id g10ls679264ioj.19.gmail; Fri, 13 Oct
 2017 00:58:54 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBdfLsCvehEXxh6tm3pTSNSRijE8A297Wj+eYfOm20pTaD2vxPLngwz4hduCEFIFLZhQDQZ
X-Received: by 10.36.179.3 with SMTP id e3mr644816itf.6.1507881534600;
        Fri, 13 Oct 2017 00:58:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507881534; cv=none;
        d=google.com; s=arc-20160816;
        b=tqTtEGOT0Vh7RtshAQ94jT8+0fb++1oqgj032lrbcRc8tA3IqOy6kEfKokq3yDKdq7
         XNExZAQrXLkCwLcoACHNFTeZDG3QC+P8+C9cvgeiJwCF2jV0pEkPocN03bZ+qoB69lIW
         1ewFYMHrWFU2hpHCbvY4XBVK9pDPmHs3l3O8GAMNj28BikiT1kNlvtc8nBj88yQdP2/x
         ABDuz5vS6BokeDVXbzhRrIEWqKiXab/zc3nxhLyYls3oU0meAHbKTZTe+C2KpJclMZC9
         UMiLUSUJzxudqQsNZ0sVTS4GNI4uMGTAdzzqIszMBxwN/n4iq7UmPsn6Z2wI7zF+znsk
         g99A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:arc-authentication-results;
        bh=2+D0wPtkg6oQ0OaIn3tz16C5gxONUm3W58J0gQDac4w=;
        b=DqYi5FhHGWQnjZjLDFgFK/g6mczwuHHvpzoerj9lry4bQxpbBWznyo5HgNzzcJrhB/
         Q2byhW4Nssj6Dg45XCnWTanl0Pq94PTkJzAOEWTvhygJN0k9Z+jiCnhEAwCLEC5L735s
         EkcVCcMRWFAPzsakE9EGwtuwV7t/CFiAT6Ti1AU5n5JxAqxOz2kSAqBvUI3ar7lxzvJC
         ih0tta+HB5GU2mmEONq5KGJXkBg0VANcCSsDsvWQ0fQxWBsM7WeWSbBLqWT4QaPDCHXc
         dODxgQ486YmzaudDlCGixt8mlGE20Y87KH9XBrQ7HDyc1s4HM5IP07MHc+DGkZMCGfOO
         MMHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r66si60978itc.0.2017.10.13.00.58.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 00:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 00:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,369,1503385200"; 
   d="scan'208";a="909553965"
Received: from abousale-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.38.121])
  by FMSMGA003.fm.intel.com with ESMTP; 13 Oct 2017 00:58:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Harsha Sharma <harshasharmaiitr@gmail.com>, daniel.vetter@ffwll.ch, seanpaul@chromium.org
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: Re: [PATCH v2] drm: Replace kzalloc with kcalloc
In-Reply-To: <20171013073747.29877-1-harshasharmaiitr@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20171013073747.29877-1-harshasharmaiitr@gmail.com>
Date: Fri, 13 Oct 2017 10:58:33 +0300
Message-ID: <87r2u7lbrq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Fri, 13 Oct 2017, Harsha Sharma <harshasharmaiitr@gmail.com> wrote:
> Prefer kcalloc over kzalloc to allocate an array.
> This patch fixes checkcpatch issue.
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
> Changes in v2:
>  -kcalloc will take 3 arguments
>
>  drivers/gpu/drm/drm_crtc_helper.c  | 4 ++--
>  drivers/gpu/drm/drm_fb_helper.c    | 2 +-
>  drivers/gpu/drm/drm_plane_helper.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
> index eab36a460638..5a84c3bc915d 100644
> --- a/drivers/gpu/drm/drm_crtc_helper.c
> +++ b/drivers/gpu/drm/drm_crtc_helper.c
> @@ -562,12 +562,12 @@ int drm_crtc_helper_set_config(struct drm_mode_set *set,
>  	 * Allocate space for the backup of all (non-pointer) encoder and
>  	 * connector data.
>  	 */
> -	save_encoder_crtcs = kzalloc(dev->mode_config.num_encoder *
> +	save_encoder_crtcs = kcalloc(dev->mode_config.num_encoder,
>  				sizeof(struct drm_crtc *), GFP_KERNEL);
>  	if (!save_encoder_crtcs)
>  		return -ENOMEM;
>  
> -	save_connector_encoders = kzalloc(dev->mode_config.num_connector *
> +	save_connector_encoders = kcalloc(dev->mode_config.num_connector,
>  				sizeof(struct drm_encoder *), GFP_KERNEL);
>  	if (!save_connector_encoders) {
>  		kfree(save_encoder_crtcs);
> diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> index 1b8f013ffa65..de31e52ab9cb 100644
> --- a/drivers/gpu/drm/drm_fb_helper.c
> +++ b/drivers/gpu/drm/drm_fb_helper.c
> @@ -2266,7 +2266,7 @@ static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
>  	if (modes[n] == NULL)
>  		return best_score;
>  
> -	crtcs = kzalloc(fb_helper->connector_count *
> +	crtcs = kcalloc(fb_helper->connector_count,
>  			sizeof(struct drm_fb_helper_crtc *), GFP_KERNEL);
>  	if (!crtcs)
>  		return best_score;
> diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
> index 06aee1741e96..759ed93f4ba8 100644
> --- a/drivers/gpu/drm/drm_plane_helper.c
> +++ b/drivers/gpu/drm/drm_plane_helper.c
> @@ -354,7 +354,7 @@ int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
>  	/* Find current connectors for CRTC */
>  	num_connectors = get_connectors_for_crtc(crtc, NULL, 0);
>  	BUG_ON(num_connectors == 0);
> -	connector_list = kzalloc(num_connectors * sizeof(*connector_list),
> +	connector_list = kcalloc(num_connectors, sizeof(*connector_list),
>  				 GFP_KERNEL);
>  	if (!connector_list)
>  		return -ENOMEM;

-- 
Jani Nikula, Intel Open Source Technology Center

