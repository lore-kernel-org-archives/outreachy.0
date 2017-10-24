X-GM-THRID: 6480148992322699264
X-Received: by 10.200.27.100 with SMTP id p33mr13370540qtk.61.1508854277911;
        Tue, 24 Oct 2017 07:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.15.42 with SMTP id e39ls201702qtk.2.gmail; Tue, 24 Oct
 2017 07:11:17 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T/DKjnxq0OQpJ94PYThyNQoyv2Nyspu76y5Kz+MktDBDVPDdegpg58YagTBgfXHC3e8BG+
X-Received: by 10.55.31.166 with SMTP id n38mr13404658qkh.57.1508854277324;
        Tue, 24 Oct 2017 07:11:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508854277; cv=none;
        d=google.com; s=arc-20160816;
        b=hO7b/xnJZCnWHLPNLlBQuHbl5WQ7pvdHvzS3CxfZPb0ZhTQDvrNmrQOW94LP9v/Lmk
         q6PZjMrSbhqXfr0PGv/Ov2KTdSp47aEWq/yrsaPXejx0a7ZGvaKKn4o5aNLonQhYQj2R
         fLzULT9jDBuTB2hSFldqCT/jo7S5hLRKuJrOkkrLLsKqXY0sEBY+qlF2JRG1K5Kq4nn+
         oucaj65PiN29/zNEd3w4WdSS/w8sOqHp7vxuS8BmdqydRPk8TiGFbsiuXHMnQURrFJTp
         ZewfUjkyUyIGpbz8oGw1f4/M2CRSGoiPp9Lct5ufe7U4fyB2SEz7tWZn3wiKwyOGktma
         3HtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=g9DRhufTJ0jNzOuixyqA7FxgvBln1pY+uKy33pECfpM=;
        b=bMV6jT7lth+BJ5f3FNdi0diw4EvAMFh0exzU/yNJa+m+w16hdIxod+iOto4mQcQEhG
         uQUeBYpuaN8/6cDIqSDrpkCQDM1XeoLNtfP6OZwkyuRH7GqQNZfu16HgyJf1SV/CTKtv
         K3q+Z8Xd1FXcvmJvotqaas6Z3XII72jm+wacivrurMGXnlsb6aloFsIMMVam0ExiWIY5
         GVJr3FQijXIo2T48hR/++t3G/8BpWkJRGS2apZGz9G5px0TYshkTGd4t6vFiXQd9hzKe
         mlc38fXmVlIbtNx21RrflblSopgmwk3Xt4/3tOwydM9HcgPxsnjx/eyphuwvFlivQxRP
         tVUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ifv3O+/k;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x22b.google.com (mail-pg0-x22b.google.com. [2607:f8b0:400e:c05::22b])
        by gmr-mx.google.com with ESMTPS id 5si33057qki.1.2017.10.24.07.11.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 07:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) client-ip=2607:f8b0:400e:c05::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ifv3O+/k;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::22b as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22b.google.com with SMTP id r25so14626289pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 07:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g9DRhufTJ0jNzOuixyqA7FxgvBln1pY+uKy33pECfpM=;
        b=Ifv3O+/kICzEXibPQkSG0aD04wxmO8+xmXmHBM+2QYej8M6tSwHmkaShTlSAGxyOKw
         +qRKwC0uzyc7/TD37GMYOwXq/+ibA7lpjEKev9UwAEYwqavnDcGKIQj7hBafErpJs22v
         poiSv0fs9Si3Zg1WuhExcam8sVBlsTLbQJwfAkZuUdhK9NRkvVXBGytRbhbOID5ZweLS
         hUNVKugfHxG9w4cGyjLXGcGhjxb/YAR1cutjSyibRvKX1rba9aO2h997BCI9SxnZ74mq
         pQ5dYO8lA3JAaFynqCawjR/42Su1nlyT5IhWhczv2hDlMC3TOmoz7yFsW9m56n22VhF4
         L+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g9DRhufTJ0jNzOuixyqA7FxgvBln1pY+uKy33pECfpM=;
        b=a6YunUKK5CZpSbFOo46Bo57SmJtJE+yqF4317Rq3NrJQRrfpdXKN2xv2Gr5g3bwb+y
         mBhYOoevPECvlTd0J90pCMchcUoTN5cwR/5J0zSTM0ZzV6ragI7u4r7XC3hoR9waCDNl
         WDShjNeTFrcOLg7HB4MRUQ8wcQ3tm5PvXv2CRZNZo/hGldUvKciDek86mjwrY0xD+FLw
         SjUtYhgrUNOW0OLySe/0wD+c/+Ml3PBiwP4+KIVOxuqA3+Ez1tB6KczfGQwXWWOaMJJc
         jLL2XB6MMNGXLPckG+EOYQk73x7BrFaY6tf5jFSKOKcPY45cBZMGLYy2ASzfQxHZqFk1
         G8ng==
X-Gm-Message-State: AMCzsaVUmDOUpYHJ/trmW1rPewvYD+gplpNmqzfc3eK53ogiMgEGCQ/x
	SSb7O71v8IsIyCsOuCH6x4shl/+0
X-Received: by 10.101.77.144 with SMTP id p16mr14750125pgq.226.1508854276896;
        Tue, 24 Oct 2017 07:11:16 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id i129sm777447pgd.21.2017.10.24.07.11.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Oct 2017 07:11:16 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org,
	seanpaul@chromium.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 01/12] drm: panel: replace dev_* with DRM_DEV_* equivalent in panel-innolux-p079zca
Date: Tue, 24 Oct 2017 19:40:52 +0530
Message-Id: <1508854263-18881-2-git-send-email-aastha.gupta4104@gmail.com>
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
 drivers/gpu/drm/panel/panel-innolux-p079zca.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-innolux-p079zca.c b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
index 6ba9344..02e6720 100644
--- a/drivers/gpu/drm/panel/panel-innolux-p079zca.c
+++ b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
@@ -228,7 +228,7 @@ static int innolux_panel_add(struct innolux_panel *innolux)
 						       GPIOD_OUT_HIGH);
 	if (IS_ERR(innolux->enable_gpio)) {
 		err = PTR_ERR(innolux->enable_gpio);
-		dev_dbg(dev, "failed to get enable gpio: %d\n", err);
+		DRM_DEV_DEBUG(dev, "failed to get enable gpio: %d\n", err);
 		innolux->enable_gpio = NULL;
 	}
 
-- 
2.7.4


