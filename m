X-GM-THRID: 6389635523984490496
X-Received: by 10.36.29.80 with SMTP id 77mr11101067itj.18.1487702951837;
        Tue, 21 Feb 2017 10:49:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.115 with SMTP id p48ls10264022otd.37.gmail; Tue, 21 Feb
 2017 10:49:11 -0800 (PST)
X-Received: by 10.129.57.66 with SMTP id g63mr9693496ywa.77.1487702951528;
        Tue, 21 Feb 2017 10:49:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si3181079pfk.5.2017.02.21.10.49.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:49:11 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id z128so765513pgb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yjnr8gcBnxMvYI+welLUTIwB8N6XX3aECst+zPwiGIA=;
        b=jKkVJL1mjF1MjFUrqkiKNLxa6GBlpa/th3Aqfggtsp7O/9ig9p+/3VW/gBX5a189KZ
         xg4YT+wf88Pj0FsgQlBLVwpBdrccfgkO3zeOMfaCObV1k+GyhG4WZfaY9FJ79Stqky8N
         +pcKHmxn2bpeT6tYepRUHRkLtV8v5pktgtLhjUnYeMvZG7kQPzfyaLfqD83PoH9HeYQY
         bIupRJYLmVwt/0m008tw52bGDandgjoS8PG4JYoExb3j54hAQD6TBd22h0nJmBbS6B06
         x28f//V1VxF7Zbre9E5IZ5cC7r+OIhtkLky611avT4h+pVieh2u99eB8zAMhqkDkNfW7
         2HOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yjnr8gcBnxMvYI+welLUTIwB8N6XX3aECst+zPwiGIA=;
        b=ke2eDb7y8f4M3en6I9lb8tufK2LygUIAOOBIt8Pgd1BtYeLRjkXGoE+C1s0FVvUJJr
         cenQoNMZ5Pw8TXEANb/isBf9AN9zmiq0rVUdkNCftdezCpIzPnH1wsbf2wcGbrCYn0ZA
         1stVygn+u9BXFWkWKoW3z4eQsKo6g9agjNSF/2A7I7dqUKwEi614AoW3giJN/FqqgJDu
         PtJX5ECpL1t67OyjxIuhL81ctsnmxuNuZFXrrtoncVOif/Od30PY5s/hJjtO7qjBtOAS
         u0Nt3SQ2QcgX4ix0KzNZfOG1Fswt0Uu7Qgz24U7vbdZZl/NovSufACYD/dqhH5ayFZBT
         HL3w==
X-Gm-Message-State: AMke39kYc6qqxT8PrSvt4YAeQg+QPMX7PJ6N/X45FCA7DVF1dQVsEWoF5bbM8sN+u1vziw==
X-Received: by 10.84.128.33 with SMTP id 30mr42169121pla.128.1487702951284;
        Tue, 21 Feb 2017 10:49:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u29sm42436001pfl.17.2017.02.21.10.49.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 10:49:10 -0800 (PST)
Date: Wed, 22 Feb 2017 00:21:03 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: vc04_services: Using macro DIV_ROUND_UP
Message-ID: <20170221185103.GA20437@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations. This occurence was detected using
the coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 2 +-
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index e6241fb..e09731e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -400,7 +400,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type,
 	dma_addr_t dma_addr;
 
 	offset = ((unsigned int)(unsigned long)buf & (PAGE_SIZE - 1));
-	num_pages = (count + offset + PAGE_SIZE - 1) / PAGE_SIZE;
+	num_pages = DIV_ROUND_UP(count + offset, PAGE_SIZE);
 
 	pagelist_size = sizeof(PAGELIST_T) +
 			(num_pages * sizeof(u32)) +
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 0525211..d0938de 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1557,7 +1557,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
 	offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
 	end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
 
-	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
+	num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
 
 	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
 	if (pages == NULL) {
-- 
2.7.4


