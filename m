X-GM-THRID: 6207353027120070656
X-Received: by 10.112.202.165 with SMTP id kj5mr6593235lbc.5.1445262000023;
        Mon, 19 Oct 2015 06:40:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.208 with SMTP id r199ls602718lfg.2.gmail; Mon, 19 Oct
 2015 06:39:59 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr6575631lbb.19.1445261999529;
        Mon, 19 Oct 2015 06:39:59 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id hs5si517835wib.1.2015.10.19.06.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 06:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id fx6so5940838wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 06:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YnKaVp7sbowgt2LTjacgih1K2dQ4/w6xPJKVsZpMXeI=;
        b=PipdgMh3J/tDI/EvhrHhQo16pNLCJFDfW49GnPpNCkPBEob2s074mU25Q03sh/C/9L
         3fRQ/TaWFMSatxgpt4EFfhK88baXkuwn/5kmj8VEqX6GaDoEDm1Myy0hiFPUtGF/BSd/
         ptg+PPqqcpN9tup29Rf6wpWCaJGRuKqS6jGPppgu/f3/Zo/SIIPxAUM7QqI6OufuZIdW
         3wUMAn9rC9SzCyvGHkGnKChhOPe9dua65BIQnRDyV+1+KeWu5m9/fcBJkBkVd5lHWpPn
         0ikMcUd4uMI5Iwj6j/YQHWWe7CZw+4Zlagum+Q1krBi2SIj4vUgZqinCdJLjKQHPFG60
         7kHg==
X-Received: by 10.194.248.165 with SMTP id yn5mr35862504wjc.97.1445261999205;
        Mon, 19 Oct 2015 06:39:59 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id bk4sm40256160wjc.1.2015.10.19.06.39.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 06:39:58 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH v2] staging: panel: Do not use multiple blank lines.
Date: Mon, 19 Oct 2015 16:39:43 +0300
Message-Id: <1445261983-9272-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
Changes since v1:
* added kernel part information
---
 drivers/staging/panel/panel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 498d623..a10557c 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -576,7 +576,6 @@ static int keypad_enabled = NOT_SET;
 module_param(keypad_enabled, int, 0000);
 MODULE_PARM_DESC(keypad_enabled, "Deprecated option, use keypad_type instead");
 
-
 static const unsigned char *lcd_char_conv;
 
 /* for some LCD drivers (ks0074) we need a charset conversion table. */
-- 
1.9.1


