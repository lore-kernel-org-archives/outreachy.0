X-GM-THRID: 6468320417923727360
X-Received: by 10.159.39.196 with SMTP id b62mr5958868uab.124.1506023258629;
        Thu, 21 Sep 2017 12:47:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.151.131 with SMTP id z125ls2167084vkd.5.gmail; Thu, 21 Sep
 2017 12:47:37 -0700 (PDT)
X-Received: by 10.31.153.203 with SMTP id b194mr4856477vke.5.1506023257897;
        Thu, 21 Sep 2017 12:47:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506023257; cv=none;
        d=google.com; s=arc-20160816;
        b=xs6IhnKKj/dXdIl3shu/m8YqeMrpOzsDVNcqzKERIo3llw9XhZ5LybF04OcL2Cexjj
         d9dIv1kqQSVj1CEuQXmBKlpiD37Jdh4c8MyJCpn6/+lQiexAgPEhfpUJKd1b2fim/vR9
         Iev7dYP0xKm2dwTA4kv/Ww73YUnumQUWHJYD9k6st8sPXA0HoVrryxsfhmox9J7ajtsH
         CTHEY1Nea+8bssWktN3FN9YzOSsH74VHA+CqSy+3iQ1nMgbxMa8RFP2jnv/NmRmdGf/Q
         q3KBUzIQ32P2DhUqAex5vDiCzqKZg5Qeoyk59kAxLF2fMSSwA8pFhvr334/t7h3lApEe
         InrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=pwHMpWxeVUR7eUNV/ROqJ2j9cQj2LFJHVZMHgeHKszI=;
        b=HQn1D8Kplf0AXO1c6wLc5PInX/J6eEqCayM9SXUZqwNzZfoL4uP34LTdH08PXEJCSr
         GTdiPO4+kztmKkr74e8Acvlsu4L+aVhWzRYLtPx7E1fuEWF/Pzt3N4TqPegczpGA7trD
         POfqRu+odys0Hpd5xnCYAXYZKZX766qaOtWWzM2EQpaCl03x8kph4kxGoZQH/RLkLh5Q
         Zm6qRqrjhX713htVon2z3ZNgW/QKjCP+udfb5wGLMgl+jeS/jY8RXZO4/GAx3jLzEqow
         RMcZVcDDXAXsGis/94JMvcbWnjMYkhHn6+mNTwhrac4mke01imGNML5kp1atOoFbWukH
         dVbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+dvbg29;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f189si212958pfa.1.2017.09.21.12.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L+dvbg29;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id i130so3963149pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 12:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pwHMpWxeVUR7eUNV/ROqJ2j9cQj2LFJHVZMHgeHKszI=;
        b=L+dvbg29afraF/mDaU68kE/Y5GJuEeDbuCsGFS7EDYJo7T+PnCru9rTBAeAnf01e8G
         8bmGiGVReoJYQSTZL16z6c91OfnVfy63Fh11bavn7ACF5cjDttrDeS1zmCapmSkIcImW
         NV8sLI7+qdp6STfBaLhhi6yTOgU3/7YH4amlr4pGy+HTu2NXuzFqK52lZqd+VT7ZHqT5
         vr9NkYuVQmsZwX622zSbJ9EGUF5XU9dNoax9IwRsomI9O840+pH6lDV1q38DuRcn3IMK
         2POIH44yb7EyeGCi4aUXp4am+W89cbQIl+1RhtQpi6zjDAYEXqSnb+ow4c/A5/ZDS01J
         E4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pwHMpWxeVUR7eUNV/ROqJ2j9cQj2LFJHVZMHgeHKszI=;
        b=nBcsCkyLPhoC5rUU/RjaHYdo+1zZQGUuAp7yBRol62xPMJkf4OOYltVl67FnF+z4dv
         jNXL+qzk45KSn8idK18aZe/lImofbKtEuJfv4tpDH69btidKTJdS7IiFE/HcEBU9G3q5
         b7cNNpC8rDt4+9NQ92dv0QB0nu57FuVFYw6IcwGz7TvlskfAzPtQlQ8sCse2CW/kB3iU
         H7xtekg3wKIEkjJcg/DUaxaiyJB/ql2es2VDTYfNqRYGpjgchrdeeM5P7Mwcjis5E706
         YOhd5q4XeHxX8+fzzH2u8sQkY7WXhrM5cJg4DGMHWhOT0gMGiPnk8MXxH58JBPZOd/jO
         MzGA==
X-Gm-Message-State: AHPjjUhhc3PC8A/D9YknDXFcLArEwO3nUN8xs2slSDMK2POXtIt1n708
	q2jQkEcijfSEcfy0uFQjnU0=
X-Google-Smtp-Source: AOwi7QCi9niFao3c6D6c8/rKKwBb9k2wYr+TKSMQPC7t0RAHnfSWbpW8rciXC7enIjEdnoWVm6PcOw==
X-Received: by 10.99.8.1 with SMTP id 1mr6831439pgi.202.1506023257571;
        Thu, 21 Sep 2017 12:47:37 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.166.181.88])
        by smtp.gmail.com with ESMTPSA id x19sm3843029pfa.16.2017.09.21.12.47.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 12:47:37 -0700 (PDT)
Date: Fri, 22 Sep 2017 01:17:31 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] drm/tilcdc: replace reference/unreference() with get/put
Message-ID: <1c98a7620b6b9cff5b90fdb0a5085ab916482bed.1506023126.git.aishpant@gmail.com>
References: <cover.1506023126.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506023126.git.aishpant@gmail.com>
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


