X-GM-THRID: 6340280388266491904
X-Received: by 10.28.7.199 with SMTP id 190mr11543wmh.20.1476211563555;
        Tue, 11 Oct 2016 11:46:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.143 with SMTP id v137ls16605wmv.24.gmail; Tue, 11 Oct
 2016 11:46:02 -0700 (PDT)
X-Received: by 10.28.31.81 with SMTP id f78mr11756wmf.2.1476211562886;
        Tue, 11 Oct 2016 11:46:02 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 128si6518wmd.3.2016.10.11.11.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 11:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id 123so146549wmb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 11:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1b05wbox8q2wF86bMDf43C0PVON9aGBN83GPtK8jOSw=;
        b=FO4J7fobQ9Tepc9OWq7U0sBGg+zJJynMMeq1ULr2xWFQeMFXhWdithqGf/hKAm4cGz
         1WExLyJi1BLbGWXqnw/8XYeyruXRLeOHvjlGK33xm16RH7EgVxM/W1G/P0lGGv90GVOS
         smneQTNAa1hHHzTtoEmFbhVQEf6XawNhKbqSlakfJ1cjhhPKJ65xOHcExwxMDwjKrpLj
         0oCxi5fg2gmK1yT21repmlMIFXT9NkD10FDhXpCUWD1OmQ46Atg46UHny2e+MPN1BSX5
         FTUy8C10nob8jCcLpJ5PEyInpoNPqtmv8wjkZIUkzU3EU5qe6I+AqrEJ0mhtrWvgI+Vp
         1Shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1b05wbox8q2wF86bMDf43C0PVON9aGBN83GPtK8jOSw=;
        b=ErAtYdTugiwI6S6kubTflMcrEREGVz/sV/1HCKKLZZ3anTHY9OFh9BE5VGYxhDvnN6
         5K6TB0uU6k4NFta8KrI6qj41/e0QBniV0BlR/kYp0bLpLMqDv1l2bBMDJJE6wmdK4I9F
         vxx65JosbgMGa0VCal6r2CyTnI47GcSCi2OXJa/0SVMNMNXzmPXxC8Yccm0ZM0Awd9VS
         Py0X+YRoCGX7j/dXG/yWxTXmcUzw8REvgwH+SNRI1GUJHVITErM/W5tXu8uPVwYKpvgV
         5Tp/bMzTtgUUDRS3HXmx8PUICDx3M+wV8ieVltZaQg/jqrmavMORvFudgI3otj5jI67Y
         +7lw==
X-Gm-Message-State: AA6/9RmAtLbERghcPI2BGVDxhytZYtjny4fvMXQ33iNL/VDjSfXZZM2zFgABJY07OrSgsg==
X-Received: by 10.28.216.148 with SMTP id p142mr163319wmg.4.1476211562688;
        Tue, 11 Oct 2016 11:46:02 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.251.249])
        by smtp.gmail.com with ESMTPSA id a7sm5391923wjj.22.2016.10.11.11.45.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 11:45:56 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: olpc_dcon: Add space around '<<'
Date: Tue, 11 Oct 2016 21:45:50 +0300
Message-Id: <1476211550-9937-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '<<'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index 215e7ec..2fe8a70 100644
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


