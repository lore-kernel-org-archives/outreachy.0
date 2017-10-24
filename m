X-GM-THRID: 6480148992322699264
X-Received: by 10.157.24.16 with SMTP id b16mr9273951ote.15.1508854305827;
        Tue, 24 Oct 2017 07:11:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.72.171 with SMTP id d40ls149917otf.11.gmail; Tue, 24 Oct
 2017 07:11:45 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S/jYpbFgpsOD+g593b4ZoIimrt5/PVeL2GDQD9pMuNkbvNLQ9vc5uwnaSYe9MKKzC1weKe
X-Received: by 10.157.27.17 with SMTP id l17mr10060812otl.0.1508854305328;
        Tue, 24 Oct 2017 07:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854305; cv=none;
        d=google.com; s=arc-20160816;
        b=OjvrvmhuyKYCu6aeoWVNuhKM4a0TjgNnmhrxsQg13h56y2guv/yXJPAAUSrbLX4tV4
         fPvsQDqmZAWFS2+FZStlxaOhNvtJ3O+eP2LsM4Go5nvDUaX5nkn0RkNlEpjiZrzlp9T1
         w8xoD0RJfvPHFVCY1WgokWYDFs8B3EIu3+Aa3YQH5GPKK81rtQYQD2fBh0Ol5OxQsH7U
         PjK7McguW4Z9ATScERk+H8omG8kbY01e5VUz//pzujRnYFtxo3XF6LlDI3EvcBTnb+E9
         cu5Uf4yplsfaXQNVjxTaOF54DVC0AU2a7OTCmtc0/BEbZ2xrW8P4o/OnUYPfpI6kPR9r
         o/xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=E5vPq8MaF+QjqA4PhgRKoLnvI1hEzO151XLDtic4bPU=;
        b=McULG/RhvIo0ce7jIjd9Mc4Ruwv1Hfhhimvdrgy7ssaLOgWpYmJQ8dNs9NxLWv5KQb
         HBdTUz1AWrmoOx2ix8BcaIzJHlZTb+KBK4HMshM93v43OX7O9x4EhyfSG5uCVp64lJXj
         FhMW/h9Uai8er2mw1jJmRxuQpNDcViYMHIcn9uiX5VQuQWbL6IYuaZR0V+QlGMUBkfKl
         95Fq6/k0jLAgpRg1MSXjoEY2d7n3OhKgTEpRo1e3ladeh+AEH2/+r7v5dRjq83iA8zXC
         Mc6B8ubOjAnEWsnIkP7gjJ0GCYxwzV9MXKWFXeCOt1rkPTQGLlVMfuz7NQS0799bBVH/
         GyHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUZ+ybQU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id t9si31039ote.1.2017.10.24.07.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PUZ+ybQU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id b6so19772840pfh.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E5vPq8MaF+QjqA4PhgRKoLnvI1hEzO151XLDtic4bPU=;
        b=PUZ+ybQUIRNgx69IAq/JfVfsYnjloGOe3zHGslqg2K3PLaP9MS3R6sxALg2gMisLbK
         /oy3UwZ+4cK6WYXkvnBgf4OwFWADIzlhjVRq81XgKGug5r4brAtN4LssX//Zd7m4SvDH
         S/xK98tuYdko90dbsafxMcKUk0hUTUILGp0IV3IDCkZ0bPuqG8wnpc668/KFT54sktA4
         zkGXghLCCnrRRhYI9mEJ/Tjf4gJK2m+eWKZoiXKP0MsR0XkluRg9kai+2EAiARFMK6WR
         8fAi2R4aiOcpoO6Fs8H4d/lv5VafKpSUNr3v04JjLGsLyZCCZNcVVCa0UOiFe+Bwh75F
         KZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E5vPq8MaF+QjqA4PhgRKoLnvI1hEzO151XLDtic4bPU=;
        b=WFcWn62Xv5LjN5hKQzYlFEq1aR96ZKdbhgXyg02iIZzpBIE+HINyovikc3lRTvsAPl
         pU2V9DqYtxTTCLusyejtmAdKuDbh88IIPe+JXP5gQcveaxFO08BPSNllQn+oXOUsx7fL
         Wl9TU84NOyGkRvW0x7zV/1ssCM9stEh3yP1ee3jKx8sFgIMOetfnn+l48Wv13589LpJj
         745JXSsQN2Vy4L2XABK2/ws3JOUHTtB7U1FJnBIkstDe3/PzntnuCq4ASRMhyJueTeAy
         DkzicvY4dUxs52lYojYJ+najCY35uz8x9ITNgOa+oIo19iPIla2gtHBuRAzKzRKVU/aZ
         Iktg==
X-Gm-Message-State: AMCzsaU32/b7u0cZdH3AMZQUEYchpZ70KZYRj3xb5a+7bloqyJcTlAbO
	0Z/gD4IkuuNuza0LKqBjhxs=
X-Received: by 10.159.233.137 with SMTP id bh9mr6183646plb.201.1508854304894;
        Tue, 24 Oct 2017 07:11:44 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id b19sm816629pfd.182.2017.10.24.07.11.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:44 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 08/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-samsung-ld9040
Date: Tue, 24 Oct 2017 19:40:59 +0530
Message-Id: <1508854263-18881-9-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-samsung-ld9040.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-samsung-ld9040.c b/drivers/gpu/drm/panel/panel-samsung-ld9040.c
index 3cf4cf6..a36c2ff 100644
--- a/drivers/gpu/drm/panel/panel-samsung-ld9040.c
+++ b/drivers/gpu/drm/panel/panel-samsung-ld9040.c
@@ -145,7 +145,7 @@ static void ld9040_dcs_write(struct ld9040 *ctx, const u8 *data, size_t len)
 	if (ctx->error < 0 || len == 0)
 		return;
 
-	dev_dbg(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
+	DRM_DEV_DEBUG(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
 	ret = ld9040_spi_write_word(ctx, *data);
 
 	while (!ret && --len) {
@@ -154,8 +154,8 @@ static void ld9040_dcs_write(struct ld9040 *ctx, const u8 *data, size_t len)
 	}
 
 	if (ret) {
-		dev_err(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
-			(int)len, data);
+		DRM_DEV_ERROR(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
+			      (int)len, data);
 		ctx->error = ret;
 	}
 
@@ -338,15 +338,15 @@ static int ld9040_probe(struct spi_device *spi)
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
 	spi->bits_per_word = 9;
 	ret = spi_setup(spi);
 	if (ret < 0) {
-		dev_err(dev, "spi setup failed.\n");
+		DRM_DEV_ERROR(dev, "spi setup failed.\n");
 		return ret;
 	}
 
-- 
2.7.4


