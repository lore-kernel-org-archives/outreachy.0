X-GM-THRID: 6667148493451165696
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr3633097vsl.44.1552317217665;
        Mon, 11 Mar 2019 08:13:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2c98:: with SMTP id w24ls3315168uaj.1.gmail; Mon, 11 Mar
 2019 08:13:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzw+ew1k3S1q794vf8riOZgrkTSrTbxFzaesdZj3aCqSy0R2rnWytvyYaTT+BpuE4OnDpH/
X-Received: by 2002:ab0:3011:: with SMTP id f17mr21241859ual.25.1552317216923;
        Mon, 11 Mar 2019 08:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552317216; cv=none;
        d=google.com; s=arc-20160816;
        b=mKs9ZCW5QsdwNLHei79835PCfKdM8r1V1kKJVGJ7C2gBG7ddo4b/e3vLuzXrjHIZoB
         T91x2KQWQDZbwQtStv8lIHlgmQLPXhrHilWcw5Y7HMEVcsrcwVe1/OW/jEZccOjx8GLo
         PW4qtWb4yaMPZ/6PYCXmXn/FBXcdPVZOP/m9M5rstrhhkOqO5cHaxtgD6MJDDNAHlpie
         BBykMQe4q6U5U5avQOQPRmof0SzA8WfpHuQWiwdKTV4u1taA8OojlAHhP4BgaFauWuxs
         FWe63NFQ6zQQvD3qwUXxnw2j2umJHLVHSIoi+2SbU/7Zf/2gXlhaC4EFQ4xqs5g7/PzS
         3gSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=a6Z8MYSerNQWnt0XxHODtDfcdsingT48NC3nyZX/P8o/Iil03MxDKuLGNUsrT+hqXt
         LqHkKudsp58O2Me95Te3OzlnYi7pHoTGy7u9NlAzHl+2AOFtet6fTa5teZ/PrX6dG6q1
         t/P7TJbdk5sRL8KFGZGESGj1hqnwZiNOb3DyuI/JNGWm64XAAAlsFCSVyTCgohpNqmFg
         zXsm35HwwOiZLq0xv6Tq6MqyBOHL/Jw/fiKhJqPE1TIOPuFPbK+gIg2ZGc6xzN32rMCL
         TRb9ZKOGicObE8a6tVh6khiMSZnV8OVkxandopUVbtWCkboLzSYvuEtn3gyALQEejCt3
         AvXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BiQhfjNn;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k19si288913vsm.0.2019.03.11.08.13.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:13:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BiQhfjNn;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id a3so3902920pff.11
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=BiQhfjNnQ3Zp89u/tIwIrQWHMZxtYymvSk+1F9pjnLhL3zC6FaqtvrDrHtx6L9VUdG
         RyXR7qFspExAM/KU6UL/KI4lXaBrb0ay0REIApiaS23EDIVdz/qMIwFoD+VolTGEorL8
         LZNuTbqPodErKohRJ+XRWsB+WYjZKz0Ud/363vz+Fvw6hPDSjvMGnkQFQK6G4p1RpS8E
         Xuz7Vd+0eIzRdEHO4AubZ9yzsoow7+cuqP/O1+TQyQ0qZ6XBkgFyFpORpVIbrM874kcZ
         5U33aY8GcDOJ6OdU+c1rVpeJKklrSv4jQTxvyNTgt2QnNJl0B2uvIva0y0OWD7okeyCD
         8zLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vtNA0fRIu6ArybarrvHLNwr/A0B3sv3dLlmrXBGZ1TI=;
        b=Oe0hy7DIbdhfCkS7sDT40HNieyLZ8aio5yoD0Gpk0qbgHAgL7e35CHMEHweZsLZdMP
         8V5kUcQShNf5UOWkJm7vR0/+pbTeuWbnuBjNf5iXxgwV5+Mn3bSPBC1MErT+dOknFUmK
         McPd7iOf9BZXRdbnWVUL2ruvqycbyoEwJ3vS2zx+Wv50nKjqTcX8M155pLqRQQLWJA5o
         FE1Xm03O/TLcABsvRoNbehZfbAQmPHslm9s5tgrA0NYSyEBf3u9ftd2rGcHfdtUrP0rj
         6DkRXzHzPPASyuu7vDE/ap/SSHyCu1wWeZzU/Z4J7GxMa7l7cjBBMRl7dHZyKv4DcSsx
         c/dA==
X-Gm-Message-State: APjAAAVK6YcfJ37hvF4P5IsebdauH9JXod6NZxbV7ZgAFfz6rvZD7wp5
	iOvOsTjLGmY9niPPKe3gm8o=
X-Received: by 2002:aa7:8390:: with SMTP id u16mr33050699pfm.63.1552317216015;
        Mon, 11 Mar 2019 08:13:36 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id v186sm9760337pfv.184.2019.03.11.08.13.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:13:34 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: most: Replace '--help--' in Kconfig file
Date: Mon, 11 Mar 2019 08:13:07 -0700
Message-Id: <20190311151307.5498-1-etsai042@gmail.com>
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


