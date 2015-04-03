X-GM-THRID: 10800857088000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0b5b091b94f8408
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.118.201 with SMTP id ko9mr1344036obb.12.1428043201173;
        Thu, 02 Apr 2015 23:40:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.68 with SMTP id h62ls1041188qge.92.gmail; Thu, 02 Apr
 2015 23:40:00 -0700 (PDT)
X-Received: by 10.236.231.138 with SMTP id l10mr1322274yhq.32.1428043200910;
        Thu, 02 Apr 2015 23:40:00 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id iw3si849539pbd.1.2015.04.02.23.40.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 23:40:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id lf10so21688312pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 23:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EA/bJUhn4Lg8kekE83BHJ8DOVWghwwDrXkWGrgQz4as=;
        b=eWd0IFsvkcMc5yQ7Gcn/b6N+zKGcoZuxmPQKjZA/xC07/ZaXbX0WrtW4ThBDuv+Eif
         xYgFS0P7PZWz7XLT+ReTP1vbk3xkfNGqvE0T5PtscgUW9M24f3ydO1QSbrBGpKm2lcP6
         CLBmzmd5NX6wGefoTj6VhW08zNkE8wY+XviG9tl0VO2GCdH3xpMS/T8AlQ9nQcStajsn
         zS90M3Vx53foNwEv6oM3/YLuK2OzohmALWtrJh2ABX+X49CMp8gk6/Gn21r9+10hz2P7
         nSPxSAMSQAyPjA623HfF9fGROiONeToZfsuVdYTUDeJoThDTs0bhzcHfyazKSBXzElVY
         LtYQ==
X-Received: by 10.66.141.171 with SMTP id rp11mr678914pab.44.1428043200773;
        Thu, 02 Apr 2015 23:40:00 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from localhost.localdomain ([2001:250:4402:228:41ef:f14b:af05:6ee8])
        by mx.google.com with ESMTPSA id b9sm7092496pas.40.2015.04.02.23.39.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Apr 2015 23:39:59 -0700 (PDT)
From: Charlie WONG Super <1213charlie@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Charlie Wong Super <1213charlie@gmail.com>
Subject: [PATCH v2] staging: fbtft: Replace spaces to tab
Date: Fri,  3 Apr 2015 14:39:26 +0800
Message-Id: <1428043166-5759-1-git-send-email-1213charlie@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.02.1504030746190.2011@localhost6.localdomain6>
References: <alpine.DEB.2.02.1504030746190.2011@localhost6.localdomain6>

From: Charlie Wong Super <1213charlie@gmail.com>

Spaces at the start of the line, replace the leading space to tabs

Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
---
Changes in v2:
	- After GAMMA, use space to keep aligning with the next line
	  replace former tab(former version use a tap)

 drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
index 9d87430..f652243 100644
--- a/drivers/staging/fbtft/fb_st7735r.c
+++ b/drivers/staging/fbtft/fb_st7735r.c
@@ -25,8 +25,8 @@
 #include "fbtft.h"
 
 #define DRVNAME "fb_st7735r"
-#define DEFAULT_GAMMA "0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
-                      "0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
+#define DEFAULT_GAMMA   "0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
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


