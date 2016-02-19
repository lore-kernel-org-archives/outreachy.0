X-GM-THRID: 6252990979298557952
X-Received: by 10.28.47.140 with SMTP id v134mr1157011wmv.3.1455887914195;
        Fri, 19 Feb 2016 05:18:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls41850lfe.69.gmail; Fri, 19 Feb
 2016 05:18:33 -0800 (PST)
X-Received: by 10.112.29.69 with SMTP id i5mr1757330lbh.15.1455887913585;
        Fri, 19 Feb 2016 05:18:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id e130si354959wme.2.2016.02.19.05.18.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 05:18:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id g62so67537503wme.0
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 05:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=b0XYLu6oKCp1TpVepcDna4w1bdVDOFYpHscuTfq/WaE=;
        b=GcTOpT/6KjAIrnjZ5eCyoDeYWrh68f5lQjSsE4Jso8SiGQwpRAgmSXpJZupjFdIg3u
         IwBHD2Ek6UAeuTlOCVvqdmCGi17d2x63y1yrbvWajYgl6HjqESGYKe/S4grnhQgJBg32
         SnjFXauI1lRL4K+sCjfY4Ax6hwKoY909kSqk1RATl8Kd2JKLRKacRhFu0ZdYdu15lY1n
         LdbUBs8yKh1LzsSynDliGo6cw+8d/EqqIn8H0JpGy8Gleegi1B0ZAUGa6PJPGROOIlfq
         WycLY/6KUTH6BB78VUN8rQ7wzsnQNVS2eRASZlMPwOYw4JjrD+a/gEBwSttoVyNTzAOg
         WmoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b0XYLu6oKCp1TpVepcDna4w1bdVDOFYpHscuTfq/WaE=;
        b=Ma1OKqEwjdjlB9uxMIuH9nZ+U/Oe9NFi8t+EvaWqIuN1nQK4ziQeYGbTGfg/v444dB
         ofhWXR2wKXPg+3bY1bX7Ln/MV8oRrn5+ESQnC+Y2AX6AGZbpx8Mv0TYfM5nlMeMiYbJN
         d64ZXBPblfhD0Dt8etw1yeZRbwr2WQP5EShcDSfE7c0y1L7W4Pe9802LKZJFgu6I1YZO
         Wu1z2HpByh8omd/hmZhvVW1RXCULfd7D7nhNOdudC0Jw+6GhiVyccHH8R3RWRQ/FW7S0
         Hjd59TvNW/ySK38fQ1jZX+SyLk7mF6fU+yFW0ePmTtYlqDJZCIWJBhR80Lb9F3/vTCWl
         TbaQ==
X-Gm-Message-State: AG10YOTwm9gvHkVdqKMByr4mR63keJysarzH7p2sGKbwN5lsw9YpM9RL638yHN4DTEJAig==
X-Received: by 10.28.145.9 with SMTP id t9mr9633416wmd.54.1455887913343;
        Fri, 19 Feb 2016 05:18:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.14.29.107])
        by smtp.gmail.com with ESMTPSA id i2sm11210583wje.22.2016.02.19.05.18.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 05:18:32 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove unnecessary else after return
Date: Fri, 19 Feb 2016 15:18:25 +0200
Message-Id: <1455887905-7002-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in files of wilc1000
WARNING: else is not generally useful after a break or return

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 544c12d..b0cefe1 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -939,9 +939,9 @@ s32 SendConfigPkt(u8 u8Mode, tstrWID *pstrWIDs,
 	    gpstrWlanOps->wlan_cfg_get == NULL)	{
 		PRINT_D(CORECONFIG_DBG, "Set and Get is still not initialized\n");
 		return 1;
-	} else {
-		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
 	}
+		PRINT_D(CORECONFIG_DBG, "SET is initialized\n");
+
 	if (u8Mode == GET_CFG) {
 		for (counter = 0; counter < u32WIDsCount; counter++) {
 			PRINT_INFO(CORECONFIG_DBG, "Sending CFG packet [%d][%d]\n", !counter,
-- 
1.9.1


