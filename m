X-GM-THRID: 6394528999032225792
X-Received: by 10.25.72.71 with SMTP id v68mr1121997lfa.9.1489235831827;
        Sat, 11 Mar 2017 04:37:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.217 with SMTP id c86ls1214808ljd.10.gmail; Sat, 11 Mar
 2017 04:37:11 -0800 (PST)
X-Received: by 10.25.203.151 with SMTP id b145mr3360488lfg.17.1489235831379;
        Sat, 11 Mar 2017 04:37:11 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id i76si191704wmh.1.2017.03.11.04.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 04:37:11 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so2857213wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 04:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yUNF0hDbB7oO2xwDUqMVfV9tNQCVbVQXyRBkkq3wfUA=;
        b=aQKo32vkLOtvaxG9u/9bfU6YkoK0KJr7HIGoWJI9xrpzwo0Q5XBUVNHe/XrV4DMnlm
         YYuPM8RuTuZaXVfGSj4eeItZ/ciuKk+dBvKnKNfAwp2j2/HJAhwxLGLR8fIq0fT54xX9
         vakObvESH3VhkfdIJnjI5GXDAN4TzPzaaR6ntM0jJMMaTLPNHxWEgfkTfFal6S+VqjSG
         wdA5+yGFBZL/6EmeFNYBQmMnbdYfH/2yy7jngBKIRS00yvcfeuecL2SPw0NbSVTLCaw0
         2ZXYkjpEX4j02Y1+9zfQwqarLWmfrQV3NNfutO8eL0BI15uZQ/YJWczQCFiXcQRu+Wve
         Ybog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yUNF0hDbB7oO2xwDUqMVfV9tNQCVbVQXyRBkkq3wfUA=;
        b=FIyPDdrfnh6LzDUo1QfFo/j/9gRAO9JtyygYjNAVpvBi9RwiCOiXWKp+QuEAccdViC
         C4leTDJWy0TCZNtJoxAFcYVMcneo52ZYapyIAfjlF90htvOYakYU9XTKMQsGFoRveWC4
         NI4FOzCHJ0DCR/pXryLB7EHAtX5c+bUnPjQgN/scNK+QRkYaK1sLAhdHMXMBtolWHofz
         Wfj5gHIjGljBeqX8pwg0uIygzKzmat0X8P+CN3naxGEmNRe0P4AyITngWST9U8ZsHL39
         9Z93UoNj1FOgrenFB9kZgwEsT1JvN8fBL1/dH6gYV0O/+GXqNsHNcDVuOJwK884SFUew
         Mrvw==
X-Gm-Message-State: AFeK/H1Ff8vyFW9dqkX3AwJ9SPx+tgeHW0NYs33z79lWy2kU2juD9LJr3itMBTejvzBpYw==
X-Received: by 10.28.146.12 with SMTP id u12mr2990754wmd.113.1489235831115;
        Sat, 11 Mar 2017 04:37:11 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id j34sm17111905wre.7.2017.03.11.04.36.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 04:37:10 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 3/3] staging: wilc1000: Remove unnecessary brackets
Date: Sat, 11 Mar 2017 14:34:00 +0200
Message-Id: <20170311123400.17274-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311123400.17274-1-diaconita.tamara@gmail.com>
References: <20170311123400.17274-1-diaconita.tamara@gmail.com>

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


