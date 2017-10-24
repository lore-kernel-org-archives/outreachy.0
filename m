X-GM-THRID: 6480148992322699264
X-Received: by 10.129.122.143 with SMTP id v137mr9110158ywc.93.1508854321847;
        Tue, 24 Oct 2017 07:12:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.161.75 with SMTP id y72ls26850ywg.5.gmail; Tue, 24 Oct
 2017 07:12:01 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SYiGfVFRsoNqQGXlM5rDVddQb3SnBhq6saiSEj714qrCYT2Gck96FeyWaXzlSni488OQaZ
X-Received: by 10.129.154.9 with SMTP id r9mr9142661ywg.48.1508854321041;
        Tue, 24 Oct 2017 07:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854321; cv=none;
        d=google.com; s=arc-20160816;
        b=FFrMTyXjwHWRYsknWH2PdrIpwRAwQj3I1zC5Tzv2FPs8kRhH+QY0LebhMWpSwxtMXg
         pB1KjrYZJ38c2tN/IL0IJdStNDLfTiHvp2M5R2kpFG3tkEBDVolqRbyxN72MBUXSTg0E
         B0zYFPx8jzbP7S9FvHx3TCC1g+hJBTRMOV20tlbQL18suqHlFTvp+lOfFzx+3DuKnIml
         Yw32O1kV8zdpji8F/zDeijFiQ4T8IfD8D87mFaN0bACCmma21hq2A3IR2o7Hw/BEO+LE
         r7Tp7tjdB6eS8T9d+nBnH2GpttIh9hnASYWwUORxacWXzJufJyeSnVbl2SWB8TgAHYF6
         uiAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=jyTxXd1FfM29SaDycTqGaG1QQdxyYQFSOog5o3BbckE=;
        b=tWgErziWEFhJWYhS+Kees5GBLdZljYEloWKjHRUVIGmsv8B+KDIGZ6Ie4G10w5qlnO
         hrhfMXmUPZq5fUwggGcjBym4sooFoaUaZWQD7OWJLhFZhFnVk/vIMmXEZrQDq5lta/mY
         uE6kHgvYV9k6OyBtjpMKDndjTNHXDEKGNtM70CZ2IGM54wzxLvoYVwwggKte+AcJtUFQ
         6HCXLvg872ZCTTqJPAn7zeRop8t9XSN47+uzsx8htC/MZtJq9ePbCvhlMWouKAd8qFjp
         tQKcXCgVVSCyL4nO3x8Vrb8ScyUmn9lJ3DLBYRnO4te2upeyLbBoARv8GahsGPrce5KE
         TRZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VR5NnMJK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x22b.google.com (mail-pg0-x22b.google.com. [2607:f8b0:400e:c05::22b])
        by gmr-mx.google.com with ESMTPS id g13si25344ybk.3.2017.10.24.07.12.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) client-ip=2607:f8b0:400e:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VR5NnMJK;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22b.google.com with SMTP id a192so14615849pge.9
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jyTxXd1FfM29SaDycTqGaG1QQdxyYQFSOog5o3BbckE=;
        b=VR5NnMJKsaX2Xif9GfwxCBiyHY87sFeLYAagAXll7valYd5i30boxsmmA12Sg+y4kN
         +ymehEYhT//KjFP58Hn47FqSTvQfmbr24/HopAGaB0fOE4/8fyzLnT0c7pJeLL1oZW0u
         5Pd4csEeSSWVBK85JVi4zAnSazemVpf3qns3+D2dX4TtETdna3LllvQHjCwEU1hSmIlq
         I5O45qH4WmE67IBMudWhZn/umkCuQxjT8SQVqnksub2fM8fS2+ChZ2nVBRZRM2n4l3n7
         0iT36b2jIINcqWA+hrbr1eRWThcoK1KK4Dm3eh8imdIgWXAuNJBCGe6qEFzgdxurOkwG
         fJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jyTxXd1FfM29SaDycTqGaG1QQdxyYQFSOog5o3BbckE=;
        b=fd06ZOi45WmQH4/X45G3lhl2H46TZdJENRBMIMJ3IrS9zXHHOH5nF8Qpzq4dBL+jo7
         Vn6RWP4p9YuA/1HlFVIUdvFm9EqQvmsdlndNxEiF08ABn3h6E8/gjkCL8Dh56hJLIIgJ
         3VIdpzL9an/u1ga99GvTbMqw/Fbon0lnCg8F/6wI53DttruFQS8V1KQ7zEy1wJANTZpI
         jj1P3dY20rQvLY5F9+FgkLPlj8mxSUg4kpyWrM+AnEa3c0KGEFsrGQvSFGMrpjoArvAR
         zCi/iDgk/du1m14Dt9ti0JpobU+/lvQjoaxLrIwZJylQ3huUscjp/AqmrG6vfegJWHhY
         ch0Q==
X-Gm-Message-State: AMCzsaUugyfzg0Vpye67awc/2jPoxQm5YDCNASOFqPm+itMLNT+tjF/9
	Y+DGRle8/DauKsSo9pIr4CURjX4t
X-Received: by 10.99.157.133 with SMTP id i127mr15236729pgd.204.1508854320567;
        Tue, 24 Oct 2017 07:12:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id p12sm800268pgd.0.2017.10.24.07.11.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:12:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 12/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-sharp-lq101r1sx01
Date: Tue, 24 Oct 2017 19:41:03 +0530
Message-Id: <1508854263-18881-13-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c | 60 +++++++++++++++----------
 1 file changed, 37 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c b/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
