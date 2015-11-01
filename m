X-GM-THRID: 6212181078592978944
X-Received: by 10.112.181.194 with SMTP id dy2mr2188728lbc.11.1446386122893;
        Sun, 01 Nov 2015 05:55:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.10.4 with SMTP id 4ls461466wmk.52.gmail; Sun, 01 Nov 2015
 05:55:22 -0800 (PST)
X-Received: by 10.28.138.83 with SMTP id m80mr1368772wmd.7.1446386122488;
        Sun, 01 Nov 2015 05:55:22 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id t2si360652wme.1.2015.11.01.05.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 05:55:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id g8so41806814wme.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 05:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=55jS2Q8Jq5z/3Wpgjlfdelah892UV1SbFpR1sF7kqxk=;
        b=Y45s7AqrA09bnOVOBV5ah5+EWm0uKrpK05bjlrNhOe02kqiSAeISe60BmT4qBwYcA1
         2OgT+7DgYlNVNeD+0mU1ejozyWNPKiPXZDZihKpC/z2ZoMp2QCZhKolbWxv5QRDEr2Bp
         euCvJGf3orLv9w1OjPH0MzPizrx5LzEXuKXnYt27yRfMO/ldhenhYeN9lCYeERjevB3/
         IRy7Sf85TWQkqFm21xCevvFvfmiWdBcOBD+m5qhXxkYqOZmTqJPtJKe1TjPwDdarAlzT
         v9lTHjtYiOlZMjEmAnZgfJO8ppvJ2rUxeY+LHMND0lAu4qXtpFC2+r93E27+SIF3HcwT
         SbEg==
X-Received: by 10.28.21.134 with SMTP id 128mr8379454wmv.29.1446386122400;
        Sun, 01 Nov 2015 05:55:22 -0800 (PST)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain ([141.85.114.141])
        by smtp.gmail.com with ESMTPSA id u126sm12968830wmd.3.2015.11.01.05.55.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Nov 2015 05:55:22 -0800 (PST)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arve@android.com,
	riandrews@android.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 2/5] staging: android: replace uint32_t with u32
Date: Sun,  1 Nov 2015 15:55:08 +0200
Message-Id: <10ceed38dfc65b3d44283fed6e2234a4170e1c6a.1446385932.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1446385932.git.ciorneiioana@gmail.com>
References: <cover.1446385932.git.ciorneiioana@gmail.com>

This patch makes use of the preferred kernel types such
as u16, u32.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/android/lowmemorykiller.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/lowmemorykiller.c b/drivers/staging/android/lowmemorykiller.c
index e679d84..de65db7 100644
--- a/drivers/staging/android/lowmemorykiller.c
+++ b/drivers/staging/android/lowmemorykiller.c
@@ -43,7 +43,7 @@
 #include <linux/profile.h>
 #include <linux/notifier.h>
 
-static uint32_t lowmem_debug_level = 1;
+static u32 lowmem_debug_level = 1;
 static short lowmem_adj[6] = {
 	0,
 	1,
-- 
2.1.4


