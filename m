X-GM-THRID: 6619343178555195392
X-Received: by 2002:a1c:e583:: with SMTP id c125-v6mr20680wmh.21.1541185932274;
        Fri, 02 Nov 2018 12:12:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9552:: with SMTP id x79-v6ls486640wmd.10.gmail; Fri, 02
 Nov 2018 12:12:10 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eF3fpN7hilCUZDFl1e0kxPAkmj37PH4cwPZs0J/OhWgU0wn6DfPUDxJYzRWjEjOB6DBTli
X-Received: by 2002:a1c:9012:: with SMTP id s18-v6mr24178wmd.10.1541185930705;
        Fri, 02 Nov 2018 12:12:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541185930; cv=none;
        d=google.com; s=arc-20160816;
        b=EwA9ikikZtYqF60pfpZ3mcWE7s9CZZNuU3cXu0/JkPkab/zTLT74YrWVaDB8hTg3fX
         +edJUINf30AyoMRS/XQvtbB6dGfD/AwTiapfy4xcq1Xf4OvN3FWjSuWerMcJjFVZx1gr
         znvyUv2xoJ7jyBffeQXCUA50hDc8hFglCHvONB2L/FGI6k++eDu+9x+2hM5T9ThFW67j
         pTGSc3Qx+82enOdazqTcXfFe0B5LURYhcHPr1M/8ah8iLxWX0TGE3BDkMYW+N9eNcAOn
         R2tDLCT3c7/Vq+YSHX3EIZTVnn6rTB8Q/FObz/1d/SOyfAai3p0yHUd4Q4eYSWwX7L0Y
         6nwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=hN1YKyHQvbRF5o4CVr44+kDrpXjQe5jrL4IXJYqld6BtedXRKCiZm9luktBs69KYXE
         2+seWw8S7yh4UpgB/B+ESj79nUe/gd2Y2mlT1CH4YzvQ7I8iogQOvO8PKXxWqqeBviyj
         oAtn9M8Atv1mdeJInMJAkr6OjMSEX0ub7O9MhypU2yqbFnPtQCHWiyOfArVCOyxPhqx1
         5202fxeaBNd3Tlkh4Oli4JAKS6zOO8M+PsWfWx4q66ORvPB9ZnhGq64l84YnBHFJFFSO
         NIHZ3NF4p9X2YRjuQQ627bxS8qlIxl1rNgWtM5bToC+xEVWteZVya0GgrXc2Vyy14jxP
         rz1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfR4wWXQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id 204-v6si76589wmw.3.2018.11.02.12.12.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 12:12:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CfR4wWXQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32d.google.com with SMTP id q19-v6so2892636wmc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Nov 2018 12:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=CfR4wWXQx2j7ikIJogXCZwQ9rhig1zZKEZ+BF0fB4VmfJyVovKEUs4ZRe/j1BAn1+w
         Y3j8MHQ6DGCas+STA/6ORCVYwhFDlil+dRR0/XYdP8Xhu32ubljkmI+pcywanSixjR5O
         ECJb2D1v+GXxgKCBy4ZIVI4I8ojOvhf80M5pdl71yTyw94sYgHK65I9wMCxz6SV5iyvo
         aOs0XrT1MlFqOP/JC1CEZ9v86QWu8gozlyoNFV9csOaKwvDUbkBbUpxJ6a0XeeXQoJIw
         IeUC1ePd38vRtV3rAh1EhQbxmK91XZOJm3+461BP/1GBVdcEuuoi2xCvpCCjd6QYF7ZN
         IFVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=YpmTaZocis2gNsoNkplAbnMJXyWMyZo4pPq7o0FDry2sC1XBbbKjOAXWNe8UP/M/9I
         3k0QlFopQKD7cpyUgno3JJl6RW+hPQfV0Q73r48omF/twWEy2SgGHDLjo9T6W+dMZYsS
         zkoiepdKG/J6IJItCqS1ZGXouz95M4o59ZxWgmtxX0gyONiYOsfcalf7PUykyF8WlPAk
         kseDGShQcYQdw3zbif3vBwUE30hscfHevubrSoVXsM01tsnTliEcSAcUMRvm4cFLH7Md
         p5GPyiFwDd6RBDeYY6r3BS7rJuxK78OCLIHdZfIvkD0QyWUOMHQv128stQpZ7LjrQCtf
         ZQzA==
X-Gm-Message-State: AGRZ1gLwzG/Cnn/VQcDpNjI4W9luH8kilTYOXJJjCb+yHVJqrtnglzEH
	5QZW6ucTdtY29idX4m9mig==
X-Received: by 2002:a1c:8dcd:: with SMTP id p196-v6mr173801wmd.49.1541185929951;
        Fri, 02 Nov 2018 12:12:09 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id y141-v6sm36671526wme.10.2018.11.02.12.12.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Nov 2018 12:12:09 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org,
	jules.octave@outlook.com
Cc: Irenge Jules Bashizi <jbi.octave@gmail.com>,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging:media:Add paragraph about the config symbol
Date: Fri,  2 Nov 2018 19:11:58 +0000
Message-Id: <20181102191158.8286-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add more information about config symbol
to fix multiple checkpatch warnings.

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/zoran/Kconfig | 54 ++++++++++++++++++++++++++---
 1 file changed, 50 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 34a18135ede0..129d1d21b7c9 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -6,8 +6,9 @@ config VIDEO_ZORAN
 	  Say Y for support for MJPEG capture cards based on the Zoran
 	  36057/36067 PCI controller chipset. This includes the Iomega
 	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
