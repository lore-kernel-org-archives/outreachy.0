X-GM-THRID: 6470705412124442624
X-Received: by 10.98.223.70 with SMTP id u67mr519263pfg.60.1506655361076;
        Thu, 28 Sep 2017 20:22:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.137 with SMTP id n9ls1628282plk.15.gmail; Thu, 28 Sep
 2017 20:22:40 -0700 (PDT)
X-Received: by 10.99.119.203 with SMTP id s194mr859509pgc.154.1506655360081;
        Thu, 28 Sep 2017 20:22:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506655360; cv=none;
        d=google.com; s=arc-20160816;
        b=H0Opvm5rWYDIkEX2phTkE7NXGWKnELDi2+Zfrz0/7J6l5a/9FKvSrozIt0HNelUgRE
         0GTM/Rm8H1ET9TbWE+6pJlgD4GwttRv5P/5HCDCL95qsglIrwzSuLjuDRxzxCV88yIRj
         PdkLXbnfyvSz+dz+IsbbhUhtFGi2An394WHhMdkKiKOR/VupIte5NJeibvXgrK+NVbzz
         b1N71xVXjK2+Q9K3m20biJeKwOdaOmg/M9A6qDxultFN9cZb3mc9D3E4SLC9xSWsjSOT
         FwU1TtYosnPs4TjlPHHqPjYi9a+ihik1yvcGp6LQqxap34aWIcqoUloaQk5t+YA7AK2y
         9OJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=0ZpKSiWqJWo6Xh/GEABGEtaSZWqx5zq8qmPIgav8bWE=;
        b=AWHTDeDT5JcgbmAlAhR6oVt5cIO3iNSCcZBVpx/y4iI/2OYb/cKl5IeOuBdlQwV11t
         OKB+Z1h6UQk45ZbvfFw+MEIzlUq66pj042fXt7dGEUgulT22MWhuh4+jYSMDKEMfdSal
         MItk7zvEAD481MyV7l4BKrCbt/+Nni5OevfIDIotoCcHozi93jk5oGKybebVgF1B3JaT
         NFQpxMOPu5wXiinCJ3Srt/R6HmklYNc9i2WHXuw0iyQZOfOFu5SUQzoGODFrTlOuTANF
         tzsi+k9H9pAorigykyAWxEv0DN1MsqFERAGx+lhmICgumYhAaGafY2c6GDgycdtpV5EZ
         QoyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2UMh7yE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 88si380951pfm.20.2017.09.28.20.22.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:22:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2UMh7yE;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so136811pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 20:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=0ZpKSiWqJWo6Xh/GEABGEtaSZWqx5zq8qmPIgav8bWE=;
        b=R2UMh7yEX4PXeCJzlmz+xM+wKyxToKGvwKBc84N9fnP7VpNNW4eWLypa0WA46pa9e9
         U+IxXf6xFeav8YUgaLJPcdfxl5McwxlSzo/Jc3sxjgFlCyT0524NywUyRpU2/T3fcyR9
         MlaKn6Nkc9AO30rVQkR25+bAOFMyjETI1HCRPmw7ti+soqFABsETf5Q3ZHACg+dJpFI9
         eXT4KtpMcQFzaWYvZDLfLULkHt4KPyJSJ0I2Re81nXpOxyp/vwNzRQ1NMg152OAP/XuQ
         IIiqZ87hoknj06XLK7NiIfNNltom4icUBx60eq37bG9QmTuiRqYN0NbXPZCrKXqetHWJ
         ID2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=0ZpKSiWqJWo6Xh/GEABGEtaSZWqx5zq8qmPIgav8bWE=;
        b=LsFT8SQGq8R51WdNkkPPCi9gYRWLHH8Hj+P5LNMtMv1waUOuqU5ZaA/IheDE0xPIsA
         XRMrHDtk8p49VaxCF7qsHYrz0Z7rU2dqM+WGhCpOJCN4c08TaIuvicz0y6HidSLzN1xN
         7IKuwL1N5su7EqlewUGChhtItx9QmK0SyyCZXVAyrUjfTpOQ0pJBnzDCgKc1xX0iAr1E
         H47D2aTHmSypzdJd0/tutdh/anas56b9IcEykFAWDFFkg1Ofy1dQ6Ip3L+rIgJQW/RMa
         PJhtigcmOGowr73yuLOeC4HOpsp+hS+QbywmG992cmAVN0JbfdrmJvm2yon//B/AvVAy
         //7g==
X-Gm-Message-State: AHPjjUhGu8Jjdd0MOMPHnXFpl6wWIDWtWjfDJPeFMn/AGTI86hLyhOs7
	Bwp4kLNl462yPfpaQbrYiPg=
X-Google-Smtp-Source: AOwi7QBlJiI9KuHpiFU/J4F/RMGUy0X9YVb1htN3YlSG42/wtJkAfQMhHqGyWF0Du1KHOSs5RVyjtw==
X-Received: by 10.84.248.66 with SMTP id e2mr5729504pln.384.1506655359776;
        Thu, 28 Sep 2017 20:22:39 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id h1sm5335252pgf.54.2017.09.28.20.22.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 20:22:38 -0700 (PDT)
