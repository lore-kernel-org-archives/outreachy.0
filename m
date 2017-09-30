X-GM-THRID: 6470705412124442624
X-Received: by 10.99.191.8 with SMTP id v8mr1023629pgf.6.1506762974678;
        Sat, 30 Sep 2017 02:16:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls1992183pgn.22.gmail; Sat, 30 Sep
 2017 02:16:13 -0700 (PDT)
X-Received: by 10.99.165.83 with SMTP id r19mr1021571pgu.172.1506762973875;
        Sat, 30 Sep 2017 02:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762973; cv=none;
        d=google.com; s=arc-20160816;
        b=B+ZnSW6UIkFHsS+KkWxyx51Ac8odu89R3mPqZU7cCfhw79ynr5Bi0e8gvN5+GPcUHz
         p4mf7csZBL40H5wnZq0U8LCEF79/2+lZTLHmrGTRG6nRcFPTOhUo+3CmCA9OhlnIRpBe
         ROewwIRXALo0w7IzmKjTTbKFPfS9E+oaimvfXxfXYS0Q3kbKhkSn2LDR5XwF89+9c8Er
         9xQ1AbdHxsK/2FT9SJxCumSPNklbLftXkGJXCBKfUkv2/xItaKleZn4AFa5WnmkgBNsj
         HpBpGBcTFc0vkZsBQw+4ESANC1BHJfYgjD8/NQ1liGmy+yOBE/U8TIVDaH3nv6nYBzYm
         1vCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=rYFH/hC9JdZ6rCtm8zsReLFcE/eCYCw0FVCaysyrVGc=;
        b=juOA+IYoJe9fRyPAplvxRCM1dOtu3h6GH3U7dWBcMPVCX3YcmPoIhDGVSmHcwfRZZr
         AUMe5NXmMQd/ds9H0kYgMoMljtYv7txKmrdFd6Ginb8l8/yVYzpBZFChGz6HxeDjsw9u
         qefhUthJkbs9m65T9j/DN8SPsiHgvDLvFMHTveMypJ1jH556ZmpF3/a0A/ixbBLIcwIj
         E0Ey+YIiiYTweMz9Mve0HAPR5n2TOKoQwc8IY3DL109EVgLjkVJWSxN2vG4vkH5aSddo
         Vivc/N/X0NNA+Xgg+Ts9Jrzqe3bEgl0uAqkI8Lpf97XMeefmKYoqUTK5aU2BXNH24hYu
         b4qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5Loi4ei;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c200si633509pfb.14.2017.09.30.02.16.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5Loi4ei;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so1118783pfi.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=rYFH/hC9JdZ6rCtm8zsReLFcE/eCYCw0FVCaysyrVGc=;
        b=L5Loi4einsiXSIzeuCp65yKX7eKcZ5hShrV4pnHfmH/VOIWG8X5akFEcNBUrES7DdY
         /uiAqwottTKhai0Ff4NObkAgYfllMBeXC6Q0sH3d0y8kvGBfUXBjjPcPrSoEcRo7+se4
         FtxjOXy8aqhd5ur2gRwlB8OYCMdJNM4IZi1ilVABLV+r3aPkBLkbB6CqYSgZTr26JPkw
         x/2JRSgJKanzqdkERr7EMRYNhjVvsBpQlc++YxJmPE+K6MfQfM9gELIRUzAFBtlisTTl
         ZfQGc8PXVzhKmeqxoGXmfsHCa1KpoL0HhkP69OBBFSV9UeD/9rBS+7jEmF7PMXKTf51Q
         iWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=rYFH/hC9JdZ6rCtm8zsReLFcE/eCYCw0FVCaysyrVGc=;
        b=cCrZ0BYDubF9DqG70Qs07k3JWH3GU76CgzBUJ+kM3nr4H5EFoAtO/5O9YVBP0ecwv7
         XsUI+1geNE76bunIjUAiq87ul9DhgCjcSLLm3DEAP0nmCUWd953hca/bXtG8sTLvguj3
         XC2+pnPNmpVrhCkdSakmWXX40mnZPOsWuDjsxztv3XcnAUVv6X+6yTw4oJwIxB2MTDrB
         pvA0gaf+7S3y6wgTNBXT6Tx4XWLItJcirjlgDigeLjLKuRB+d/S5egRf9MmH1x+Vji8a
         VqQdZQAUCZhY3sU78SDIJFsua6QTwa1pOS748oKG0Ucrt4wUw3pC9ElbKQKogqcipVYV
         bZJw==
X-Gm-Message-State: AHPjjUgWY5mf3/p+CQEBZSeN7Yh0dYS/6sTNi7U/GTN0+NNNtWkF8m/p
	BqYKUHDGyS/OhmZqiEsKCoazymlM
