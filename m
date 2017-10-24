X-GM-THRID: 6480148992322699264
X-Received: by 10.176.65.66 with SMTP id j60mr9831640uad.83.1508854310157;
        Tue, 24 Oct 2017 07:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.160.76 with SMTP id j73ls48144vke.12.gmail; Tue, 24 Oct
 2017 07:11:49 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QO6t4xMu2PuEQhEsxa03pJ+eaH0MvFOfkfajoYgMhY8CJl2qMs5eRBSnclAWqEMBOHsjtn
X-Received: by 10.176.19.70 with SMTP id h6mr9077135uae.94.1508854309171;
        Tue, 24 Oct 2017 07:11:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854309; cv=none;
        d=google.com; s=arc-20160816;
        b=oNiuWn8PN/wXx1cvO/EAHqDNbcdOcZjDb/i79gWf/IxfEfiYXvrIJzU9bViRRHb0HH
         g86B8P+TfQS2xE0OX+LChwbRiwp12rvrXHi1S0JQ1t33eIs7nzmLRp+2/a0g/WVl1cNJ
         b7uVUmFKtPoxjm4XrvOUBz5DGXQsw5yb4/kuP8I4DTnsrwpqMPAAEEs58cpJdFZ9F70e
         heaSkQUT053ts0GMKGzgJSDL8PNgLo0PIcz0bmnIIAVULCwtpA0zmqO00BHRzxRddbVp
         yHDfrIwyxJEPIa73nOq1jEbt2prynmui4fq6nnOK06GY8MUN9UOLYq2U5TTZdOr7p0EK
         Mdvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=CyqgmLH30uvAK4+D/RPz1A+UWOyr4jWo1DK42OgJWzk=;
        b=I8PTB7hhzMH3uHwCrFXn8EZvUbz2m3ALrpOSgJgmOtXVOMlArg6xDDKPpucBYRCXTH
         ca7BTxkg80n1fj961RN3ATPLz6CV+lYD4YImA02pv6FAxwoM8U0+hhs7pfO6hZ1JCX1a
         U/ost0EZIqAARvPCOX0FyYfV5+gNEzf7ZzZSIcKTzjMOHXRMiVDstnW4XRP3mBCcPGV2
         4P3lbZ1N7a66hBOG/6aa2+ZeEXRJwaW2cx8AJNowCLO+7Castb/9Rs9pRbl6xMKTCDl/
         AsrbdzukCmT4pCzUIuS3Jjlf5yf/X8up7xVc193OJx3+K2x3ssxOgzn+kocICjC116Jn
         fHpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cI+vOSu0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x234.google.com (mail-pg0-x234.google.com. [2607:f8b0:400e:c05::234])
        by gmr-mx.google.com with ESMTPS id b10si12204uak.3.2017.10.24.07.11.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) client-ip=2607:f8b0:400e:c05::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cI+vOSu0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::234 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x234.google.com with SMTP id l24so14612701pgu.11
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CyqgmLH30uvAK4+D/RPz1A+UWOyr4jWo1DK42OgJWzk=;
        b=cI+vOSu0cgAeS/vvn8m9ZaGVAKpxyEA9aw1g95vvMIO6iX8JdaVw5LPqHjvZdM7Zm6
         o5C5J01qOw8fxQCv+lW1c1OnFSj+yYrB/7Or0MiJpfMaUrVdmyFHML2E+AtUMTHYKCyw
         ThMYZpnxrDDoURW2fsQi6AS6opIqliYyi4hVK9hnrCTYJF4S+sKE64ZOatLtfwjCSIcE
         3zV1SLm8xb6+gFlNtOcpghAgXN4DxirDXa4jHRfe8QEXeOvvTls7MZKkgSB+X6FjHrR9
         uAWezwcpSl7JJWE78KWdzYemmQ0pCyH/3/D71FsDuiz0QLrFEa06/F/igeLUgOyDav56
         2Z0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CyqgmLH30uvAK4+D/RPz1A+UWOyr4jWo1DK42OgJWzk=;
        b=Y2QilziHRNP0kbR86pgliaTCGtHXHY/tXVQc5Y5DjTRUjx2xWfFp4rBuuVdDhwPIRO
         Dnqqps8+TA6ogE7P0BeNDmCLR+8V6y+y3TPXiKSZ8bPLJs1eXmtCSN6EDbdKLyq/nmF/
         LcggNTZuAtE3bipnGHJhqwhtU/IIazO2phpnWgIPp548f201IEjKpxauzFlp/9ooTb+J
         cAvankaS2i5J/AP95m81YRVy1HoIOP7H2jilvNZ4T32jqHcUQ+iJ42Wy9rXWkgy9cpad
         A/GKTbHtT1mRbAYv7QvLtDaya+zZggMh5t1nFUZrW8YhaqEKIkAu0+hE0m0D7w+lKXEm
         PIew==