Date: Fri, 29 Sep 2017 08:52:32 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/tinydrm: Move tinydrm_of_find_backlight into
 drm_of.c
Message-ID: <20170929032231.GB9859@meghana-HP-Pavilion-Notebook>
References: <cover.1506589807.git.meghana.madhyastha@gmail.com>
 <e423bdc15522a0109bb98a479eac70409850c5be.1506589807.git.meghana.madhyastha@gmail.com>
 <20170928140836.ja5dcovqxsmbdnha@phenom.ffwll.local>
 <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <37f72839-d110-da4a-467a-cbae6cc0abc7@tronnes.org>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 06:02:27PM +0200, Noralf Tr�nnes wrote:
> 
> Den 28.09.2017 16.08, skrev Daniel Vetter:
> >On Thu, Sep 28, 2017 at 02:44:34PM +0530, Meghana Madhyastha wrote:
> >>Rename tinydrm_of_find_backlight to drm_of_find_backlight
> >>and move it into drm_of.c from tinydrm-helpers.c. This is
> >>because other drivers in the drm subsystem might need to call
> >>this function. In that case and otherwise, it is better from
> >>an organizational point of view to move it into drm_of.c along
> >>with the other _of.c functions.
> >>
> >>Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> >>---
> >>Changes in v3:
> >>-Change it back to a single patch from two patches in v2
> >>
> >>  drivers/gpu/drm/drm_of.c                       | 44 ++++++++++++++++++++++++++
> >>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 40 -----------------------
> >>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
> >>  include/drm/drm_of.h                           |  1 +
> >>  include/drm/tinydrm/tinydrm-helpers.h          |  1 -
> >>  5 files changed, 47 insertions(+), 42 deletions(-)
> >>
> >>diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> >>index 8dafbdf..d878d3a 100644
> >>--- a/drivers/gpu/drm/drm_of.c
> >>+++ b/drivers/gpu/drm/drm_of.c
> >>@@ -1,6 +1,7 @@
> >>  #include <linux/component.h>
> >>  #include <linux/export.h>
> >>  #include <linux/list.h>
> >>+#include <linux/backlight.h>
> >>  #include <linux/of_graph.h>
> >>  #include <drm/drmP.h>
> >>  #include <drm/drm_bridge.h>
> >>@@ -260,3 +261,46 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>  	return ret;
> >>  }
> >>  EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
> >>+
> >>+/**
> >>+ * drm_of_find_backlight - Find backlight device in device-tree
> >>+ * @dev: Device
> >>+ *
> >>+ * This function looks for a DT node pointed to by a property named 'backlight'
> >>+ * and uses of_find_backlight_by_node() to get the backlight device.
> >>+ * Additionally if the brightness property is zero, it is set to
> >>+ * max_brightness.
> >>+ *
> >>+ * Note: It is the responsibility of the caller to call put_device() when
> >>+ * releasing the resource.
> >>+ *
> >>+ * Returns:
> >>+ * NULL if there's no backlight property.
> >>+ * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>+ * is found.
> >>+ * If the backlight device is found, a pointer to the structure is returned.
> >>+ */
> >>+struct backlight_device *drm_of_find_backlight(struct device *dev)
> >>+{
> >>+	struct backlight_device *backlight;
> >>+	struct device_node *np;
> >>+
> >>+	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>+	if (!np)
> >>+		return NULL;
> >>+
> >>+	backlight = of_find_backlight_by_node(np);
> >>+	of_node_put(np);
> >>+
> >>+	if (!backlight)
> >>+		return ERR_PTR(-EPROBE_DEFER);
> >>+
> >>+	if (!backlight->props.brightness) {
> >>+		backlight->props.brightness = backlight->props.max_brightness;
> >>+		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>+			      backlight->props.brightness);
> >>+	}
> >>+
> >>+	return backlight;
> >>+}
> >>+EXPORT_SYMBOL(drm_of_find_backlight);
> >>diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>index bd6cce0..cd4c6a5 100644
> >>--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> >>@@ -237,46 +237,6 @@ void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>  EXPORT_SYMBOL(tinydrm_xrgb8888_to_gray8);
> >>  /**
> >>- * tinydrm_of_find_backlight - Find backlight device in device-tree
> >>- * @dev: Device
> >>- *
> >>- * This function looks for a DT node pointed to by a property named 'backlight'
> >>- * and uses of_find_backlight_by_node() to get the backlight device.
> >>- * Additionally if the brightness property is zero, it is set to
> >>- * max_brightness.
> >>- *
> >>- * Returns:
> >>- * NULL if there's no backlight property.
> >>- * Error pointer -EPROBE_DEFER if the DT node is found, but no backlight device
> >>- * is found.
> >>- * If the backlight device is found, a pointer to the structure is returned.
> >>- */
> >>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev)
> >>-{
> >>-	struct backlight_device *backlight;
> >>-	struct device_node *np;
> >>-
> >>-	np = of_parse_phandle(dev->of_node, "backlight", 0);
> >>-	if (!np)
> >>-		return NULL;
> >>-
> >>-	backlight = of_find_backlight_by_node(np);
> >>-	of_node_put(np);
> >>-
> >>-	if (!backlight)
> >>-		return ERR_PTR(-EPROBE_DEFER);
> >>-
> >>-	if (!backlight->props.brightness) {
> >>-		backlight->props.brightness = backlight->props.max_brightness;
> >>-		DRM_DEBUG_KMS("Backlight brightness set to %d\n",
> >>-			      backlight->props.brightness);
> >>-	}
> >>-
> >>-	return backlight;
> >>-}
> >>-EXPORT_SYMBOL(tinydrm_of_find_backlight);
> >>-
> >>-/**
> >>   * tinydrm_enable_backlight - Enable backlight helper
> >>   * @backlight: Backlight device
> >>   *
> >>diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>index 7e5bb7d..5e3d635 100644
> >>--- a/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>+++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
> >>@@ -12,6 +12,7 @@
> >>  #include <drm/tinydrm/ili9341.h>
> >>  #include <drm/tinydrm/mipi-dbi.h>
> >>  #include <drm/tinydrm/tinydrm-helpers.h>
> >>+#include <drm/drm_of.h>
> >>  #include <linux/delay.h>
> >>  #include <linux/gpio/consumer.h>
> >>  #include <linux/module.h>
> >>@@ -189,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
> >>  	if (IS_ERR(mipi->regulator))
> >>  		return PTR_ERR(mipi->regulator);
> >>-	mipi->backlight = tinydrm_of_find_backlight(dev);
> >>+	mipi->backlight = drm_of_find_backlight(dev);
> >>  	if (IS_ERR(mipi->backlight))
> >>  		return PTR_ERR(mipi->backlight);
> >>diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> >>index 104dd51..e8fba5b 100644
> >>--- a/include/drm/drm_of.h
> >>+++ b/include/drm/drm_of.h
> >>@@ -29,6 +29,7 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >>  				int port, int endpoint,
> >>  				struct drm_panel **panel,
> >>  				struct drm_bridge **bridge);
> >>+struct backlight_device *drm_of_find_backlight(struct device *dev);
> >>  #else
> >>  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
> >>  						  struct device_node *port)
> >Minor detail I missed: The dummy version for the #else here is missing.
> >Not a problem for tinydrm, but might be an issue for a driver where
> >CONFIG_OF is optional.
> 
> Yeah, we need a dummy version. tinydrm can in theory be used on non-DT
> platforms. The only resource that isn't available there is backlight
> since there is no platform or ACPI way of describing that dependency.
> 
> Another problem I discovered when trying to compile this, is that if
> DRM is builtin and LCD_CLASS_DEVICE is a module:
> 
> drivers/gpu/drm/drm_of.c:292: undefined reference to
> `of_find_backlight_by_node'
> 
> I see that I solved this in tinydrm by just selecting
> BACKLIGHT_LCD_SUPPORT and LCD_CLASS_DEVICE. I'm not aware of a way to
> force LCD_CLASS_DEVICE to be builtin if DRM is builtin.
> 
> Arnd fixed a similar type of dependecy in the repaper driver by forcing
> repaper to be a module if necessary. To be honest, I don't know why his
> fix works:
> https://github.com/torvalds/linux/commit/8312a3fe84b96e30a010fa20f933606d976ac002

I didn't quite understand how we could use this fix for the current
case. Isn't this specific to the repaper driver dependency ?

> Another way of solving this is to put the function in
> drivers/gpu/drm/drm_backlight.c and add a DRM_BACKLIGHT konfig option
> that does the selection.
> 
> Noralf.
> 
> >Otherwise I think this patch looks good.
> >-Daniel
> >
> >>diff --git a/include/drm/tinydrm/tinydrm-helpers.h b/include/drm/tinydrm/tinydrm-helpers.h
> >>index d554ded..e40ef2d 100644
> >>--- a/include/drm/tinydrm/tinydrm-helpers.h
> >>+++ b/include/drm/tinydrm/tinydrm-helpers.h
> >>@@ -46,7 +46,6 @@ void tinydrm_xrgb8888_to_rgb565(u16 *dst, void *vaddr,
> >>  void tinydrm_xrgb8888_to_gray8(u8 *dst, void *vaddr, struct drm_framebuffer *fb,
> >>  			       struct drm_clip_rect *clip);
> >>-struct backlight_device *tinydrm_of_find_backlight(struct device *dev);
> >>  int tinydrm_enable_backlight(struct backlight_device *backlight);
> >>  int tinydrm_disable_backlight(struct backlight_device *backlight);
> >>-- 
> >>2.7.4
> >>
> 

