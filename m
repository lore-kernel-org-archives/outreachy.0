X-GM-THRID: 6480148992322699264
X-Received: by 10.99.124.24 with SMTP id x24mr4255392pgc.40.1508854286908;
        Tue, 24 Oct 2017 07:11:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.185.13 with SMTP id z13ls107077pfe.1.gmail; Tue, 24 Oct
 2017 07:11:25 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QgmtyHyrNP//h1jdyv1n8chIyDDsemVU990IcergGAgPRlmbD8196Sv6v1MEPTvUEvwNYU
X-Received: by 10.99.126.90 with SMTP id o26mr4238611pgn.154.1508854285765;
        Tue, 24 Oct 2017 07:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854285; cv=none;
        d=google.com; s=arc-20160816;
        b=v37LHeucgKnO3WzDI3I8YudaEVmNLLpQ37TDO2p0jXc6ijAXFAEqAWC271pT6QWQd4
         e/hx7g0dmffYDyWIY5oZRhqklBET5NxeFeVOnxdqSIubfEGDFhfvKK9OodYF9lUEQ5Ot
         TROYoNQ0+3bqfEMcw1IBIdyNVAIK4G3jSnD1fxC3uSkOiBDnZ4xjH8Hh64fR9nyEAHNt
         uQJ1Bk9UiQH9LSuQo4NrVmobvIDdqAGZrtS5D2H4Le3MfiVxfmy0zbJYaAN+5NLn/5Bb
         Yn47NagV200ZPb65z8UbjFnsRi+lE5+Jr3spK884hUtCgJaW3wOBnbEOIC5F+wokCAfr
         D6OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=+dIBdeQppVyvWIP8R6FIzFzFSffFBqrpWYZvFuBYc0I=;
        b=zPua5//TwQECDrfN53/VWIlB+qbMt4JRBP/z5EqPMf/Lldzhpsvg13/oQ4QAOoh8t5
         trx4AyElTBAEVcsF+1Nyhjwac/ruR6WAJG0zkbkDN4Ap0WX20Zun0hztSoX9qz2Ic6zS
         XNu+Qag4ChlJD1xa4v20zUE8DzqthUtcpAxohgkYw8PYJWeona2J1qA4kv3t2DUP2q4R
         ecN7ig7owcnIWT6HTpmfyUVdqsAPQ8kzVW9j6x7bSFKPvt1h0f3CQM/qRO2JcFSQbdMA
         UIFtiuBeUwMkuJrhQLDkQ9fitVBoaLe1NEE1cYADSzU45jkApbvBTt4wRSt4erc8ufWR
         N4iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e01o3OYU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id b2si23522pgt.1.2017.10.24.07.11.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e01o3OYU;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id b85so19756343pfj.13
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+dIBdeQppVyvWIP8R6FIzFzFSffFBqrpWYZvFuBYc0I=;
        b=e01o3OYUvcGVwObbjNLgnRet1fjQ5IRcwZaI0SJavCXK2GnientBADzAUun1fGUMEF
         2RDctfwij5wOwgMWA2DpUn6mkWIzN9peKwfc/aLyfKq/9VCgYj6Q170PkOfFfMjq4PpW
         WGo8i7x3RgKWQH8GJ8WuPh9J2SrXY9radc6zsFeS1TnIvfmNoWJpDL0UtsJc3uj5xb/F
         UQ5WyzbbfYhOAqHGkZQAOywU8U0ktdQ2N+77XrNmwboewwAl6KaVY7vXGjMm0gOB8MrV
         BsFPpYsUi1UASw0dhQQKFZk+sYq304u+g9yC8Gl6g5gNZF0657MjD9pg47ICsy4CxcZO
         r+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+dIBdeQppVyvWIP8R6FIzFzFSffFBqrpWYZvFuBYc0I=;
        b=l8tfB3BHOEc6O0xOpyu/XjQkiV+SEHBQ13FNhs7jtdynuMIixBS/4fQXVPpg83Knds
         7/eKfFSdG5GQgvuiVWQWYPLesr31fbjqtGHcxoIhz5L6GdVZRG07j05jaqA/MLbgj08e
         Aj+ZGwMFPTVbUQU+OmwjZzHHtttFUXnim1e65VSjdAOZzyvLyU+97gWqtIHLdR8+6KA1
         Q+XFixt4AtNO5dMDXQrK5hSKU8+G1gPoy+NcOBm1U2YI4x25iqfYXjztEcvByZoS3i5K
         UJPufbHZgf27D69FQDTsHFEMSvaQyLPVed2hbJXunoDfth1Fcgph8ekpqDYVPLaGTvuM
         RNgQ==
X-Gm-Message-State: AMCzsaUB2FKQ2ULJ7UQwP+iiVZFkniZQpCRFSW9KqIho3JwxXIsVRBag
	h9nkm/E7rU8nEt3kmdx348Y=
X-Received: by 10.101.64.198 with SMTP id u6mr14861382pgp.44.1508854285420;
        Tue, 24 Oct 2017 07:11:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id g15sm830869pgr.57.2017.10.24.07.11.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 03/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-sitronix-st7789v
Date: Tue, 24 Oct 2017 19:40:54 +0530
Message-Id: <1508854263-18881-4-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index 358c64e..b2e4a05 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -176,9 +176,9 @@ static int st7789v_get_modes(struct drm_panel *panel)
 
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
 
@@ -389,7 +389,7 @@ static int st7789v_probe(struct spi_device *spi)
 
 	ctx->reset = devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset)) {
-		dev_err(&spi->dev, "Couldn't get our reset line\n");
+		DRM_DEV_ERROR(&spi->dev, "Couldn't get our reset line\n");
 		return PTR_ERR(ctx->reset);
 	}
 
-- 
2.7.4


