X-GM-THRID: 6466935626239311872
X-Received: by 10.176.6.8 with SMTP id f8mr21238058uaf.19.1505701028401;
        Sun, 17 Sep 2017 19:17:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.7.66 with SMTP id f63ls2628693itf.8.canary-gmail; Sun, 17
 Sep 2017 19:17:07 -0700 (PDT)
X-Received: by 10.159.53.229 with SMTP id u34mr20451830uad.66.1505701027875;
        Sun, 17 Sep 2017 19:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505701027; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCrZ5q4bdLyP1pqOelmfVE/ohMaIgiuah4wC/x246OIWFaM5rlosvgQCrhgz6KvZVu
         T48TG7ZxGkROznrbpQaaJ8fH8d+mm7vAXJYVjb8Ts/7pV1GYyj35AiVMYHHzgWXBYKtw
         zJyPaYqgYNDgfrzqXS/JhT5zhnKqk37dw1Fy8ZUiRv8U5+HWL3pT5YcAHNyv4LCGuxtI
         DqoCIu5YbTGmxHMV6/cExY1hf5h2LAo1wmpMfOymS2NAJhcb1G+AxhYTNsXBI0XuErC0
         O77Bn/3koWA0GDO0R2pvJ/7xivpI0titly7qoXFlMCJp7tEtdjDdfkZXVeTQVlXbbPlN
         u19A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=xf5paP+63VCPdRKMHakFFdfTTEohZhnno8x0/VS+YDEjadr6h+gmI1V5O1rjO4VDjj
         2W1WLFfN0qis7vOfy4K9wfQCLEpGEAtXp0VXjd5+NEdcRlrPfr0Zg9vKgyzhgQSPdPlT
         yL/y24kTAAEc1yN2niuGJ5mY0vty5PwcoN69Fxm1lsv+B89UCqtP553Ig9y+r/e+ySs5
         OM1YnvmpMupjBPM5G/Gp1v7H1jTlZmKBpa9jkEkYfZHHqornybp2GN2CIuvTOZi5k1mW
         +Ij8fzrFysMDQYIQ1DBk6yvLu2GT2lxdqoQJ3+bI2reZuvO/6qBWndNnrWt+arLMVSgS
         nEDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3+rntDL;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id c200si554866pfb.14.2017.09.17.19.17.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3+rntDL;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so4506056pgn.4
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 19:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=F3+rntDLx8BZHD0U0IiFhZNYhfkt+X6Dje/CmqRsXPMIgIaSKfgup4JNRmEaSvPpU4
         ChhSl1RjQcVWQfUIf7gtnC6W3ApDwcVFPE2lhldh0lu/DvmiKKZYhdquwVPBFtk3DFBr
         wAnUbzNjvDhdkAyNprEMATMN6WwbYLeULYEesZ+M/dgwsld6E/6HTAepuGBLXOBaZm/F
         c81JJrcDfMsX0hrtDENHOoLHr7eDoGl9YUrq+RUA8coZpqygrXNcUZspdQ4YYSsh5oK3
         kd9ryKFUl8n0rYG2h+Mlm6VTFQP1iD2gGvgZnyT2le4ezML/fUOWVKijAPajTPDRwZaP
         lTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=aaKrL9vOWBKTno1DpPzQK4SKOdzSSiS9LwTXVuJBhiGhE+ZSioG0R/76pxS7/STTRP
         4rD14Z7p4oNNiCS9Iq4MZSWt1VLKzgqXLnJRO3lBoSIKjrs1zsrLQOsw5CggSeTNwryj
         xG871ZiRwrjSDGELOO+YMPYyegJ/UlKmZh7ySvnwYfel8konAYqo+/eaBJKdjcwBShmr
         cPrMQzEAoFttFgHn51nbW5/6a0y69Uw3frtBSp/tKsrMyAcyugiImevTzOwKLoE21zPp
         j/soyKCY2wkDRaqMq1MR7e4SWfEPe6CTKKqGlT1UyXlyRQrkJNDgAsUtKbxSUP/FYSnS
         78QA==
X-Gm-Message-State: AHPjjUgG8hhagsb5McHG7QO3L3atkPEr2PXmbHDUDYQ1oKdOFpQ/+POj
	ekfc6CShv83SJrVovGQ=
X-Google-Smtp-Source: ADKCNb7Xop8NmAoABeSJJi+fX+WhUHjTZG3TFbY53ci5W8i2+MK4nPR4fNaSGjgT5S1PNid2lRLvHw==
X-Received: by 10.84.131.79 with SMTP id 73mr35070140pld.281.1505701027393;
        Sun, 17 Sep 2017 19:17:07 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 4sm12250854pfs.1.2017.09.17.19.17.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 19:17:06 -0700 (PDT)
