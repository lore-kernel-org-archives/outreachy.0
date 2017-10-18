X-GM-THRID: 6470825285154504704
X-Received: by 10.80.167.162 with SMTP id i31mr4037995edc.9.1508321182188;
        Wed, 18 Oct 2017 03:06:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls1662590edk.5.gmail; Wed, 18 Oct
 2017 03:06:21 -0700 (PDT)
X-Received: by 10.80.201.74 with SMTP id p10mr4044331edh.7.1508321181336;
        Wed, 18 Oct 2017 03:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508321181; cv=none;
        d=google.com; s=arc-20160816;
        b=akF1aRMwhQg4zR/TKUopb0ErSkWQowhn7EPwViXtDH73GQg9+ucxq73eA0H9m0kQl0
         EseGxkuyIoiJ7D5x0wqkwKSC7HYYMj4jTCC7chiLvz3IcijU91N65Q6sEvY4V3tTUApU
         zGJ8Vn/HXP94pJIwHmGdI/j4d2rwR7xncCV/QClWO9nrTZ9QXGBOsKP2w8TM7C5ZAEr9
         5zQXk6beubswIlO4VJX1KLjCPcAVppr70rsP/hHUnv8N2EjrAl7Q2YV603nY6lnz2xX3
         4PkZztvw3Qn4ovBe62RsR/eowzBel/06/2jhWVk3EOfnNaV9mY8OByJj7JKPqiKJpJ/l
         UiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=TvmnK+ilLG9425ggQlkpJmRoP1wrJjBx5bAtUTQtKHk=;
        b=BFJ0P4qZS6lQuudatKviP1jlYerPHC31wfMRgIbArwavm6oY//btOLuPUzpJ7Eizq8
         f8s9z25qhr0mbJ70IdyfwfMUToU8w4idB55qhzq4IfvAXVYWfx57TtSnqxwPcfjGPP68
         ibJrUAGmLYi26sYaPzSC9nE5TVc/6Yi16ntw8HV13gwCdBjyJLCIcte28yBvVi7mmzk9
         Zal3Uc9s8oRkx7XxUsg0TyyDXGnUP1HIeJ8MOfpNrefXL8WExcfUqGMX09VgXFsFEXr4
         M9XKKJKePn9vlbGTmmQHh/5tXySYTnL494i+r9vKKwHkX0rm8N9JETnlr0eCA6ejZ31C
         eqgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=LF39O8P9;
       spf=neutral (google.com: 2a00:1450:400c:c09::234 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id w24si556914edl.5.2017.10.18.03.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 03:06:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::234 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=LF39O8P9;
       spf=neutral (google.com: 2a00:1450:400c:c09::234 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x234.google.com with SMTP id q124so8956844wmb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 03:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=TvmnK+ilLG9425ggQlkpJmRoP1wrJjBx5bAtUTQtKHk=;
        b=LF39O8P9z2Lnq4QDEu0b0uhcc+zwEbiD4OkiTxd1PBL0IZRMRAQnLqNjK/YgwR208U
         p8u1+SoEzWa08n+OvffJVqESbFf1DqBDmQ1yI0lFWGOd6SsoglA0yUuh1vHkeeNzwSVA
         h7iGGZplXseYE1L3AQFFlNv6UZ/6L3BTZTcdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=TvmnK+ilLG9425ggQlkpJmRoP1wrJjBx5bAtUTQtKHk=;
        b=mHkGfqyBTHqa5yz29qFz1NdT947bVIxT4iqKPfkDedNhexahSWHA5MUic8q9Ic7aRj
         Iv0mUwU/ElDg499gOiROVX25lrVpqyUgWHQNWqyK5rcZsWIQKZ/Fd6IVWDlzDD+QQkDP
         1+zJMopFWhQKr0l00CSg8sywP2Ep7geizua0+8VFT1mgRLhzvt+uZdNMS8KdSgqWD+WW
         RcMgcyOl+rxrf3ctsziRaf20miyRKrS2ESurgl1nHDk+/4CcWWOgbS25ij9ezluEV8Jo
         eHyeCF/wLzzBUIU+jrKTtvf847O0cyy0ua0cA9xeLNbblXl7aWe6tXdxk/rTScYpIzs8
         QV5Q==
X-Gm-Message-State: AMCzsaU0vt1Dd65qhcdtL1S8pGkUG6ivrrD/OR0FXQPRr0twbjbRCjdY
	u29qlvjF15hRj3E72LXmeZlkMA==
X-Google-Smtp-Source: AOwi7QB8C4GNB3zAxFHopPefKhQDQyV0+c1cDusGpXMZi+1Y7uOABk+rm/aj+2afVEHQUvUzsBPCMg==
X-Received: by 10.80.142.212 with SMTP id x20mr20858512edx.285.1508321180846;
        Wed, 18 Oct 2017 03:06:20 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id g27sm8113978edf.43.2017.10.18.03.06.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Oct 2017 03:06:19 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 18 Oct 2017 12:06:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org,
	jani.nikula@linux.intel.com, intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v5] drm/i915: Replace *_reference/unreference() or
 *_ref/unref with _get/put()
Message-ID: <20171018100616.k755ny2drjeiofpq@phenom.ffwll.local>
Mail-Followup-To: Harsha Sharma <harshasharmaiitr@gmail.com>,
	seanpaul@chromium.org, jani.nikula@linux.intel.com,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20171014183644.21990-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171014183644.21990-1-harshasharmaiitr@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Sun, Oct 15, 2017 at 12:06:44AM +0530, Harsha Sharma wrote:
> Replace instances of drm_framebuffer_reference/unreference() with
> *_get/put() suffixes and drm_dev_unref with *_put() suffix
> because get/put is shorter and consistent with the
> kernel use of *_get/put suffixes.
> Done with following coccinelle semantic patch
> 
> @@
> expression ex;
> @@
> 
> (
> -drm_framebuffer_unreference(ex);
> +drm_framebuffer_put(ex);
> |
> -drm_dev_unref(ex);
> +drm_dev_put(ex);
> |
> -drm_framebuffer_reference(ex);
> +drm_framebuffer_get(ex);
> )
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Applied to drm-intel, thanks.
-Daniel
> ---
> Changes in v5:
>  -rebase drm_dev_put change on drm-tip
> Changes in v4:
>  -change one instance of *_put to *_get
> Changes in v3:
>  -Removed changes in selftests
> Changes in v2:
>  -Added cocinelle patch in log message
>  -cc to all driver-specific mailing lists
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index bf467f30c99b..1223961c3700 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -645,7 +645,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  	struct drm_device *dev = pci_get_drvdata(pdev);
>  
>  	i915_driver_unload(dev);
> -	drm_dev_unref(dev);
> +	drm_dev_put(dev);
>  }
>  
>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> -- 
> 2.11.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

