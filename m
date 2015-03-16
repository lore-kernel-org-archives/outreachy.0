X-GM-THRID: 8496708845568
X-Received: by 10.53.9.103 with SMTP id dr7mr38778903vdd.5.1426514975073;
        Mon, 16 Mar 2015 07:09:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.69 with SMTP id qo5ls970503igb.3.gmail; Mon, 16 Mar
 2015 07:09:34 -0700 (PDT)
X-Received: by 10.66.157.194 with SMTP id wo2mr63539092pab.17.1426514974807;
        Mon, 16 Mar 2015 07:09:34 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id gb13si1914425pac.2.2015.03.16.07.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id cy3so65885129pad.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=w3O2RnPSToCcTaR1IH4GTjqcUizdPy5Pr/fNlVSrEZI=;
        b=a506UlCE44vSlHGmcWef37m70topKRfaAPhgt0teRktNoiL6kTaADn93Lsgv3XMcln
         bwJ2fZmEIPRNKOvfQs8aoEem65LpkQWO2FPhU0wHRJlansiU6wlKJlkvom8Dpu+R+3JW
         Bys0g6z3ALp2fRMfRBd3OndcS2EU/6xO3H5kkdr/6A7Dd8o4dyMvjHZPIV7ustB3m3Ns
         xqAZQRIaqAy5a3vOXqMHCKxTMkc9UrFdMoWuGM4noEz4c2+zbz4i+M0LhFo2ikwzmPDj
         exs60kTEE52KXvfzohoDja8/dnjwNWAAw0Pj/nRA0hxW/PkvhP6fUA9hZb+SR5gHjQny
         7RHA==
X-Received: by 10.70.10.3 with SMTP id e3mr138898434pdb.1.1426514974678;
        Mon, 16 Mar 2015 07:09:34 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([110.224.242.84])
        by mx.google.com with ESMTPSA id i11sm17570578pdj.61.2015.03.16.07.09.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Mar 2015 07:09:34 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 4/5] Staging: iio: use !x instead of x == NULL
Date: Mon, 16 Mar 2015 19:34:10 +0530
Message-Id: <1426514651-2601-4-git-send-email-somyaanand214@gmail.com>
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
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 2af8d67..3c1c8c6 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -183,7 +183,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 	int ret;
 
 	st = devm_kzalloc(&pdev->dev, sizeof(*st), GFP_KERNEL);
-	if (st == NULL)
+	if (!st)
 		return -ENOMEM;
 
 	st->irq = platform_get_irq(pdev, 0);
-- 
1.9.1


