X-GM-THRID: 6395629856318554112
X-Received: by 10.46.5.136 with SMTP id 130mr5915598ljf.6.1489493453170;
        Tue, 14 Mar 2017 05:10:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls1661947ljb.23.gmail; Tue, 14 Mar
 2017 05:10:52 -0700 (PDT)
X-Received: by 10.46.5.136 with SMTP id 130mr5915596ljf.6.1489493452730;
        Tue, 14 Mar 2017 05:10:52 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id y19si313322wmd.0.2017.03.14.05.10.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so14523674wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 05:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YuHwPSrv6Zs2zyMx7EGEmfE5yy7b4/UDa33Txx2+VPs=;
        b=iJQnnhX9JfrmUq97aZ52bhqZzE+XSJ6nR/kD428qVuJaFM3Nf7c+Y4yAgTyjev9gMc
         DbTmCuwx3eT+84cYPSE/+gSHwWNAQYl3eYPhuhkjzDOFWSeDntHXjO9zpQEnwWNTeCsI
         qsmEVci5icy5K6ZxgsNNRb8Tx6Z4U5R4mM6LV4t6nUC34MxpgU2SB1RFDti48QGl+KhF
         7o5gH5lBsbU8Ix2UJIKx6BZ9Al7+sfHtC7h3XQYyU/H2WhgGGNe//9aQLWahoRGbsbwk
         9OjlUwC/idhurz/QvL1d3/pJkYZAYgsnBWpdyuaYtb03gJiPlRyjEx8bG4CrWh+qTnBS
         oKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YuHwPSrv6Zs2zyMx7EGEmfE5yy7b4/UDa33Txx2+VPs=;
        b=PaiTXXiUIH3hYobzgqrbbbhF/k3LZomGyVMT0yv3h5m30gl3VUbBrWyrZA764RfFAE
         YoRfqroDwrEenZA8wE+qEfaW8eODT1Da3Z+TeH0doFJN/zHP0xXh8HIm2s2N8j6iQ4Oi
         WJDINYtIKL+hhbVvywlug0GT193gBzv7w0N7LOfrc5W4sFAYSDCNe4pI7QWIiiC65MVm
         s5R6yeSO1XJu9vwtRw0Oh/wkON+DA3X97a+h6Dsuk1xa4jCYpZXA7dJs1+qPpIbBKuBZ
         d9ZVHqPAfizc11YZFptEWPOi0gFl1v7Jde0m/PFf72zH8iTTN5cqvJtpN5zrtVbFSNVR
         S6fw==
X-Gm-Message-State: AFeK/H22snVyBUI6p7KmzZ9FjX/3EH2HXwrlJid0w142M2EiTQY07DYhRlEmOxbh12evPQ==
X-Received: by 10.28.47.7 with SMTP id v7mr14073425wmv.138.1489493452501;
        Tue, 14 Mar 2017 05:10:52 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id k43sm28917931wrk.42.2017.03.14.05.10.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 05:10:51 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4 3/3] staging: wilc1000: Remove unnecessary brackets
Date: Tue, 14 Mar 2017 14:10:38 +0200
Message-Id: <20170314121038.22658-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170314121038.22658-1-diaconita.tamara@gmail.com>
References: <20170314121038.22658-1-diaconita.tamara@gmail.com>

Remove unnecessary brackets and correspondingly unindent code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v2:
*Change the description of the patch.

 drivers/staging/wilc1000/wilc_spi.c | 39 +++++++++++++++++--------------------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 298daa3..ca487b54 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -954,31 +954,28 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		}
 		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
 
-		{
-			j = 0;
-			do {
-				happened = 0;
+		j = 0;
+		do {
+			happened = 0;
 
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
+					happened = 1;
+			}
+
+			j++;
+		} while (happened);
 
 		*int_status = tmp;
 	}
-- 
2.9.3


