X-GM-THRID: 1678556266496
X-Received: by 10.112.25.7 with SMTP id y7mr207950lbf.21.1424510471488;
        Sat, 21 Feb 2015 01:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.11 with SMTP id xs11ls378394lac.54.gmail; Sat, 21 Feb
 2015 01:21:09 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr208915lbb.10.1424510469787;
        Sat, 21 Feb 2015 01:21:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id by11si483722wib.1.2015.02.21.01.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 01:21:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so9529014wes.10;
        Sat, 21 Feb 2015 01:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=B47SQjH7ttOfkuTwwLRiRFzOZe5OHjCN7ScBaN5rTDg=;
        b=zBDfM3Jdlkl8ZHmNS4YYbzV5Y+VeDkX8CbX9BAjkmZ937FVmUBWF23R6cpN2zvTYte
         UqAttVfiJbh72o13g5j25eRckXoEuBnOVEvaZ4Zq4cDACTUFE7x6L4gEcFzRmRMwstQd
         4WD2VBAU5jcsfQQ43C2d/2Wb2hGtRlcT95ir/9Oesb/a3QxhrCR4Do9iwlHKb5wBABCI
         EwAsUbLaHWSXh3AqpqyUL37zGnw8WqagBwiwMU9aPbEOQ6IdIlRjCJZEazTgX/sBryMW
         blGvLtAAens0/wXC90692HLAILrlIJGx9ZDQg+FIVgoikGpAm5BOnmKsXLerbOJJlq/K
         flWg==
X-Received: by 10.180.211.235 with SMTP id nf11mr2642166wic.52.1424510469670;
        Sat, 21 Feb 2015 01:21:09 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id lx10sm14068931wjb.17.2015.02.21.01.21.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 01:21:08 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	Ksenija Stanojevic <ksenija.stanojevic@googlegroups.com>
Subject: [PATCH] Staging: rtl8192u: Convert comment from C99 to C89 style.
Date: Sat, 21 Feb 2015 10:21:01 +0100
Message-Id: <1424510461-4094-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@googlegroups.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index 447af93..a826d88 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -5,13 +5,13 @@
  * Portions Copyright (C) 2004, Intel Corporation <jketreno@linux.intel.com>
  *
  * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
+i * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation. See README and COPYING for
  * more details.
  *
  */
 
-//#include <linux/config.h>
+/* #include <linux/config.h> */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


