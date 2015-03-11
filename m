X-GM-THRID: 7583885688832
X-Received: by 10.152.8.73 with SMTP id p9mr739395laa.6.1426041324695;
        Tue, 10 Mar 2015 19:35:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.170 with SMTP id fp10ls200704wib.13.gmail; Tue, 10 Mar
 2015 19:35:24 -0700 (PDT)
X-Received: by 10.180.77.165 with SMTP id t5mr2161343wiw.0.1426041324327;
        Tue, 10 Mar 2015 19:35:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id gj20si1200973wic.1.2015.03.10.19.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 19:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so7950821wid.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 19:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=IAZFh28hSOjDGQCrbR+siH7aDgoPE7eiDKJVDM+zTQg=;
        b=a1QzD5xSQG2mP7qxHGOoUXqGcT/jZ7fvZ2gnNgA7TZIAUAVgToXkKR0PXzaj2QVyIG
         Y+ODquoa9CjIs66eMpe7HbcKfedH9rR23THymFy04hJSurV+cmCfF1ocvUctWOwja9lL
         /SF3eJ0/LDHomwwV/i2GgwiOUpYyeZCXOSCxj+g3V/rhWGIaIxLZkrayFV+1ZMG3r38I
         i/SupXVJB33jjKrlKvoJXrWbqkCKf+OU/fSVkJhgXZW3w+bGvwQjlsW2D3Yvc05cmh6e
         r1Ufxh6Ii7DWG+y0r2iIIn3MsjUR3yMkw33z3bz0FL9gTYKOJJZybDMSZ2slxgpNJdbU
         Qj9Q==
X-Received: by 10.194.61.12 with SMTP id l12mr73054191wjr.139.1426041324253;
        Tue, 10 Mar 2015 19:35:24 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3334305wjc.32.2015.03.10.19.35.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Mar 2015 19:35:23 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 1/7] staging: sm750: Fix switch-case indentation
Date: Wed, 11 Mar 2015 04:35:04 +0200
Message-Id: <95d463cf96c258ed3b5a657f60cfaf808f754503.1426039205.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426039205.git.ciorneiioana@gmail.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>

Remove switch cases indentation in order to follow the Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 158 ++++++++++++++++++++--------------------
 1 file changed, 79 insertions(+), 79 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 5b78843..d1e6004 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -393,41 +393,41 @@ static int lynxfb_ops_set_par(struct fb_info *info)
 	 * */
 
 	switch(var->bits_per_pixel){
-		case 8:
-			fix->visual = FB_VISUAL_PSEUDOCOLOR;
-			var->red.offset = 0;
-			var->red.length = 8;
-			var->green.offset = 0;
-			var->green.length = 8;
-			var->blue.offset = 0;
-			var->blue.length = 8;
-			var->transp.length = 0;
-			var->transp.offset = 0;
-			break;
-		case 16:
-			var->red.offset = 11;
-			var->red.length = 5;
-			var->green.offset = 5;
-			var->green.length = 6;
-			var->blue.offset = 0;
-			var->blue.length = 5;
-			var->transp.length = 0;
-			var->transp.offset = 0;
-			fix->visual = FB_VISUAL_TRUECOLOR;
-			break;
-		case 24:
-		case 32:
-			var->red.offset = 16;
-			var->red.length = 8;
-			var->green.offset = 8;
-			var->green.length = 8;
-			var->blue.offset = 0 ;
-			var->blue.length = 8;
-			fix->visual = FB_VISUAL_TRUECOLOR;
-			break;
-		default:
-			ret = -EINVAL;
-			break;
+	case 8:
+		fix->visual = FB_VISUAL_PSEUDOCOLOR;
+		var->red.offset = 0;
+		var->red.length = 8;
+		var->green.offset = 0;
+		var->green.length = 8;
+		var->blue.offset = 0;
+		var->blue.length = 8;
+		var->transp.length = 0;
+		var->transp.offset = 0;
+		break;
+	case 16:
+		var->red.offset = 11;
+		var->red.length = 5;
+		var->green.offset = 5;
+		var->green.length = 6;
+		var->blue.offset = 0;
+		var->blue.length = 5;
+		var->transp.length = 0;
+		var->transp.offset = 0;
+		fix->visual = FB_VISUAL_TRUECOLOR;
+		break;
+	case 24:
+	case 32:
+		var->red.offset = 16;
+		var->red.length = 8;
+		var->green.offset = 8;
+		var->green.length = 8;
+		var->blue.offset = 0 ;
+		var->blue.length = 8;
+		fix->visual = FB_VISUAL_TRUECOLOR;
+		break;
+	default:
+		ret = -EINVAL;
+		break;
 	}
 	var->height = var->width = -1;
 	var->accel_flags = 0;/*FB_ACCELF_TEXT;*/
