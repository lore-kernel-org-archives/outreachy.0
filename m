X-GM-THRID: 6395948751434809344
X-Received: by 10.46.82.157 with SMTP id n29mr3726406lje.29.1489172864810;
        Fri, 10 Mar 2017 11:07:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.92 with SMTP id r28ls1129540ljd.11.gmail; Fri, 10 Mar
 2017 11:07:44 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr3540760ljb.25.1489172864567;
        Fri, 10 Mar 2017 11:07:44 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id e72si32859wma.0.2017.03.10.11.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:07:44 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so12646497wrc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=r+UlVu2TZ298SlcR0ws+x0e8hMDj5MjRwr8mvwsi0ao=;
        b=JASQYIwvAAXGbEhCZjWduIjYIO6hHV2FO9iAmzjUKkmDie5tnSeFkIXe+ijIkqHnWv
         yowPYuSslm57zYO2Sr/yNu0e6f+fUdbqlVekrOdvxK85pSgwJ6U3n8R26WyllvFA4ICh
         FRIXk9BdZCf99DbKI2LsNi0IAhZL00AH/0qyJjeJeFX7TtfzIET/HSZwNKMPJPog5amh
         gh3sRik9QBm6LYOqWi+ZvlyI9yCMUlh3OyZ9Rp3zASvBmPwqx/ac0yXMaGD2GNtXWA4z
         9zfIj3JvLDtS+6PGuHdXPRZb3DHsWNtChIoacKSIPEK0xmSBP0Kt3PNwJenA/2ILFkoV
         JCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=r+UlVu2TZ298SlcR0ws+x0e8hMDj5MjRwr8mvwsi0ao=;
        b=AiMC9zKCp1LbjayjnQlh3YCYbTJylS4WWvjOf/O80c06bLbmk58if226xMHW4CIg5s
         DGUyhBKy1fHcu9YqAjQpWo8PLuko2UTnT+JTOkoKbZQJjyuJhRGvffpNgkNFFxDt05Gr
         fuPgTibH1dpomuQULmsmo6FCr9YR12QOrdOaDcyreHMyoQ898Z+OECMceU4JG/0wsxL6
         JOTVycQrgScE2gZyGXBHBQU1pcApfO/T7CD89k/CKXmORws8fOGzsccPBS8ho2f/bGzH
         gUzD0cNy/m5enNPKSzA+9XcLpwI3fjqoX4IdLPYYQpxtjzqGPiFMXqQm69mUiLdJ0WEX
         j6hw==
X-Gm-Message-State: AMke39n6UIxnaF80daCmgufii+Y8vnJ1tt9m8Kd/YitQeQ0exLwYr45FMRDKr+6xeF+Kgw==
X-Received: by 10.223.173.199 with SMTP id w65mr17300531wrc.125.1489172864375;
        Fri, 10 Mar 2017 11:07:44 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id l10sm14174056wrb.3.2017.03.10.11.07.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:07:43 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 5/7] staging: wilc1000: Removing extra tabs
Date: Fri, 10 Mar 2017 21:07:41 +0200
Message-Id: <20170310190741.20020-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

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


