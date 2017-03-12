X-GM-THRID: 6395785103347286016
X-Received: by 10.157.1.33 with SMTP id 30mr13145404otu.101.1489334157935;
        Sun, 12 Mar 2017 08:55:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.2 with SMTP id a2ls1090332itc.15.canary-gmail; Sun, 12
 Mar 2017 08:55:56 -0700 (PDT)
X-Received: by 10.99.123.7 with SMTP id w7mr13139866pgc.133.1489334156792;
        Sun, 12 Mar 2017 08:55:56 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si2738573pfd.3.2017.03.12.08.55.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:55:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so11068504pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 08:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=W9hYw6uQvwgtUK2JGBAT7ELmrSl/Q3jxFlCQ3lPe3Hs=;
        b=ONEXyiU8VbZHXtygWclEMl9my1ir6SzfTOtWvYrKJPOsaBHC+JH4HcSLTGLNf01NRj
         USg+Xvu2l8LLszHKpBKvnABZS1ntLq+LRtL3ffuJYMtDQ4SqKsphijF9gab2GLWmjgKK
         Ch2rHrr6erSB5elUpkM4DmUKagQR11I3NCcFt5+0WyvPmOyTUmzK4xewv9KltUPerNg0
         SXXJRu1w0e6e0EjNgA+Jb1wEb/7PfoNF+BABNbF9FQEWELHadyWDJ537Tnz+uVyOMSRh
         8R5thZYs9SSOMFDXFgSLYhjZtRu2e2zGmgXlomKR5mE2s4Qd1LC6NSfNAuuEJbgUwrkW
         YSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=W9hYw6uQvwgtUK2JGBAT7ELmrSl/Q3jxFlCQ3lPe3Hs=;
        b=q6R5FvEMEAl7lgnYmuJP4BuF2ckYbJayb3k0Zu9YnWUPEENw+TqPoOp1hmhLN2a6/b
         7CO1PH680Hwv2gHDg0mhf6HODC2mCKb+P35aERAQO3sCt4Zpcv4CA+HtVGcCFxk69CCt
         UVu/HU3E+6OTnqfw9QKk7qLqIlYVy8uvs3qvtqTziKvX6Gwh3bLoSMpzxRmpK/S4uCAN
         5T8WfVGQpBsLKJk7XPVvFDImanaaH+DsiBlfpzuMs0U5C0K4mmr+1IlnakXcJHTtYXv8
         V40ysyUeVDKFxlKA79ZDQ69yYALr35v7iV8kQB1odaNAe5egS01p6SZ77zr49FkV9IhX
         lJSQ==
X-Gm-Message-State: AMke39mRJfRol8BmyMSkEVjebn9nYByt1OcGz1iPSQCQjdImcD9O8Ua453DxSJ1/7mlIUg==
X-Received: by 10.84.233.194 with SMTP id m2mr41584517pln.126.1489334156540;
        Sun, 12 Mar 2017 08:55:56 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.206.12])
        by smtp.gmail.com with ESMTPSA id l188sm28997110pfl.28.2017.03.12.08.55.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 08:55:56 -0700 (PDT)
Date: Sun, 12 Mar 2017 21:25:20 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: media: mt9m114: Use true/false instead of 1/0
 for bool initialisations
Message-ID: <20170312155520.GA2739@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Bool initializations should use true and false instead of 1 and 0.
Detected by coccinelle/misc/boolinit.cocci.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Merge 2 patches with identical subject into one patch

 drivers/staging/media/atomisp/i2c/mt9m114.c | 4 ++--
 drivers/staging/media/atomisp/i2c/mt9m114.h | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 1b79cdb..60ba6f9 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
@@ -926,10 +926,10 @@ static int mt9m114_set_fmt(struct v4l2_subdev *sd,
 		for (index = 0; index < N_RES; index++) {
 			if ((width == mt9m114_res[index].width) &&
 			    (height == mt9m114_res[index].height)) {
-				mt9m114_res[index].used = 1;
+				mt9m114_res[index].used = true;
 				continue;
 			}
-			mt9m114_res[index].used = 0;
+			mt9m114_res[index].used = false;
 		}
 	}
 	ret = mt9m114_get_intg_factor(c, mt9m114_info,
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.h b/drivers/staging/media/atomisp/i2c/mt9m114.h
index a66cbfd..5e7d79d 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.h
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.h
@@ -349,7 +349,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height = 736,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
@@ -365,7 +365,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height = 864,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
@@ -381,7 +381,7 @@ static struct mt9m114_res_struct mt9m114_res[] = {
 	.width	= 1296,
 	.height	= 976,
 	.fps	= 30,
-	.used	= 0,
+	.used	= false,
 	.regs	= NULL,
 	.skip_frames = 1,
 
-- 
2.7.4


