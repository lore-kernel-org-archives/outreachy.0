X-GM-THRID: 6748759950692974592
X-Received: by 2002:adf:f101:: with SMTP id r1mr3198162wro.320.1571318123927;
        Thu, 17 Oct 2019 06:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls1394788wme.1.gmail; Thu, 17
 Oct 2019 06:15:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEBf2Lr2FmZ7o0p0z2hp+4DkNy7n0dpTQgpsUeoFHLsQ31BvbgoCPOjqbS991+1Tg3/rwA
X-Received: by 2002:a7b:c753:: with SMTP id w19mr3054855wmk.25.1571318122901;
        Thu, 17 Oct 2019 06:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571318122; cv=none;
        d=google.com; s=arc-20160816;
        b=wU/aiDwKNTYnW+q+eA9tasulDDGUS7+DBKobCCgfu2SYt/YCEwS0y5P7Q5fM2oJCAX
         le9lb4GQ/FCrtTgQThcLiEMNCyDv7mgz8ue8EZolT5yeHw2Vg9da1bimn6UB8xXmwQah
         U6ZqAD5hZ/Z15S+5KueazYLWKBSivDecu53XCpAvPXfj5OaIHgAV06ahlmVHvYj3tOiZ
         JThiW1eyJYIW4NVmchsOgdva+aqljYC38T5ghKkYImUibZQTEkwDlwPGp1Pue50yqNxZ
         Z8s+bj3VyhSAqqVjtkEdlenu8Rs/ZBVUvRfDmBbU4sV8E8JcFrMmKOJc+JyILxjgJWMg
         IPow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=efS0m3PFy2odrz6uasqpi0wDpRNnqD5i387d4ld7mGw=;
        b=h2TSYSdhqfrx6L1NeXhb1NI4DHJCwkzEUObehqjse+nUJpgKAiQxqV1EHZBgZDotgZ
         IorLcpkf5Flz1uvdVW2em4aZXcDWbU/Gt+2hnGN9rasWanAtFQT0qcYqTteiLe1HMIHP
         mY2Q/tDH4GOHJDa0uNDPK86e/o+2DMmlXXchUHgHmaIArkaT/+OGvR5cAOsQFRQC/vMr
         563QofB92F8HUPaDtrV4O9KBgtaFINSPKpAs5W+pEF2vD33WJFmKfpVllFeU8HPA3TSI
         qvGwjGMgVB+cH61WkuJAhxrVk1r+XZLRE65xmbB+HXkXpP137Ji65gcNPjhqGYH9+b/b
         VyHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hd3KKNKx;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u15si102779wmc.1.2019.10.17.06.15.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 06:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hd3KKNKx;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id p4so2302671wrm.8
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 06:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efS0m3PFy2odrz6uasqpi0wDpRNnqD5i387d4ld7mGw=;
        b=hd3KKNKxDbdJlOYar/w7O9wi5cLHHDufK0IVgbiuCQF35P6Vyr13k7RQkoE1wsxldc
         RWXcgtAF8jCCAc7vwz0BSD07iMROJlFlbbaRvH6SPnuvH8BrKA3ZmvpIRPuDlyB8jfn4
         brEFRr/FkgG1KdDzfvkgsDXQ+o0TNRRSiHBzCk8n31coQDaiuYp3QEh2pUwpEYDjNAe+
         Bloca0kHDEAOApqM79u5OCYRRl312zPkIEaLu0sA6uWlLzQtqORooAvhWfBQjcWBENr1
         qD0HM1L09b+agCkHdpieBuMT+WE1aOSKevuiNdO+SVmKhT0Ip73wapm+GGvsVbDuIZKJ
         a1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=efS0m3PFy2odrz6uasqpi0wDpRNnqD5i387d4ld7mGw=;
        b=Ru7IQW+8lc84GZBuC7rcExq8L5HbhOO8vXI5wC2bhF/ARxSOjONmArvewYwDaN5C/f
         OF3Dm1woHDBUXCEWE1V6qMTXsB6/ioeNsRjvLPISEdP+LNmUSFjyvytOhtxeDWO0nSfK
         UwS4kzLRm0SkipQKO97AMkwFHcjlpjCfQtTGbJHB0DIgFhWqVgMQbtVCp1rfYVVyqOnG
         krkqhuB0MC+QoDWoYbf6M5mTTRBk4kp3ZYcLry+5J1RiipRC0vVvBSa9guWdafg+G7Ji
         F6u8UKgzr2iFqW52q0HLU53nBunXOtRJXH/pgmVGGhme+tea59/Bv937RzpqvgXvIQBi
         YeQQ==
X-Gm-Message-State: APjAAAUWj77UCgG4deuycaox6cwAMUpOoZ7s25I0LnjL0JVGODbOS5Eu
	whcx3f/xNg1slSGsGZ9+sS2hwNqSzGgZ
X-Received: by 2002:adf:e28f:: with SMTP id v15mr2913712wri.130.1571318122247;
        Thu, 17 Oct 2019 06:15:22 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id i18sm2032231wrx.14.2019.10.17.06.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 06:15:21 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [RESEND PATCH] staging: vc04_services: fix warnings of space required between operator
Date: Thu, 17 Oct 2019 14:14:57 +0100
Message-Id: <20191017131457.13102-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warnings of space required between operator and variables.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h     | 8 ++++----
 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index f85562b9ba9e..bdc393d36769 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -11,14 +11,14 @@
  Global defs
  *****************************************************************************/
 
-#define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x))+VCHI_BULK_ALIGN-1) & ~(VCHI_BULK_ALIGN-1))
-#define VCHI_BULK_ROUND_DOWN(x)   (((unsigned long)(x)) & ~(VCHI_BULK_ALIGN-1))
-#define VCHI_BULK_ALIGN_NBYTES(x) (VCHI_BULK_ALIGNED(x) ? 0 : (VCHI_BULK_ALIGN - ((unsigned long)(x) & (VCHI_BULK_ALIGN-1))))
+#define VCHI_BULK_ROUND_UP(x)     ((((unsigned long)(x)) + VCHI_BULK_ALIGN - 1) & ~(VCHI_BULK_ALIGN - 1))
+#define VCHI_BULK_ROUND_DOWN(x)   (((unsigned long)(x)) & ~(VCHI_BULK_ALIGN - 1))
+#define VCHI_BULK_ALIGN_NBYTES(x) (VCHI_BULK_ALIGNED(x) ? 0 : (VCHI_BULK_ALIGN - ((unsigned long)(x) & (VCHI_BULK_ALIGN - 1))))
 
 #ifdef USE_VCHIQ_ARM
 #define VCHI_BULK_ALIGNED(x)      1
 #else
-#define VCHI_BULK_ALIGNED(x)      (((unsigned long)(x) & (VCHI_BULK_ALIGN-1)) == 0)
+#define VCHI_BULK_ALIGNED(x)      (((unsigned long)(x) & (VCHI_BULK_ALIGN - 1)) == 0)
 #endif
 
 struct vchi_version {
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index 464334332e3c..71253384d098 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -158,9 +158,9 @@
  * by suspending parsing as the comment above says, but we don't.
  * This sweeps the issue under the carpet.
  */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
+#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
+#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
 /* How many bulk transmits can we have pending. Once exhausted,
-- 
2.21.0


