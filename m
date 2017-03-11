X-GM-THRID: 6396242465121107968
X-Received: by 10.46.22.86 with SMTP id 22mr270087ljw.9.1489241257678;
        Sat, 11 Mar 2017 06:07:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls1230622lja.32.gmail; Sat, 11 Mar 2017
 06:07:37 -0800 (PST)
X-Received: by 10.46.92.131 with SMTP id q125mr3924424ljb.15.1489241257404;
        Sat, 11 Mar 2017 06:07:37 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id n128si169346wmf.2.2017.03.11.06.07.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:07:37 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id l37so14684055wrc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r+UlVu2TZ298SlcR0ws+x0e8hMDj5MjRwr8mvwsi0ao=;
        b=M3LXU6ei46HSQ+aLs+XxEsLemjT6pKfdSLbs/ZwxsB4Jq01BdMPSxY9KTvjdUjyxg8
         mLz34ap77SIw3t3WEBt6C1745hVZvwa2fblbe7Kxtn2dIuPJtDFaZl95tCT+yHL+ggre
         VU00coRmAF48Dt+BzOjRsWZ5QYbMBtsizPV+ILda7gpMzZ9IsSN1eVs2w/O9LfV3zd/z
         RmjZKQC0Y07mhqtSAguNRqGHgBmAkCSwVDvN6hDOaXDWAlVsRLMRaTBDtoK0d8ATq9Q7
         2ImXCyf+8AkjivXPx5wRZkDwhuxzMDqSdzsbB8oLWf4s7i14ed9e1fnMA9LT0Gtby0MK
         mMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=r+UlVu2TZ298SlcR0ws+x0e8hMDj5MjRwr8mvwsi0ao=;
        b=Lyb0QJLODG/xAiVSN7bX8nXDsk6L8qtepUqDvhohfR3DKz5EUkW2KjzAhh2rJ1Ruck
         3GErW5tRh98ybGvuTn4/QQ+giWaxP6+/+iN5eDC9M9ZVTDwSIrmmK44hd5AEZdl6bSg4
         mltLomLSNYbw7ufzLIl+sWkgN3LtvTVJCgsUqHNaevtvTwY9awIljDQTmGdsPBaXb20u
         N9tg8vFhXJff2vkGssct8dLXw7j3s+FU9IFuIBOXPhsTPnQ2NWzDrcLPYO11x7CIVuMC
         GppwH3c8JTo1O/fDMeVxlKWRUMbOpiZa3lugcIoJJDt2edmidVD+sa6rRUiiNLqBEqx/
         SZPg==
X-Gm-Message-State: AMke39kQwHd+JZUJDXPOzMH8L0OxsxTvCuw2D1WDjLtNb9o257K9xW35jwN7xNeuueLk3Q==
X-Received: by 10.223.130.214 with SMTP id 80mr21020736wrc.43.1489241257210;
        Sat, 11 Mar 2017 06:07:37 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id t195sm3733228wmt.32.2017.03.11.06.07.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:07:36 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/3] staging: wilc1000: Removing extra tabs
Date: Sat, 11 Mar 2017 16:07:24 +0200
Message-Id: <20170311140725.18461-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311140725.18461-1-diaconita.tamara@gmail.com>
References: <20170311140725.18461-1-diaconita.tamara@gmail.com>

Trims line size at 80 characters by removing extra tabs and extra '/'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 667164c..5687f9a 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -5,7 +5,7 @@
 /* Module Name:  wilc_spi.c */
 /*  */
 /*  */
-/* //////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -291,7 +291,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 
 	wb[0] = cmd;
 	switch (cmd) {
-	case CMD_SINGLE_READ:                           /* single word (4 bytes) read */
+	case CMD_SINGLE_READ: /* single word (4 bytes) read */
 		wb[1] = (u8)(adr >> 16);
 		wb[2] = (u8)(adr >> 8);
 		wb[3] = (u8)adr;
@@ -307,21 +307,21 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		len = 5;
 		break;
 
-	case CMD_TERMINATE:                                     /* termination */
+	case CMD_TERMINATE: /* termination */
 		wb[1] = 0x00;
 		wb[2] = 0x00;
 		wb[3] = 0x00;
 		len = 5;
 		break;
 
-	case CMD_REPEAT:                                                /* repeat */
+	case CMD_REPEAT: /* repeat */
 		wb[1] = 0x00;
 		wb[2] = 0x00;
 		wb[3] = 0x00;
 		len = 5;
 		break;
 
-	case CMD_RESET:                                                 /* reset */
+	case CMD_RESET: /* reset */
 		wb[1] = 0xff;
 		wb[2] = 0xff;
 		wb[3] = 0xff;
-- 
2.9.3


