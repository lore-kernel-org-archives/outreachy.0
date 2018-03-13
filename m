X-GM-THRID: 6531834360584208384
X-Received: by 10.223.155.145 with SMTP id d17mr12880wrc.30.1520937885138;
        Tue, 13 Mar 2018 03:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.148 with SMTP id 142ls2055260wmo.11.gmail; Tue, 13 Mar
 2018 03:44:43 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsKPwncpVEP9xFIKLVTWkgRza66BpxHaDt4n+uCmrUxoxLMlfdFmK6vJ5O2FZmn0uB/gx6G
X-Received: by 10.28.190.24 with SMTP id o24mr45007wmf.10.1520937883567;
        Tue, 13 Mar 2018 03:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520937883; cv=none;
        d=google.com; s=arc-20160816;
        b=YiJix0Muo6MFMmTzSnoLn09QGX7ZP0yWt5uqqRGlmkmX+Lu7dAaWNjfTrq3mOicg2f
         vAEHzexHZb6eDL0DLXBjggi6wV5waclsRa1hDp7uAu+OiNaTAFNq/FUTf84YPu+/4FUV
         cHJnKj/2LHczfMvQF5AQLyjXbPkeV+acyPUn33E4c3odYy4gVLbKWycfDi6jhoXGIr5y
         J7FjGawYhexAUtpMYO0LTlUFOEJkNZhobG3k1ZEDleeB1AhegeT5MEjSNQiOLNMAhkwB
         VKMf2wT2uFBfD4LjybAl3+jCwdCH1C+zdA9ajxrsnT1L6weclETY0EVVQgre/FtiIT+7
         9tfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=nsX2rSbgVpLdctwfAJWcaTMxtLVKfMWI7M5Ke6IOsmY=;
        b=P4SZlEsZoddsVfBiLsxC2DEqRg4CzYqlG/yUPX7D7HZ1ZyuqjQ2ZzLM/iWq2Fuhg1x
         LFvj6DioaPie1TYiKXG8CowfPHoM5Hh4setsPLkylLVIWI53C3M9vHh5aKLCJk/pbJvM
         WLEIm8qBPFP3+WV8z7d9kGj4fMz0Yrif4c8CcGGZUykHOPNhkleWnHO1OE5fZZo4W2xN
         qa9QQ1DE0zpW4x2s7HAKyVIIZnREXVEJzM56hmLUzBTa4gpd6rLLK7QHpulSs4jL9M+b
         UbfC4hDbqDtfMioS2hXAoRvSl5FUoSa0pFMs21EnLXvN9h/Iys6cv8/EevcxEs+a0oiS
         2c2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=JEroWpB8;
       spf=neutral (google.com: 2a00:1450:400c:c0c::22d is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wr0-x22d.google.com (mail-wr0-x22d.google.com. [2a00:1450:400c:c0c::22d])
        by gmr-mx.google.com with ESMTPS id s18si1265wrg.5.2018.03.13.03.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Mar 2018 03:44:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c0c::22d is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c0c::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=JEroWpB8;
       spf=neutral (google.com: 2a00:1450:400c:c0c::22d is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wr0-x22d.google.com with SMTP id o8so21163687wra.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Mar 2018 03:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nsX2rSbgVpLdctwfAJWcaTMxtLVKfMWI7M5Ke6IOsmY=;
        b=JEroWpB8JwyAWgw4cd6JBwPwuyVwxZdBnAcJrw3G1QEkrFdIDITrQfunYhD8UKjZdc
         BOueKjUfia70zx7b4RiPDFVMZPLxL2EBqg+SxSrDgjRoEXWxy4xqDzXjkhmEPNxOLnnV
         kPeVFVWsaMBCzy+4lFosRMS1R+iYfQYn+a2j4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=nsX2rSbgVpLdctwfAJWcaTMxtLVKfMWI7M5Ke6IOsmY=;
        b=VEl5eiXs0zdyajlE/dcZHo3WUks8tJOYuELIFkyAcQkRK0N3HnK7xsjiChcw4fhyGg
         bIwVg5iihvcEdlW+PXc2sW7jcq7aTNkdwYX9/KnJMzh1grXUqA0nHlpk/na+ppgqoheI
         gF7O5HxJDNoss9V8dsSkT6QvpTiRcLvgOJ8BFrRdmfzpvUOwJYLjQTOC2xou1cxMf1JT
         7hWHSJPJ3avo6nGwHP7hotcHezWhJKC7LbwzCPQYgoGW/qbD9t0qxIs161QPUIy47dVf
         5q91gaZhMZZ3eC7wvVSDgUjUi9KQL0JiovURVwnEr/6Z271fX+SjkgZ3+jO6erfR6wxi
         VuEg==
X-Gm-Message-State: AElRT7Hf4KeQ/U8aPTgDcj9IUH0AP/M9FCz3ONOs1VxnwEl0PZolPAjj
	GdJMX33t+qlUZCR18f+SEDwIug==
X-Received: by 10.80.182.48 with SMTP id b45mr362506ede.87.1520937882927;
        Tue, 13 Mar 2018 03:44:42 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:56e6:0:e4bc:76a0:8042:669e])
        by smtp.gmail.com with ESMTPSA id u46sm264276edm.57.2018.03.13.03.44.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Mar 2018 03:44:41 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 13 Mar 2018 11:44:35 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sinclair Yeh <syeh@vmware.com>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel@googlegroups.com,
	VMware Graphics <linux-graphics-maintainer@vmware.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm/vmwgfx: replace drm_*_unreference with drm_*_put
Message-ID: <20180313104310.GA4788@phenom.ffwll.local>
References: <20180311233313.GA19721@Haneen>
 <20180312173443.GP8589@phenom.ffwll.local>
 <20180312174246.GA32341@vmware.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180312174246.GA32341@vmware.com>
X-Operating-System: Linux phenom 4.15.0-1-amd64 
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 12, 2018 at 10:42:47AM -0700, Sinclair Yeh wrote:
> Hi Daniel,
> 
> 
> On Mon, Mar 12, 2018 at 06:34:43PM +0100, Daniel Vetter wrote:
> > On Sun, Mar 11, 2018 at 05:33:13PM -0600, Haneen Mohammed wrote:
> > > This patch replace instances of drm_framebuffer_unreference with _put()
> > > suffix, because it is shorter and consistent with the kernel use of
> > > *_get/put() suffixes.
> > > This was done with the following Coccinelle script:
> > > 
> > > @r@
> > > expression e;
> > > @@
> > > 
> > > (
> > > -drm_framebuffer_reference(e);
> > > +drm_framebuffer_get(e);
> > > |
> > > -drm_framebuffer_unreference(e);
> > > +drm_framebuffer_put(e);
> > > )
> > > 
> > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > Sinclair/Thomas: Ok if I pull this in through drm-misc? Makes outreachy
> > applicant book-keeping easier since iirc the vmwgfx tree isn't in
> > linux-next. But ok if you want to merge it too.
> 
> Yes, drm-misc is fine.

Thanks, applied.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

