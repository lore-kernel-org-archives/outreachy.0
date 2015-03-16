X-GM-THRID: 8496708845568
X-Received: by 10.236.19.8 with SMTP id m8mr65860059yhm.53.1426514970121;
        Mon, 16 Mar 2015 07:09:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.241 with SMTP id a104ls2882456qgf.11.gmail; Mon, 16
 Mar 2015 07:09:29 -0700 (PDT)
X-Received: by 10.236.63.42 with SMTP id z30mr62740926yhc.37.1426514969946;
        Mon, 16 Mar 2015 07:09:29 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id l3si1951491pdo.0.2015.03.16.07.09.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:09:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id c3so59373908pdn.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EOoC19Shrtc39baQNB6h974rgvVnboC32kup0EEIHRM=;
        b=w54cjnA1H0gItRiyzaQjaQ4blXxS9S0Z/7Lcyhts94m5BAtAGwGLuexYYaPnVMRQW8
         EESLZfYrRkQWZTGyESKWnNBEr7pco8qQEsMYaeZ88QpLFvRijqkUirY4panqqRqYd2Zk
         gTmkI8hP0WHRUJPQ3jvLnIcVR4uoJ0u1cNTGp0DdDHvr9y3iAjwFEkxxbkLtWQl2SoEB
         utv//LGoE+AKFp7bio3Jp8riG6aVLFwaJZAtqL0f6N82D1YD7Mt1NNbTdjpM864RL/Mj
         tNnfznTjWRkAw2pHGxOuUgkamYOcuvWReY3XboShjfBAMJTz39G4tMSNX7/7irXA44OK
         lJHw==
X-Received: by 10.70.42.197 with SMTP id q5mr97731752pdl.115.1426514969846;
        Mon, 16 Mar 2015 07:09:29 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.84])
        by mx.google.com with ESMTPSA id i11sm17570578pdj.61.2015.03.16.07.09.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2015 07:09:29 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 3/5] Staging: goldfish: use !x instead of x == NULL
Date: Mon, 16 Mar 2015 19:34:09 +0530
Message-Id: <1426514651-2601-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426514651-2601-1-git-send-email-somyaanand214@gmail.com>
References: <1426514651-2601-1-git-send-email-somyaanand214@gmail.com>

Functions like devm_kzalloc, kmalloc_array, devm_ioremap,
usb_alloc_urb, alloc_netdev return NULL as a return value on failure.
Generally, When NULL represents failure, !x is commonly used.

This patch cleans up the tests on the results of these functions, thereby
using !x instead of x == NULL or NULL == x. This is done via following
coccinelle script:
@prob_7@
identifier x;
statement S;
@@

(
 x = devm_kzalloc(...);
|
 x = usb_alloc_urb(...);
|
 x = kmalloc_array(...);
|
 x = devm_ioremap(...);
|
 x = alloc_netdev(...);
)
 ...
- if(NULL == x)
+ if(!x)
        S
Further we have used isomorphism characteristics of coccinelle to
indicate x == NULL and NULL == x are equivalent. This is done via
following iso script.

Expression
@ is_null @ expression X; @@
X == NULL <=> NULL == X

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/goldfish/goldfish_audio.c | 2 +-
 drivers/staging/goldfish/goldfish_nand.c  | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index f200359..c9ee18b 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -273,7 +273,7 @@ static int goldfish_audio_probe(struct platform_device *pdev)
 	dma_addr_t buf_addr;
 
 	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
-	if (data == NULL)
+	if (!data)
 		return -ENOMEM;
 	spin_lock_init(&data->lock);
 	init_waitqueue_head(&data->wait);
diff --git a/drivers/staging/goldfish/goldfish_nand.c b/drivers/staging/goldfish/goldfish_nand.c
index d68f216..213877a 100644
--- a/drivers/staging/goldfish/goldfish_nand.c
+++ b/drivers/staging/goldfish/goldfish_nand.c
@@ -330,7 +330,7 @@ static int goldfish_nand_init_device(struct platform_device *pdev,
 	mtd->priv = nand;
 
 	name = devm_kzalloc(&pdev->dev, name_len + 1, GFP_KERNEL);
-	if (name == NULL)
+	if (!name)
 		return -ENOMEM;
 	mtd->name = name;
 
@@ -383,7 +383,7 @@ static int goldfish_nand_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	base = devm_ioremap(&pdev->dev, r->start, PAGE_SIZE);
-	if (base == NULL)
+	if (!base)
 		return -ENOMEM;
 
 	version = readl(base + NAND_VERSION);
@@ -399,7 +399,7 @@ static int goldfish_nand_probe(struct platform_device *pdev)
 
 	nand = devm_kzalloc(&pdev->dev, sizeof(*nand) +
 				sizeof(struct mtd_info) * num_dev, GFP_KERNEL);
-	if (nand == NULL)
+	if (!nand)
 		return -ENOMEM;
 
 	mutex_init(&nand->lock);
-- 
1.9.1


