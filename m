X-GM-THRID: 6618532112309944320
X-Received: by 2002:a1f:2a54:: with SMTP id q81mr2730486vkq.20.1540998819199;
        Wed, 31 Oct 2018 08:13:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:85cc:: with SMTP id h195ls2415216vsd.9.gmail; Wed, 31
 Oct 2018 08:13:38 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d2Wl98OzJrlpAilW9LOj5JAWn3PMeRW8dcvg3hKKosC0peiJDXsGNkrp9n9eRk+Bw8OxSi
X-Received: by 2002:a67:e011:: with SMTP id c17mr2685580vsl.40.1540998818366;
        Wed, 31 Oct 2018 08:13:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540998818; cv=none;
        d=google.com; s=arc-20160816;
        b=WFyYPFvv5fj/E5yS2CUOE3toQ2lLcXEpoG7bKr3bc2GbP+qWsRNt/LlnSIk68X77W+
         J0Hbh758iGnTN3itNZR5P/HBINjZys/PiFY8WPkkbH7NanrbXCp1WzKhHF3KW6HXC2IR
         5WEiyetAXeMsH4JZPvqB/am5eGnrNPuJzpdeogiZKMHyTJmpnj+pHc3vlMhJJEFYrVNs
         nJAMlN6CYNIAk41W8h6S1EoXk4teeibb06pWYur9l4GtGsmMzHfvG/ArQssLH8R30479
         RkHilnQ1PgZskFXHsZV6KpU1poB1IGT9LOFP5clKXKmVlgDXBVj6lhg1oHYM9t7Bx9u2
         5hOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from;
        bh=pgVfpjLwmtQNEkVc9vWgihWM2Fp0xdFypvc4rlBGmi8=;
        b=uRWOcPB8p8F2Ts9hlMXptAnzskcfCUWKWWvXI/xh2hyoryqza2E0qvg7EmgODBNNV6
         qRFbMcBh8LIxbl4bEp46T4JT955L9X0eaUaz0eOw4jL7drSyY248Bu7pcBASUBjqsdb2
         s5zkBFxA3sfb2rlP8FEJ26eVzodI86oWWkp3ESePn379PNh0UnUAorsV70zwTkE5cyoh
         Pr+9euTmIpAKUHPLqmtVV7nB3eQ+q+waeYrRD6dx8v8+lj0k13swnkktiCAemqDcHy/p
         2Ad6EgmnVxzV8SbrP8vq6SfZc030WezkgYYeJVmghOWLFnzqIrFMCxh5uYbAsOrSyxC9
         SgkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id 67si646912uas.1.2018.10.31.08.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 08:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,447,1534834800"; 
   d="scan'208";a="104142627"
Received: from ksmole-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.40.70])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2018 08:13:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>
Cc: outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm: Remove 80-column line in drm_mode_object.c
In-Reply-To: <20181031144445.vrdngzj3jclforta@smtp.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20181031144445.vrdngzj3jclforta@smtp.gmail.com>
Date: Wed, 31 Oct 2018 17:13:38 +0200
Message-ID: <87a7mudu8t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 31 Oct 2018, Shayenne da Luz Moura <shayenneluzmoura@gmail.com> wrote:
> Add a new variable to make the drm_mode_object comparison before
> idr_alloc and decrease line size.
>
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> ---
>  drivers/gpu/drm/drm_mode_object.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> index be8b754eaf60..4b9eafddb409 100644
> --- a/drivers/gpu/drm/drm_mode_object.c
> +++ b/drivers/gpu/drm/drm_mode_object.c
> @@ -36,9 +36,10 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
>  			  void (*obj_free_cb)(struct kref *kref))
>  {
>  	int ret;
> +	struct drm_mode_object *obj_tmp = register_obj ? obj : NULL;
>  
>  	mutex_lock(&dev->mode_config.idr_mutex);
> -	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
> +	ret = idr_alloc(&dev->mode_config.crtc_idr, obj_tmp, 1, 0, GFP_KERNEL);

Please don't send checkpatch "fixes" to adhere to the 80-column rule. Or
at least use --max-line-length=100 or something to look for worse
offenders than this.

And if you insist, please just add a newline and proper indentation
after "NULL," instead of adding a temporary variable.


BR,
Jani.

>  	if (ret >= 0) {
>  		/*
>  		 * Set up the object linking under the protection of the idr

-- 
Jani Nikula, Intel Open Source Graphics Center

