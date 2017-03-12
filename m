X-GM-THRID: 6395629856318554112
X-Received: by 10.46.1.12 with SMTP id 12mr5229693ljb.30.1489353344687;
        Sun, 12 Mar 2017 14:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.87 with SMTP id 23ls1015468lju.52.gmail; Sun, 12 Mar
 2017 14:15:44 -0700 (PDT)
X-Received: by 10.46.20.74 with SMTP id 10mr3940690lju.0.1489353344214;
        Sun, 12 Mar 2017 14:15:44 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id l138si576327wmg.0.2017.03.12.14.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id n11so7126087wma.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hlHn+vwsdkJuuP3JgeiYYSvDbIiiB4BGHFRRKm7/VB4=;
        b=plAE6DvKhrSOdg7YhyrGCxyXJM+jXEejdG+qNpmMFARpNdJx7gboPDsyMf6vCFfsGT
         HkutC/T9SIx1f+yiezxy+AJppNgx1ukoD141NzXf/MkmbQDHzMoFpa2BxZUiRcgvXy+P
         1ZkBl+wxrE7SVX/Wdsx5pOKzcUYP8PFieQk3TQuU4n6enzN34Ct+XBHcaHxE0GOJ3jmv
         byUx4rDQgWeK9tRxueXk7H5FPS3bMpfYlJ+OLtt5JgG0rkZzB+fbrCrV02jFQPTrQpB9
         A3h8hrOSyEtSrPlWl3edkZKxUWke/sjjC+S/2R0JnToEvqWbXrCa+XMWUzt2wupHlT3b
         G0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hlHn+vwsdkJuuP3JgeiYYSvDbIiiB4BGHFRRKm7/VB4=;
        b=hK3lQ7YsjNMg2P8kQkQSlEby58kMdMft0Ixc31oknkwmoESev0dZNM/OWocj7hbrW2
         pxawpTzrMDeQe4u5kPIG0aR0NKnS+GtDbg0GgW4O8xV2PJl1SqG9u66BikY9imh0sQJj
         UK/UsdEXvAWlks+Lq4Yfs4QcBvDAr+r8cXl5UmQJKvw18ngSXt3lFZm2H3kcMTZXD28r
         JBvrsUbwzqAxIqW2/mXyEytVwORbLAOnXh8gb7rJQmoox0jWCJzuNrPi69k+hANY1WsI
         8nCERd0/TYSh+KeQvhQIoPJhKGgiwFvCBdNiDR95Y9L83vPwbOADcdARlW6PrSGTbIEk
         REqw==
X-Gm-Message-State: AFeK/H0iNUuBPRBJlfqt2j1KwLVdNeMw7oI0P87NrPzrZY5li+9GGoHXqcZ0HmR4lrOfhw==
X-Received: by 10.28.19.207 with SMTP id 198mr6867224wmt.49.1489353344010;
        Sun, 12 Mar 2017 14:15:44 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:402c:8cdb:1897:4e7d])
        by smtp.gmail.com with ESMTPSA id f48sm22287146wrf.17.2017.03.12.14.15.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 14:15:43 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 2/3] staging: wilc1000: Correct name of variables
Date: Sun, 12 Mar 2017 23:15:17 +0200
Message-Id: <20170312211518.3172-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170312211518.3172-1-diaconita.tamara@gmail.com>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>

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


