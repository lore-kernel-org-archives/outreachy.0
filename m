X-GM-THRID: 6531834360584208384
X-Received: by 10.107.200.68 with SMTP id y65mr3524197iof.6.1520811198680;
        Sun, 11 Mar 2018 16:33:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.125.79 with SMTP id b76ls1290030itc.9.gmail; Sun, 11 Mar
 2018 16:33:17 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvf1m7oo2YfuKRh3YiKdOmOdQU6T+R0vgDQnzUZN6kKD6i8+tYEp+yH2YXrRfnVfGgPOfN3
X-Received: by 10.36.37.18 with SMTP id g18mr3396948itg.37.1520811197598;
        Sun, 11 Mar 2018 16:33:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520811197; cv=none;
        d=google.com; s=arc-20160816;
        b=N7aYlf4hWY8NkVhH23v7LyoVrB0PZ+GJcF60NTEHAp5liulZjI8LQzeBw7eE9Bq+7w
         AyCJZmcHHBGleVGRuO34j0LAVuN/PXeEL7mobc7Y/QIMRpt2pdmajY/kNkOVyS5/QJHA
         56hzBsvyPYv+w9pglbLDyE5rrX2ZSfcNj3cdxOV4yWNIYDaZbM8e16IGtOTUE7Q+Tsl5
         6ArQRbyovxwiFIdCTx+j0tocWpkPhe6HlKF1TVoUYAviA341qfyjrvqr04FxIEMMMbZw
         RY93d8EHk9ZpP8sIyOhNZFvAnkzTVfnCoQD/lWAaxdq86bMfIQym5fTQcMj81AwGTBiy
         Asnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=8vcoXRMMACQJorcngg05+vXaEpqRDjofXjfpIFpiWU8=;
        b=h9xGUN1BBoPtPKOv3pYz0vc3ElyGFEaxus/VVykhdDufmqa9QTOlCmTQn4iOTG1Mun
         7ZgjDBAmZI2gcoJrdFHfvAA+b14tXlxThuYCp3sNB5GTMcdrFE/uxyCiouUywqZyKK7y
         BnO4SpZ8Id4y3uqLM7ktZiiSaqQrMoj2Bzp+d4MAXXNWMv1SfanuHCDxoNa6XrM8ksr1
         rLwVelfr2rV1IpBKDItj51mrqN7uHcZlYRwerPDXttncv4gJ7rQ1+S4LpH6fGUpUOIBw
         cDYxwXqtdYptjyhfC+Gbos5V7ZYp6ly1q5/ORKSKCLJ56okgLYXDDIjn4S79zyBCcZ3P
         NJlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pD2LC5tx;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id h79si251699iof.0.2018.03.11.16.33.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Mar 2018 16:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pD2LC5tx;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id y6so17007042qtm.7
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Mar 2018 16:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8vcoXRMMACQJorcngg05+vXaEpqRDjofXjfpIFpiWU8=;
        b=pD2LC5txW+qBmjRLV3LexmnPR3S7NpIXcB6rPMyAlYPqBSlVSnaj7u0gDXc6Th10u+
         EVlyQmfC+RufnmXAt5GbLriWF/PHwp/rhAYhnr65ClGjS/9wuMe3QCbahmjrerHXtOa8
         YmRrm1gakc480zMS4783I1NbRC0FrW5K068G+GeTLPCLr2CJzPMFuxupj1LNwiRZ8rZt
         xds9cAO/aGcDX5Pti4HNJGYigfd7ZHn4ED+BweJ3pwgvYZksMy0bnM9aOxsFZ5LaCEwk
         QVaypMqXYhEATIN9e3C/2pQamGC2+CewCgWcItt5Nx1eGYYMMKENRSds7R7HKD3EV8gU
         VTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8vcoXRMMACQJorcngg05+vXaEpqRDjofXjfpIFpiWU8=;
        b=XU++DcwZvYRMkE1bAHUQygJN+Vw4g3pJR8VmFagVoK3eJIvkfSPYqcZNR5l4fLp/hA
         B6B99Lti9rghlD/nR/Q5HYvPQbnX0NyDOcklEXCfJjmroE37khuVCdbZ+Aa4YKf4/5w7
         DOUPV8Ch6u5rcYYVSUlYzmo0hFPIPb8mvTSnh+GSs26AazLpk9QzG+TF17swfJK9u/UJ
         8hrU2Y0EU1qith+rPsbTgB9NYPpdATAPHmLFYrvI5tFbqX+l7p8GKKbKfCjeQpOEWqAi
         C6gZ55NqOa8xS/44SJfL1PCjx1TjVegbBY8eBk9leEnt67uVjjk52BT4Yo/fyiG4qTny
         0BjQ==
X-Gm-Message-State: AElRT7GHuHBjROOVZFYA/sRJmXdkevcZ6QFAM3YXQnmY1Y9j9koN/wWl
	alcMDoVypMOJCEXdFf8kh4THijFe
X-Received: by 10.200.35.120 with SMTP id b53mr9231022qtb.262.1520811196821;
        Sun, 11 Mar 2018 16:33:16 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen (c-73-238-34-189.hsd1.ma.comcast.net. [73.238.34.189])
        by smtp.gmail.com with ESMTPSA id d36sm4431892qtk.47.2018.03.11.16.33.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Mar 2018 16:33:16 -0700 (PDT)
Date: Sun, 11 Mar 2018 17:33:13 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: VMware Graphics <linux-graphics-maintainer@vmware.com>,
	Sinclair Yeh <syeh@vmware.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org
Subject: [PATCH DRM] drm/vmwgfx: replace drm_*_unreference with drm_*_put
Message-ID: <20180311233313.GA19721@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace instances of drm_framebuffer_unreference with _put()
suffix, because it is shorter and consistent with the kernel use of
*_get/put() suffixes.
This was done with the following Coccinelle script:

@r@
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
 drivers/gpu/drm/vmwgfx/vmwgfx_fb.c    | 2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
index d23a18a..be7d7fb 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
@@ -500,7 +500,7 @@ static int vmw_fb_kms_detach(struct vmw_fb_par *par,
 	}
 
 	if (cur_fb) {
-		drm_framebuffer_unreference(cur_fb);
+		drm_framebuffer_put(cur_fb);
 		par->set_fb = NULL;
 	}
 
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
index 67f8446..c5e8eae 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ioctl.c
@@ -316,7 +316,7 @@ int vmw_present_ioctl(struct drm_device *dev, void *data,
 out_no_surface:
 	ttm_read_unlock(&dev_priv->reservation_sem);
 out_no_ttm_lock:
-	drm_framebuffer_unreference(fb);
+	drm_framebuffer_put(fb);
 out_no_fb:
 	drm_modeset_unlock_all(dev);
 out_no_copy:
@@ -393,7 +393,7 @@ int vmw_present_readback_ioctl(struct drm_device *dev, void *data,
 
 	ttm_read_unlock(&dev_priv->reservation_sem);
 out_no_ttm_lock:
-	drm_framebuffer_unreference(fb);
+	drm_framebuffer_put(fb);
 out_no_fb:
 	drm_modeset_unlock_all(dev);
 out_no_copy:
-- 
2.7.4


