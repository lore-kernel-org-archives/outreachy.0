X-GM-THRID: 6394528999032225792
X-Received: by 10.46.87.27 with SMTP id l27mr3980334ljb.28.1489230429176;
        Sat, 11 Mar 2017 03:07:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.196.194 with SMTP id u185ls173760lff.30.gmail; Sat, 11 Mar
 2017 03:07:08 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr3199834lfg.13.1489230428686;
        Sat, 11 Mar 2017 03:07:08 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id b186si184054wme.1.2017.03.11.03.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:07:08 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so2627481wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 03:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=bmxi6GT3zYPDtKA30B9sFaq9nNT5N1l5GgCTmcv35Ko=;
        b=PlZClFyN0owTghpxr4gxV0cYrU7lEpxVU/M4Iaxd9x0GCUKEy3soeoJNaSLqdr01Zn
         TIEYNWtv7G7W6X2CRnldfsYDiTYwc1iaDf/pr6sxVnCoIFs7u5guhdJ6BOIs9pw3jPYO
         WfFJcwCu8M04x4fgi3aIpZUKqL110fIuq7rbKlnc46Lx0K5iq5pF2gp3EmO+7D7Lv8pR
         eJD1x/wBsd3iPg9rJGXM8jtQr7k9+PKldjKIjXLUbF4HWzolbeMoRBAl7iiFtSN2ZzMB
         llAxfoSgPWGnlLRr+6sYT+ylOJzOW5i1kiQCyUhWFc0X5HE6Z7UpA9A7YZVRHjC0B+Ax
         gqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=bmxi6GT3zYPDtKA30B9sFaq9nNT5N1l5GgCTmcv35Ko=;
        b=TbrXuFnKutKAuxBEbok3076GbsdwsJ8zjtkwml13Yeav/xtg5k591wSDSxb+YpV53J
         tbrqW8DsE92Pq8Fk0qsNSsHrmL8vZJZ2Iec7wwIC0V1vZtOvDk8D3oiPONxKP1VkSdiM
         t53YkQCjX1JIGOnAPKEPE4SKGeYKtOzx172KIEkL57DKGBMA/m7pb/0Ouimqk8mGBUeW
         kReaD6q456bkre0UlFs+0XIeqw2DIXzFRibeqLdjTrCHmYAD9o9drRtGSQNJeBME/ejw
         U8TiucEH3fBzW6f04MkYBDr+Zit8s7j8OabmnRRZ7vRi9zN2iAWB/f0A0hDmm26N5DZB
         QqiA==
X-Gm-Message-State: AFeK/H2sMMZT75L0NxBxVrE5F7X5TjJpQW4a++q1g79De015h5vsrk2ZSXKsp7onkIoeyg==
X-Received: by 10.28.127.149 with SMTP id a143mr2911472wmd.87.1489230428484;
        Sat, 11 Mar 2017 03:07:08 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id k128sm3245926wmf.16.2017.03.11.03.07.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 03:07:07 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 1/3] staging: wilc1000: Remove unnecessary brackets
Date: Sat, 11 Mar 2017 13:06:50 +0200
Message-Id: <20170311110652.8384-2-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311110652.8384-1-diaconita.tamara@gmail.com>
References: <20170311110652.8384-1-diaconita.tamara@gmail.com>

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


