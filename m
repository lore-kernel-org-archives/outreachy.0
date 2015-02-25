X-GM-THRID: 3536544858112
X-Received: by 10.180.91.76 with SMTP id cc12mr894820wib.7.1424907929195;
        Wed, 25 Feb 2015 15:45:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls880807lal.74.gmail; Wed, 25 Feb
 2015 15:45:28 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr864846lax.10.1424907928573;
        Wed, 25 Feb 2015 15:45:28 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id el6si7773wib.2.2015.02.25.15.45.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 15:45:28 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id a1so6775830wgh.12
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 15:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ND5lE9SkYo0NDVOCLmeIyYC0xqBPF0F/gfoW6EI1yKg=;
        b=R45zaJ1nFVpN0tQs6GTZGV5cOmeur/HM0Sixh/dPOlaATrWkDGP6QR6HRlg17F1o1X
         kkAnmNRNnta6O7Dn8sx+tqUmik4vsF2fSeoALUmXIDM/o3IbkUxxSb49g8txI0T5q1Ep
         va7FiA7gsaP0ww8Ar654cH6kAAWcFzmW18a6/Qla3Q47Un4zwqVJSgrKhTDr/mIAuGvR
         cxcmSFwR+CbKMUlnBkk1rHzciysBeMJnf6r9K55srkHaSStRLxoGw5mszpcvf6Rf88Os
         qu2dPdSbog5t8XA0LSpJ5kdOjOWB3X1YRu39TBHc2jtom6tyje6/Rk624Eh70Hysjipg
         5Dpg==
X-Received: by 10.194.20.67 with SMTP id l3mr10904710wje.94.1424907928481;
        Wed, 25 Feb 2015 15:45:28 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id u6sm217261wix.12.2015.02.25.15.45.27
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 15:45:28 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: i2o: Removed unnecessary braces
Date: Thu, 26 Feb 2015 01:45:36 +0200
Message-Id: <1424907936-9368-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/i2o/i2o_proc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/i2o/i2o_proc.c b/drivers/staging/i2o/i2o_proc.c
index ad84f33..1102cb3 100644
--- a/drivers/staging/i2o/i2o_proc.c
+++ b/drivers/staging/i2o/i2o_proc.c
@@ -85,9 +85,8 @@ static int print_serial_number(struct seq_file *seq, u8 * serialno, int max_len)
 	switch (serialno[0]) {
 	case I2O_SNFORMAT_BINARY:	/* Binary */
 		seq_printf(seq, "0x");
-		for (i = 0; i < serialno[1]; i++) {
+		for (i = 0; i < serialno[1]; i++)
 			seq_printf(seq, "%02X", serialno[2 + i]);
-		}
 		break;
 
 	case I2O_SNFORMAT_ASCII:	/* ASCII */
@@ -101,9 +100,8 @@ static int print_serial_number(struct seq_file *seq, u8 * serialno, int max_len)
 			seq_printf(seq, "%s", &serialno[2]);
 		} else {
 			/* print chars for specified length */
-			for (i = 0; i < serialno[1]; i++) {
+			for (i = 0; i < serialno[1]; i++)
 				seq_printf(seq, "%c", serialno[2 + i]);
-			}
 		}
 		break;
 
-- 
1.8.3.2


