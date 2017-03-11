X-GM-THRID: 6394528999032225792
X-Received: by 10.46.33.82 with SMTP id h79mr4048657ljh.7.1489230443784;
        Sat, 11 Mar 2017 03:07:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls1199687ljt.24.gmail; Sat, 11 Mar
 2017 03:07:23 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr3869573ljb.20.1489230443418;
        Sat, 11 Mar 2017 03:07:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l138si204409wmg.0.2017.03.11.03.07.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 03:07:23 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id g10so14365922wrg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 03:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aZU4RuP85dWnrxDJXIQQBirU+2HDJ94B1Od/NJjWKhs=;
        b=XATKQHHFfW2IUMCdMoBo3K/+hPVvzbmNoHaBcLDLt2rxz2nx8FrFpomYOcN8mwns3W
         UDL/jgCmFaLMPG8uII5nYt9B5wC0H7OTNyKmi18sLCJCsFdhPam3/pBg+ZXOQyjMWmQX
         YJtE3BLkLxcQCOyP04Of1cw5HfDsWD+8rERsLqFxt6Ws4EvKwx6/51r3QfXtTfV7hSRA
         wkITcjHnbmEu0ueOJOZkr5BFv2/T3IVP7FEtB0MIqnM8JzuoIV36RZ4wKA1AoV6taO62
         dfZrWB4i2bmhF1Jrc9skLwxGzqiDE1GpFPmFzZJdf/gaaMg2T2O24HYOEs0cTWgeGg4c
         hvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aZU4RuP85dWnrxDJXIQQBirU+2HDJ94B1Od/NJjWKhs=;
        b=qNjI1eQH67c3xSwsou5NXec1McDGOi9S/ZVPUawykePnM10+Q0G4F2IuMd4GOwS5O6
         4Qg4yQcMthz1hqmLLRiRvFQjqNGaQRuht/gqhfpCD3UhqkMXBe03uFReDflrVH5VTivr
         2d/NGc/5F/6udPWDOF/BzIxcdog1we9bTLCfN9tclA/TEWShTHp3AfudwQUrmdhFwWdX
         N2Kp6Y5DJ03HAOZ81JMUgg4Ej9fuoA0X+i6ctt96QSmL/wILzNekCtr8gkUCXvsl6vmg
         1v34CICPN+001fHJGvbEq6cigCVNkifjScumHt5r/ZfCdWSVd4YUXLMfuIkRTKrhBdPX
         MrUw==
X-Gm-Message-State: AMke39mBtrckU3SjMs+zOwftqGRNQ8IFLj+L1s/utjFXv5IS6zQUx3L6P3OcVo6y9eDZcg==
X-Received: by 10.223.129.74 with SMTP id 68mr18503069wrm.183.1489230443253;
        Sat, 11 Mar 2017 03:07:23 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id t195sm3226129wmt.32.2017.03.11.03.07.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 03:07:22 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/3] staging: wilc1000: Correct name of variables
Date: Sat, 11 Mar 2017 13:06:52 +0200
Message-Id: <20170311110652.8384-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311110652.8384-1-diaconita.tamara@gmail.com>
References: <20170311110652.8384-1-diaconita.tamara@gmail.com>

Correct misspelled variables: unkmown_mask and happended to improve code
readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 887f45f..414ef21 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -929,9 +929,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 {
 	struct spi_device *spi = to_spi_device(wilc->dev);
 	int ret;
-	int happended, j;
+	int happened, j;
 	u32 irq_flags;
-	u32 unkmown_mask;
+	u32 unknown_mask;
 
 	if (g_spi.has_thrpt_enh) {
 		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
@@ -951,7 +951,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 
 		j = 0;
 		do {
-			happended = 0;
+			happened = 0;
 
 			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
 			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
@@ -962,14 +962,14 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
 			}
 
-			unkmown_mask = ~((1ul << g_spi.nint) - 1);
+			unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-			if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
-				happended = 1;
+			if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
+				happened = 1;
 			}
 			j++;
-		} while (happended);
+		} while (happened);
 
 	*int_status = tmp;
 	}
-- 
2.9.3


