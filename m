X-GM-THRID: 6394528999032225792
X-Received: by 10.25.195.206 with SMTP id t197mr3462772lff.11.1489235805814;
        Sat, 11 Mar 2017 04:36:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls1266241ljo.45.gmail; Sat, 11 Mar 2017
 04:36:45 -0800 (PST)
X-Received: by 10.25.193.213 with SMTP id r204mr3445098lff.24.1489235805310;
        Sat, 11 Mar 2017 04:36:45 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i76si191704wmh.1.2017.03.11.04.36.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 04:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so2857213wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 04:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hlHn+vwsdkJuuP3JgeiYYSvDbIiiB4BGHFRRKm7/VB4=;
        b=HaIGCtqsGC5zpN5uJQCLidXxRN8uFaKucHmX4dyc4Fnh74nFBjQLCuTT711kel/BIP
         ibkhgA26qzTZqKal7eO0yk79CIlOSbYd5j0GDN/lfrDz4xWQVEVoFkCQakH1A6hCaHNM
         zSrLSdRqDBecvsYlkumryoDJtkhAaZOsfPFwGKtFDRP3jjku+2sv4b0cZzHTPCuQSfL1
         Es83cRW1JRgHQOkmP+5fkNK7dIKyrxzixNY+JljZsF2NjL4pavzWjLxCJyIEGDFveIOR
         tIuOtPyeczrOOncriCqKNG3Znwi29wE/KqDRIm8OCAfxVwv7o1n91GdL4oKcYvgzmDXj
         i5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hlHn+vwsdkJuuP3JgeiYYSvDbIiiB4BGHFRRKm7/VB4=;
        b=WXJyKZpfF+Xz9t+Vre9uuTiU9FA5p+ukXszKFOJSwQrBh+R9dP3bUfvP88iXske5cY
         fvVXbLGrG4kH3qdaBeGEJsNZTqyXqqs/oYq01NcCzW7SK3Upv2OjLS3xDoyoz8j75Jqs
         rxfoF1ZrXvdxJ0UbPH2PZ9Dwhu8DFO88GPyh1+pgZsZ6aubb3eZMJ0C3IoxrSNsI/94B
         yi/2tXeq5YDKNYO5wq16iwwUxC9FdHipevPoXO0FE70vPGaQlri0LZNnTb3xaqCfJgOm
         oailRyOon2aAJeczZiNlBTSHjujv+lRBOGPtHk9H9Mla/o9xmPuYvzI94NHK6xfBA3UZ
         LNlQ==
X-Gm-Message-State: AFeK/H2hw5FZt37+kw0gIrNUOSggTeMZa/JeQ/l0ZKt1HW7fKVXqNrpL0HJUZ3iTI7jLug==
X-Received: by 10.28.54.194 with SMTP id y63mr3164084wmh.46.1489235805107;
        Sat, 11 Mar 2017 04:36:45 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id z21sm17209410wrz.31.2017.03.11.04.36.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 04:36:44 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 2/3] staging: wilc1000: Correct name of variables
Date: Sat, 11 Mar 2017 14:33:59 +0200
Message-Id: <20170311123400.17274-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311123400.17274-1-diaconita.tamara@gmail.com>
References: <20170311123400.17274-1-diaconita.tamara@gmail.com>

Correct misspelled variables:
'unkmown_mask' to 'unknown_mask' and 'happended' to 'happened'
to improve code readability.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index e1ead47..9cde575 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -937,17 +937,16 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
-	int happended, j;
+	int happened, j;
 	u32 irq_flags;
-	u32 unkmown_mask;
+	u32 unknown_mask;
+	u32 tmp;
+	u32 byte_cnt;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
 					int_status);
 	} else {
-		u32 tmp;
-		u32 byte_cnt;
-
 		ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
 					&byte_cnt);
 		if (!ret) {
@@ -960,7 +959,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		{
 			j = 0;
 			do {
-				happended = 0;
+				happened = 0;
 
 				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
 				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
@@ -972,15 +971,15 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					unkmown_mask = ~((1ul << g_spi.nint) - 1);
+					unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-						happended = 1;
+					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
+						happened = 1;
 					}
 				}
 				j++;
-			} while (happended);
+			} while (happened);
 		}
 
 		*int_status = tmp;
-- 
2.9.3


