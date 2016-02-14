X-GM-THRID: 6250910328324882432
X-Received: by 10.107.152.10 with SMTP id a10mr10138834ioe.28.1455403475862;
        Sat, 13 Feb 2016 14:44:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.198.67 with SMTP id w64ls1167299iof.61.gmail; Sat, 13 Feb
 2016 14:44:35 -0800 (PST)
X-Received: by 10.50.164.134 with SMTP id yq6mr5139107igb.13.1455403475547;
        Sat, 13 Feb 2016 14:44:35 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id t198si1548345ywe.3.2016.02.13.14.44.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:44:35 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id y9so88267455qgd.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 14:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BknX9d9jiOCVOe/PCyu8/J/sSMvnC63jTjBLT2uiwWk=;
        b=vINu4rCFDjuGmEMpf7DnftiZN5S/oEWfE/6W6n5QKV3eUD81x0cYyS0UspB+4uQV5V
         +YK7ZE1EPEtKcUJ+Tudt3c0ywtFzgcTaw8RrqjRxHLJvWCCtiWrVF59KeByYWZqLkjxv
         gIwOourqwG0D7Rv6qBSOBhvTbUhzhnBDLc50NdMCi7dr2QaTapaFXfM6SY+F8sKj9wZY
         jgneJyljdSCaOHmvq2w5chQWM8UGuJREhDF8U00PMaL7gtLIGgilSGLOhdI6gv6h+Olc
         vDxhCZfWBt3JxjWbFjsoav6JHYDpqpiq7NrMw1XdNlAB73BNrjUe51paIYHxBfBXiLHd
         FoPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=BknX9d9jiOCVOe/PCyu8/J/sSMvnC63jTjBLT2uiwWk=;
        b=gfUwrWB0dXLnevAPpgSxbtt7MskHa+hz3efZWH0wqFu5NJtqAkwQbMbMTj+AGjScyY
         oLLaVAtPGlSsrq+YWVSEnJN66UEWS8DIqCVqRDRqsKKCvXTEHncWonQQ0l7ro0LOYa29
         twXnhhzp8Y/vJPZQtMo7oOy6Jw06VdQF9QDZvZi2WafxEzTry4shOVGHZFNuTULKgAru
         oXkD2LDfvwjoA3aOvQfrNV148BFzMZWUO6iqDLGAX0y8379HjY9KnJJkMEZ+D6IvWSzq
         bVC+vADhstWC79iuFAneba40XKWaxKq4p4wXMeCcygFqcUjmONI65Lqq/RugZznz0ZP7
         4CjA==
X-Gm-Message-State: AG10YOQqb9WtGy1UjwUmcZkBTJgHrQePW4slmHASvStW84SIP3F7tM1yxss/mGPfQOHWaA==
X-Received: by 10.140.101.70 with SMTP id t64mr10946308qge.61.1455403475391;
        Sat, 13 Feb 2016 14:44:35 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id a66sm8271266qkb.20.2016.02.13.14.44.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 14:44:34 -0800 (PST)
Date: Sat, 13 Feb 2016 22:43:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Parenthesize complex values in macros
Message-ID: <20160214034355.GA24997@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Parenthesize complex macro values to suppress checkpatch errors.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/sm750fb/sm750_cursor.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index 0a41585..a8d3e96 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -28,33 +28,33 @@ writel((data), cursor->mmio + (addr))
 
 /* cursor control for voyager and 718/750*/
 #define HWC_ADDRESS                         0x0
-#define HWC_ADDRESS_ENABLE                  31:31
+#define HWC_ADDRESS_ENABLE                  (31:31)
 #define HWC_ADDRESS_ENABLE_DISABLE          0
 #define HWC_ADDRESS_ENABLE_ENABLE           1
-#define HWC_ADDRESS_EXT                     27:27
+#define HWC_ADDRESS_EXT                     (27:27)
 #define HWC_ADDRESS_EXT_LOCAL               0
 #define HWC_ADDRESS_EXT_EXTERNAL            1
-#define HWC_ADDRESS_CS                      26:26
+#define HWC_ADDRESS_CS                      (26:26)
 #define HWC_ADDRESS_CS_0                    0
 #define HWC_ADDRESS_CS_1                    1
-#define HWC_ADDRESS_ADDRESS                 25:0
+#define HWC_ADDRESS_ADDRESS                 (25:0)
 
 #define HWC_LOCATION                        0x4
-#define HWC_LOCATION_TOP                    27:27
+#define HWC_LOCATION_TOP                    (27:27)
 #define HWC_LOCATION_TOP_INSIDE             0
 #define HWC_LOCATION_TOP_OUTSIDE            1
-#define HWC_LOCATION_Y                      26:16
-#define HWC_LOCATION_LEFT                   11:11
+#define HWC_LOCATION_Y                      (26:16)
+#define HWC_LOCATION_LEFT                   (11:11)
 #define HWC_LOCATION_LEFT_INSIDE            0
 #define HWC_LOCATION_LEFT_OUTSIDE           1
-#define HWC_LOCATION_X                      10:0
+#define HWC_LOCATION_X                      (10:0)
 
 #define HWC_COLOR_12                        0x8
-#define HWC_COLOR_12_2_RGB565               31:16
-#define HWC_COLOR_12_1_RGB565               15:0
+#define HWC_COLOR_12_2_RGB565               (31:16)
+#define HWC_COLOR_12_1_RGB565               (15:0)
 
 #define HWC_COLOR_3                         0xC
-#define HWC_COLOR_3_RGB565                  15:0
+#define HWC_COLOR_3_RGB565                  (15:0)
 
 
 /* hw_cursor_xxx works for voyager,718 and 750 */
-- 
2.5.0


