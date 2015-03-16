X-GM-THRID: 8496708845568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2bfe153fa2f5e7b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.251.231 with SMTP id zn7mr68006278obc.24.1426514979860;
        Mon, 16 Mar 2015 07:09:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.108 with SMTP id j12ls1002985igh.35.gmail; Mon, 16 Mar
 2015 07:09:39 -0700 (PDT)
X-Received: by 10.70.96.163 with SMTP id dt3mr59004165pdb.1.1426514979653;
        Mon, 16 Mar 2015 07:09:39 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id gb13si1915801pac.2.2015.03.16.07.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:09:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id we9so65967423pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CcTRPpwg8+cUL9kjec83pakL8iqRkNYgkESn+K/QOoI=;
        b=P/vYySPSLbP2vS9a+DTRiAOGPwzXp3EMITzCLe9Ry5yztkCKWWkd40ydVRPhkJg5aZ
         RSK1oCrDDEObqQPuxnoYNZQfhw1+9gNZuE2XXtOu5HEzFuIPBc7lpTvvpMQrkFAzzzIQ
         UgtXmY0C5WYGldbzc1HOx3BepArWo2Rxs0XUqGwXb05Va5IVa8XJsgn8tNxH+wTUhOY7
         JA1zzaeoj5hJOPQ+pDAA3zHU49l5vX0hAvSvGlOI78BLHVB+gpHC6Bsqqm0wgBNAsP3r
         aPapqFaqdT5QiCEt/myyf6na5TrK9my/K2b2+LA2cKBJ0IHBssMGKxMGP9TWs4EIPjqU
         lnPQ==
X-Received: by 10.70.134.102 with SMTP id pj6mr60095680pdb.95.1426514979588;
        Mon, 16 Mar 2015 07:09:39 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.84])
        by mx.google.com with ESMTPSA id i11sm17570578pdj.61.2015.03.16.07.09.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2015 07:09:38 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 5/5] Staging: nvec: use !x instead of x == NULL
Date: Mon, 16 Mar 2015 19:34:11 +0530
Message-Id: <1426514651-2601-5-git-send-email-somyaanand214@gmail.com>
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
 drivers/staging/nvec/nvec.c       | 2 +-
 drivers/staging/nvec/nvec_paz00.c | 2 +-
 drivers/staging/nvec/nvec_power.c | 2 +-
 drivers/staging/nvec/nvec_ps2.c   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 5868ebb..1bdc8d0 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -803,7 +803,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	}
 
 	nvec = devm_kzalloc(&pdev->dev, sizeof(struct nvec_chip), GFP_KERNEL);
-	if (nvec == NULL)
+	if (!nvec)
 		return -ENOMEM;
 
 	platform_set_drvdata(pdev, nvec);
diff --git a/drivers/staging/nvec/nvec_paz00.c b/drivers/staging/nvec/nvec_paz00.c
index f0cea0e..68146bf 100644
--- a/drivers/staging/nvec/nvec_paz00.c
+++ b/drivers/staging/nvec/nvec_paz00.c
@@ -51,7 +51,7 @@ static int nvec_paz00_probe(struct platform_device *pdev)
 	int ret = 0;
 
 	led = devm_kzalloc(&pdev->dev, sizeof(*led), GFP_KERNEL);
-	if (led == NULL)
+	if (!led)
 		return -ENOMEM;
 
 	led->cdev.max_brightness = NVEC_LED_MAX;
diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
index 6a1459d..3621b66 100644
--- a/drivers/staging/nvec/nvec_power.c
+++ b/drivers/staging/nvec/nvec_power.c
@@ -378,7 +378,7 @@ static int nvec_power_probe(struct platform_device *pdev)
 	struct nvec_chip *nvec = dev_get_drvdata(pdev->dev.parent);
 
 	power = devm_kzalloc(&pdev->dev, sizeof(struct nvec_power), GFP_NOWAIT);
-	if (power == NULL)
+	if (!power)
 		return -ENOMEM;
 
 	dev_set_drvdata(&pdev->dev, power);
diff --git a/drivers/staging/nvec/nvec_ps2.c b/drivers/staging/nvec/nvec_ps2.c
index 4fd63c2..6ebbc82 100644
--- a/drivers/staging/nvec/nvec_ps2.c
+++ b/drivers/staging/nvec/nvec_ps2.c
@@ -109,7 +109,7 @@ static int nvec_mouse_probe(struct platform_device *pdev)
 	char mouse_reset[] = { NVEC_PS2, SEND_COMMAND, PSMOUSE_RST, 3 };
 
 	ser_dev = devm_kzalloc(&pdev->dev, sizeof(struct serio), GFP_KERNEL);
-	if (ser_dev == NULL)
+	if (!ser_dev)
 		return -ENOMEM;
 
 	ser_dev->id.type = SERIO_PS_PSTHRU;
-- 
1.9.1


