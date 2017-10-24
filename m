X-GM-THRID: 6480148992322699264
X-Received: by 10.200.5.71 with SMTP id c7mr13284553qth.5.1508854313560;
        Tue, 24 Oct 2017 07:11:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.34.237 with SMTP id q42ls203586qtc.0.gmail; Tue, 24 Oct
 2017 07:11:53 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QWq64FZDhNHWwqouBW5uvntwPbYXLQy1FP83KUKJ/WajKrkZ16bBcAFg98ezuMQydnqKgM
X-Received: by 10.55.163.197 with SMTP id m188mr14033705qke.9.1508854313097;
        Tue, 24 Oct 2017 07:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854313; cv=none;
        d=google.com; s=arc-20160816;
        b=eHAeALNUX0cLkkcSkwe8lr/+Hb4W9e7DsZ5YA84+kkB4bA2TKs8kuwTnbrD3QpbiJT
         SiRbtrgyXItV6SEwqlkmllXufy12ul1+5jnuf1XVtI4fP9mpSM+k+9hk8WI24LrFZNrd
         W3+536cnjV3u0LQkiutxNq6ZIDdvq730Jr2FGiXm3EYRQo92+r3ShzyXQ12COooBoJVg
         3mR3x5mGIhDpcUliOn+l6hFrX/kC1ErKY8P5pfWF60+4IBPdu0hQM2nM1BpGebNHT3ZE
         iLkGrXvt2Jc5sWz/4bBtTK4uXLYO5Qki+1F3b78OyVG15deuklgMctMkaSBX8aEsJzbG
         KebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=UvoV8CgmHnx/qkS0U1WwvkbhQORIBf6YTOfIOP4I++k=;
        b=cttHf7jfqewTWRmhFvKCHcTSRfEjRswCprnNVlIisFe0ViILFUTaPNqiq/UZp8wF94
         djhpjqzml2z8vppuA4nqp2YPtXxRmZJknIZ9zhw5ZXmWdeqUUa8zwc8rzeQuKHisaVFB
         /XRhbnLr9UwwhAzBMwGvmgH2eOCpqhTgAxsLwv/oG1Gw5XHaTXp3dUzNAsyxNU6b1yPJ
         fV8scpWLW3WxcblBGicb0Cw7s8O5GVpMx/NJUwgWYH/9XGiar5F73u7iNGJCPu/DXk7W
         SrzdtKUyd+HE/cUJfN44eAQcCb2Pgn/wcZ8wq9Rc0ASR9lGWr6qgl00OukMo2LuoI1yI
         JG0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaJxQuGn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 5si33180qki.1.2017.10.24.07.11.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uaJxQuGn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v78so14621510pgb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UvoV8CgmHnx/qkS0U1WwvkbhQORIBf6YTOfIOP4I++k=;
        b=uaJxQuGnqC5L1YJpCRSaIclY+Pgb708+r312rdK17QYu0s8Zcya6zonndRCnZgRoyG
         RnMq6TBkf7TBxncdRTwry48CvexzPkly030LfhE5+ICpTSSHA72Tz9g3iJk/Rjxpdkw2
         lUtt+pv0E50IFZko9aBkAn419c7sWVPezgiK3Bv6vfLmZObVZhp+Red8YunvELrM3c9j
         4qZhH18xnQFzpWEwk+KAlF6p4XmG85NKoy3rGiw83X3pCLVkAc9L8snIwurulhlFVTCR
         Z+lBE+wPu+bA8+l/0IRB715O2oorKZOpkBeyU25e4bhgmVQ35KnDfgCr5HsP7qMvB0MT
         ZWXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UvoV8CgmHnx/qkS0U1WwvkbhQORIBf6YTOfIOP4I++k=;
        b=D3Ck0J7jh3Lmgf2rbPjqMBB1ZS4aP3j4A0trOvO1xB39m8bveQLP9i6dqCJfPS+1cv
         Lno2pK97SQ6vqeBmFa/LGMSgf263oT2lqHM2whyvdt2dMA2K8uFGPx172J/QqxK1ZurM
         8lEzYasDbkeIiVfeMcgFAF9JWlQ2/qV7jA+fgw5HgxLeMiQfoS1WOS0MFBZT9TtEhE4P
         q1QgkwaWPWfBC/16PAogg18zCfCpowCeyKEXm9BmU7XXHLXXFXsEomJWpxHDTyIIVGof
         Y1p8mBXd5nOPVXSkPK5u52saKqYY6VhyYJ1QFkxb3JoQhBoca8ryL5zGbv8ek+yiaZv0
         YiIA==
X-Gm-Message-State: AMCzsaV+wxmZAelSUTg5EX1OdOvW1a2V8GTPIJir3E+GY+OdY2bwVI94
	WjehZ2o2KbcX66ivr1kNmGDE7nOt
X-Received: by 10.99.56.19 with SMTP id f19mr14877525pga.328.1508854312665;
        Tue, 24 Oct 2017 07:11:52 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id l14sm811422pgn.40.2017.10.24.07.11.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:52 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 10/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-samsung-s6e3ha2
Date: Tue, 24 Oct 2017 19:41:01 +0530
Message-Id: <1508854263-18881-11-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c b/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
index 797bbc7..583f96f 100644
--- a/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c
@@ -454,7 +454,7 @@ static int s6e3ha2_set_brightness(struct backlight_device *bl_dev)
 
 	if (brightness < S6E3HA2_MIN_BRIGHTNESS ||
 		brightness > bl_dev->props.max_brightness) {
-		dev_err(ctx->dev, "Invalid brightness: %u\n", brightness);
+		DRM_DEV_ERROR(ctx->dev, "Invalid brightness: %u\n", brightness);
 		return -EINVAL;
 	}
 
@@ -702,28 +702,28 @@ static int s6e3ha2_probe(struct mipi_dsi_device *dsi)
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
 				      ctx->supplies);
 	if (ret < 0) {
-		dev_err(dev, "failed to get regulators: %d\n", ret);
+		DRM_DEV_ERROR(dev, "failed to get regulators: %d\n", ret);
 		return ret;
 	}
 
 	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset_gpio)) {
-		dev_err(dev, "cannot get reset-gpios %ld\n",
-			PTR_ERR(ctx->reset_gpio));
+		DRM_DEV_ERROR(dev, "cannot get reset-gpios %ld\n",
+			      PTR_ERR(ctx->reset_gpio));
 		return PTR_ERR(ctx->reset_gpio);
 	}
 
 	ctx->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_HIGH);
 	if (IS_ERR(ctx->enable_gpio)) {
-		dev_err(dev, "cannot get enable-gpios %ld\n",
-			PTR_ERR(ctx->enable_gpio));
+		DRM_DEV_ERROR(dev, "cannot get enable-gpios %ld\n",
+			      PTR_ERR(ctx->enable_gpio));
 		return PTR_ERR(ctx->enable_gpio);
 	}
 
 	ctx->bl_dev = backlight_device_register("s6e3ha2", dev, ctx,
 						&s6e3ha2_bl_ops, NULL);
 	if (IS_ERR(ctx->bl_dev)) {
-		dev_err(dev, "failed to register backlight device\n");
+		DRM_DEV_ERROR(dev, "failed to register backlight device\n");
 		return PTR_ERR(ctx->bl_dev);
 	}
 
-- 
2.7.4


