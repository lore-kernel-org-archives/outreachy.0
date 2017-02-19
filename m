X-GM-THRID: 6388900397139886080
X-Received: by 10.129.89.5 with SMTP id n5mr6891421ywb.36.1487535665029;
        Sun, 19 Feb 2017 12:21:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.230 with SMTP id r35ls8368130otr.25.gmail; Sun, 19 Feb
 2017 12:21:04 -0800 (PST)
X-Received: by 10.237.63.20 with SMTP id p20mr4110407qtf.3.1487535664701;
        Sun, 19 Feb 2017 12:21:04 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si1836780pfe.1.2017.02.19.12.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:21:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v184so10166738pgv.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 12:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y5UK2aazNErNEDyQ3hVoa7AVyJIV4wWUFszSnP5fZm4=;
        b=NPXlkLbzUXYIU0BH/dQp03Sjf3bFf0G+TvbfzPy9K6OeAMpEaymCVJL5aqMtpJxyeq
         Ok4BwiLXKEnmz7aGjfftifmWc7jt7Hpvn0ysZNBt/5O3Aa3xfYX0RKolu485/9mENIgb
         BP48KnnLoelIwMUUwi7fcLUj/hTUZbbR/POKeZSpeg/W/In6POpdm08m0EWgXfZNhU8Q
         juH5vc7cWYM3QEz9S6bHbX3tEAV9CG/zo6ZP6E/su2dIW2mTKNKl2RfAPf7q+hJwPC7H
         SQWv0j5cjK2xUsE8+eG6yaahP6EwmD2PQLV6lTYdnHtMVvVa0xp2BnCqGAeAxtGNqm6A
         sZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y5UK2aazNErNEDyQ3hVoa7AVyJIV4wWUFszSnP5fZm4=;
        b=BdWNbF0adKlPY/U/HaCNJLsu7gBgPv1axlRd6b4JylpuXgvMqLprT5OrHk7W3NuDmm
         gFRh257I3Xz+LA3FbnSBcw9jdD0QKwFwII1uQFLt+sPI1kW103Dt/0o3gPJV/Hx3XqDn
         SaGkitO6Jt6LwxgGD6+L18YbbjLftwjcDlWVUoYbPez/Xg+sr3JlCP1kOvUcA4qosBwN
         rG56cfO8+UD1eIGD9WPWkgDevNH7UohO+zYp99hAqihu/vbOTsrMFtTE7WDcAbyR4E+G
         BY7Lgd4OoBcql+31kmnFiqAmpQyU5HJ9TZolLlO8CJ4YhkWK7bI+yp/MsDJFQ+uK9Fbu
         Scxg==
X-Gm-Message-State: AMke39kCa3hZnUHfhVWDMVz6VwyW/O/H5YVJcMKiEih+J/V6y/KENXuSEhIJdVKI4ZndMQ==
X-Received: by 10.98.99.69 with SMTP id x66mr11217725pfb.38.1487535664477;
        Sun, 19 Feb 2017 12:21:04 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id u24sm30800862pfi.25.2017.02.19.12.21.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 12:21:03 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: media: Remove ternary operator
Date: Mon, 20 Feb 2017 01:48:53 +0530
Message-Id: <1487535533-22366-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Relational and logical operators evaluate to either true or false.
Explicit conversion is not needed so remove the ternary operator.
Done using coccinelle:

@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/media/platform/bcm2835/controls.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/platform/bcm2835/controls.c b/drivers/staging/media/platform/bcm2835/controls.c
index a40987b..4d7e2a2 100644
--- a/drivers/staging/media/platform/bcm2835/controls.c
+++ b/drivers/staging/media/platform/bcm2835/controls.c
@@ -218,9 +218,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
 		dev->iso = iso_values[ctrl->val];
 	else if (ctrl->id == V4L2_CID_ISO_SENSITIVITY_AUTO)
 		dev->manual_iso_enabled =
-				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL ?
-							true :
-							false);
+				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL);
 
 	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
 
-- 
2.7.4