-	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
-	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
+	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. 
+          For more information,
+          check <file:Documentation/media/v4l-drivers/zoran.rst>.
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called zr36067.
@@ -20,7 +21,19 @@ config VIDEO_ZORAN_DC30
 	help
 	  Support for the Pinnacle/Miro DC30(+) MJPEG capture/playback
 	  card. This also supports really old DC10 cards based on the
-	  zr36050 MJPEG codec and zr36016 VFE.
+	  zr36050 MJPEG codec and zr36016 VFE. In newer Linux kernels
+          the following modules are built :adv7175,vpx3220,zr36016,
+          zr36016,zr36016,zr36016,zr36050,zr36050,zr36050,zr36050.
+          Pinnacle/Miro DC30: Zoran zr36057 PCI controller, Zoran
+          zr36050 MJPEG codec, Zoran zr36016 Video Front End,
+          Micronas vpx3225d/vpx3220a/vpx3216b TV decoder  Analog
+          Devices adv7176 TV encoder
+          Drivers to use: videodev, i2c-core, i2c-algo-bit,videocodec,
+          vpx3220/vpx3224, adv7175, zr36050, zr36016, zr36067
+          Inputs/outputs: Composite, S-video and Internal
+          Norms: PAL, SECAM (768x576 @ 25 fps), NTSC (640x480 @ 29.97 fps)
+          Card number: 3
+
 
 config VIDEO_ZORAN_ZR36060
 	tristate "Zoran ZR36060"
@@ -29,6 +42,8 @@ config VIDEO_ZORAN_ZR36060
 	  Say Y to support Zoran boards based on 36060 chips.
 	  This includes Iomega Buz, Pinnacle DC10, Linux media Labs 33
 	  and 33 R10 and AverMedia 6 boards.
+          Modules built: zr36060, zr36060, zr36060, zr36060
+
 
 config VIDEO_ZORAN_BUZ
 	tristate "Iomega Buz support"
@@ -37,6 +52,15 @@ config VIDEO_ZORAN_BUZ
 	select VIDEO_SAA7185 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the Iomega Buz MJPEG capture/playback card.
+          Modules built(in newer kernels):saa7111, saa7185 and zr36060.
+          Iomega Buz: Zoran zr36067 PCI controller, Zoran zr36060 MJPEG codec
+          Philips saa7111 TV decoder, Philips saa7185 TV encoder
+          Drivers to use: videodev, i2c-core, i2c-algo-bit,
+          videocodec, saa7111, saa7185, zr36060, zr36067
+          Inputs/outputs: Composite and S-video
+          Norms: PAL, SECAM (720x576 @ 25 fps), NTSC (720x480 @ 29.97 fps)
+          Card number: 7
+
 
 config VIDEO_ZORAN_DC10
 	tristate "Pinnacle/Miro DC10(+) support"
@@ -46,6 +70,9 @@ config VIDEO_ZORAN_DC10
 	help
 	  Support for the Pinnacle/Miro DC10(+) MJPEG capture/playback
 	  card.
+          Found in Linux kernels: 2.6.28–2.6.39, 3.0–3.6
+          Modules built: adv7175, saa7110, zr36060
+
 
 config VIDEO_ZORAN_LML33
 	tristate "Linux Media Labs LML33 support"
@@ -55,6 +82,8 @@ config VIDEO_ZORAN_LML33
 	help
 	  Support for the Linux Media Labs LML33 MJPEG capture/playback
 	  card.
+          Found in Linux kernels: 3.7–3.19, 4.0–4.17, 4.17+HEAD
+          Modules built: bt819, bt856, zr36060
 
 config VIDEO_ZORAN_LML33R10
 	tristate "Linux Media Labs LML33R10 support"
@@ -63,7 +92,15 @@ config VIDEO_ZORAN_LML33R10
 	select VIDEO_ADV7170 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  support for the Linux Media Labs LML33R10 MJPEG capture/playback
-	  card.
+	  card. Found in Linux kernels: 3.7–3.19, 4.0–4.17, 4.17+HEAD
+          Modules built: adv7170, saa7114, zr36060
+          Zoran zr36067 PCI controller Zoran zr36060 MJPEG codec
+          Philips saa7114 TV decoder Analog Devices adv7170 TV encoder
+          Drivers to use: videodev, i2c-core, i2c-algo-bit,videocodec,
+          saa7114, adv7170, zr36060, zr36067 Inputs/outputs: Composite
+          and S-video. Norms: PAL (720x576 @ 25 fps),
+          NTSC (720x480 @ 29.97 fps). Card number: 6
+
 
 config VIDEO_ZORAN_AVS6EYES
 	tristate "AverMedia 6 Eyes support"
@@ -73,3 +110,12 @@ config VIDEO_ZORAN_AVS6EYES
 	select VIDEO_KS0127 if MEDIA_SUBDRV_AUTOSELECT
 	help
 	  Support for the AverMedia 6 Eyes video surveillance card.
+          AverMedia 6 Eyes AVS6EYES:zoran zr36067 PCI controller,
+          Zoran zr36060 MJPEG codec, Samsung ks0127 TV decoder,
+          Conexant bt866  TV encoder. Drivers to use: videodev, i2c-core,
+          i2c-algo-bit,videocodec, ks0127, bt866, zr36060, zr36067
+          Inputs/outputs: Six physical inputs.
+          1-6 are composite,1-2, 3-4, 5-6 doubles as S-video,
+          1-3 triples as component. One composite output.
+          Norms:PAL,SECAM(720x576 @ 25 fps),NTSC(720x480 @ 29.97 fps)
+          Card number: 8. If not autodetected, card=8 is necessary.
-- 
2.17.2


