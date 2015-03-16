X-GM-THRID: 8496708845568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2bfe153fa2f5e7b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.125.100 with SMTP id mp4mr26252035obb.21.1426514963858;
        Mon, 16 Mar 2015 07:09:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.3 with SMTP id lo3ls959015igb.16.gmail; Mon, 16 Mar
 2015 07:09:23 -0700 (PDT)
X-Received: by 10.70.53.137 with SMTP id b9mr63343129pdp.4.1426514963543;
        Mon, 16 Mar 2015 07:09:23 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id gu4si1938849pac.1.2015.03.16.07.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yw6so65951366pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IcTSLve85HZn/e0aJW4J1/vmNy9tDcfbPHc9A8uIxJw=;
        b=EXRZXCHDxi0o3m7Mv59gLeX2rQ6a2AYbq0iF57UwxbvooHWRwMCU8y/mbekiQpSrpb
         6x2pV8Ncd8cwxDJsxRNj4O+398OOFXBSQ0lh1G0YaPec49Bua15ev9a4bT4oqQQgqOEH
         ob0TDGMLDXHpLFfcrJLWsdiA79MBMm1rGXQHO0YcEu5YepoB+njgbtm9q3R5AqHmLYU0
         TXnoHa5B6hpvwy3Rwme0D59myLlWSMwqyrJ7cgNXyW6ZH3IGscTJFva4bwnspOy1/l5n
         wAMQ4NTR3ZbU0/ZQxl268QwoSqEwZwf/+sCyp8XxxaGJj0jm8NegsItU7XUsDubQtpPf
         Sryg==
X-Received: by 10.66.63.106 with SMTP id f10mr138444491pas.0.1426514963479;
        Mon, 16 Mar 2015 07:09:23 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.84])
        by mx.google.com with ESMTPSA id i11sm17570578pdj.61.2015.03.16.07.09.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2015 07:09:22 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/5] Staging: gdm72xx: use !x instead of x == NULL
Date: Mon, 16 Mar 2015 19:34:08 +0530
Message-Id: <1426514651-2601-2-git-send-email-somyaanand214@gmail.com>
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
 drivers/staging/gdm72xx/gdm_wimax.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 9cab54b..cd79dcd 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -749,7 +749,7 @@ int register_wimax_device(struct phy_dev *phy_dev, struct device *pdev)
 	dev = alloc_netdev(sizeof(*nic), "wm%d", NET_NAME_UNKNOWN,
 			   ether_setup);
 
-	if (dev == NULL) {
+	if (!dev) {
 		pr_err("alloc_etherdev failed\n");
 		return -ENOMEM;
 	}
-- 
1.9.1


