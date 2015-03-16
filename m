X-GM-THRID: 8496708845568
X-Received: by 10.50.30.106 with SMTP id r10mr86996086igh.0.1426514955304;
        Mon, 16 Mar 2015 07:09:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.230 with SMTP id 93ls2704982qgj.75.gmail; Mon, 16 Mar
 2015 07:09:15 -0700 (PDT)
X-Received: by 10.236.104.134 with SMTP id i6mr63296691yhg.48.1426514955107;
        Mon, 16 Mar 2015 07:09:15 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id ni4si1916530pdb.2.2015.03.16.07.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id op1so59350032pdb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YYkCjGxw8W8WCZDb/b0FCnOMalV389VmyoExjBaOIWY=;
        b=UJGHFMpbuVugqub6IFSP4I/ghmmp2tHQM5QK/B7+8Upygmi7n32hb43wKNYolr4ADS
         0Lbp+50v3+GcSRSINqU7sCpD+WY3RKb2IBRfN37/k0EKtrWNs3sMedLhEnd3FAF4HVy1
         hnx2agPswazKIbLYygpLlDJcHPKVgDxtapsi0Pm9wmI8bVHA6O75Wenl7n0/x1TdsvDy
         IreLf3wavTTyqRU0ZklgWEpJyg9FIx0lvp431uMqWOfBAwjvKNJ87hbPxYOZgpuoP01v
         dz7qutEwNZpX/ii2WAlBxq6sVWCZwL4HwXiOXT7rogEKGaAD1aMYgZRXbGahJqop1CLP
         KuEw==
X-Received: by 10.70.55.36 with SMTP id o4mr4856774pdp.168.1426514954868;
        Mon, 16 Mar 2015 07:09:14 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.84])
        by mx.google.com with ESMTPSA id i11sm17570578pdj.61.2015.03.16.07.09.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2015 07:09:14 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/5] staging: gdm724x: use !x instead of x == NULL
Date: Mon, 16 Mar 2015 19:34:07 +0530
Message-Id: <1426514651-2601-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

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
 drivers/staging/gdm724x/gdm_lte.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 7c4a77b..a8d2cff 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -889,7 +889,7 @@ int register_lte_device(struct phy_dev *phy_dev,
 		/* Allocate netdev */
 		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
 				   NET_NAME_UNKNOWN, ether_setup);
-		if (net == NULL) {
+		if (!net) {
 			pr_err("alloc_netdev failed\n");
 			ret = -ENOMEM;
 			goto err;
-- 
1.9.1


