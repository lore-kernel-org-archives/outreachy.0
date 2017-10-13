X-GM-THRID: 6476152782824931328
X-Received: by 10.36.175.66 with SMTP id l2mr1985307iti.42.1507925220034;
        Fri, 13 Oct 2017 13:07:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.189.65 with SMTP id x62ls407864ite.3.gmail; Fri, 13 Oct
 2017 13:06:59 -0700 (PDT)
X-Received: by 10.107.112.18 with SMTP id l18mr1748087ioc.0.1507925219295;
        Fri, 13 Oct 2017 13:06:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507925219; cv=none;
        d=google.com; s=arc-20160816;
        b=Mg2tnqvcISzUMhMeE3HoofDe1sLaxZFFwWQRFImtMTC5XmNkdeRbBDzOCtOTDC7/77
         X/aWLSR9aUHiJ7FqOEHdMs7vQcpM4Yz8tb6PDz/EEgGGeGjYHZFEH201YzX9+nMAZ9k9
         Xqu6CImpKS7BsEXRbiVh9Q38x/jOsn4La8SEdAz4p/+1G/WSO2ktD7g5/OEc9jLtvO/l
         pNToO+lEmN2Q/e6Ot2trk14eD4n2/mlvVOm98SisHIf+fUL/CXE79AfOGhmfzP8k3bvk
         tLIFjlIIGjltuxQ4Abbtd1ur7IdKBc7xMmrnTfzBMDO+RhbHAF1oe9OpwUs19xoEpiue
         Ul6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=oXw6DykbpR7JoyHO7dKPJ0uKS9nv850naelGY6ITBvk=;
        b=c8oNo1ACM1PEESy1PsDBjNK5go+ZRNxsdQjMxiKDOLCs6/OK/xSoTxz1bwIwe8TwmE
         2j7JWjhmvUsshmnUUO0vruvd7W/TPgDbWWsGd2hqtFGFNAnV/AsqyyXNnf0BfH3BGS/E
         pUS8M2eKkSAh6WoFq5CpQCt2duOxw9CnzddU8ljzlpLtCSIJRb0J4uwNOzEU2oPOJqFD
         mNynjVhmzl7U/6vO+/YqItljN9H/Wjkv+Rg21c9daya0jNgol4CFejkOyEng28XDklq6
         vakXgLRsqfBtH0I+dRFLVrBmY8aKt5C0AIz/K5bXadRf7L78eSj4DhLuO/0KQODg5BUr
         6k9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N+uUIV84;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x229.google.com (mail-qt0-x229.google.com. [2607:f8b0:400d:c0d::229])
        by gmr-mx.google.com with ESMTPS id c3si78177ioj.2.2017.10.13.13.06.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 13:06:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) client-ip=2607:f8b0:400d:c0d::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N+uUIV84;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x229.google.com with SMTP id j58so10615153qtj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 13:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oXw6DykbpR7JoyHO7dKPJ0uKS9nv850naelGY6ITBvk=;
        b=N+uUIV84mTq2JTaI1PN4s3oJ71BtBYukFjtrgYaunqqrX2qrCDmRknJHt/hIx+0FuA
         68d9qmZW8OG6mG/TvvMXZRn8msyB+YID3h5bL0bdJvSwK+uLj4ia48ILA0i/XRMk145m
         61wuzRm/yMiBR4m4JHQJGr4dw3+LgZhIOnwqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oXw6DykbpR7JoyHO7dKPJ0uKS9nv850naelGY6ITBvk=;
        b=Z8SPjOpD0xIthGhu/YkSGDALu2//NhjmX2I7ZZGv3cLadm7bZXarjmuejBQSoqKVN7
         9LF0Q/KVP+nfcDAgKJESBRV4R/CA6u46D9Hwknp7/yUOZPU7gKpA3EVBEwbemB9Jqm1J
         yasEuLmhvOjSHo7KpN7AwqL400kOSLWS8gsYIPu98T7018PuEq1cRtgX2fA3IQBlQtJy
         tSkjrv683WLa8/Ew3ozuLJto4T1J9ujNu/alOazOAcPI20H8m89aoTW7Sly4BcGd+lIj
         mSuXkceziAMSQLvpKrc+UAaOuZYes1UsminuB5DSyOyCW3GvWxxgWpj+wy103cWWKWj4
         uXlg==
X-Gm-Message-State: AMCzsaXJoi62dm02vUyhAc+AOFpgb7ther3QLMLo+6C9D4uHYn/0YwnW
	j2lqXLB4ncagA8lIl+cfiuXzdA==