Date: Sun, 17 Sep 2017 20:17:04 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] drm/armada: Replace
 drm_framebuffer_reference/unreference() with _get/put()
Message-ID: <cafca1e94e01d113af8793075aea1fb88df4712e.1505699582.git.hamohammed.sa@gmail.com>
References: <cover.1505699582.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505699582.git.hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace instances of drm_framebuffer_reference/unreference with
*_get/put() suffixes, because get/put is shorter and consistent with the
kernel use of *_get/put suffixes.
This was done with the following Coccinelle script:

@r1@
expression e;
@@

(
-drm_framebuffer_reference(e);
+drm_framebuffer_get(e);
|
-drm_framebuffer_unreference(e);
+drm_framebuffer_put(e);
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/gpu/drm/armada/armada_crtc.c    | 14 +++++++-------
 drivers/gpu/drm/armada/armada_drv.c     |  2 +-
 drivers/gpu/drm/armada/armada_overlay.c |  4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index 381dfa1..2e065fa 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -298,7 +298,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
 
 	if (force) {
 		/* Display is disabled, so just drop the old fb */
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 		return;
 	}
 
@@ -321,7 +321,7 @@ static void armada_drm_crtc_finish_fb(struct armada_crtc *dcrtc,
 	 * the best.  The worst that will happen is the buffer gets
 	 * reused before it has finished being displayed.
 	 */
-	drm_framebuffer_unreference(fb);
+	drm_framebuffer_put(fb);
 }
 
 static void armada_drm_vblank_off(struct armada_crtc *dcrtc)
@@ -577,7 +577,7 @@ static int armada_drm_crtc_mode_set(struct drm_crtc *crtc,
 	unsigned i;
 	bool interlaced;
 
-	drm_framebuffer_reference(crtc->primary->fb);
+	drm_framebuffer_get(crtc->primary->fb);
 
 	interlaced = !!(adj->flags & DRM_MODE_FLAG_INTERLACE);
 
@@ -718,7 +718,7 @@ static int armada_drm_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
 				   MAX_SCHEDULE_TIMEOUT);
 
 	/* Take a reference to the new fb as we're using it */
-	drm_framebuffer_reference(crtc->primary->fb);
+	drm_framebuffer_get(crtc->primary->fb);
 
 	/* Update the base in the CRTC */
 	armada_drm_crtc_update_regs(dcrtc, regs);
@@ -742,7 +742,7 @@ void armada_drm_crtc_plane_disable(struct armada_crtc *dcrtc,
 	 * primary plane.
 	 */
 	if (plane->fb)
-		drm_framebuffer_unreference(plane->fb);
+		drm_framebuffer_put(plane->fb);
 
 	/* Power down the Y/U/V FIFOs */
 	sram_para1 = CFG_PDWN16x66 | CFG_PDWN32x66;
@@ -1045,12 +1045,12 @@ static int armada_drm_crtc_page_flip(struct drm_crtc *crtc,
 	 * Ensure that we hold a reference on the new framebuffer.
 	 * This has to match the behaviour in mode_set.
 	 */
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 
 	ret = armada_drm_crtc_queue_frame_work(dcrtc, work);
 	if (ret) {
 		/* Undo our reference above */
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 		kfree(work);
 		return ret;
 	}
diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index 0b3227c..c993bcc 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -26,7 +26,7 @@ static void armada_drm_unref_work(struct work_struct *work)
 	struct drm_framebuffer *fb;
 
 	while (kfifo_get(&priv->fb_unref, &fb))
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 }
 
 /* Must be called with dev->event_lock held */
diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index edc4491..b411b60 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -177,7 +177,7 @@ armada_ovl_plane_update(struct drm_plane *plane, struct drm_crtc *crtc,
 		 * Take a reference on the new framebuffer - we want to
 		 * hold on to it while the hardware is displaying it.
 		 */
-		drm_framebuffer_reference(fb);
+		drm_framebuffer_get(fb);
 
 		if (plane->fb)
 			armada_ovl_retire_fb(dplane, plane->fb);
@@ -278,7 +278,7 @@ static int armada_ovl_plane_disable(struct drm_plane *plane,
 
 	fb = xchg(&dplane->old_fb, NULL);
 	if (fb)
-		drm_framebuffer_unreference(fb);
+		drm_framebuffer_put(fb);
 
 	return 0;
 }
-- 
2.7.4


