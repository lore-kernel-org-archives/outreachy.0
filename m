X-GM-THRID: 6212181078592978944
X-Received: by 10.112.142.37 with SMTP id rt5mr1091197lbb.1.1446386125382;
        Sun, 01 Nov 2015 05:55:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.129 with SMTP id 123ls438294wmx.15.gmail; Sun, 01 Nov
 2015 05:55:25 -0800 (PST)
X-Received: by 10.28.211.201 with SMTP id k192mr1372155wmg.3.1446386125018;
        Sun, 01 Nov 2015 05:55:25 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id l1si368581wmb.3.2015.11.01.05.55.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id p11so36655453wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LXEZAsOzaItFGJOiJkZag3zKIq3WNCkDsaYbrOxIKhc=;
        b=g/tAqX8pJk1UWK6m05p2CP3r4mSmPDMHMs12i1uL+3EORomi0w2Y7u1ZpiMYpnpRrl
         yWm6d/z9P75mGXmK+O+C1oK08vQ7OeI4keKn4X3T87gK4pM31TuAY1oAaRdUIGx3JQDT
         FqVO40F27PQGwSIivx0jo+r/B05tlg10xobUKD9r8cZYWbr8fuYp92ZLwHGdYCCgtFrG
         2uayc0JVn4euvaFtxIlToI2790LM3DTDXKjS8LDOMBUO2Dr++frm0EAj3WnHb9T2PhiK
         nRmbYFEzsNMKemr5idJA8gJFQoEDLY4aycq8BrR5P12aPLYDHQKfBNQb+aiHv+sEyeQt
         HcGg==
X-Received: by 10.194.142.166 with SMTP id rx6mr18497435wjb.54.1446386124944;
        Sun, 01 Nov 2015 05:55:24 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:24 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 4/5] staging: android: remove multiple blank lines
Date: Sun,  1 Nov 2015 15:55:10 +0200
Message-Id: <46f54c1733798bd0562957543d4a854aa021b194.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>

This patch removes multiple blank lines in order to follow
the linux kernel coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
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


