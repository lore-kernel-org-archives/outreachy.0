X-GM-THRID: 6667148493451165696
X-Received: by 2002:ae9:ebd4:: with SMTP id b203mr3137314qkg.17.1552378251926;
        Tue, 12 Mar 2019 01:10:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls6041190qte.5.gmail; Tue, 12 Mar
 2019 01:10:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYPE+VmrBJv0bmAczQ3Hn2aKcgvSe7mh2aaCE8q6Nqr/N4gGYqybGvwtHeuHsYtK6VzESy
X-Received: by 2002:ac8:170f:: with SMTP id w15mr10090643qtj.27.1552378251104;
        Tue, 12 Mar 2019 01:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552378251; cv=none;
        d=google.com; s=arc-20160816;
        b=FIi5O1sP6E7UwNUT0FvixG9c+cjyHg6IoL80Obsdxpr45FBO8rlvnSsFXNnyUyh/+i
         M7G7UakBDyVzeHap5V355ZzZb9giRbE6KOf5g11gi4pOxRMSRjhFW1boHg1ezA9mjxTo
         kMxOl1uy5RhHk0uYWlQQrgUUelNfFjHDa0Pq9DlUYzvfhagJAu4Q/dwJpuTpRYVpsC2R
         pBgQIZcm8f2Bf+9TI//u7POJAiPcRCQcCgFqcfR72bEXM/XxKLp/44aduSk9rSuBRdX/
         q6m2mhfqrP946WhbUrR4p0f0DFj1/q91lI3Qcy3JFaG4JwEnY+0WbQOXo+a91FsOhsnR
         mniA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=R1yCfMHzxG3WYRs4FyqOYvQDQqnMLNrkqBHU+3Cmg2o5pW0z2lmEiQkdg9jIGQlfR6
         5h4quze5gj/oFIdz1FJ9P5soetEfY43sx7l3kxObPT/JdobPxhpA43BbuahqpzU61k2o
         7Vqc/SKA6ajVfW59JLqpSbXd2gWkO3d48DK30I4GhaH88+aON4PPnwCbPysUxOm9sz3E
         UUGnQCccUIinBpDnYKV9o7SSwyre3qxIxTy6p/dQcvlJcJgMYDaWD9cW6MISPbsjf2UA
         OXsx7XZsXp5iolwPPiXyl+NmoGPaoktTd9v4HOVlpc+EkzLjoKtt071eqb71S/lEpVuv
         LBNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l3UMilHi;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id u65si403417qkc.5.2019.03.12.01.10.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 01:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l3UMilHi;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id b2so1214153pgl.9
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 01:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=l3UMilHi6ch4+MwgGXN+Lv6Zka05TrZse2F6bhX1Vy9qr6MIaVgesFOWR9e4SlwHeu
         s8F2sWI1kVZHrupvLnoWtLqAl8uxTuvQNpxTHGYUS+Z3VnMWKQTuxHk0qclR7Masd8RW
         +dz25N9L6Xc0GQBUTbhpo2Fbfy3aaWmJb+wXU0AnvkoWH2XcgmPttACmHdX4vOnkoalG
         nl2gx2bIdE5hBtyuwsFRi+aHy4z6gy99rWnsK7izV+8VbWvLZKzYvoBdh/C6MPWCOxvF
         CoXTpAcxtVgZnH1wQOiacU0C6P1w1vSndXYZH9ia3YOfSAS5UEFCrHJgLsd+eeitpvxp
         EJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=sAO9WrXt0fbiAN0r2SFV0HHSGMVNV74v7/FAYR4Ky66rP8br++rZQ4An3kNrYM7aI4
         oSoZivx2NRf3b/Z+lZbZZRhuftGGP8v5kTUAy263a0805N8ZWaY3MP94X+1MbSOlV4Dn
         cqICSHnFDPgEn7LHiecKg6CFkfzbNcxDP6v9FIQPsGCq6lweCF8fnc6rjSBpShUQrmBj
         ssUeliRwsdx08KmOCGhIEFucuIsUac+LPkfRoQhMj8hwd4tv+lzfk7uhkpRP5amVchzd
         V1p7MPE33sWr5megRmxJ2iq0Ml1XXtcB/tHtWSYTffQAwERdJfxclh2i/Gm2bjCFXXiT
         37FA==
