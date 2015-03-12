X-GM-THRID: 7714883239936
X-Received: by 10.152.19.67 with SMTP id c3mr5369075lae.7.1426190354425;
        Thu, 12 Mar 2015 12:59:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.38 with SMTP id p6ls282424lap.17.gmail; Thu, 12 Mar 2015
 12:59:13 -0700 (PDT)
X-Received: by 10.112.9.65 with SMTP id x1mr6775385lba.16.1426190353960;
        Thu, 12 Mar 2015 12:59:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id bz6si977689wib.3.2015.03.12.12.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so18737529wgg.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EuNzQPddX4HPPOqNRi7sKsls31FYcgjS9nKRuStMt3k=;
        b=zXMwO5AgR/YKde5CYuJJnyL4Tty3HegZWqrT8NyT/BCcJ4MHI1ndLbshk+eDeYNVK5
         5oRpPAahAzmkuYt5qJnHt0kQ0kckXqabJNPe67aVYDgQtmlvX0iocC7qDzWlZ5IxcuGe
         YCRox3OKCF49QpfF6h5MBdgRhsIjUulQfMzfR3amlBh4zq+4QBV8qM7pNIbLjS+lygIz
         YBpTxjKSOTK7eMIHH48g3S/baDxCE6WU+O5f0EiDquhgWsCDZ5aSY9atDTYUV7gbaKtd
         W7vB2kYoY7a0uZ4+4yehXltXA4UeP4n7CbQrfOGXD3zaYp0hdXtvCV4v/w8Gn5KidFNK
         uBjw==
X-Received: by 10.180.207.200 with SMTP id ly8mr7870012wic.58.1426190353873;
        Thu, 12 Mar 2015 12:59:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.12
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:13 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 4/9] staging: sm750: Remove space before semicolon
Date: Thu, 12 Mar 2015 21:58:48 +0200
Message-Id: <905ae4f9fdf9625205635b745ecc3d6a63179de5.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Remove space before semicolon as it is prohibited by the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
	- Remove typo from the patch description

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


