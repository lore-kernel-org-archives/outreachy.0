X-GM-THRID: 6393330913423392768
X-Received: by 10.157.43.121 with SMTP id f54mr1539526otd.134.1488563356301;
        Fri, 03 Mar 2017 09:49:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls3010736iom.11.gmail; Fri, 03 Mar
 2017 09:49:15 -0800 (PST)
X-Received: by 10.107.9.19 with SMTP id j19mr1556706ioi.5.1488563355552;
        Fri, 03 Mar 2017 09:49:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si169172pfa.4.2017.03.03.09.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:49:15 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e66so4815958pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=EBwBmrGoMPCUYfA3Uk8kL+2nuffCfBDNdhF0R6RM6eaWrZqe9Tnql5oNByPCt76wZx
         yAcEPmNYwliNi8pFpBdaq4I7rNtxSi34jLLkxnBvtAHEULHO7zqSk5XZfcFD3TN6+YYM
         twMlA+Q8WhZPiA5274VaJJKd+mDU6Oin5M7bk+ptjFbJS6cAEQamuJg0N0ShmfnzQLvW
         m5vAI2hAnwR0kOaFgT/4avhU9vehQxhTC3KCcXR0oNxi3gX3VCjSQVdr5NrWq0LAW3l1
         4cOVBtYJlqbkVjgx3oyq8PZkBv79rFvGqg7fKJTtAS+cu3q3gS2PHIdzeV3KTApxuvMY
         iJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KtIwk4uq3SEICXanWiMKAGDXPoSN78M1q78Os+Z/V5A=;
        b=MZC9ThBz4xflPz4EmuhOvZmqh+JVM2km1VQYvrLxjokniVNuR0nSFZmOaZeaGG1Fib
         fLQ36DxDlwl8ozVdIv88bLqK46KPc0ZxldH2B9pNVChBsFixGNNwboC5jtCk6KSJDx68
         KSd0vxK0ZivVmkg03sYjB6MZPII+4PIMPFR3TfZL8l18cwGjyJKtqjmKyCIMf3reoEod
         Iy+Qpk/l4vFBzHDXvM8FW9Bj2aUnc/HJGM/SXIODSZK+cDucWssiqPn9rmKKDImVoWzZ
         +fQaeI510oFkpVEOeZMQcUr8zVTsFeemIn9zscikuEodSB9EZ8Q6gAUc+5BwrO3e76y7
         n4AQ==
X-Gm-Message-State: AMke39m8AeKMzcFn6topVQBlT9dNN801jVTy7w+IqT00ZMTV6C3NqM0wdl0m442ArQRQ4Q==
X-Received: by 10.99.137.66 with SMTP id v63mr4733085pgd.207.1488563355345;
        Fri, 03 Mar 2017 09:49:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w14sm11838616pgo.37.2017.03.03.09.49.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:49:14 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/5] staging: nvec: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 23:19:00 +0530
Message-Id: <1488563344-31032-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>
References: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:

@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/nvec/nvec_kbd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec_kbd.c b/drivers/staging/nvec/nvec_kbd.c
index e881e6b..a01f486 100644
--- a/drivers/staging/nvec/nvec_kbd.c
+++ b/drivers/staging/nvec/nvec_kbd.c
@@ -58,7 +58,7 @@ static int nvec_keys_notifier(struct notifier_block *nb,
 			      unsigned long event_type, void *data)
 {
 	int code, state;
-	unsigned char *msg = (unsigned char *)data;
+	unsigned char *msg = data;
 
 	if (event_type == NVEC_KB_EVT) {
 		int _size = (msg[0] & (3 << 5)) >> 5;
-- 
2.7.4


