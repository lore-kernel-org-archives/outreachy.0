X-GM-THRID: 6619343178555195392
X-Received: by 2002:adf:afdd:: with SMTP id y29-v6mr877305wrd.20.1541189683084;
        Fri, 02 Nov 2018 13:14:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f94c:: with SMTP id q12-v6ls3246333wrr.15.gmail; Fri, 02
 Nov 2018 13:14:42 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c4E6OUZM2Ah56PcdPPMO1O2H5bkbVI7w9PWpAEVts0vx6bmHUYYuFQ9RAD1B6cvHvkL0+X
X-Received: by 2002:a5d:4d4f:: with SMTP id a15-v6mr1308133wru.5.1541189682214;
        Fri, 02 Nov 2018 13:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541189682; cv=none;
        d=google.com; s=arc-20160816;
        b=aYNkTxTo2kqIbm5YJwqhy25fH6rrhbjusZVbMiAvGBdK5UpOfftCSMkHaVdWuTD69T
         9Uhbj2HYNXPD6u7M/T98Bd+uk06SV5WzkFIF7GWcclezzsMpmMEWkJ5m7c30XdxN4vun
         BHGc638ek4G2JnkqYYh5mQeFwQQgjCkczFL+79gL0x5P63AqdM5QGjI9+1y3RemuYKfQ
         GeNHoqM+stmdOe4Yau+9uGYdGqES2KiTB2FwNU2f4RsKya0QkSCTmMrgktFYHo52xg8B
         32A0p4zMFsEw4LfFtIRVJliDDLUivjFjUAnFQxac3Ub2IJkUqO7LYOpTQot2huwqbq22
         lZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=xMHLByS+fXSYp3Gk/sISFi4kN3437G6CAgy0ntbar7SxWm6ePE9dAzqgnYiYyEX2nK
         3vwcubJP5G4kO2X6O+/mm/4WVjnuC+QgZXzUTWl7VKVvBqAf45X/bv5Si0UMIVk9fHEk
         pG4yWJ72eYUfC6owQ9EXzcmIObvGbc6qujKwNdwirjWhTAInH0OuvbN0x9IMC2H22Idk
         c3FB3JxML4H7f7EHlyx08OLupj8H8lcokNORANF2W+0bFRtM01+97bI3CFeQxMtU24R/
         YexzcPR2N1PnO+SuLuDLaeIMqFfIJwC4EPHBtm/bDqmmx0ZDR11j7CO4a7K5jQPOsfXo
         RvNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4Wg64yu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b12-v6si319810wme.1.2018.11.02.13.14.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 13:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4Wg64yu;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id q12-v6so2880058wmq.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Nov 2018 13:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=a4Wg64yuCeIT4bani+dE14ju6hyWxMocsAKR02abe83fOcYnViHoMTjGmUNkYlzrD+
         FiPm46q9tLVc4lHMk+5Y9RhndhTcOnluUDrlBZluLUaNSz/jQLA79aqnF7ASCYUOwHTI
         1ZYDyj1pLgT/SQP1EJuGWy15GpHrIm1qgb/sIecJzDM62+aZu4L0qT/1jsPl3f+acFvc
         riTJq466l63tUVWkE7WhdQOZGziZawLKp208dwPJ1u9G9uJ+EZgcSHkMFKgeJECIZnD7
         Rh1VWnMdd7WIc4/uebRvOboGJCiSEHs47V/gt4Ux37wWznvPg+m/jTTq3RxlZ9hgMfo+
         uxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nBuzoHLDUgeAAa2Dmh512cplfqgk2hzP/MG02QGWOfM=;
        b=X5KpDuk/jjgjhJ7nM/nR/QrmQ48zHRs05L/Z0krgiurfGgb196cvAOKhPm3mE2ypNS
         2AwYfuaziLCVYLvoCiXmLj4YFj+WiOVK7OWO2HoP3ahf5TnE5Lz0hU1P+owG1svs+hYf
         I8onl2cYNyvwIw4LUOfjqNR3/+uolw+UBLrMqXhqS3JoFssvfGLo4BGrSFIdwXlfAuDF
         xC9uKSicE0aahHn+rAG0q41MlC1owN7oA/8gsykkD/5COOZ4rQfBBCCPNFi64XUeC7uz
         Ybq9VSMoQywRYN7mE8tqbsL/2gzOex9itYqVdAiGbAoAYCejZ86LQmz6ZUJqT1EyKukB
         CHkA==
X-Gm-Message-State: AGRZ1gLxuOuBWBBmoGYHgit5g/+XUIXa8Kxb69PPxeen+cwM/hxJjhQy
	sFOdaI8XBa52+A2kH6Cl7IjfeAc=
X-Received: by 2002:a1c:1a48:: with SMTP id a69-v6mr59615wma.9.1541189681301;
        Fri, 02 Nov 2018 13:14:41 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id o126-v6sm22734881wmo.3.2018.11.02.13.14.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Nov 2018 13:14:40 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jules.octave@outlook.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] Staging:media:Add paragraph about the config symbol
Date: Fri,  2 Nov 2018 20:14:30 +0000
Message-Id: <20181102201430.11378-1-jbi.octave@gmail.com>
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


