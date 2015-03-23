X-GM-THRID: 9656944558080
X-Received: by 10.66.233.37 with SMTP id tt5mr86070637pac.3.1427078238947;
        Sun, 22 Mar 2015 19:37:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.178 with SMTP id g18ls1166385igt.41.gmail; Sun, 22 Mar
 2015 19:37:18 -0700 (PDT)
X-Received: by 10.50.26.40 with SMTP id i8mr10912588igg.8.1427078238617;
        Sun, 22 Mar 2015 19:37:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iw3si594786pbd.1.2015.03.22.19.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 19:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id we9so176317901pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 19:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gnNREYgk9UQyJUj7HdVEC897dxAYD94qmpO2hAina04=;
        b=W7fYUQYu8JnEaeCV3njcP16sQxKU50XH5BzV94Vi3c+SRT77IMNiZr8Z64Bctybv6r
         fR0odWCJ1gV1201szEZOD9yoX6xFPEyhj/fDeikbZpo8ONuOW+WYCc0kz2Ck48DCNbLS
         +h4pMGIFk7vSXcQJuu/54CUC5+vGDn441zE/3DtykNT1jJt1K/77zbj+BzrWG8V38PgV
         oZdwN58XkUH+iDaotEFf5jTeq2aBFfOqkeI/s3JuZgoR7Y3Lgu0Um7zJoTIFKvIdgi00
         +VOxwLmDsQeWpriYKnBJ+tol2/HfM/hm5SkL4YmBOegCfooJ/Bk365Tj9FCWyb4JKm74
         2FMQ==
X-Received: by 10.66.185.230 with SMTP id ff6mr210959205pac.102.1427078238475;
        Sun, 22 Mar 2015 19:37:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.143.110])
        by mx.google.com with ESMTPSA id dh3sm8559833pdb.69.2015.03.22.19.37.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 19:37:17 -0700 (PDT)
Date: Mon, 23 Mar 2015 08:07:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Fix switch-case indent
Message-ID: <20150323023713.GA3775@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix indentation in switch-case by using tabs. Problem found using
checkpatch.pl
ERROR: switch and case should be at the same indent

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 43 +++++++++++++++++------------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 3ac6478..717ca18 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -196,30 +196,29 @@ void setMasterClock(unsigned int frequency)
 		if (frequency > MHz(190))
 			frequency = MHz(190);
 
-	/* Calculate the divisor */
-	divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
-
-	/* Set the corresponding divisor in the register. */
-	ulReg = PEEK32(CURRENT_GATE);
-	switch(divisor)
-        {
-            default:
-            case 3:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
-                break;
-            case 4:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_4);
-                break;
-            case 6:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_6);
-                break;
-            case 8:
-                ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_8);
-                break;
-        }
+		/* Calculate the divisor */
+		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+
+		/* Set the corresponding divisor in the register. */
+		ulReg = PEEK32(CURRENT_GATE);
+		switch (divisor) {
+		default:
+		case 3:
+			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_3);
+			break;
+		case 4:
+			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_4);
+			break;
+		case 6:
+			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_6);
+			break;
+		case 8:
+			ulReg = FIELD_SET(ulReg, CURRENT_GATE, MCLK, DIV_8);
+			break;
+		}
 
 	setCurrentGate(ulReg);
-    }
+	}
 }
 
 
-- 
1.9.1


