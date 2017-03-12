X-GM-THRID: 6395629856318554112
X-Received: by 10.46.15.2 with SMTP id 2mr4843217ljp.31.1489353349302;
        Sun, 12 Mar 2017 14:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.15 with SMTP id h15ls1395076ljb.14.gmail; Sun, 12 Mar
 2017 14:15:48 -0700 (PDT)
X-Received: by 10.25.169.14 with SMTP id s14mr3854712lfe.3.1489353348863;
        Sun, 12 Mar 2017 14:15:48 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id p144si499389wme.2.2017.03.12.14.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l37so17881610wrc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yUNF0hDbB7oO2xwDUqMVfV9tNQCVbVQXyRBkkq3wfUA=;
        b=OsLCyOyhO8dtBPxYO5rkzJLtt9RrK98+QUaQhdx3ZjzflMH2Yoqs24SG83rYo5FKeg
         9iW7Ey045LRGYRJv1u+7yXPphDeIQlkkG8STvDdB+hGunodhPXZONZwqnZcG3spS5jh/
         eeHcq2ofn/BxQ6Rv9XUNI1dXDBsa1ki6SEGZqureWWU5bEeVKo8k7ZcoLhspFd4WNMIW
         Mxr9bgPxp9UdqLG3ejIr9+oz21xMhhwqjKIUDGpKcX7SjSvkoUCScTFqfAZxNQ2wnIUA
         S+PgB8j+6TF/enOvi1jA42nVwtrSPgOcNNCKyp+YElaT8P2SZXMnkePU2wFdicMrzO4a
         uQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yUNF0hDbB7oO2xwDUqMVfV9tNQCVbVQXyRBkkq3wfUA=;
        b=IdmMhdxW/SE6w5PB/jQhWcSsvJfnCixkMjVOkD7ypq4q79ASARU2JpQMbRE67YrYXv
         qd2Pzhx80sZMhyoUUpLPo+q78/2VyPl9eRNgV1yfBV1/wz0gN2/HXcekZ7gfSBA5Ck6A
         6j0nNwua7/4Xon18EJEcG5MmgzcRMZ1jZJaiY5afotT7jwZOBKiRaS/PQ9rSZO/EyVeV
         98Jbeqks/ziB/tewIwYDElcyUocyjFEx4XnsPaCTSTSMj171xHQpIbOtphPlBVH9lsLz
         SwF3JPd5Svo8cMDaqlQWmr+/rJY/Nxc/SyqZUtx6/l84NBFDe++Msu3hWe7ngQt1mFYh
         1t/g==
X-Gm-Message-State: AMke39nZZCIkPCxNmsBjkg8dIAEr+lPPwGy7Y7U/8bMptXHTkB4tEj5CPRwa+SfoiJ5+MA==
X-Received: by 10.223.175.81 with SMTP id z75mr25110846wrc.3.1489353348687;
        Sun, 12 Mar 2017 14:15:48 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:402c:8cdb:1897:4e7d])
        by smtp.gmail.com with ESMTPSA id n59sm22433695wrb.54.2017.03.12.14.15.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 14:15:47 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 3/3] staging: wilc1000: Remove unnecessary brackets
Date: Sun, 12 Mar 2017 23:15:18 +0200
Message-Id: <20170312211518.3172-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170312211518.3172-1-diaconita.tamara@gmail.com>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>

Improved code readability by removing unnecessary brackets and
deleted tabs to indent.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 38 +++++++++++++++++--------------------
 1 file changed, 17 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 9cde575..f63aaca 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -956,31 +956,27 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
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
+				happened = 1;
+			}
+			j++;
+		} while (happened);
 
 		*int_status = tmp;
 	}
-- 
2.9.3


