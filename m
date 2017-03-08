X-GM-THRID: 6395175390898290688
X-Received: by 10.25.79.23 with SMTP id d23mr1057618lfb.27.1488992802230;
        Wed, 08 Mar 2017 09:06:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.183.135 with SMTP id h129ls2018837wmf.20.canary-gmail; Wed,
 08 Mar 2017 09:06:41 -0800 (PST)
X-Received: by 10.223.169.233 with SMTP id b96mr137855wrd.9.1488992801301;
        Wed, 08 Mar 2017 09:06:41 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id b186si1790665wme.1.2017.03.08.09.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 09:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so7075388wme.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 09:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ol7ouUQCA/G/wuLqfSq0ob8FcavecPFjubhu4fQzxt8=;
        b=svg/0pjSjh50bw9jyKlergC0NC7O4QNLCkKB0OOm3TWorAt6zv+xXJgj/lPDycjBIP
         oK6CvMtRKYoW/GXtwOG4/woxqdg0O/GasrCAFCEWua0qq90iH+ITGAqlV4U/0r7O49YG
         yJ2D5Q50kSFBZlixr0a/vXvyCE3V59rvWcEOafYtc7UmkJtqxvJbPv0M9TGLiBZyLEHE
         vl5s2rkNTVFtR8EfK/pb//GiZnK5YVrp6WaYiYec19Wl293Mr2tNbDu5+gFJyeTYjEWP
         klJwjvk0/srZPHCtayjwlcMltowS2rNZ9LzeiQicJGID3bQk3Q6BSqUWMLDfADI+U9yK
         ISeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ol7ouUQCA/G/wuLqfSq0ob8FcavecPFjubhu4fQzxt8=;
        b=efnX9WRfSAbut6PSW1sddaNQd4dl1uFqjf+X3nYpRD9t3JgzOpc33EC9w3hWEmeq0y
         dWH9p9p5jiVNp6LmN5UVEMhYavNI8+45HLdhejY4IjKXjBSpOTs3Spj11qpm3AY9pv8P
         L48hEegmFnzW3GgJoxXxj8WJ3Vh8xOYpGkwVCV3PlYo1ZDmzdF6w0xqvzvXAMZVcY+1e
         4LzcJVw34lpwGoUevGhTB51cWKMFSnfNObzEht9gKxSRnvxpfJvmqlf33FWskSk8Ekdq
         mZpa37W3HPKieWYE1qAWQOQNGehXjerWV7N+lenShL89fKj8dHA+RirQz3wEiFFHsPtd
         d4ew==
X-Gm-Message-State: AMke39kz0q0Wc8I3Jv+vZ2hcU64TA3rcESudpI9bj3Dfesv+6X9lXPsPomLsqelQ1dD/Kg==
X-Received: by 10.28.132.2 with SMTP id g2mr23689557wmd.103.1488992800917;
        Wed, 08 Mar 2017 09:06:40 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id 63sm5498785wmp.9.2017.03.08.09.06.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 09:06:39 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/3] staging: wilc1000: wilc_spi: Correct variable name
Date: Wed,  8 Mar 2017 19:06:37 +0200
Message-Id: <20170308170637.3947-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Correct 'unkmown_mask' variable name to 'unknown_mask'.

Fix the checkpath.pl issue:
CHECK: unkmown may be misspelled, perhaps 'unknown'?.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 2464b4c..4a4b8c3 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -969,16 +969,22 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				if (g_spi.nint > 5) {
 					wilc_spi_read_reg(wilc, 0x1a94,
 							  &irq_flags);
-					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
+					tmp |= (((irq_flags >> 0) & 0x7) <<
+						  (IRG_FLAGS_OFFSET + 5));
 				}
 
 				{
-					u32 unkmown_mask;
+					u32 unknown_mask;
 
-					unkmown_mask = ~((1ul << g_spi.nint) - 1);
+					unknown_mask = ~((1ul << g_spi.nint)
+							  - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
+					if ((tmp >> IRG_FLAGS_OFFSET) &
+					     unknown_mask) {
+						dev_err(&spi->dev, "Unexpected
+							interrupt (2): j=%d,
+							tmp=%x, mask=%x\n", j,
+							tmp, unknown_mask);
 						happended = 1;
 					}
 				}
-- 
2.9.3


