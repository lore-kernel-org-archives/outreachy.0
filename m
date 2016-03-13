X-GM-THRID: 6261663196843606016
X-Received: by 10.194.236.230 with SMTP id ux6mr2461703wjc.4.1457907072802;
        Sun, 13 Mar 2016 15:11:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.70 with SMTP id j67ls405877wmj.44.canary; Sun, 13 Mar
 2016 15:11:12 -0700 (PDT)
X-Received: by 10.28.153.70 with SMTP id b67mr1539228wme.2.1457907072392;
        Sun, 13 Mar 2016 15:11:12 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id s141si477348wmd.1.2016.03.13.15.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 15:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id l68so84138792wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 15:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5Jz4h99V7RJSNYYxm5y7CTFU+6UCrjz5nmy6N03HwFk=;
        b=FhRhkC9rG+da2OglgZYKwqZUWzOIL+9HOT840C+Svwm2m/c0DI18HTUQv+E00bTC4N
         VnsCINgWnuV0oiFWKWfjW1k3zYbTktvv1zIRP+vgZFk1foZCnMLwtQcdkJwOWYwaIYus
         OuyK2qVggYuibdWTmcK2m2pk4g6s55ebMu1qeH/2rVuURIhfQY16Qnrtft7nOwlD/DwD
         MgUqkhhGrBWF5DTCkMxUtn7vtG88gKI725Z2+hzkMYIPvTjTOIMZdlLkPc69mmO3f1kg
         Rdp7RDU+NuLBXjZKN4DNXJy//Deu9PMQp/P9/oqsOhMb2R1TYJ6VsjH2QQuBYa+MLRrz
         qMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5Jz4h99V7RJSNYYxm5y7CTFU+6UCrjz5nmy6N03HwFk=;
        b=gI2kYMFUnql7HGsgqzGsISU5hS3/iPH6vdBu32YsdEvVZs6RyZ2I7UdBXLHQUXaNBl
         XZ0xcK2cwyORBvxtVntoK7m7n2NIawMJ0SRHxRBo+fPxuGbBbf9Xs9RhhSt09qSa1kdU
         ZzIg6hQb+8iOZSDWczREc0klr1w1YzH5xnVcIYg0gI9LezH2kPYmIoidJSPgneUWh/v8
         xf8afNVm5iIVsFNHHtdyayFrO9n5mvqH6C7LPMFTgILtrbmz8KpX86qQhjM8BeiTedgT
         8lvZG5/TWGtGZBYv2vJvC9zAXwwLsM5PcOhi45vLVZ2VUuIbYFEstge10wzJRf3L060u
         8cnA==
X-Gm-Message-State: AD7BkJIdCBwkuQ6gTEDSfkYnS4p5wdyzXfPdHrTb6LOsDWLwmqI/COLuWt0eNoegUYkUVw==
X-Received: by 10.28.1.199 with SMTP id 190mr5113983wmb.3.1457907072267;
        Sun, 13 Mar 2016 15:11:12 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.12.73.44])
        by smtp.gmail.com with ESMTPSA id z6sm13306862wme.9.2016.03.13.15.11.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 15:11:11 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: olpc_dcon: Add space around '<<'
Date: Mon, 14 Mar 2016 00:11:04 +0200
Message-Id: <1457907064-6493-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '<<'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index d06e19d..ca29ac9 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -9,18 +9,18 @@
 #define DCON_REG_ID		 0
 #define DCON_REG_MODE		 1
 
-#define MODE_PASSTHRU	(1<<0)
-#define MODE_SLEEP	(1<<1)
-#define MODE_SLEEP_AUTO	(1<<2)
-#define MODE_BL_ENABLE	(1<<3)
-#define MODE_BLANK	(1<<4)
-#define MODE_CSWIZZLE	(1<<5)
-#define MODE_COL_AA	(1<<6)
-#define MODE_MONO_LUMA	(1<<7)
-#define MODE_SCAN_INT	(1<<8)
-#define MODE_CLOCKDIV	(1<<9)
-#define MODE_DEBUG	(1<<14)
-#define MODE_SELFTEST	(1<<15)
+#define MODE_PASSTHRU	(1 << 0)
+#define MODE_SLEEP	(1 << 1)
+#define MODE_SLEEP_AUTO	(1 << 2)
+#define MODE_BL_ENABLE	(1 << 3)
+#define MODE_BLANK	(1 << 4)
+#define MODE_CSWIZZLE	(1 << 5)
+#define MODE_COL_AA	(1 << 6)
+#define MODE_MONO_LUMA	(1 << 7)
+#define MODE_SCAN_INT	(1 << 8)
+#define MODE_CLOCKDIV	(1 << 9)
+#define MODE_DEBUG	(1 << 14)
+#define MODE_SELFTEST	(1 << 15)
 
 #define DCON_REG_HRES		0x2
 #define DCON_REG_HTOTAL		0x3
@@ -35,11 +35,11 @@
 #define DCON_REG_MEM_OPT_B	0x42
 
 /* Load Delay Locked Loop (DLL) settings for clock delay */
-#define MEM_DLL_CLOCK_DELAY	(1<<0)
+#define MEM_DLL_CLOCK_DELAY	(1 << 0)
 /* Memory controller power down function */
-#define MEM_POWER_DOWN		(1<<8)
+#define MEM_POWER_DOWN		(1 << 8)
 /* Memory controller software reset */
-#define MEM_SOFT_RESET		(1<<0)
+#define MEM_SOFT_RESET		(1 << 0)
 
 /* Status values */
 
-- 
1.9.1


