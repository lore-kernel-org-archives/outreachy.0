X-GM-THRID: 6395629856318554112
X-Received: by 10.25.157.14 with SMTP id g14mr4353077lfe.28.1489415390607;
        Mon, 13 Mar 2017 07:29:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls1529103ljn.46.gmail; Mon, 13 Mar 2017
 07:29:50 -0700 (PDT)
X-Received: by 10.46.20.74 with SMTP id 10mr4469684lju.0.1489415390159;
        Mon, 13 Mar 2017 07:29:50 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id y19si4343wmd.0.2017.03.13.07.29.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 07:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u108so20320204wrb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 07:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=X5U0FXELba5wH3maJotajFFvLyRuCj3pJBDaPtVOyhU=;
        b=ZvgnTot+4GrP4maZdl6d1Q9tvGt3qCiJJS1H2Ubp7TCLf0yNMHZ7Pfr6uL4Vp8pcqW
         APDTjAfaUiJUlYN7QCxwpNlmu8aNNa23Q6u0cPkSwSX+ObNNyrCICLWp0wTVgwRRvK2U
         v6tvU1ZQoiZsTuw6ebQ7wZxhb+ALMdftrVGKyXFhaO/hqNZDC8bd8prwWXPjTjj1XYg4
         x1HK4RNfyApgy/+vFCSIl4umoWC5YRV7rOCYZvQj0Vj1NIvwPg2cMMoh4XMz9h3g6zci
         z7H10p+OsuEmp4qMlfzd4fWtBBEKFtTN2X0lOcEwD0siD2dj+PW1KMOHCkGpVCIZATWb
         rm0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=X5U0FXELba5wH3maJotajFFvLyRuCj3pJBDaPtVOyhU=;
        b=F3gFdrVOgk2kIpPfwsqT97zxePlKbc+pimHu0vcdtktWULyDNtP35nNWkfxpFKqn5R
         aecgBKid6JdQjcBy/OboHN5EFgkI1l4T7oOQdFuXVuJia75B14S3jxVY4zY8MYmK6kcT
         z74BttDL+96KcgrgP39rw37H/dRuMnc3U1qO8gl/NuBRZSh/se+kPUA666o4U4YlzEIE
         ck3MmPebu7FOyitWeykuV/gmkS1cVd5AHuQ51YUc/EyCSYmqGWKHkrLFlh1wVNoCMS9F
         aMoQyCA8vhX5aMGwuDreQSPX146LMb7RXLVDQuUsZo2F3dU2z7O0Jz6UnKNSzO2tKRMs
         EtPA==
X-Gm-Message-State: AMke39n8SqPEj/SsRniJbqmQoS88QvdLcKr9qLDty9VODlccGuN9S+n1BPnGjC52ckVIxQ==
X-Received: by 10.223.175.15 with SMTP id z15mr32072007wrc.84.1489415389961;
        Mon, 13 Mar 2017 07:29:49 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id 5sm25176802wrd.58.2017.03.13.07.29.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 07:29:48 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v3 3/3] staging: wilc1000: Remove unnecessary brackets
Date: Mon, 13 Mar 2017 16:29:26 +0200
Message-Id: <20170313142926.12262-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170313142926.12262-1-diaconita.tamara@gmail.com>
References: <20170313142926.12262-1-diaconita.tamara@gmail.com>

Remove unnecessary brackets and correspondingly unindent code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Change the description of the patch.

 drivers/staging/wilc1000/wilc_spi.c | 40 +++++++++++++++++--------------------
 1 file changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 52dd717..7afbb7f 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -957,32 +957,28 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		}
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
-		{
-			j = 0;
-			do {
-
-				happened = 0;
-
-				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
-				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
+		j = 0;
+		do {
+			happened = 0;
+	
+			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
+			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
 
-				if (g_spi.nint > 5) {
-					wilc_spi_read_reg(wilc, 0x1a94,
+			if (g_spi.nint > 5) {
+				wilc_spi_read_reg(wilc, 0x1a94,
 							  &irq_flags);
-					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
-				}
+				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
+			}
 
-				{
-					unknown_mask = ~((1ul << g_spi.nint) - 1);
+			unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
-						happened = 1;
-					}
-				}
-				j++;
-			} while (happened);
-		}
+			if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
+				happened = 1;
+			}
+
+			j++;
+		} while (happened);
 
 		*int_status = tmp;
 	}
-- 
2.9.3


