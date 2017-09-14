X-GM-THRID: 6465542343215808512
X-Received: by 10.99.109.8 with SMTP id i8mr12851367pgc.87.1505376562488;
        Thu, 14 Sep 2017 01:09:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls4417237ioo.47.gmail; Thu, 14 Sep
 2017 01:09:21 -0700 (PDT)
X-Received: by 10.13.235.149 with SMTP id u143mr6832231ywe.90.1505376561759;
        Thu, 14 Sep 2017 01:09:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505376561; cv=none;
        d=google.com; s=arc-20160816;
        b=EJ84ma2l/cUtL1UVCY3/eJEr+i8toLHnsLmhc8IMJ5qVzDsTmJO6sd28spXiS3xIdK
         9wMdjUXsbj089iJyAO62txPqaRaL9NOUiukQcXKXprGWAZG5aX/K3CaSbMS3Q+dXf/N+
         JCtFXSAfA4AdrU0+BMKQvkXvJ/LKRE7VpJ9SUhTtRsfazwwiz9JceQfF8nnb9YOo3J3q
         tZLQYIbL/GaomsPAE++FLSi4GJ6EfcBlGvmGU5rsdAUJ92Tz2F7qOXHu3h01WKYNYfe9
         ZX/3b10ZfDxcR9ZdtXQQ2gyqhyCpqM57x9gcWTexe9Jo1u64P736noOZ6MHartdhSj6w
         9fBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=C6gSqCDfeaAG5Xiugp17u7qGmJYN3p9O9nuW3d8i1NI=;
        b=jU1PRtl3u/Bfj944mtknKOxmXi2tUFRtJcxmGAfaDVuBVX8fYkaGjjDLQy0v/nApeS
         p4UQ4DS0IxNdqsdACpxZLN95G9m6d1Qk2Js/a+cYa7aB836UhEbeZd5Xi3s08Ug6uDMR
         +dzCmHCmJsMLETU5SjtR540mb7fjZq5afh/IVD53wzwU2rV7mSs/wT64vEo3DyRO8zuh
         WtwuofsjmZfiPRYSii9AW08Ye7je/gdOlCaIxqACUjV5BCINw/Bw1wqcAKk0dKt5L5Ui
         aJAsEYp83WLqFEW/2wMBah13B2asrA9nIv6Udcp89ZxMV+Ja6nfq2DxXNuNYcrF0HFgc
         t90Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i0ZduFIT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id q15si1390528pfi.7.2017.09.14.01.09.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:09:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i0ZduFIT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m30so1328900pgn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=C6gSqCDfeaAG5Xiugp17u7qGmJYN3p9O9nuW3d8i1NI=;
        b=i0ZduFIT9gOHJ8e3ynvTMQ9WTlXaeb1YjerXcrnSIP4eiJopeLvr726jwKCUAFKWMD
         MV8I7rV/j5XTSNDLDP6oZfkoRzujIdwfLwuvPQn0bcCBByvaPSAzDhdbZBLS8WP1PZqX
         NNw/ODj77UcmFaex1QqDJnNlVpAFn569wuBDJmg1QqXsJ6kWDoLngclzxzUZ1UVU31/g
         9KIzna/kMGyu6FFVNyDFPmb9uMLFM+nXsBrdB2hwWUbkFDNaSf7tlj+HvDhNq8zVux5L
         Y7hFW/t2320FQCLgS0kR0qy4e3Y7A5lcM/Qnu6+Z8mphvu6B39RGr5ktiE0LTTNzdiuj
         wFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=C6gSqCDfeaAG5Xiugp17u7qGmJYN3p9O9nuW3d8i1NI=;
        b=bdxX6KNPrixb2AYS43OdRGcToOYb4H2S4DLr43L3miQj0Ob/8gHUf5qogp6I31H6Z8
         6/gRsbh7gWqZJcQAQzWiGgrjVL1k/Y+4xc9FYJZEuooZsuxj1t2O9FCy2BtX7s2rsTdl
         t6VDuNMTFSaJ/qU54JYNbJAXOl56j9MEvbYYeM8Scny7Z9KmUwiL36e97wckIm+2SEz/
         4ftQLKUG2OB2cboK88U10gHjDEOR93s68A12CTIfeGYFlb0D/7CsSArMpSS0wo4mTEFi
         Jp7JyZh2ta9YvAfRUdpdG7QBLKeb+oRhTsGinuRS/EMDwgLIlBJIjXp/m3xFuUjErTf2
         MCUw==
X-Gm-Message-State: AHPjjUilsLLW3LxczrbYHHWvoqbdI3XfZJS887pNup4j13CBSzrC6ppp
	UHjYVpsoIJaC+jmFTL4=
X-Google-Smtp-Source: ADKCNb6zTeYAIW6VygZaGMhxx+uMyF6wsbOCQ+dAYVlUPdd+NlE1kjCqOxA3Np/LuBg3hss8WFLzog==
X-Received: by 10.84.217.221 with SMTP id d29mr23094580plj.309.1505376561072;
        Thu, 14 Sep 2017 01:09:21 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id h70sm28025998pfc.115.2017.09.14.01.09.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:09:20 -0700 (PDT)
Date: Thu, 14 Sep 2017 13:39:14 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/4] drm/agpsupport: Replace "foo * bar" with "foo *bar"
Message-ID: <e092694c26e61fc6147e44851392a43b7a68c4f3.1505376068.git.meghana.madhyastha@gmail.com>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This replaces all instances of foo * bar with foo *bar
in drm_agpsupport.c. This is so that it adheres to
standard C syntax for pointers.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v3:
 -None

 drivers/gpu/drm/drm_agpsupport.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
index c899534..d9e8cdd 100644
--- a/drivers/gpu/drm/drm_agpsupport.c
+++ b/drivers/gpu/drm/drm_agpsupport.c
@@ -95,7 +95,7 @@ int drm_agp_info_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device hasn't been acquired before and calls
  * \c agp_backend_acquire.
  */
-int drm_agp_acquire(struct drm_device * dev)
+int drm_agp_acquire(struct drm_device *dev)
 {
 	if (!dev->agp)
 		return -ENODEV;
@@ -135,7 +135,7 @@ int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
  *
  * Verifies the AGP device has been acquired and calls \c agp_backend_release.
  */
-int drm_agp_release(struct drm_device * dev)
+int drm_agp_release(struct drm_device *dev)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -161,7 +161,7 @@ int drm_agp_release_ioctl(struct drm_device *dev, void *data,
  * Verifies the AGP device has been acquired but not enabled, and calls
  * \c agp_enable.
  */
-int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
+int drm_agp_enable(struct drm_device *dev, struct drm_agp_mode mode)
 {
 	if (!dev->agp || !dev->agp->acquired)
 		return -EINVAL;
@@ -244,8 +244,8 @@ int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
  *
  * Walks through drm_agp_head::memory until finding a matching handle.
  */
-static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device * dev,
-					   unsigned long handle)
+static struct drm_agp_mem *drm_agp_lookup_entry(struct drm_device *dev,
+						unsigned long handle)
 {
 	struct drm_agp_mem *entry;
 
-- 
2.7.4