X-Gm-Message-State: APjAAAXJSHbO9JAYj7R1PxWwT5CG7HZmZ397Hn6Bv8vjFkTw2A1Ispud
	ygZv3hNa2kk7mIeD8tacq62ednSlWRpmvA==
X-Received: by 2002:a17:902:2903:: with SMTP id g3mr37771850plb.222.1552378250109;
        Tue, 12 Mar 2019 01:10:50 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id u24sm12462725pfm.140.2019.03.12.01.10.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 01:10:49 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v2] Staging: most: Replace '--help--' in Kconfig file
Date: Tue, 12 Mar 2019 01:10:39 -0700
Message-Id: <20190312081039.2565-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/i2c/Kconfig   | 2 +-
 drivers/staging/most/net/Kconfig   | 2 +-
 drivers/staging/most/sound/Kconfig | 2 +-
 drivers/staging/most/usb/Kconfig   | 2 +-
 drivers/staging/most/video/Kconfig | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/i2c/Kconfig b/drivers/staging/most/i2c/Kconfig
index 79d0ff27f56d..f723f99711bd 100644
--- a/drivers/staging/most/i2c/Kconfig
+++ b/drivers/staging/most/i2c/Kconfig
@@ -5,7 +5,7 @@
 config MOST_I2C
 	tristate "I2C"
 	depends on I2C
-	---help---
+	help
 	  Say Y here if you want to connect via I2C to network tranceiver.
 
 	  To compile this driver as a module, choose M here: the
diff --git a/drivers/staging/most/net/Kconfig b/drivers/staging/most/net/Kconfig
index 795330ba94ef..28040931f7e7 100644
--- a/drivers/staging/most/net/Kconfig
+++ b/drivers/staging/most/net/Kconfig
@@ -6,7 +6,7 @@ config MOST_NET
 	tristate "Net"
 	depends on NET
 
-	---help---
+	help
 	  Say Y here if you want to commumicate via a networking device.
 
 	  To compile this driver as a module, choose M here: the
diff --git a/drivers/staging/most/sound/Kconfig b/drivers/staging/most/sound/Kconfig
index 115262a58a42..5614a999b54e 100644
--- a/drivers/staging/most/sound/Kconfig
+++ b/drivers/staging/most/sound/Kconfig
@@ -6,7 +6,7 @@ config MOST_SOUND
 	tristate "Sound"
 	depends on SND
 	select SND_PCM
-	---help---
+	help
 	  Say Y here if you want to commumicate via ALSA/sound devices.
 
 	  To compile this driver as a module, choose M here: the
diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
index ebbdb573a9a6..539b38fb3d88 100644
--- a/drivers/staging/most/usb/Kconfig
+++ b/drivers/staging/most/usb/Kconfig
@@ -5,7 +5,7 @@
 config MOST_USB
 	tristate "USB"
 	depends on USB && NET
-	---help---
+	help
 	  Say Y here if you want to connect via USB to network tranceiver.
 	  This device driver depends on the networking AIM.
 
diff --git a/drivers/staging/most/video/Kconfig b/drivers/staging/most/video/Kconfig
index ce6af4f951a6..a458d0c74a0f 100644
--- a/drivers/staging/most/video/Kconfig
+++ b/drivers/staging/most/video/Kconfig
@@ -5,7 +5,7 @@
 config MOST_VIDEO
 	tristate "Video"
 	depends on VIDEO_V4L2
-	---help---
+	help
 	  Say Y here if you want to commumicate via Video 4 Linux.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


