X-GM-THRID: 6746936258645196800
X-Received: by 2002:a2e:207:: with SMTP id 7mr12485271ljc.248.1570893511628;
        Sat, 12 Oct 2019 08:18:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f613:: with SMTP id x19ls957391lfe.16.gmail; Sat, 12 Oct
 2019 08:18:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzD8FYPs7FGojT0Zfoio3Ptjt2YCFfg1j+T9eUrIvWXQ9AEBgYXLH0BTp32+QdifVCrb6FH
X-Received: by 2002:ac2:51b6:: with SMTP id f22mr11607834lfk.175.1570893510576;
        Sat, 12 Oct 2019 08:18:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570893510; cv=none;
        d=google.com; s=arc-20160816;
        b=bgejThAPfH6RVw1VgjHDb9j4vs3jBQhFWq1oC7kX/X+n4+8mvp3UzMEv0MPlvZlgjH
         2oWamdiHp44hNrMvXy4erRp7HNngEMQb0457y7PxT1YzUbJoaXOVBv2YCxlpS6svInhF
         vtOg/MUfAy+xhtwuHKmrY7Way2aKCEsSdslHaIOvCb5ZkfENDJFXCmTVtRKZjFEAC4fS
         Zp2dNdT1OZAPXdVDQvH/cuS+M70dHDVftVt4iaZ+nKPt6UEC6fxWVkHr4J0XbYynxpZn
         WFRwmxKOvHLo4ysi7QJh5wVb2fdZtX1+w5OYMfFrSLfQK39iPLuNqtTfMkllCJBmt3tV
         s2kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
        b=nm9sAec8FMVrM+szthoJebOv4vlz855xpgqVto6yxATZ8ZQo2u9mRTSnuwdzwdKP1q
         dpxXYijVkTDMxsQLfAPHWs7ahrV3fI9zB59TSMPMo/ftTkSjSwMCG8Fxk5XxGXLKzowC
         0E1XLyaOJu0s2/TC301KFgOGFHiHsNQwNNe7cBlSogYngxf6M2CeDA51qMGI3Vikdad3
         DFoIGEvYA22dQZdc/eg0WjuO+pOiHe7vzlZHj63FtYDWF60HzO6p0CIIATsS+/Q5lh2l
         CoJySxWulnjjmUMPmsH6wQHQjjoDKyT2tYaZ6AKAJgCgIz6XKxh7QFJS+LI/5d7RD/Ag
         TvxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Waq0KdUP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z9si433443ljj.4.2019.10.12.08.18.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 08:18:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Waq0KdUP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id 7so13060382wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 08:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
        b=Waq0KdUP+gUillAGvOrqIDV7D5eG2F9ALA4QqXAzfIOgYzTT56gi3H2MpNWLS/L+SM
         oOuw+//6TfcIPR8s3qgncPPOF+LCmyAP8DjyoVmVFrqocGMgZhcCBhnTAqtYxy465J3M
         7AFMTO8KgBXIjw4NxeolNqSmoUamAFYABqIfno1lzjodIxUvpMz2Dnu4wgonaBEWeoEF
         zd116TwtaRxUIkE6ens1iMVMs0m9HfGR9qy7EC9mBihL5cO9040fojglCebTZ5AnElyx
         QeYHcf+EZUiFEcSJsN+EYAOOfvL/rBXKD/0JsM1BgAdNMuksdQSKn8eja89736elYizz
         24FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
        b=RgrIzN1q/IaY79mezwrBMeL+eaBI40HVbqFNiASBZFBD4AarJgYwuet/125+7nn+DF
         KUHvN9+yJcleqFX1XCx+VRNX4UhwLENeYBFQf+fsPbXuMchZPl5q6rEGaM20543UrriQ
         cFW5TauEj5rWe5F9yPhWJtmacmy85ySwdJPuscOx83eTbPRtjY1pwoD4kEh2ZpeHPc+P
         ZifsaSlNKZ8OmTZ2mny7gs1sOmGDnT6eHRzK9M2ZHq2F06nJwVTODmBTerDm30KzlOgn
         ITdNXFJfHO8GycQQ7iODDkwCDZd+cMtZDJNzp4jKNHfrclvVoWaeDtttKpOVzJLnNwzT
         O97A==
X-Gm-Message-State: APjAAAWZRCDj4g7shkH8NuBSX+YdMHuO1PJ1jXP5VpS/Fj8kLzvmthUy
	mlpHhOaJCQH9zXBhMrWeHG6JnlZt/oi8e6Q=
X-Received: by 2002:a05:600c:2185:: with SMTP id e5mr7887447wme.78.1570893509733;
        Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id r6sm13905017wmh.38.2019.10.12.08.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	eric@anholt.net,
	wahrenst@gmx.net,
	linux-kernel@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	daniela.mormocea@gmail.com,
	dave.stevenson@raspberrypi.org,
	hverkuil-cisco@xs4all.nl,
	mchehab+samsung@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	sbranden@broadcom.com,
	rjui@broadcom.com,
	f.fainelli@gmail.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2] staging: vc04_services: place the AND operator at the end of the previous line
Date: Sat, 12 Oct 2019 16:18:05 +0100
Message-Id: <20191012151805.17988-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Place the AND logical operator at the end of the previous line;
to fix warning of "Logical continuations should be on the previous line".
 Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..beb6a0063bb8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1090,8 +1090,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret &&
+	    camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
-- 
2.21.0