X-Google-Smtp-Source: AOwi7QAHq18ASADyjRA3NTf5JFNvRCPg3vZy74ItamW9k9cpVFMsVLVX5mZT46+Dp1JCxo4XPy63DQ==
X-Received: by 10.159.204.138 with SMTP id t10mr9311502plo.450.1506762973624;
        Sat, 30 Sep 2017 02:16:13 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id r87sm1418147pfe.14.2017.09.30.02.16.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:16:12 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:46:06 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>, daniel@ffwll.ch,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20170930091604.GA18362@meghana-HP-Pavilion-Notebook>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
 <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
 <b87bff83-e9af-e095-2b58-8a0b3fb642e0@tronnes.org>
 <20170929122025.GA29498@meghana-HP-Pavilion-Notebook>
 <4b32d910-f0af-e9cb-feb7-4bc4174bc9c3@tronnes.org>
 <20170929141324.GA30107@meghana-HP-Pavilion-Notebook>
 <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08dd8e6a-3028-098e-e193-9f408c6a9633@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 29, 2017 at 05:41:04PM +0200, Noralf Tr�nnes wrote:
> 
> Den 29.09.2017 16.13, skrev Meghana Madhyastha:
> >On Fri, Sep 29, 2017 at 02:33:12PM +0200, Noralf Tr�nnes wrote:
> >>Den 29.09.2017 14.20, skrev Meghana Madhyastha:
> >>>On Fri, Sep 29, 2017 at 02:10:31PM +0200, Noralf Tr�nnes wrote:
> >>>>Den 29.09.2017 05.22, skrev Meghana Madhyastha:
> >>>>>On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Tr�nnes wrote:
> >>>>>>Den 28.09.2017 16.08, skrev Daniel Vetter:
> >>>>>>>On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> >>>>>>>>Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >>>>>>>>and move it into drm_of.c from tinydrm-helpers.c. This is
> >>>>>>>>because other drivers in the drm subsystem might need to call
> >>>>>>>>this function. In that case and otherwise, it is better from
> >>>>>>>>an organizational point of view to move it into drm_of.c along
> >>>>>>>>with the other _of.c functions.
> >>>>>>>>
> >>>>>>>>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>>>>>>>---
> >>>>>>>>Changes in v3:
> >>>>>>>>-Change it back to a single patch from two patches in v2
> >>>>>>>>
> >>>>>>>>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> >>>>>>>>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> >>>>>>>>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >>>>>>>>  include/drm/drm_of.h                           |  1 +
> >>>>>>>>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >>>>>>>>  5 files changed, 47 insertions(+), 42 deletions(-)
> >>>>>>>>
> >>>>>>>>diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >>>>>>>>index 8dafbdf..d878d3a 100644
> >>>>>>>>--- a/drivers/gpu/drm/drm_of.c
> >>>>>>>>+++ b/drivers/gpu/drm/drm_of.c
> >>>>>>>>@@ -1,6 +1,7 @@
> >>>>>>>>  #include <linux/component.h>
> >>>>>>>>  #include <linux/export.h>
> >>>>>>>>  #include <linux/list.h>
> >>>>>>>>+#include <linux/backlight.h>
> >>>>>>>>  #include <linux/of_graph.h>
> >>>>>>>>  #include <drm/drmP.h>
> >>>>>>>>  #include <drm/drm_bridge.h>
> >>>>>>>>@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>>>>>>>  	return ret;
> >>>>>>>>  }
> >>>>>>>>  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >>>>>>>>+
> >>>>>>>>+/**
> >>>>>>>>+ * drm_of_find_backlight - Find backlight device in device-tree
> >>>>>>>>+ * @dev: Device
> >>>>>>>>+ *
> >>>>>>>>+ * This function looks for a DT node pointed to by a property named 'backlight'
> >>>>>>>>+ * and uses of_find_backlight_by_node() to get the backlight device.
> >>>>>>>>+ * Additionally if the brightness property is zero, it is set to
> >>>>>>>>+ * max_brightness.
> >>>>>>>>+ *
> >>>>>>>>+ * Note: It is the responsibility of the caller to call put_device() when
> >>>>>>>>+ * releasing the resource.
> >>>>>>>>+ *
> >>>>>>>>+ * Returns:
> >>>>>>>>+ * NULL if there's no backlight property.
> >>>>>>>>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>>>>>>>+ * is found.
> >>>>>>>>+ * If the backlight device is found, a pointer to the structure is returned.
> >>>>>>>>+ */
> >>>>>>>>+struct backlight_device *drm_of_find_backlight(struct device *dev)
> >>>>>>>>+{
> >>>>>>>>+	struct backlight_device *backlight;
> >>>>>>>>+	struct device_node *np;
> >>>>>>>>+
> >>>>>>>>+	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>>>>>>>+	if (!np)
> >>>>>>>>+		return NULL;
> >>>>>>>>+
> >>>>>>>>+	backlight = of_find_backlight_by_node(np);
> >>>>>>>>+	of_node_put(np);
> >>>>>>>>+
> >>>>>>>>+	if (!backlight)
> >>>>>>>>+		return ERR_PTR(-EPROBE_DEFER);
> >>>>>>>>+
> >>>>>>>>+	if (!backlight->props.brightness) {
> >>>>>>>>+		backlight->props.brightness = backlight->props.max_brightness;
> >>>>>>>>+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>>>>>>>+			      backlight->props.brightness);
> >>>>>>>>+	}
> >>>>>>>>+
> >>>>>>>>+	return backlight;
> >>>>>>>>+}
> >>>>>>>>+EXPORT_SYMBOL(drm_of_find_backlight);
> 
> <snip>
> 
> >>>>>>Another problem I discovered when trying to compile this, is that if
> >>>>>>DRM is builtin and LCD_CLASS_DEVICE is a module:
> >>>>>>
> >>>>>>drivers/gpu/drm/drm_of.c:292: undefined reference to
> >>>>>>`of_find_backlight_by_node'
> >>>>>>
> >>>>>>I see that I solved this in tinydrm by just selecting
> >>>>>>BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
> >>>>>>force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
> >>>>>>
> >>>>>>Arnd fixed a similar type of dependecy in the repaper driver by forcing
> >>>>>>repaper to be a module if necessary. To be honest, I don't know why his
> >>>>>>fix works:
> >>>>>>https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002
> >>>>>I didn't quite understand how we could use this fix for the current
> >>>>>case. Isn't this specific to the repaper driver dependency ?
> >>>>This is the solution Daniel mentions:
> >>>>
> >>>> �menuconfig DRM
> >>>> ���� tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI
> >>>>support)"
> >>>> ���� depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
> >>>>+�� depends on (LCD_CLASS_DEVICE || LCD_CLASS_DEVICE=n)
> >>>I had tried this but it resulted in a recursive dependencies error.
> >>What's the error?
> >>Could this have something to do with tinydrm selecting backlight and
> >>depending on DRM?
> >>
> >>Noralf.
> >Looks like a case of circular dependencies. The exact error is this:
> >
> >scripts/kconfig/mconf  Kconfig
> >drivers/gpu/drm/Kconfig:7:error: recursive dependency detected!
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/gpu/drm/Kconfig:7:	symbol DRM depends on LCD_CLASS_DEVICE
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/video/backlight/Kconfig:16:	symbol LCD_CLASS_DEVICE is
> >selected by FB_CLPS711X
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/video/fbdev/Kconfig:338:	symbol FB_CLPS711X depends on FB
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/video/fbdev/Kconfig:5:	symbol FB is selected by
> >DRM_KMS_FB_HELPER
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/gpu/drm/Kconfig:73:	symbol DRM_KMS_FB_HELPER is selected by
> >DRM_FBDEV_EMULATION
> >For a resolution refer to Documentation/kbuild/kconfig-language.txt
> >subsection "Kconfig recursive dependency limitations"
> >drivers/gpu/drm/Kconfig:90:	symbol DRM_FBDEV_EMULATION depends on
> >DRM
> >
> >Long story short, the dependency loop is as follows:
> >
> >DRM -> LCD_CLASS_DEVICE ->  FB_CLPS711X -> FB -> DRM_KMS_FB_HELPER ->
> >DRM_FBDEV_EMULATION -> DRM
> 
> I have messed up the options here, it should be BACKLIGHT_CLASS_DEVICE:
> 
> menuconfig DRM
> ��� depends on (BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n)
> 
> It doesn't help with the recusrsive problem, but at least it makes sense:
> 
> drivers/gpu/drm/Kconfig:7:����� symbol DRM depends on BACKLIGHT_CLASS_DEVICE
> drivers/video/backlight/Kconfig:158:��� symbol BACKLIGHT_CLASS_DEVICE is
> selected by DRM_RADEON
> drivers/gpu/drm/Kconfig:164:��� symbol DRM_RADEON depends on DRM
> 
> I don't know how to solve this...
> 
> Noralf.

Looks like select BACKLIGHT_CLASS_DEVICE and BACKLIGHT_LCD_SUPPORT
seemed to work (atleast when I replicated the configurations from the 
kbuild support). Maybe that is because we are not forcing the
dependencies when we do a select ?

Thanks and regards,
Meghana