index 3cce3ca..42a9d4d 100644
--- a/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
+++ b/drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c
@@ -57,14 +57,14 @@ static int sharp_panel_write(struct sharp_panel *sharp, u16 offset, u8 value)
 
 	err = mipi_dsi_generic_write(dsi, payload, sizeof(payload));
 	if (err < 0) {
-		dev_err(&dsi->dev, "failed to write %02x to %04x: %zd\n",
-			value, offset, err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to write %02x to %04x: %zd\n",
+			      value, offset, err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_nop(dsi);
 	if (err < 0) {
-		dev_err(&dsi->dev, "failed to send DCS nop: %zd\n", err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to send DCS nop: %zd\n", err);
 		return err;
 	}
 
@@ -83,8 +83,9 @@ static __maybe_unused int sharp_panel_read(struct sharp_panel *sharp,
 	err = mipi_dsi_generic_read(sharp->link1, &offset, sizeof(offset),
 				    value, sizeof(*value));
 	if (err < 0)
-		dev_err(&sharp->link1->dev, "failed to read from %04x: %zd\n",
-			offset, err);
+		DRM_DEV_ERROR(&sharp->link1->dev,
+			      "failed to read from %04x: %zd\n",
+			      offset, err);
 
 	return err;
 }
@@ -118,11 +119,13 @@ static int sharp_panel_unprepare(struct drm_panel *panel)
 
 	err = mipi_dsi_dcs_set_display_off(sharp->link1);
 	if (err < 0)
-		dev_err(panel->dev, "failed to set display off: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set display off: %d\n", err);
 
 	err = mipi_dsi_dcs_enter_sleep_mode(sharp->link1);
 	if (err < 0)
-		dev_err(panel->dev, "failed to enter sleep mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to enter sleep mode: %d\n", err);
 
 	msleep(120);
 
@@ -141,26 +144,30 @@ static int sharp_setup_symmetrical_split(struct mipi_dsi_device *left,
 
 	err = mipi_dsi_dcs_set_column_address(left, 0, mode->hdisplay / 2 - 1);
 	if (err < 0) {
-		dev_err(&left->dev, "failed to set column address: %d\n", err);
+		DRM_DEV_ERROR(&left->dev,
+			      "failed to set column address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_page_address(left, 0, mode->vdisplay - 1);
 	if (err < 0) {
-		dev_err(&left->dev, "failed to set page address: %d\n", err);
+		DRM_DEV_ERROR(&left->dev,
+			      "failed to set page address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_column_address(right, mode->hdisplay / 2,
 					      mode->hdisplay - 1);
 	if (err < 0) {
-		dev_err(&right->dev, "failed to set column address: %d\n", err);
+		DRM_DEV_ERROR(&right->dev,
+			      "failed to set column address: %d\n", err);
 		return err;
 	}
 
 	err = mipi_dsi_dcs_set_page_address(right, 0, mode->vdisplay - 1);
 	if (err < 0) {
-		dev_err(&right->dev, "failed to set page address: %d\n", err);
+		DRM_DEV_ERROR(&right->dev,
+			      "failed to set page address: %d\n", err);
 		return err;
 	}
 
@@ -190,7 +197,8 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 
 	err = mipi_dsi_dcs_exit_sleep_mode(sharp->link1);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to exit sleep mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to exit sleep mode: %d\n", err);
 		goto poweroff;
 	}
 
@@ -206,20 +214,23 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 	/* set left-right mode */
 	err = sharp_panel_write(sharp, 0x1000, 0x2a);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set left-right mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set left-right mode: %d\n", err);
 		goto poweroff;
 	}
 
 	/* enable command mode */
 	err = sharp_panel_write(sharp, 0x1001, 0x01);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to enable command mode: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to enable command mode: %d\n", err);
 		goto poweroff;
 	}
 
 	err = mipi_dsi_dcs_set_pixel_format(sharp->link1, format);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set pixel format: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set pixel format: %d\n", err);
 		goto poweroff;
 	}
 
@@ -233,14 +244,16 @@ static int sharp_panel_prepare(struct drm_panel *panel)
 	err = sharp_setup_symmetrical_split(sharp->link1, sharp->link2,
 					    sharp->mode);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set up symmetrical split: %d\n",
-			err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set up symmetrical split: %d\n",
+			      err);
 		goto poweroff;
 	}
 
 	err = mipi_dsi_dcs_set_display_on(sharp->link1);
 	if (err < 0) {
-		dev_err(panel->dev, "failed to set display on: %d\n", err);
+		DRM_DEV_ERROR(panel->dev,
+			      "failed to set display on: %d\n", err);
 		goto poweroff;
 	}
 
@@ -292,9 +305,9 @@ static int sharp_panel_get_modes(struct drm_panel *panel)
 
 	mode = drm_mode_duplicate(panel->drm, &default_mode);
 	if (!mode) {
-		dev_err(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
-			default_mode.hdisplay, default_mode.vdisplay,
-			default_mode.vrefresh);
+		DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
+			      default_mode.hdisplay, default_mode.vdisplay,
+			      default_mode.vrefresh);
 		return -ENOMEM;
 	}
 
@@ -436,11 +449,12 @@ static int sharp_panel_remove(struct mipi_dsi_device *dsi)
 
 	err = sharp_panel_disable(&sharp->base);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to disable panel: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", err);
 
 	err = mipi_dsi_detach(dsi);
 	if (err < 0)
-		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", err);
+		DRM_DEV_ERROR(&dsi->dev,
+			      "failed to detach from DSI host: %d\n", err);
 
 	drm_panel_detach(&sharp->base);
 	sharp_panel_del(sharp);
-- 
2.7.4


