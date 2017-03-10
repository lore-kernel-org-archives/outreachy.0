X-GM-THRID: 6395948496496623616
X-Received: by 10.46.5.136 with SMTP id 130mr3465848ljf.6.1489172805033;
        Fri, 10 Mar 2017 11:06:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.26 with SMTP id t26ls152209lfd.48.gmail; Fri, 10 Mar
 2017 11:06:44 -0800 (PST)
X-Received: by 10.25.156.74 with SMTP id f71mr3086916lfe.26.1489172804424;
        Fri, 10 Mar 2017 11:06:44 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p144si28734wme.2.2017.03.10.11.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:06:44 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so489273wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bmxi6GT3zYPDtKA30B9sFaq9nNT5N1l5GgCTmcv35Ko=;
        b=BZkQvoXdbsggltw7lKKRtU07JsxQHv7ZFbuw41dgARbVM2AT3+4qyO5PFMCPyppAYe
         i32eIQDw92Ifx69GRyKky92QPbTOE+srbgvtVIBa1Aeq/s6NsERSiD2PY7C+Z0GQIy3x
         JeK0nVMh5rlInjybBbCLOvqLX5v+PkIZze2tvVeJ7jt7wGVVGQR4apvK1Z5Y9fnAei0w
         yBbVmcXtM7ZxsL2rcurJgU16nZIAsba4UqS5KbLiw4RwmTBrRfyUXX9FCRpkbLAcHr/A
         UqqHSN6YeRgg904+R4KCLYYQ5+zaWszYwufRmypx21ihRSKOu6CfDbyYJeylRVwRQ7WK
         ZwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bmxi6GT3zYPDtKA30B9sFaq9nNT5N1l5GgCTmcv35Ko=;
        b=GgqqsQhJciAD5t/hpd+txYGFUPuFbaSm3oT8McNLICMS28P/GJhAMJLIwpymqSWggu
         e3bPC9ZUgJMF7jPPCm/snBm7vtp3zJiARSaFR3flvdbX6o3MPcsanPQxxTQXNbA52mF0
         ezjjFZxq+R+ryKhfJmADPkVWvvg2ImzirSKF4e4fsWY797sBOzAS1OwoEwBDBDjaEFSP
         ClU4TKAZ+RqBAehAeybLqGcgCwW2pd8HOtmxbVepg4idCF5fEXtQR3Cp1uOCGwYMFlAS
         C7kA0AG4yBR+3KCeWgKx98TLvVPARz1IFxqshFM0SPMB2E2etUHeRkwjhUohOgALpxzn
         DsvQ==
X-Gm-Message-State: AFeK/H3gwBnebRCN3xlH3rMs2NV2a9nINbca8aYNHT7DNg3T679s9YoQegA/nWIJpzgylg==
X-Received: by 10.28.153.196 with SMTP id b187mr403246wme.53.1489172804183;
        Fri, 10 Mar 2017 11:06:44 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:9935:36c4:c373:a2cc])
        by smtp.gmail.com with ESMTPSA id 5sm14030680wrd.58.2017.03.10.11.06.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:06:43 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/7] staging: wilc1000: Remove unnecessary brackets
Date: Fri, 10 Mar 2017 21:06:41 +0200
Message-Id: <20170310190641.19815-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improved code readability by removing unnecessary brackets and deleting
tabs to indent.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 44 +++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 5e28adc..b3c0594 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -946,39 +946,35 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		}
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
-		{
-			int happended, j;
+		int happended, j;
 
-			j = 0;
-			do {
-				u32 irq_flags;
+		j = 0;
+		do {
+			u32 irq_flags;
 
-				happended = 0;
+			happended = 0;
 
-				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
-				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
+			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
+			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
 
-				if (g_spi.nint > 5) {
-					wilc_spi_read_reg(wilc, 0x1a94,
-							  &irq_flags);
-					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
-				}
+			if (g_spi.nint > 5) {
+				wilc_spi_read_reg(wilc, 0x1a94,
+						  &irq_flags);
+				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
+			}
 
-				{
-					u32 unkmown_mask;
+				u32 unkmown_mask;
 
-					unkmown_mask = ~((1ul << g_spi.nint) - 1);
+				unkmown_mask = ~((1ul << g_spi.nint) - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-						happended = 1;
-					}
+				if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
+					dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
+					happended = 1;
 				}
-				j++;
-			} while (happended);
-		}
+			j++;
+		} while (happended);
 
-		*int_status = tmp;
+	*int_status = tmp;
 	}
 
 _fail_:
-- 
2.9.3


