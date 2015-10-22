X-GM-THRID: 6208519851365892096
X-Received: by 10.129.88.87 with SMTP id m84mr13349030ywb.0.1445533681315;
        Thu, 22 Oct 2015 10:08:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.67 with SMTP id q64ls991824ioe.20.gmail; Thu, 22 Oct
 2015 10:08:01 -0700 (PDT)
X-Received: by 10.66.102.38 with SMTP id fl6mr13100481pab.48.1445533681014;
        Thu, 22 Oct 2015 10:08:01 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id fa8si1815902pab.1.2015.10.22.10.08.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so91549837pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KUPR9e/t4eLKUUAifrMguq6Gz4kPt+WOEebptO1AFp0=;
        b=Z3EPorqdtOJ36yeex+0z+ZZahZAkwaX+9jgNwGSe5TpqqK3h0ANwc2ISgsv9FPNy9v
         osIWTdtwsbGgfnVnK5GkLNo7GRsD5u6w8HBMRKmG8nQsZbUNewtsOQvyLq4mXjAp3Y+q
         Y5StI60nmPTdOdjDtQTMlrXLDQsjDVz98rN0nDR3jVWm674MwNix0D5P2yFl/Mtf0yhZ
         40kLN+rhbcKMCbAifRpNHxriTK9+6YSu2LqamSZxGdjxjJDmuxlGRpfx5COorahxfl0L
         rVvjAQA0q4pddMjNyGFX4hW7jYMwUY0EZLM5tlQO4RGi/y3C27ARR86qvsX9Jc3OhKCB
         jZPQ==
X-Received: by 10.68.131.6 with SMTP id oi6mr18607091pbb.3.1445533680922;
        Thu, 22 Oct 2015 10:08:00 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.9])
        by smtp.gmail.com with ESMTPSA id iy1sm14726216pbb.85.2015.10.22.10.07.59
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 22 Oct 2015 10:08:00 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/3] Staging: mt29f_spinand: Add blank line after function declaration
Date: Fri, 23 Oct 2015 01:07:38 +0800
Message-Id: <1445533660-29817-2-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>
References: <1445533660-29817-1-git-send-email-eraretuya@gmail.com>

Add missing blank line in-between function declarations.
Issue found by checkpatch.

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/mt29f_spinand/mt29f_spinand.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index cf98228..dc9877e 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -186,6 +186,7 @@ static int wait_till_ready(struct spi_device *spi_nand)
 
 	return -1;
 }
+
 /**
  * spinand_get_otp- send command 0xf to read the SPI Nand OTP register
  * Description:
@@ -839,6 +840,7 @@ static int spinand_lock_block(struct spi_device *spi_nand, u8 lock)
 
 	return ret;
 }
+
 /*
  * spinand_probe - [spinand Interface]
  * @spi_nand: registered device driver.
-- 
1.9.1


