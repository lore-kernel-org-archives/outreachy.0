X-GM-THRID: 6470825285154504704
X-Received: by 10.28.94.5 with SMTP id s5mr1050854wmb.15.1507539601431;
        Mon, 09 Oct 2017 02:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.10 with SMTP id c10ls959897wmh.10.canary-gmail; Mon, 09
 Oct 2017 02:00:00 -0700 (PDT)
X-Received: by 10.223.164.206 with SMTP id h14mr663253wrb.2.1507539600600;
        Mon, 09 Oct 2017 02:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507539600; cv=none;
        d=google.com; s=arc-20160816;
        b=LQei+kwI307TQecF/5cfGSKlzx5NZdos1xuc2+9qyxA7XCbqlIF2+6VKRle/o8oBHh
         WvM8rhM1jokZmtPSaOW0pf66aqiLPPNlu3UN77u2+783zXvPKIMYRxnd5ERAVbJCXPSM
         C96d3pLuP72YxpLkB2xiyVNTHMWTr8Z0bZM7SUzcBDN+qaRUYCbOnSGvc+ksB1mXWiyu
         l4bNxDGdJfm8CoDDUxvUj4WpuweXgT8bEazWHIljWZQpWCZpv4NhYUDUoT/C6glN+dDA
         MYKKkpcTrtggDHMNQym2GDYiqztoL3ZegQAVzR0SqgOTE0wvRcflVIzUDlUVlFennPGG
         QzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=6GnJ2BEydE1ixifZwBPj3cMc/BkjvWtIe6cdl1EM/Bw=;
        b=BJChcM79Qkf+IJdAzz5fCyZRmxUEcHjghfpzBxahBymenSYQhcSJgaVAPhXYS5GxMP
         C6dDsXudVEZV6bE9692pMj3YAxnnWekeWdHVHfuDXE3OkfGvsN7MX54DXXvktyyWroVz
         srIvg2A3qt3bdJE2c0/9TF/moqM8R6OWgkbxxD7I0MaNyElxLhdxT/lE9ONd3nO/PfLv
         XIiL5Tg4K6UstYaEOsg3HBga+00f2Yrsll14sJ2V692B7DiHpVtuRPYa9TxHqaBccci9
         cGeFrAANPTcLuVkQ4A2NkEybti0I6SCAoV3P99X48S/cUWw7T2R7z7nqY/XRDgpj95pO
         1FcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ExhdkNp5;
       spf=neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id 74si1016943wme.2.2017.10.09.02.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 02:00:00 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=ExhdkNp5;
       spf=neutral (google.com: 2a00:1450:400c:c09::22b is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22b.google.com with SMTP id u138so21386862wmu.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 02:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=6GnJ2BEydE1ixifZwBPj3cMc/BkjvWtIe6cdl1EM/Bw=;
        b=ExhdkNp5D+27l/2/9LP8lIQ7KIySc9RvrsDp2oLgUU2UGUPf3RmGSCYYRrYc+6a6h8
         Zuh71opRicTTr+jg31p7LWiIe0H8K8PkJ+gLn/l1SHkamXJ4jCQndK8nqUnjQoHeeXUg
         zHzE8EKzEJCEzDfJnQe/qu0xlGroK4yN4/rTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=6GnJ2BEydE1ixifZwBPj3cMc/BkjvWtIe6cdl1EM/Bw=;
        b=BGCsIuL0NyyzKk+ChWPwRUn0j7cQyQh6/nwocH4Xpv5+d8AdzP8nTtq7mdSjENWLfr
         8ziwpFmLXC/GE6mf+ArBSyObwrvPV3ewf5BldDl6m3AOqKPkHuSlwmvny2FWVAsO7c0m
         K3FkTX99wtjhGusNJgOJzUfgkgYFmmnLZwwAeMAKEVVA1/i95reJcFVb2XytxnD8yxVW
         1H3w4cpsLV92zFTKVFGLYloGlw02ZKJDq8y0xLAyZ//lEyUajm+ajXHPVtD4zJLmjr20
         OxZcCu3tBrAO7q6YpWyvtrNOJGGBfpvumdZ9qsT/3WQ69wGzjmbld/OKN7uO/saT/RNE
         +1Ug==
X-Gm-Message-State: AMCzsaWeLdS4CWT9xflPBA3UAmKO7X/cA/OfUrneqJsyQsYPKFz1pwcm
	kKwrviyxS84vDZgtW4jYEvu0SA==
X-Google-Smtp-Source: AOwi7QBl6QDv4vOBbESyI9ToWl5s8hXUetbgBnsnk+WAkhnoNNcYlvuHK2JjKvHRjnY3paRMfvUAbg==
X-Received: by 10.80.181.67 with SMTP id z3mr10231783edd.103.1507539600225;
        Mon, 09 Oct 2017 02:00:00 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id c34sm6769087ede.84.2017.10.09.01.59.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Oct 2017 01:59:59 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 9 Oct 2017 10:59:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Harsha Sharma <harshasharmaiitr@gmail.com>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, jani.nikula@linux.intel.com,
	outreachy-kernel@googlegroups.com, intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Replace
 *_reference/unreference() or *_ref/unref with _get/put()
Message-ID: <20171009085957.nwfree4igdhiqtuf@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
	Harsha Sharma <harshasharmaiitr@gmail.com>, seanpaul@chromium.org,
	jani.nikula@linux.intel.com, outreachy-kernel@googlegroups.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
References: <20171008140407.13927-1-harshasharmaiitr@gmail.com>
 <150747381515.24532.16488907175098177864@mail.alporthouse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <150747381515.24532.16488907175098177864@mail.alporthouse.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sun, Oct 08, 2017 at 03:43:35PM +0100, Chris Wilson wrote:
> Quoting Harsha Sharma (2017-10-08 15:04:07)
> > @@ -624,7 +624,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
> >         ifbdev->preferred_bpp = fb->base.format->cpp[0] * 8;
> >         ifbdev->fb = fb;
> >  
> > -       drm_framebuffer_reference(&ifbdev->fb->base);
> > +       drm_framebuffer_put(&ifbdev->fb->base);
> 
> Whoops.

Hm yeah, how did this happen? Does cocci really do this, or is that an
accident from manually fixing stuff up?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

