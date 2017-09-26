X-GM-THRID: 6468320417923727360
X-Received: by 10.157.37.61 with SMTP id k58mr822475otb.59.1506414633109;
        Tue, 26 Sep 2017 01:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.193 with SMTP id w1ls3655549pgq.27.gmail; Tue, 26 Sep
 2017 01:30:32 -0700 (PDT)
X-Received: by 10.101.92.135 with SMTP id a7mr6495688pgt.70.1506414632194;
        Tue, 26 Sep 2017 01:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414632; cv=none;
        d=google.com; s=arc-20160816;
        b=htSxZdRBBJq2ruOcMW7Vz653qydjJcPMSXMVvvACW3sWUmwb0t4dtGhAa7dKiOzlRP
         d1YJUcOg4eJikk0aQvUtJmRZ/snRfdb/Wq6WE5dybp/qiWivZ5UfmpSwlgkRkz8iGLJE
         BbIvYHDko0NFTMBAXbS6mOi/tU+dFPq/SmOZtLpYvTdZJvSAKcccTtgz09fzofP6ltA/
         /mcnf3BrCWkgn1Kl5cq3lrJCeIvhacErXoztYR3/3TGZvYO+BOznGnJ0hwFKip/Od15u
         FbBf7pw3xz/31hcJQmD5Q6BkEmwCALEVxTBliVayLpJulWHYnguxzui4MJe8LvQsN0TN
         GMFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=tt9RG5ExQtjWlLleK7NWPyeZc392Q7ZJW+qJSo5u5YA=;
        b=D+029rDPS3TmWTUh61HAmckLfgqyzl8d6esZbrf/htfMNxJOSVCeihVeQ40/xQu8IM
         AmTNYKQX0OZYmcVWpSlyH6x7B2kgsAueEkf9E20f7VAZOA965ewNcU+OIlEGVZsKNS3V
         u9rDr6KRvBJ6RBx8Gnecejp9t9olPskCj1rR6drKApyZ0Uqai1o3GDjHVdKsxPaJ2GCK
         uWDXRyvvJpz9nst6LwyvCNOTjBhepV2opAVwtCeOlDso7GKjwtEkzHkFlfACiYYSv8Q8
         Tx64ZCA8KEF8zByk0iT/wFatQPOogOehETkE5yLz/q9PPBNBbptERyXDfVf4Jdf4GpK9
         LJEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgUvS7EI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id w65si398949ywg.18.2017.09.26.01.30.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MgUvS7EI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id j26so4259115iod.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tt9RG5ExQtjWlLleK7NWPyeZc392Q7ZJW+qJSo5u5YA=;
        b=MgUvS7EI7QSkGbm8bF+fciqYaORyQ9iTTORaI8rDY1g7XWZ7h4a9mUUpdUfvh3XMZL
         vPZ9xOeWG6Y+vKr/xeU2VbhKVcMOwckR3kUp6ESiR7MpArSAH0HndeZ/cCWN+epgnQ7K
         dl4Nf8XYg9ddlRC9J/byyMni6ndw2Ud0uXU1YiW/77bg77mNoltUVVKYs2cCWVd9PeKO
         WeIP6A8CKtD0+BXRPC8smtiNJ0swbkFW+qZXRnnWHc5d6GmF7s2XXqh2WCmQ5PO7MMC2
         W+u+s0V2//ermubqZMeiNJQ7oeCjiXeI1TcUYEUuAnDvtcDEOsdSl6ACHZNZS7+dQJZC
         +9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tt9RG5ExQtjWlLleK7NWPyeZc392Q7ZJW+qJSo5u5YA=;
        b=HouHZq89sQyKMmMDiEs6HCQgl4Mrpsy4RpHmWSONNqsGICfd+nljV5jz4AlnU9kfMw
         pXp/LQ7r9q2Igx3JMYPsmhvb7TX4e1FI9PfDeQvjYTzR18BRTpXnT+B4oT524tNcB/2e
         ckZqwiN6vh3ii/C8mAw/cRXkmuINe4kQssYGoCXbN4ruKVtmsNml81u2VWZrXtjU1v1A
         PdzsIfzJNqoq4xP3dmG4XkEewvaNZd4NFa45uNzqjOlNBV0Umt43fsV8UcZaqAxg+64n
         SBh+kc8/B+wTfWnZRQEk+kzi9yekRK0cW9lY/n9Nuj7yRo5xL7Oq0UpnVZzkD4zl1Dt1
         MlpQ==
X-Gm-Message-State: AHPjjUhn6v+QDV1dnVw8SswGo5aQGk1cmwFJf/wHMvnOnR3T17+waqtJ
	6+t4BQK6e/xucxgBXI5UTho=
X-Google-Smtp-Source: AOwi7QCyuXw5bYeLiJER4GqEXEPVxwqBqR2NcFurJ8yiVdCM2V+P4f5uVtxYt7OFd4Y25tHnfbUGFQ==
X-Received: by 10.107.1.74 with SMTP id 71mr13008649iob.287.1506414631684;
        Tue, 26 Sep 2017 01:30:31 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id i15sm4000867iod.18.2017.09.26.01.30.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:30:31 -0700 (PDT)
Date: Tue, 26 Sep 2017 14:00:19 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
	David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] drm/tilcdc: replace reference/unreference() with
 get/put
Message-ID: <3f2f592f6ea28adfea3fd8b70421b2fab38f0b94.1506413698.git.aishpant@gmail.com>
References: <cover.1506413698.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506413698.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

For maintaining consistency with kernel coding style replace
reference/unreference in ref counting functions with get/put.

The following cocci script was used to generate the tilcdc patch:

@@
expression ex;
@@

(
-drm_framebuffer_unreference(ex);
+drm_framebuffer_put(ex);
|
-drm_dev_unref(ex);
+drm_dev_put(ex);
|
-drm_framebuffer_reference(ex);
+drm_framebuffer_get(ex);
)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
No changes in v2

drivers/gpu/drm/tilcdc/tilcdc_crtc.c | 6 +++---
 drivers/gpu/drm/tilcdc/tilcdc_drv.c  | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c b/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
index 406fe45..d2589f310 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_crtc.c
@@ -75,7 +75,7 @@ static void unref_worker(struct drm_flip_work *work, void *val)
 	struct drm_device *dev = tilcdc_crtc->base.dev;
 
 	mutex_lock(&dev->mode_config.mutex);
-	drm_framebuffer_unreference(val);
+	drm_framebuffer_put(val);
 	mutex_unlock(&dev->mode_config.mutex);
 }
 
@@ -456,7 +456,7 @@ static void tilcdc_crtc_set_mode(struct drm_crtc *crtc)
 
 	set_scanout(crtc, fb);
 
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 
 	crtc->hwmode = crtc->state->adjusted_mode;
 }
@@ -633,7 +633,7 @@ int tilcdc_crtc_update_fb(struct drm_crtc *crtc,
 		return -EBUSY;
 	}
 
-	drm_framebuffer_reference(fb);
+	drm_framebuffer_get(fb);
 
 	crtc->primary->fb = fb;
 	tilcdc_crtc->event = event;
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
index b0d70f9..74276ef 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
@@ -225,7 +225,7 @@ static void tilcdc_fini(struct drm_device *dev)
 
 	pm_runtime_disable(dev->dev);
 
-	drm_dev_unref(dev);
+	drm_dev_put(dev);
 }
 
 static int tilcdc_init(struct drm_driver *ddrv, struct device *dev)
-- 
2.7.4


