X-GM-THRID: 6212181078592978944
X-Received: by 10.28.133.3 with SMTP id h3mr1401717wmd.0.1446388717557;
        Sun, 01 Nov 2015 06:38:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.6.145 with SMTP id 139ls441578wmg.53.gmail; Sun, 01 Nov
 2015 06:38:37 -0800 (PST)
X-Received: by 10.28.7.78 with SMTP id 75mr1395239wmh.6.1446388717185;
        Sun, 01 Nov 2015 06:38:37 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id s134si340421wmb.3.2015.11.01.06.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:38:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id g8so41224187wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=fZrYDMV3pI4sZTW+lHGY+HzZ4s60Zz4JXaHyr5YA/mM=;
        b=YhTXcx/BBZmyTmqD40KFW8vXSVniEJkGdx4enc3HWnQhv9NNtfAo+oCLccVPsGCmvR
         R8lv3gjgNBV+Y3Ch3OLrGu5bZX4v6fTgnZMjclRwhnAfHQG27lF/sBF9VIh8Wel3iHlR
         7zbssbGDHGGxoyj30zQHBJJUGnxwZ152txZcoGbEQulBekE719urjHFeZGErpxLrrt4a
         8XV61wRaWKwFgbhhWehYcU/11GLfLVdlJJes6mF111UxomhkL4RyfMdZ5eR23RFXN/yX
         tpKehSoxE5k5yw9RJC9TuPxqHrIJlWee64u7oi3SXS7A0Z7zUcTgkdvQtyivi+M1rAPo
         cBzg==
X-Received: by 10.28.178.210 with SMTP id b201mr8553622wmf.78.1446388717110;
        Sun, 01 Nov 2015 06:38:37 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id 199sm13077625wml.22.2015.11.01.06.38.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 06:38:36 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 5/5] staging: android: add comment to spinlock_t definition
Date: Sun,  1 Nov 2015 16:38:24 +0200
Message-Id: <91ba263d643d552220aa67b67045d5dee8fd06f8.1446388483.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>

Add comment to the spinlock_t fields of struct timed_gpio_data in
order to follow the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

 drivers/staging/android/timed_gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
index bcd9924..99f8473 100644
--- a/drivers/staging/android/timed_gpio.c
+++ b/drivers/staging/android/timed_gpio.c
@@ -28,7 +28,7 @@
 struct timed_gpio_data {
 	struct timed_output_dev dev;
 	struct hrtimer timer;
-	spinlock_t lock;
+	spinlock_t lock; /* protects the fields of timed_gpio_data */
 	unsigned gpio;
 	int max_timeout;
 	u8 active_low;
-- 
2.1.4


