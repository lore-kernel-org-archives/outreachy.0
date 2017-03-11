X-GM-THRID: 6396341070428372992
X-Received: by 10.129.32.68 with SMTP id g65mr10697970ywg.154.1489264208981;
        Sat, 11 Mar 2017 12:30:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls5630352ota.27.gmail; Sat, 11 Mar
 2017 12:30:08 -0800 (PST)
X-Received: by 10.157.35.90 with SMTP id k26mr11143116otd.92.1489264208595;
        Sat, 11 Mar 2017 12:30:08 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si2001797pfb.0.2017.03.11.12.30.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:30:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so14637925pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 12:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pkHIlw/12cDeormKZfESl6hd7icd5+9wkE2xxOPz7RQ=;
        b=r3tC0/Nb9VB/MeCDkiyPpAE8VVwXFD+CBhU5FUTf1bEAvhCemW3NWJfN5Dcic3VL6y
         HIRF7UBbua8q1a1stA5gy523jgAhRienedze7barBtbyiNrmLy5U6NVm6qxUDBj4m2Sk
         qJRNKWolZ8hSbtiq8CqcE/PzEgsPujdX84wOz8hLZWYPBc2wnOw6FzhzOyrK9vNMZf/f
         iTm1FHJ5cN5Or9t1sxq9w7MB/m3K0JkSOrFo9XacjceuUcoVbKOfHqUOGW7GG8xY3hKU
         /8v6VK6W3yQYtZU9KNhYNRRr7VZPh2rckRQz843F1tV8zj//qVnXJyHqt2NZj62v4Umg
         SxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pkHIlw/12cDeormKZfESl6hd7icd5+9wkE2xxOPz7RQ=;
        b=jUIcdsACDAl1ZcBiwBOkY5PLt1jziyBOyDEPtXVgvN4J2I/uesNkgG0zATaW1yL1p0
         pWz2F2etb3ihWF478TZiwqaFac1jg+pjfBYpYD3Nz8XmOG8mw0KpO+b3zpgkXYpoaQXs
         aZCq41dfqLYBQaXPi+EpB9YK9GtMPJ3rTL/wG81Jo044S2NrUtj1j/QnxG7XNhBt20sV
         Ms4H54wlM3wU0CLDlxyv6Ow6hbb/MuxCEzvRuzC3FBIs/u46bwaG4u31SZzQZS+REk6D
         FPKu5+KiX3YnuWIp35X14glXW1WteIYtKiQLQWS/bat2vM1Cs+augLVCiXsS8zn22YLO
         VqGg==
X-Gm-Message-State: AMke39nUbMD+NUF7HZ5/mq3roAUZwsRW+5cl6Fqlmk+vApuX9j94hpo3/aY7NzuNTUx2OQ==
X-Received: by 10.84.225.146 with SMTP id u18mr35981676plj.157.1489264208340;
        Sat, 11 Mar 2017 12:30:08 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y184sm25758499pgd.45.2017.03.11.12.30.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 12:30:07 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Use macro DIV_ROUND_UP
Date: Sun, 12 Mar 2017 01:57:43 +0530
Message-Id: <1489264063-3553-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations.
Coccinelle script:

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

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
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
index a5ba663..8c65f5b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1569,7 +1569,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
 	offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
 	end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
 
-	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
+	num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
 
 	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
 	if (pages == NULL) {
-- 
2.7.4