X-Google-Smtp-Source: AOwi7QCkgLzZw5BFPkP4JOxMbVPRTfSi0RgdUJlR11ajfY6u2oLr0sKn2S1g1QURdN1sDPHecPDJPQ==
X-Received: by 10.37.133.68 with SMTP id f4mr1696898ybn.385.1507925218566;
        Fri, 13 Oct 2017 13:06:58 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:8:f586:7071:d44a:c2c4])
        by smtp.gmail.com with ESMTPSA id g204sm739755ywb.7.2017.10.13.13.06.57
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 13 Oct 2017 13:06:57 -0700 (PDT)
Date: Fri, 13 Oct 2017 16:06:57 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Harsha Sharma <harshasharmaiitr@gmail.com>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] drm: Replace kzalloc with kcalloc
Message-ID: <20171013200656.4kj4fw3wkaunyi3n@art_vandelay>
References: <20171013073747.29877-1-harshasharmaiitr@gmail.com>
 <87r2u7lbrq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r2u7lbrq.fsf@intel.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Fri, Oct 13, 2017 at 10:58:33AM +0300, Jani Nikula wrote:
> On Fri, 13 Oct 2017, Harsha Sharma <harshasharmaiitr@gmail.com> wrote:
> > Prefer kcalloc over kzalloc to allocate an array.
> > This patch fixes checkcpatch issue.
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 

Applied to -misc-next, thanks!

Sean

> 
> > ---
> > Changes in v2:
> >  -kcalloc will take 3 arguments
> >
> >  drivers/gpu/drm/drm_crtc_helper.c  | 4 ++--
> >  drivers/gpu/drm/drm_fb_helper.c    | 2 +-
> >  drivers/gpu/drm/drm_plane_helper.c | 2 +-
> >  3 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
> > index eab36a460638..5a84c3bc915d 100644
> > --- a/drivers/gpu/drm/drm_crtc_helper.c
> > +++ b/drivers/gpu/drm/drm_crtc_helper.c
> > @@ -562,12 +562,12 @@ int drm_crtc_helper_set_config(struct drm_mode_set *set,
> >  	 * Allocate space for the backup of all (non-pointer) encoder and
> >  	 * connector data.
> >  	 */
> > -	save_encoder_crtcs = kzalloc(dev->mode_config.num_encoder *
> > +	save_encoder_crtcs = kcalloc(dev->mode_config.num_encoder,
> >  				sizeof(struct drm_crtc *), GFP_KERNEL);
> >  	if (!save_encoder_crtcs)
> >  		return -ENOMEM;
> >  
> > -	save_connector_encoders = kzalloc(dev->mode_config.num_connector *
> > +	save_connector_encoders = kcalloc(dev->mode_config.num_connector,
> >  				sizeof(struct drm_encoder *), GFP_KERNEL);
> >  	if (!save_connector_encoders) {
> >  		kfree(save_encoder_crtcs);
> > diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> > index 1b8f013ffa65..de31e52ab9cb 100644
> > --- a/drivers/gpu/drm/drm_fb_helper.c
> > +++ b/drivers/gpu/drm/drm_fb_helper.c
> > @@ -2266,7 +2266,7 @@ static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
> >  	if (modes[n] == NULL)
> >  		return best_score;
> >  
> > -	crtcs = kzalloc(fb_helper->connector_count *
> > +	crtcs = kcalloc(fb_helper->connector_count,
> >  			sizeof(struct drm_fb_helper_crtc *), GFP_KERNEL);
> >  	if (!crtcs)
> >  		return best_score;
> > diff --git a/drivers/gpu/drm/drm_plane_helper.c b/drivers/gpu/drm/drm_plane_helper.c
> > index 06aee1741e96..759ed93f4ba8 100644
> > --- a/drivers/gpu/drm/drm_plane_helper.c
> > +++ b/drivers/gpu/drm/drm_plane_helper.c
> > @@ -354,7 +354,7 @@ int drm_primary_helper_update(struct drm_plane *plane, struct drm_crtc *crtc,
> >  	/* Find current connectors for CRTC */
> >  	num_connectors = get_connectors_for_crtc(crtc, NULL, 0);
> >  	BUG_ON(num_connectors == 0);
> > -	connector_list = kzalloc(num_connectors * sizeof(*connector_list),
> > +	connector_list = kcalloc(num_connectors, sizeof(*connector_list),
> >  				 GFP_KERNEL);
> >  	if (!connector_list)
> >  		return -ENOMEM;
> 
> -- 
> Jani Nikula, Intel Open Source Technology Center

-- 
Sean Paul, Software Engineer, Google / Chromium OS

