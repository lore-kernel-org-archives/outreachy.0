X-GM-THRID: 7714883239936
X-Received: by 10.152.164.171 with SMTP id yr11mr2981183lab.4.1426123417513;
        Wed, 11 Mar 2015 18:23:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.131 with SMTP id k3ls231183lak.21.gmail; Wed, 11 Mar
 2015 18:23:36 -0700 (PDT)
X-Received: by 10.112.44.167 with SMTP id f7mr3407804lbm.9.1426123416882;
        Wed, 11 Mar 2015 18:23:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id sf8si421648wic.2.2015.03.11.18.23.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id p10so13010737wes.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/CWC7ZJPIWGCWOvwAB+kbOGopxoRCK8N6R09vhRuSAk=;
        b=xsEG7IUytktIxdYyV40083IE/9XgN6OLiqE8gWIFEHSb9e/6r+IMz8/lTn4OEuv07x
         2eAru/i1xQ4g7m6bWtyziuclZALWxufL5IR890mxMsAgTr+qIO91JOzQlifqXO9Eo9HZ
         +wPkeX8p6Dzpj9fY8ltMQOZMLllQmDbefJlvZ2eSq8Hw274Wn6TV3y8O5ktg1zx0EK1x
         eaQi/UylTqGf5tk9zm5SjOlWLtGS8hR96Xat3u95hzXjgs2VbpBEEcwE7d18uLKH2hEb
         oIhC9G3i7tdNdRui+KNZyMxBF3WDTnjeCeG83BVg8BzikCtLXfc5ZNThkE+7AiBXJGQ+
         HXbA==
X-Received: by 10.194.61.100 with SMTP id o4mr83170950wjr.28.1426123416806;
        Wed, 11 Mar 2015 18:23:36 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:35 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 4/9] staging: sm750: Remove space before semicolon
Date: Thu, 12 Mar 2015 03:23:09 +0200
Message-Id: <905ae4f9fdf9625205635b745ecc3d6a63179de5.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

Remove space before semicolon as it is prohibited by tghe Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 2eab4de..6ac572c 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -419,7 +419,7 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0 ;
+		var->blue.offset = 0;
 		var->blue.length = 8;
 		fix->visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -640,7 +640,7 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var, struct fb_info *i
 		var->red.length = 8;
 		var->green.offset = 8;
 		var->green.length = 8;
-		var->blue.offset = 0 ;
+		var->blue.offset = 0;
 		var->blue.length = 8;
 		info->fix.visual = FB_VISUAL_TRUECOLOR;
 		break;
@@ -1408,7 +1408,7 @@ static struct pci_driver lynxfb_driver = {
 
 static int __init lynxfb_init(void)
 {
-	char *option ;
+	char *option;
 	int ret;
 
 #ifdef MODULE
-- 
1.9.1


