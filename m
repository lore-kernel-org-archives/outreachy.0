X-GM-THRID: 6480148992322699264
X-Received: by 10.36.163.196 with SMTP id p187mr8588229ite.13.1508854301759;
        Tue, 24 Oct 2017 07:11:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.73 with SMTP id a70ls68355ioj.3.gmail; Tue, 24 Oct 2017
 07:11:41 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SaKjv51BgR2p/4bz5Y9wcpkLBJcJ5MX84k8Bmur7pp3SvhL2itdLP/2BzB5UemgVy6rV+5
X-Received: by 10.107.173.87 with SMTP id w84mr12114330ioe.126.1508854301274;
        Tue, 24 Oct 2017 07:11:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854301; cv=none;
        d=google.com; s=arc-20160816;
        b=n8oI6ZAZMNMMK0L/V5eNcBJ5YHjJNALaGahzIUFLF7cqbam0eqkTACy7C1YtjyFCqy
         0BBm0yKAAdr5XfvNPIHIpz3uVM4PsEWbFsnkVbnyyUr5AHpwIuCRKuLXY9YsgPMdCxkI
         zzTdRwFfWFzbmlws7ZrcVZ20tBWbdXakaqRONNW/ZUM1Csuos897h29MYo3r7RKVTKFK
         GTUkELlq0zuPZqbFX8J4V/jraN+3DOXrrx6PemG+nPZeNWwAy3VQ6HNukoQLkkDjlLOE
         I0FVwWlESXlPLbBol27nosY84XWIbf2j7wTYCfmBSKFi1+SqpukescTnEwDs+aQp/+Db
         r0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=mKJXCEUi+Aj9GJMM1CZWZ6gbD2MZUmrARnV2Ndec+lU=;
        b=ObyKJ0nMv6DqdL06hyBKvc+mBaV6Glm7jwjBfIa3Vo1Tv4y4NZS52q5N9ZPVksl4lR
         RHLKS4xouBor62sbTtDiZGw4O0k77Wn996QW2RWegYKEiPTIwq2mq9tGuKVR0ZAt6XBR
         TC6GkUWAo/1DKyDbSId3DuXjbw9nC6twi3aA7mjCl19yRM2dXyYz/5GAQRVpqUwuv/MS
         tiCbd8+J0XaDZhxV6sDxuXfjSSett3T0ZNAyaOvjeGpAEL+l0wPdAdQcsAYYSCsoLUJI
         WpiG2YVuYhx7wcNzGlAGn8snHi0ZTOKbH6fD72fa4GTGfSaGYkiLYm+gQarxmeFo78uA
         mqBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auF2zLXd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x22a.google.com (mail-pg0-x22a.google.com. [2607:f8b0:400e:c05::22a])
        by gmr-mx.google.com with ESMTPS id c29si48749iod.3.2017.10.24.07.11.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) client-ip=2607:f8b0:400e:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auF2zLXd;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22a.google.com with SMTP id a192so14615830pge.9
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mKJXCEUi+Aj9GJMM1CZWZ6gbD2MZUmrARnV2Ndec+lU=;
        b=auF2zLXddasSuRx5B3AlXD6eU8tHt1YME/ft7D9Y/Ep5N82ICG3k8mEvNFwEis/e8y
         aUirZgSSavboz4SZpnQ8SLG9aB/dEf7gnkNTWBTAvFBD2Ra1mPAJWeyJzanWPGzF90hw
         PXSyCQ8QaGapJL1GhofRPyBmNWDOORdTZ7jcP/z0P69oNaaV2Uei6QcVxGU0JyKrjlS0
         peWnEtygtVJMSy6BaDq9bqVzitVjkgIhal+RVeD/u1CBq9kTF6ZKFGN1Zwv6+QceixW1
         Bl7/VHpHDImgr+Q4KlmXArAvyvx14494Q0ObWJKFB2XsnI/h8lI6m+xNvD9rHDQ015pH
         0s/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mKJXCEUi+Aj9GJMM1CZWZ6gbD2MZUmrARnV2Ndec+lU=;
        b=Sa99juttNTyf2hqyLCACbqp2tnPNNlU3yuBZwwyZMZxyOn1OmKxl2it+KnSKpHMTlV
         2+76RDGrOcOt5zOTq/OVJBgQWJhViQD1D5Mtf5LalhnuHa6KTaGg4qGLQqq8xK8AeCVJ
         H6tbp1asOlb4XFGphhXmH/2ciq1UtFzYvm9WQZn9omnYzsBSZd0N+q0Tz6O6hHusYX6A
         V/Sni5aqnEdLQu+7hb4mcgxD1om77aRBNFkavqHr9XEvwekUDszoqnNu8dQgt8fglD8L
         BcWzWUTqEDYBF8lQYVadi7sWCxz28B8tqSkUGgIzcFlA4npLJlEaYfDdxlEGyfhefTAw
         1KYA==
X-Gm-Message-State: AMCzsaUA7KSobI0OVx31w4tAw1WL4e4sjV5Xn6+5t4n0I7aOJeT2/Yqf
	WW48CnfXJ2cG66bULhZe6kQ=
X-Received: by 10.159.233.133 with SMTP id bh5mr504394plb.28.1508854300816;
        Tue, 24 Oct 2017 07:11:40 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id l5sm1073215pfi.165.2017.10.24.07.11.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:40 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 07/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-panasonic-vvx10f034n00
Date: Tue, 24 Oct 2017 19:40:58 +0530
Message-Id: <1508854263-18881-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508854263-18881-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For drivers which could have multiple instances, it is necessary to
differentiate between which is which in the logs. Since
DRM_INFO/WARN/ERROR don’t do this, drivers used dev_info/warn/err to
make this differentiation. We now have DRM_DEV_* variants of the drm
print macros, so we can start to convert those drivers back to using
drm-formatted specific log messages.

This patch is using following Coccinelle script:
@@
@@

(
- dev_info
+ DRM_DEV_INFO
|
- dev_err
+ DRM_DEV_ERROR
|
- dev_dbg
+ DRM_DEV_DEBUG
)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
index 7f915f7..5e17f84 100644
--- a/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
+++ b/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c
@@ -137,7 +137,7 @@ static int wuxga_nt_panel_prepare(struct drm_panel *panel)
 
 	ret = wuxga_nt_panel_on(wuxga_nt);
 	if (ret < 0) {
-		dev_err(panel->dev, "failed to set panel on: %d\n", ret);
+		DRM_DEV_ERROR(panel->dev, "failed to set panel on: %d\n", ret);
 		goto poweroff;
 	}
 
@@ -188,9 +188,9 @@ static int wuxga_nt_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-				default_mode.hdisplay, default_mode.vdisplay,
-				default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -299,11 +299,12 @@ static int wuxga_nt_panel_remove(struct mipi_dsi_device *dsi)
 
 	ret = wuxga_nt_panel_disable(&wuxga_nt->base);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", ret);
 
 	ret = mipi_dsi_detach(dsi);
 	if (ret < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", ret);
 
 	drm_panel_detach(&wuxga_nt->base);
 	wuxga_nt_panel_del(wuxga_nt);
-- 
2.7.4


