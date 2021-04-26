X-GM-THRID: 6954012466570330112
X-Received: by 2002:a2e:8449:: with SMTP id u9mr11546507ljh.370.1619453475999;
        Mon, 26 Apr 2021 09:11:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1591470lff.3.gmail; Mon, 26
 Apr 2021 09:11:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWW2Kzp6mkYhAWLel6LEIG6GUcyDA2E1wEs5FlpCYxwBYkZrXXg2cFEDM+P54CmFxH86J1
X-Received: by 2002:ac2:4d10:: with SMTP id r16mr12996839lfi.643.1619453474263;
        Mon, 26 Apr 2021 09:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619453474; cv=none;
        d=google.com; s=arc-20160816;
        b=bQipj3KMeagP1ItsazHD1G2HQ7t16bxaZlElmlUpJa2NNyPBuVgpCo1pfJRbdZzBoz
         12M/m/+GtzMVrYqf6m7Iz+imzpHxtS0CS5NrZjk1chDicKQdC7z0Smbqxeb6GM8I1JYa
         lke7DLIkvd2ILMG240Tshi1Zxy8cjMtXpsriarYc3TeguzupdAQW603Xr57+LN2JFheZ
         0e8msAX5maxu6aX0CI0hc0wVqXwjvY6IGD65DtTMhTIcbN+460zPL/X3EOzAS/kNEKWQ
         vOySgVQ9eTTvSSHBhPrjM01jL0wuaCp4wfgV618kiYMCYT46/aoM6K9xbByFFJkdi2O3
         tYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=COfRB9S9Epg523VzoNjct6swwUl4EfNoWYZEirhIH04=;
        b=zIJEBeDU23oarSSbp/ELyxhmC/jWX3SBg7cEnsqofsaLo1Xv9joGRCgvy4vJWUL3V6
         HP2eY3Z+jBiVi9pOUg14zedP7Tz4VMvay04snic3trf/DU/KaFcQ1IUHgwzzDf/chkki
         pfmafUB+9LauLu/z+qCQ9y2I+e60NjKMgivCvIpq1B9cb68/n+X2/5VdBNs0+9oIRKRR
         9Fw1fFmIpL8w+adazR9LiGwNkfz7njMvMy7NsD+uka2EsWlyF4a/KEymGYLkI5KqeP3T
         2hRHd+1KZ/ph8B+T96aP88qNrrMd+eDEtttyDIr4iTYMMmyt+MnDdE7V6ljbLI/rrj1v
         Nugg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="MiDkRr/r";
       spf=neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id b12si464299ljo.3.2021.04.26.09.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 09:11:14 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="MiDkRr/r";
       spf=neutral (google.com: 2a00:1450:4864:20::434 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr1-x434.google.com with SMTP id h15so4228244wre.11
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 09:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=COfRB9S9Epg523VzoNjct6swwUl4EfNoWYZEirhIH04=;
        b=MiDkRr/rkNKRfaQtL50KFSPZKLpT0NhbhwtBhYkR2RSnjtDT6G61esZv8CNzL77XDY
         mVfpYu/tlaPY5ROaHkt0IWK41Wp0s3Zr9PgunG6K4e6xeYffvhCoO2CVWB2VQGpcLfjc
         jb72ezY6GB4QlyCA1faK9XBxoPkRT+CQXaeqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=COfRB9S9Epg523VzoNjct6swwUl4EfNoWYZEirhIH04=;
        b=lrp14ixgiOGvXTUKaTDgXlpKM2aXxRvQwbX9oNBtZXVjFdmePlh1BR1kDLI2tFDBXF
         Q57cx1GW7lIcYfsQcgqk8bCa7pOfNO+puqFWb7uth6F2RTb3Ska0pAo7tYVjF/FWA7Vo
         CGtlHDuULOg9AZVMKL4oxbdHJWLM7mL7ui1ptGMt63hxNJqtjck6JWxR7j91/lCgoM6e
         lTelvHcpbiab9atMOn9lXf/k3Ntyewnxmv8ZBW1uvyK8YDovf5Z0BAnfQnEZB8fRmCNl
         cmp22Y3pBxlHkHYzugy5QhgRBnz2hRVIsL2dDsNOdbzYDTd+RDkpBKKqz4dmX0HhjUJ6
         TnYA==
X-Gm-Message-State: AOAM530krJ/oeeMPy1eU4Nmo+q7KLeDg0faWVM3AoWt1uMAXYCSYNAtc
	00bzCC2ToKhXFkrQSMWunYdfzPxDjE3dqw==
X-Received: by 2002:adf:e602:: with SMTP id p2mr10001538wrm.119.1619453473712;
        Mon, 26 Apr 2021 09:11:13 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id u9sm18469548wmc.38.2021.04.26.09.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 09:11:13 -0700 (PDT)
Date: Mon, 26 Apr 2021 18:11:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Wilcox <willy@infradead.org>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] drm/amd/amdgpu/amdgpu_drv.c:
 Replace drm_modeset_lock_all with drm_modeset_lock
Message-ID: <YIbmH4LXzIej62su@phenom.ffwll.local>
References: <20210422155951.6314-1-fmdefrancesco@gmail.com>
 <20210422165034.GP3596236@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210422165034.GP3596236@casper.infradead.org>
X-Operating-System: Linux phenom 5.10.32scarlett+ 

On Thu, Apr 22, 2021 at 05:50:34PM +0100, Matthew Wilcox wrote:
> On Thu, Apr 22, 2021 at 05:59:51PM +0200, Fabio M. De Francesco wrote:
> > -		drm_modeset_lock_all(drm_dev);
> > -
> >  		drm_for_each_crtc(crtc, drm_dev) {
> > +			drm_modeset_lock(&crtc->mutex, NULL);
> >  			if (crtc->state->active) {
> >  				ret = -EBUSY;
> > -				break;
> >  			}
> > +			drm_modeset_unlock(&crtc->mutex);
> > +			if (ret < 0)
> > +				break;
> >  		}
> >  
> > -		drm_modeset_unlock_all(drm_dev);
> > -
> 
> I might remove the {} around ret = -EBUSY, but this is good.
> 
> Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Yup patch looks good, but it's not cc'ed to drm/amdgpu maintainers/m-l, so
likely won't get picked up. Can you pls check scripts/get_maintainers for
anything you've missed, add those and resend with Willy's r-b tag
included?

Then Alex can pick it up for merging.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

