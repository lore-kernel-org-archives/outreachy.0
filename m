X-GM-THRID: 6395629856318554112
X-Received: by 10.25.169.14 with SMTP id s14mr5051007lfe.3.1489493450743;
        Tue, 14 Mar 2017 05:10:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1799687ljb.38.gmail; Tue, 14 Mar
 2017 05:10:50 -0700 (PDT)
X-Received: by 10.46.87.80 with SMTP id r16mr6059233ljd.12.1489493450205;
        Tue, 14 Mar 2017 05:10:50 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 82si1054826wmg.3.2017.03.14.05.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u108so23676610wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 05:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ww5U5XC1136PvYwheKn9UBl9qm8eJISlzhwhpAdHyN4=;
        b=SkfE9fzPRjLpVAAIDCvjHYx31opWeuY+T8o4VKYQG+XiSxOn6V9luHm06zuya1op5z
         TBaCms7Rwz1KwNCxmdPprqLhjaHxnuM85eJfwFDQW5BAiHFPEF9lY/16QN03/XG3IwoO
         /s0aIf7L01Y+h+XPIldwx+UCAokOFlTYpZoLfeuh7k9pCkViJkp6h1FnV7rfcix6F3+/
         OMzklqFnUS0bjho+fHicdAsrZWGMlkyjv3EKuF2ZexEBJz+eEyifn9nSI3kqWrc3wvrj
         I0c+JExSZXs8z/0E1lnfAQgqvYEBlx6fSE3vvYdmnuFWDd+pE7wRb1zkl0T+dhWyJXmA
         S8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ww5U5XC1136PvYwheKn9UBl9qm8eJISlzhwhpAdHyN4=;
        b=hp3vj1M8GUMyVt2B2FoNZsgH0FyytyBYrJZYEMAHJTlPrjnJrin2S0fhUjGhM3Izvz
         aokqulLUh7Yxnwol892OgfNl1e9n0QlzvXAFX0u0ktdSZoINVJNirB49vynkfoJa+pOE
         qnM1D0F9NGfic0QmY/Xx7dpnwJ0e1U3r+7M7BkSAfzy/9TiAfuiE6u4jSuEmPUSQ/Prf
         6AtzVK/EdoAsyUZlL/GIa1iukZwB776kWC3HEeIvOMRblaH1kRUMMz1hkG8Unm5u4PC+
         Hpuuzjbx+IWT2DQfXAjpz4PcMlTHEdD6kG4qC7hHLlvt/QQ5dh1FIMR5/Rzn/9PgsGSK
         C98g==
X-Gm-Message-State: AMke39nCp0sPXeVa0oMtir82qx6Cn7pI0WGS/2q0Y6w4A7cM+lRcdfOp/FBLbguhwh9jzg==
X-Received: by 10.223.138.139 with SMTP id y11mr30423818wry.190.1489493449982;
        Tue, 14 Mar 2017 05:10:49 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id b58sm29025807wra.47.2017.03.14.05.10.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 05:10:48 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v4 2/3] staging: wilc1000: Correct name of variables
Date: Tue, 14 Mar 2017 14:10:37 +0200
Message-Id: <20170314121038.22658-3-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170314121038.22658-1-diaconita.tamara@gmail.com>
References: <20170314121038.22658-1-diaconita.tamara@gmail.com>

Correct misspelled variables: 'happended' to 'happened' to make the
code grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4364aee..298daa3 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -937,7 +937,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	int ret;
 	u32 tmp;
 	u32 byte_cnt;
-	int happended, j;
+	int happened, j;
 	u32 unknown_mask;
 	u32 irq_flags;
 
@@ -957,7 +957,7 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 		{
 			j = 0;
 			do {
-				happended = 0;
+				happened = 0;
 
 				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
 				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
@@ -973,11 +973,11 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 
 					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
 						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
-						happended = 1;
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


