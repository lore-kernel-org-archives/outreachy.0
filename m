X-GM-THRID: 6523310311652458496
X-Received: by 10.28.21.129 with SMTP id 123mr130040wmv.2.1518826538978;
        Fri, 16 Feb 2018 16:15:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.21 with SMTP id n21ls544827wmg.0.canary-gmail; Fri, 16
 Feb 2018 16:15:38 -0800 (PST)
X-Google-Smtp-Source: AH8x227N/O5RuJaTwOUwlPPQDTwgeKvx5lZXXkr4j91W/ljXZuJ+VnuhEcGP5SoarlaL+S3WYu4D
X-Received: by 10.28.129.195 with SMTP id c186mr1533253wmd.10.1518826538069;
        Fri, 16 Feb 2018 16:15:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518826538; cv=none;
        d=google.com; s=arc-20160816;
        b=pZONbGRqKs1TNkGLGv9MDJaH04FjSTlvcRcsi8g99+wYKOgT7No4dlOsn/D+rObTF0
         ylGWEfCXzYED5QtLVyz+A00NHTx0r6FyS6Jns1ULjJyF0S6al0vAHrQ4ecjA/E+xfqj7
         AWOYdGWp47MgCV7/sHqHLn3NdiYHXj8cqchh2hPC6GEX4OLi1xiSVmMPSzMXXerDQJBR
         Gzb5w+9uS+AbzAH3JXEr5h+VOS3C2yLyqQdN3qCXug4tI7LEhJTZ0GykVb7nCF0RIY6J
         Fzx6s9hBjFKVgtAHZKTuxgRADnsBbhNTf9Mys8KtvpKN+zEvHFUGY6f7jlnI/k6z+XCW
         peag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ZB5/cKJrmsFnC/E2nqfLcQfFapdi9icNMvmOK0D0/Lc=;
        b=qj1t7hf26WQQA/iqZVwuw+8J6a/KFvNldrGSp3pMnVmoHJPSITqjG3rW/zIKqUv1Pn
         R0KG6MkYgdG68DEbSpKgWx/8Gi0qGtd/0jmhHKtU70DQaaBwGWAwfqmlAl1y9Mv70Kja
         nAREzXED9UgZ0blvqaA+M9dY33pWM/Ndy2qU7At991XGV96Db9+ioNqDvP9MP2/Yj0VK
         IyGkGiGLWlP4XGUKnYz0Fn9ywFSBLajT6+cyKPZ7HaGU01t4cvqOGB6sX+9gwdE1vkar
         hvAKCagWQgOGBPLRjkUetg6KcBBkJeJmqbyU3RDk2f+3H8ccKiBa92Moz5Z0L2UQ0wGk
         nkxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gqf3zOU8;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::22d as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x22d.google.com (mail-wr0-x22d.google.com. [2a00:1450:400c:c0c::22d])
        by gmr-mx.google.com with ESMTPS id q6si1070807wrc.4.2018.02.16.16.15.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 16:15:38 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::22d as permitted sender) client-ip=2a00:1450:400c:c0c::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gqf3zOU8;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::22d as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22d.google.com with SMTP id b52so4442195wrd.10
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Feb 2018 16:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZB5/cKJrmsFnC/E2nqfLcQfFapdi9icNMvmOK0D0/Lc=;
        b=Gqf3zOU8RBfzaeTy+uJvxEvA3ogBiUvzrMjIaiQdxucineBg3JqBG8R+BtJxaw7Hmx
         f46WJgWieoMMGJWH1dWYSq/88AR24M2LALbPDexwLCboTEVO4qsBIPLE9YaCJ2bfMo2B
         TFyYObBEMwuvedZ41qcmg6/TDsbo7Ed4VazkP2y9ZNxVDkhNbGpHSZeNjUsfz1MDsu8q
         Q0LMgt7lV3zR8tLe/bwHxvKFPyqXha7aFLKovXfcB5qD/rlLznDE4OmeKk/yYIv0QJYQ
         FfQfbFd2FweSuHiNHJlWrCoIAPlYZql/mFnOwuvQmh+AeYmLLPm0AjCVMQIg/QVUOEP7
         9Fvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZB5/cKJrmsFnC/E2nqfLcQfFapdi9icNMvmOK0D0/Lc=;
        b=dpNb3NENfe0gHIeSC1ENOca/Wa0FZmqB5Emsz9+BxRxpBLfcVwNoPNkIqoGJUb7RMl
         m9n02IdrjUH1om6v9S17mxhjB2KNVxLn1fpdR3inQLxUu3BFVgo9t3l6/pHZ35V7U5VH
         NM60wLJV3rCDRa7TTuQRdJN+3urbrKGNE+3W1GkervRR8yHn85sOCZc4wn91/0uOjEO3
         GuirXcG+tWmsVJRcA0YjX9TOSvLl7OQkuWMkCuj0uYawv/Jt3UgDgLgAjII9URLVG8D2
         JEaIO8H7PHZ5EFOxIfJJriQsKuJYF0N9ktiDBWmVZVaWZDIkRJkLIqnUWhHPmugz8+VR
         kpaA==
X-Gm-Message-State: APf1xPAU8b7Dvfxn+fN4YkNeGarStLHiVDbbwCrUsngxDoO2MHXEPvzC
	O7vyVHKwi4+QdYsDjo3A9kXR5uByY4c=
X-Received: by 10.223.153.23 with SMTP id x23mr6866017wrb.134.1518826537677;
        Fri, 16 Feb 2018 16:15:37 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id b30sm14388087wra.34.2018.02.16.16.15.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 16 Feb 2018 16:15:36 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH] staging: comedi: Fix dereference warning style
Date: Sat, 17 Feb 2018 01:14:46 +0100
Message-Id: <20180217001446.6261-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

This patch fixes the checkpatch.pl warning:

WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'
\#1494: FILE: drivers/staging/comedi/drivers/cb_pcidas64.c:1494:
+                                                  &devpriv->
+                                                  ao_buffer_bus_addr[i],

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index b657beedd5ff..eea44435a2aa 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
 			devpriv->ao_buffer[i] =
 				dma_alloc_coherent(&pcidev->dev,
 						   DMA_BUFFER_SIZE,
-						   &devpriv->
-						   ao_buffer_bus_addr[i],
+						   &devpriv->ao_buffer_bus_addr[i],
 						   GFP_KERNEL);
 			if (!devpriv->ao_buffer[i])
 				return -ENOMEM;
-- 
2.14.3


