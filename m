X-GM-THRID: 6954012466570330112
X-Received: by 2002:a05:651c:1190:: with SMTP id w16mr10602070ljo.386.1619463974619;
        Mon, 26 Apr 2021 12:06:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls6008895ljf.8.gmail; Mon, 26 Apr
 2021 12:06:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx/efILUNv1rpv+Q1dqDF9GMGkWPKxsDF5cs/66KDKdDfSvX9nR0udE8EczcXCX4fCVibSD
X-Received: by 2002:a2e:9e56:: with SMTP id g22mr13964779ljk.113.1619463972986;
        Mon, 26 Apr 2021 12:06:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619463972; cv=none;
        d=google.com; s=arc-20160816;
        b=l2lW9ghJmJdfZmI4QXp2R/+d+Acr5VS+mm8fVDVrb7ZAnnTpVCs1Jongua5uAueBE0
         6YdkTO75NTqNKlodBgtFSVFgKyW02SDJ4iJxVbWF/HQCGQ7ByEjAc45tu6hBHFYedUWc
         ynk1DdAb/IqZdVwxVujzm1uPmkS8MLzHy7V/rasssvKyFIVIHUwZO4XZ/88golfbOSuM
         zLq8uXz2LsULaZK7IEnfBhxlveShK2x/opIZ5u8IN4Y6ZxSi/BuEwqDmWKXlBGcPvCTk
         W/WW5JrMetayJzUsNfHcDjTI49K772FHvHb0c0zBL5OGp7i704SpdUq589/lNfxmGa2P
         n5WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qzrC1Kq+MFBMN6fW/1czS9SkAtIfV8nGIBcDBhlNciY=;
        b=0Fqpko6jjHp+V0gn+7Lvb2+m0pbj1oJiFmAshMabfoHK9AKUuPtkfIlVeoGI69o15G
         Vnwx1o5+CthYywlmy48f341XypHK9Vf9hEtYqXVDfjDjsa3wBhjn6zpqoBb/JapmHw85
         ujrK6kTbplTYcloGObLnGN/RKeybOaTyakBLXcdKDYhgtreVrVFIc0elnsyQ5WnpC1PO
         2jMIGd0a55aQZLr7FrwTCywmpEY6hETT3ljdP8I6MneKEkc0oRLne7GripZStKwu04Yh
         nMf64B6IrCBCVa+THGjumKtU9iuNzScFUYY05u1ZTqUp9txIwZV8YheAL4H+Tdd6uRvb
         2aFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tb9VmsvM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id n10si1160814lft.1.2021.04.26.12.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 12:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tb9VmsvM;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62f.google.com with SMTP id u17so86122655ejk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qzrC1Kq+MFBMN6fW/1czS9SkAtIfV8nGIBcDBhlNciY=;
        b=Tb9VmsvMB/FivTuyRMIAr19B99fb8vQEgeIf+3VRXtNPE15M8rtK8gghpsNzV4Ttyl
         lxObizfHcldMaQqCl9udQpKjNzapKnZzO4ZNNFhePp/bO6VS4ztacmwvfDLRAYZONsWO
         br/KyjyETMvDiXk+ZQJbbF5S2DixoIgx4qVpouCJBbcyJ5jC/R6Tppgi/KPDNvO3+P96
         n2aOY/EZbIBWUUskwvx/g+lpAVVg11KBp47aloDxpnd1uAB3Ac7slprlYtyZQ0o88toe
         jPUIrgwmS9H2vQiAAsGCL9uqfJPVDmtxWCLRScwXLa4bDo/ujvHrMU0ljZZwjZ9SmuKl
         IcPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qzrC1Kq+MFBMN6fW/1czS9SkAtIfV8nGIBcDBhlNciY=;
        b=YXIHzDT5yJx3OKtmpFNLbVMO8jZTeW2VJSKRj1bGBFctxrxpVpTvP3W/vQ1Rsy5Eem
         4uQkZT+zqMuVcyO/oO0ZNhP9JTKG8EOmQLShKA0oqUpUPm7zha1nysmfxdbbLCvgPKSk
         r/EojH5vtmMsOtivAmR20LMDKML5OFQiOAIoTQQv2fhdrVe4TQ+o+oHXz1h76nZEyNXI
         BlXEWQdZpo4tbeVlpO6BHUvBLRx8jyvNSM4hep93Oiq26TIxnuBr3yMX/MNi/KbgvM8R
         eGgaCLXr6hQ5z0TcGNHmGW+7tMEKnSS9WSa10ksRPjnSu2k0OQ6k/nw9hQGugWztolNW
         XyGw==
X-Gm-Message-State: AOAM531U8JnGXz4buGkDddu9ezFNifc6YxxMuH7LV5h4ZvWbHBbKbtK7
	6pCIEDCDkdDoDt6/TAHqe6x9w+qupn80t/Tr
X-Received: by 2002:a17:906:5906:: with SMTP id h6mr20186115ejq.176.1619463972520;
        Mon, 26 Apr 2021 12:06:12 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id q25sm11756648ejd.9.2021.04.26.12.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 12:06:12 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Matthew Wilcox <willy@infradead.org>, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Melissa Wen <melissa.srw@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] drm/amd/amdgpu/amdgpu_drv.c: Replace drm_modeset_lock_all with drm_modeset_lock
Date: Mon, 26 Apr 2021 21:06:10 +0200
Message-ID: <28921365.3cLsizAqWR@linux.local>
In-Reply-To: <YIbmH4LXzIej62su@phenom.ffwll.local>
References: <20210422155951.6314-1-fmdefrancesco@gmail.com> <20210422165034.GP3596236@casper.infradead.org> <YIbmH4LXzIej62su@phenom.ffwll.local>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 26, 2021 6:11:11 PM CEST Daniel Vetter wrote:
> On Thu, Apr 22, 2021 at 05:50:34PM +0100, Matthew Wilcox wrote:
> > On Thu, Apr 22, 2021 at 05:59:51PM +0200, Fabio M. De Francesco wrote:
> > > -		drm_modeset_lock_all(drm_dev);
> > > -
> > > 
> > >  		drm_for_each_crtc(crtc, drm_dev) {
> > > 
> > > +			drm_modeset_lock(&crtc->mutex, NULL);
> > > 
> > >  			if (crtc->state->active) {
> > >  			
> > >  				ret = -EBUSY;
> > > 
> > > -				break;
> > > 
> > >  			}
> > > 
> > > +			drm_modeset_unlock(&crtc->mutex);
> > > +			if (ret < 0)
> > > +				break;
> > > 
> > >  		}
> > > 
> > > -		drm_modeset_unlock_all(drm_dev);
> > > -
> > 
> > I might remove the {} around ret = -EBUSY, but this is good.
> > 
> > Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> 
> Yup patch looks good, but it's not cc'ed to drm/amdgpu maintainers/m-l, so
> likely won't get picked up. Can you pls check scripts/get_maintainers for
> anything you've missed, add those and resend with Willy's r-b tag
> included?
> 
> Then Alex can pick it up for merging.
> 
> Thanks, Daniel
>
I had already submitted a v2 of this patch with an added 'Review-by' Matthew 
Wilcox under my name. It removed the unnecessary braces that willy pointed 
out. However I see that not all maintainers had been cc'ed, so I'm going to  
resend it as v3.

Thanks,

Fabio






