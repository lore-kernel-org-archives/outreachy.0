X-GM-THRID: 6206773156840996864
X-Received: by 10.180.106.197 with SMTP id gw5mr2991004wib.7.1445126989526;
        Sat, 17 Oct 2015 17:09:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.7 with SMTP id d7ls482947lfg.82.gmail; Sat, 17 Oct 2015
 17:09:48 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr5346262lbc.14.1445126988508;
        Sat, 17 Oct 2015 17:09:48 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id cm6si388626wib.1.2015.10.17.17.09.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 17:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id p11so53994638wij.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 17:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=g4bX+AwUGuucpGtex41yonL0q5djg70piXRbOTO33fc=;
        b=QhhOMM2ONsZbegbdXZ3hP3QMD/4fqdNITiZGYkVYhbp5D+7A/l9URRVGCA+PteFAKy
         PwAOlZgK3RdrhqxrjZvAN/US5PNk6kRbz/nq8SgkMg1m9sS4n0LDY+D+iGWFPE6mdOLl
         VCZt9dioPsK882Xz3n7YceBq7PpNLrfIaopfehzIBfaakOMoel6moo77B3VPMogE5844
         fZhA8FLfc4m8WKq1MMy9xEgN8s3gLe4kNGmfaxA4QE8s/8rB9rpQIrh1TupF31QKSEgf
         vAjh9OH5Z/Xd5C/N4kNw9l7KfSd5fUF/QEximo4RXP7wigVt+LuP80h/cGphbGRHGsc2
         pjpg==
X-Received: by 10.180.85.165 with SMTP id i5mr4372797wiz.79.1445126988404;
        Sat, 17 Oct 2015 17:09:48 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id fp4sm1508360wib.24.2015.10.17.17.09.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 17:09:47 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH]  Do not use multiple blank lines.
Date: Sun, 18 Oct 2015 03:08:01 +0300
Message-Id: <1445126881-27409-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
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