X-Gm-Message-State: AMCzsaXUHyF/PsYd3latPoJYlRiQf99ZOy0CYRt4P2XUcfegUUf8jIOB
	Sm3H4dhKLARG+mGJwhF3g+U=
X-Received: by 10.98.69.145 with SMTP id n17mr16275646pfi.310.1508854308729;
        Tue, 24 Oct 2017 07:11:48 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id v85sm972535pfi.71.2017.10.24.07.11.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:48 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 09/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-samsung-s6e8aa0
Date: Tue, 24 Oct 2017 19:41:00 +0530
Message-Id: <1508854263-18881-10-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c | 28 +++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c b/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
index a188a39..ec677e6 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c
@@ -143,8 +143,9 @@ static void s6e8aa0_dcs_write(struct s6e8aa0 *ctx, const void *data, size_t len)
 
 	ret = mipi_dsi_dcs_write_buffer(dsi, data, len);
 	if (ret < 0) {
-		dev_err(ctx->dev, "error %zd writing dcs seq: %*ph\n", ret,
-			(int)len, data);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %zd writing dcs seq: %*ph\n", ret,
+			      (int)len, data);
 		ctx->error = ret;
 	}
 }
@@ -159,7 +160,8 @@ static int s6e8aa0_dcs_read(struct s6e8aa0 *ctx, u8 cmd, void *data, size_t len)
 
 	ret = mipi_dsi_dcs_read(dsi, cmd, data, len);
 	if (ret < 0) {
-		dev_err(ctx->dev, "error %d reading dcs seq(%#x)\n", ret, cmd);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %d reading dcs seq(%#x)\n", ret, cmd);
 		ctx->error = ret;
 	}
 
@@ -810,9 +812,9 @@ static void s6e8aa0_set_maximum_return_packet_size(struct s6e8aa0 *ctx,
 
 	ret = mipi_dsi_set_maximum_return_packet_size(dsi, size);
 	if (ret < 0) {
-		dev_err(ctx->dev,
-			"error %d setting maximum return packet size to %d\n",
-			ret, size);
+		DRM_DEV_ERROR(ctx->dev,
+			      "error %d setting maximum return packet size to %d\n",
+			      ret, size);
 		ctx->error = ret;
 	}
 }
@@ -824,19 +826,21 @@ static void s6e8aa0_read_mtp_id(struct s6e8aa0 *ctx)
 
 	ret = s6e8aa0_dcs_read(ctx, 0xd1, id, ARRAY_SIZE(id));
 	if (ret < ARRAY_SIZE(id) || id[0] == 0x00) {
-		dev_err(ctx->dev, "read id failed\n");
+		DRM_DEV_ERROR(ctx->dev, "read id failed\n");
 		ctx->error = -EIO;
 		return;
 	}
 
-	dev_info(ctx->dev, "ID: 0x%2x, 0x%2x, 0x%2x\n", id[0], id[1], id[2]);
+	DRM_DEV_INFO(ctx->dev,
+		     "ID: 0x%2x, 0x%2x, 0x%2x\n", id[0], id[1], id[2]);
 
 	for (i = 0; i < ARRAY_SIZE(s6e8aa0_variants); ++i) {
 		if (id[1] == s6e8aa0_variants[i].version)
 			break;
 	}
 	if (i >= ARRAY_SIZE(s6e8aa0_variants)) {
-		dev_err(ctx->dev, "unsupported display version %d\n", id[1]);
+		DRM_DEV_ERROR(ctx->dev,
+			      "unsupported display version %d\n", id[1]);
 		ctx->error = -EINVAL;
 		return;
 	}
@@ -1003,14 +1007,14 @@ static int s6e8aa0_probe(struct mipi_dsi_device *dsi)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
 				      ctx->supplies);
 	if (ret < 0) {
-		dev_err(dev, "failed to get regulators: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to get regulators: %d\n", ret);
 		return ret;
 	}
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
-- 
2.7.4


