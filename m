X-GM-THRID: 10800857088000
X-Received: by 10.42.76.145 with SMTP id e17mr1808234ick.34.1428039276008;
        Thu, 02 Apr 2015 22:34:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.232.138 with SMTP id to10ls438481obc.93.gmail; Thu, 02 Apr
 2015 22:34:35 -0700 (PDT)
X-Received: by 10.182.22.68 with SMTP id b4mr1055101obf.31.1428039275650;
        Thu, 02 Apr 2015 22:34:35 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pd0-x244.google.com (mail-pd0-x244.google.com. [2607:f8b0:400e:c02::244])
        by gmr-mx.google.com with ESMTPS id pc4si840532pac.0.2015.04.02.22.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 22:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c02::244 as permitted sender) client-ip=2607:f8b0:400e:c02::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c02::244 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x244.google.com with SMTP id p10so19226884pdj.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 22:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NsF/EgiBSBSvNwAEpqreSVctKRh1gHbxG6yxW76OzPA=;
        b=pzn8d0vyw7w69EIAWmSmVJGJlm6Bg72K6lLyfrktoq7D0LdpviF/v6WDwg3a6nGakZ
         gnNKLTld704YRX4iGHQGD0gSay4aRGSyCdAHwnhtu4I7gXPskyxRuhz0V8iXYKNtG8rx
         LVKqgDN7itXj+z004brKemDJGVDU0vo93ODuK4q4cL9xrGkzXiB1dhgd0jDVKdu5Srcu
         jkaubNWCOVy6ACLPMA30tWOVaN6a3ise94lOsK3ysWR/1j9gVHsuqwGBXoJjR7Y4Hxmm
         eWNZqkzV+Mw1ux2xhw+DRPyQoQMD5pYhAH6PE4cOKxXl6XqP3x5rC3C87c4Rsb3NKu63
         wX8g==
X-Received: by 10.70.140.195 with SMTP id ri3mr1511583pdb.30.1428039275532;
        Thu, 02 Apr 2015 22:34:35 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from localhost.localdomain ([2001:250:4402:228:41ef:f14b:af05:6ee8])
        by mx.google.com with ESMTPSA id qv9sm6903709pab.27.2015.04.02.22.34.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Apr 2015 22:34:34 -0700 (PDT)
From: Charlie WONG Super <1213charlie@gmail.com>
To: julia.lawall@lip6.fr,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Charlie Wong Super <1213charlie@gmail.com>
Subject: [PATCH] staging: fbtft: Replace spaces to tab
Date: Fri,  3 Apr 2015 13:33:19 +0800
Message-Id: <1428039199-4628-1-git-send-email-1213charlie@gmail.com>
X-Mailer: git-send-email 1.9.1

From: Charlie Wong Super <1213charlie@gmail.com>

Spaces at the start of the line, replace the leading space to tabs

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
---
 drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index 9d87430..8728347 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -25,8 +25,8 @@
 #include "fbtft.h"
 
 #define DRVNAME "fb_st7735r"
-#define DEFAULT_GAMMA "0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
-                      "0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
+#define DEFAULT_GAMMA	"0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
+			"0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
 
 
 static int default_init_sequence[] = {
@@ -119,9 +119,9 @@ static int set_var(struct fbtft_par *par)
 	/* MADCTL - Memory data access control
 	     RGB/BGR:
 	     1. Mode selection pin SRGB
-	        RGB H/W pin for color filter setting: 0=RGB, 1=BGR
+		RGB H/W pin for color filter setting: 0=RGB, 1=BGR
 	     2. MADCTL RGB bit
-	        RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
+		RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
 	switch (par->info->var.rotate) {
 	case 0:
 		write_reg(par, 0x36, MX | MY | (par->bgr << 3));
-- 
1.9.1


