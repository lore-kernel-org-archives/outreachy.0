X-GM-THRID: 6466935626239311872
X-Received: by 10.107.36.148 with SMTP id k142mr3272427iok.82.1505933840154;
        Wed, 20 Sep 2017 11:57:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.68.12 with SMTP id r12ls175158ywa.14.gmail; Wed, 20 Sep
 2017 11:57:19 -0700 (PDT)
X-Received: by 10.129.179.201 with SMTP id r192mr475463ywh.49.1505933839387;
        Wed, 20 Sep 2017 11:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505933839; cv=none;
        d=google.com; s=arc-20160816;
        b=XWzso2bxaLdgTKWIQpGevHvNTp9BJ44qz4orh3052smIxhawYwCLnNkV0K87jnJ+Bp
         tpNHHqbg7gE6ejnjC0J6293N3Nwh7HLkljUc07plKGkmPPrbwuqEB0hbwi1oiycYLNfY
         9t15W2uby0ivAb0eu5W9S1sJPea/f6h/DAfKTd/kdF5l3MwTi5R4kAnh0gKNwq/VBT/x
         xHKHp9dHum+S321ToEfxUa0NQ3aV+9dc78pB4oRF0eJQfoWaFBaz/tfkHWqiKcJKDDXd
         +DIb4mcJcp29B1yfoGz026CbDwYLAfifn+acV2GEnKECd6g9wUAC2cGQsu1/WgLrYBa7
         qhAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=RyCIMfG5xNHqarFdVkDmtvl60btqkooWlvv/hNA/wzsUSJPgq2oxhpFUVoWtCgwgXK
         2v5TlZ5tduG6WnQJ5o+yPf8UfiDAPUn7odvWuGB1CJGI7kUDnZVDZvSRKY2ugmVVTDzF
         DcTJ8KOoQxx7H11GbTw2YNbBWXL4cDk5SXuEVna9A0zHo463VhKQ7U0Sn6kWiYD2jdEM
         xqWVk7dmx1JnGiEntB606F89+dgW9Va9DIpvo90xQnaSS0NHl6fywvh59jFe0OwCP8dl
         g4lArZNYxqkq8TlALwMvn1FxuZopnv/EtZdR/qF9R93QrqwOgYY9lkQ1NSdA2s+vw5UT
         sO9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+miB8oZ;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id q15si644703pfi.7.2017.09.20.11.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+miB8oZ;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id f84so1527718pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 11:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=a+miB8oZufpNsN4c4h2iW+6DaYmP8cZvMGGIvkCQo2C+eiJAi/W5/yK1M/WYzgqY8m
         d3scW+nS8Z4EDieAaQcqAytUzEaGaStB5T/DUTTL2jecCahgEjA8Eo5MORitXcJMRv6u
         VuaxipDWZIcLt673QpZpoqeVKgG1rsEC/EzwF1AW7aWMKK4tG0NQFqrhF4qsLvYL+uGv
         XfM3tNwcxQRUSpGK9nV02uD/TEDeZW0PTSD6pL5LpJrvColcDxs0z8HKWLyusLWPa5SM
         UwqAdAn4gakD1wKLgQJjSjdI4Qy5vP21+d+1ori/nas43erMQBlGjcyjDfSxpq28bEBa
         nzyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kXAoRyHqA/cA/ZOs5dyd88yoPJCOA+PWTP79T7Sg+ds=;
        b=PnfUlovk7PGGLa8ItrQfJNQ3GhO7VsNiYInmvgXXcykZglzNSMYuAuSR71pPiLs4uv
         ILFU2WhpZRQ2hbfUuwpGY7UbIia0MeS5nLnziDmZCIi8CFq2X44WtAT+ZTgqRyS1RLU9
         hs+LK8KFuiD3BgYlf0vEGbUInV9L0mFY1JTt7USVg6U9kGdCj+eEHB6KNHAM9UA9HaQf
         5WBlI8Ny/MNz/ITOOzdKC5l8rfWzllZs+7NPPTFUEU0CwemveuNQwl9gn014KWc1S+Mv
         L1B7zjUMoTy3MVLICiQvVtdlNCYjtfxSiDBjik1cTXlXmCGzXzOAwxKeezKgA9KwOYYV
         ZTcw==
X-Gm-Message-State: AHPjjUh4Mm9UGaw+mVDZE1zEtFOlBOJpD+05DId8GBts83CMjUTUVvoo
	vdHp9HEZW01HLgq7o6RMs8c5NGSU
X-Google-Smtp-Source: AOwi7QCcKbXIfy1V4AH6FiFKYU1WtxyMHTknabc3DyiOImd9qooP2Q3UBl8lj+m5hGS/VzCUkb/FIQ==
X-Received: by 10.101.72.199 with SMTP id o7mr3212681pgs.450.1505933838894;
        Wed, 20 Sep 2017 11:57:18 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id a29sm473448pfj.88.2017.09.20.11.57.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 11:57:18 -0700 (PDT)
Date: Wed, 20 Sep 2017 12:57:16 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: hamohammed.sa@gmail.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sean Paul <seanpaul@chromium.org>, gregkh@linuxfoundation.org,
	dri-devel@lists.freedesktop.org,
	Russell King <linux@armlinux.org.uk>,
	David Airlie <airlied@linux.ie>
Subject: [RESEND PATCH 2/2] drm/armada: Replace
 drm_framebuffer_reference/unreference() with _get/put()
Message-ID: <e1df1b3375faa819029559b11c32e10501c5c5d6.1505932812.git.hamohammed.sa@gmail.com>
References: <cover.1505932812.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505932812.git.hamohammed.sa@gmail.com>
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


