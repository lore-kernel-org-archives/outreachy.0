X-GM-THRID: 6212181078592978944
X-Received: by 10.112.142.195 with SMTP id ry3mr3527724lbb.22.1446386126682;
        Sun, 01 Nov 2015 05:55:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.52.7 with SMTP id b7ls434589wma.20.canary; Sun, 01 Nov 2015
 05:55:26 -0800 (PST)
X-Received: by 10.28.55.135 with SMTP id e129mr1368483wma.7.1446386126290;
        Sun, 01 Nov 2015 05:55:26 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id s134si336594wmb.3.2015.11.01.05.55.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x232.google.com with SMTP id f134so41678981wmf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=r8UbqZT3jQj76TtZimMOgJL567EoRFU9FO7ON8PvYLY=;
        b=aF8Uazpnot43VSq85AjsG7yQ5tTP9IdivUY4TV2EAPQ7hWZjmPz5IeG1aRwK5sNa8W
         g9LV4QoF1BcfKgGTsu1fIFcII/nUPGZOm45Y/LVuaC1rkw2bN4mpHvd6dInVzioP5Dxu
         jH/HAkHOuIwwnXLPh+BA3Sd08ZPjAmua5IuK+sPeLV+YDmv8NWKbXPHmbXmvVRSPkJYx
         XHVTAvJBp0RLiT8esHeRgCq+KLjRk//xq+1BiDne4Wri7tsnZsMcabIWIL6F8KV9KqOO
         5O93pFYNdweHK7oreVX7JkyOmGsArfO5GgTgRNNvnoBdioEwZK0hRSxhJkMPHXBek7Bo
         UTTw==
X-Received: by 10.28.92.209 with SMTP id q200mr9004953wmb.52.1446386126219;
        Sun, 01 Nov 2015 05:55:26 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:25 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 5/5] staging: android: add comment to spinlock_t definition
Date: Sun,  1 Nov 2015 15:55:11 +0200
Message-Id: <1937706457a4c98273d6b63ea4c42633b606ab0b.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>

Add comment to the spinlock_t fields of struct timed_gpio_data in
order to follow the linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


