X-GM-THRID: 6212181078592978944
X-Received: by 10.112.142.195 with SMTP id ry3mr3549114lbb.22.1446388716881;
        Sun, 01 Nov 2015 06:38:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.90 with SMTP id h87ls364194lfi.9.gmail; Sun, 01 Nov 2015
 06:38:36 -0800 (PST)
X-Received: by 10.112.138.66 with SMTP id qo2mr3536854lbb.2.1446388716406;
        Sun, 01 Nov 2015 06:38:36 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id 13si357807wml.2.2015.11.01.06.38.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:38:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x236.google.com with SMTP id l128so42475781wml.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YkPQ+602yTw2PY86owKfBi47sH7lBxICBtg0cLbq/Pk=;
        b=KUxf8ax5JHgeVLyD3jQwDfUsfllzcV4UTPCUqmd4J2Ds3o8wWaiOjjJpfdd7HkckAu
         UPLILlxMN5W7DypL+Rz1ZHV2usHihqJqeWcf/8L8+Nt1sadhWX9gtxY6Jki0CWVTzFWx
         JO3N2C4QgLCLoj0GL9Yh3UFd7ag5RH5TSjdYaHRg4AFcc/KCLpYm/X1V/s6eBHN8Vdan
         T5sJ4XdRLFEx22hVGZfuv9tzLg0WchTTGCZpxRfyE9y0bbhvug47oDeugxFH4FyLcpcH
         BH2XAWeLOJbqXva6Midytk7EdyYX5XoSnUgSnXE4mXydYgeK8MpNsX/JhLxLiQbveh9t
         S4XA==
X-Received: by 10.28.130.12 with SMTP id e12mr8728417wmd.76.1446388716323;
        Sun, 01 Nov 2015 06:38:36 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id 199sm13077625wml.22.2015.11.01.06.38.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 06:38:35 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 4/5] staging: android: remove multiple blank lines
Date: Sun,  1 Nov 2015 16:38:23 +0200
Message-Id: <e52c45fd81bf1f37fd16daa6dfddd8e9751b64e5.1446388483.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446388483.git.ciorneiioana@gmail.com>
References: <cover.1446388483.git.ciorneiioana@gmail.com>

This patch removes multiple blank lines in order to follow
the linux kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

 drivers/staging/android/timed_gpio.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
index 5246f42..bcd9924 100644
--- a/drivers/staging/android/timed_gpio.c
+++ b/drivers/staging/android/timed_gpio.c
@@ -25,7 +25,6 @@
 #include "timed_output.h"
 #include "timed_gpio.h"
 
-
 struct timed_gpio_data {
 	struct timed_output_dev dev;
 	struct hrtimer timer;
-- 
2.1.4