@@ -602,53 +602,53 @@ static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,struct fb_info *in
 
 
 	switch(var->bits_per_pixel){
-		case 8:
-		case 16:
-		case 24: /* support 24 bpp for only lynx712/722/720 */
-		case 32:
-			break;
-		default:
-			pr_err("bpp %d not supported\n",var->bits_per_pixel);
-			ret = -EINVAL;
-			goto exit;
+	case 8:
+	case 16:
+	case 24: /* support 24 bpp for only lynx712/722/720 */
+	case 32:
+		break;
+	default:
+		pr_err("bpp %d not supported\n",var->bits_per_pixel);
+		ret = -EINVAL;
+		goto exit;
 	}
 
 	switch(var->bits_per_pixel){
-		case 8:
-			info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
-			var->red.offset = 0;
-			var->red.length = 8;
-			var->green.offset = 0;
-			var->green.length = 8;
-			var->blue.offset = 0;
-			var->blue.length = 8;
-			var->transp.length = 0;
-			var->transp.offset = 0;
-			break;
-		case 16:
-			var->red.offset = 11;
-			var->red.length = 5;
-			var->green.offset = 5;
-			var->green.length = 6;
-			var->blue.offset = 0;
-			var->blue.length = 5;
-			var->transp.length = 0;
-			var->transp.offset = 0;
-			info->fix.visual = FB_VISUAL_TRUECOLOR;
-			break;
-		case 24:
-		case 32:
-			var->red.offset = 16;
-			var->red.length = 8;
-			var->green.offset = 8;
-			var->green.length = 8;
-			var->blue.offset = 0 ;
-			var->blue.length = 8;
-			info->fix.visual = FB_VISUAL_TRUECOLOR;
-			break;
-		default:
-			ret = -EINVAL;
-			break;
+	case 8:
+		info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
+		var->red.offset = 0;
+		var->red.length = 8;
+		var->green.offset = 0;
+		var->green.length = 8;
+		var->blue.offset = 0;
+		var->blue.length = 8;
+		var->transp.length = 0;
+		var->transp.offset = 0;
+		break;
+	case 16:
+		var->red.offset = 11;
+		var->red.length = 5;
+		var->green.offset = 5;
+		var->green.length = 6;
+		var->blue.offset = 0;
+		var->blue.length = 5;
+		var->transp.length = 0;
+		var->transp.offset = 0;
+		info->fix.visual = FB_VISUAL_TRUECOLOR;
+		break;
+	case 24:
+	case 32:
+		var->red.offset = 16;
+		var->red.length = 8;
+		var->green.offset = 8;
+		var->green.length = 8;
+		var->blue.offset = 0 ;
+		var->blue.length = 8;
+		info->fix.visual = FB_VISUAL_TRUECOLOR;
+		break;
+	default:
+		ret = -EINVAL;
+		break;
 	}
 	var->height = var->width = -1;
 	var->accel_flags = 0;/*FB_ACCELF_TEXT;*/
-- 
1.9.1


