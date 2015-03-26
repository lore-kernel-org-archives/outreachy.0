X-GM-THRID: 10002918014976
X-Received: by 10.236.207.230 with SMTP id n66mr16991735yho.30.1427389818057;
        Thu, 26 Mar 2015 10:10:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.3 with SMTP id q3ls543673obf.33.gmail; Thu, 26 Mar 2015
 10:10:17 -0700 (PDT)
X-Received: by 10.182.126.168 with SMTP id mz8mr17816523obb.9.1427389817803;
        Thu, 26 Mar 2015 10:10:17 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id e5si762666qcg.1.2015.03.26.10.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 10:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id p97so106868592qge.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 10:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=V1PKP2m5BZ4WRzDgf+v+K2D7epZTI9YCv7lJbb0+3Lg=;
        b=wntHm8NUmxFhqH8hFqT+P+Z/4muEEk9Nuq8YtLti4VjB44Xks1aMErzCnFW40TBrfU
         oNRjvCCsRUGagbOj7K5Q6ZNa4bGetKi6CihX/dZXIxIeiHvaOCI03q8/7hbqpVOL1p+Y
         PPYrCPkTMTvNcMBnO0G8tBTfFyyDgAQNzz5oy4nm2OEaxpzxV3VEZWM0Q/cNRiz8zp1c
         4oZnX5bOeD725KB4CinRKgkCWiFFcpO1rpSIa4TqjB6F0k7+D3C1dBxiHTwEiqwKXO5V
         B1nlCHbT/p0U+Rx1lkh7U5spv21P9Z3Tgn9hqehm0eOSg1xSSsA65/kiL1v/gHBUePly
         gGaA==
X-Received: by 10.140.42.13 with SMTP id b13mr19245213qga.43.1427389794323;
        Thu, 26 Mar 2015 10:09:54 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id o19sm3797905qkh.25.2015.03.26.10.09.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2015 10:09:53 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH 8/8] staging: sm750fb: Change "foo * bar" style to "foo *bar"
Date: Thu, 26 Mar 2015 14:09:20 -0300
Message-Id: <5e8ce053e470b10f423c9875a4b2d4ef3b86cf1a.1427389602.git.helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>
In-Reply-To: <cover.1427389602.git.helen.fornazier@gmail.com>
References: <cover.1427389602.git.helen.fornazier@gmail.com>

This patch fixes the checkpatch.pl error:

ERROR: "foo * bar" should be "foo *bar"
+int ddk750_initHw(initchip_param_t * pInitParam)

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b30c183..c8a8b3f 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -251,7 +251,7 @@ unsigned int ddk750_getVMSize(void)
 
 }
 
-int ddk750_initHw(initchip_param_t * pInitParam)
+int ddk750_initHw(initchip_param_t *pInitParam)
 {
 
 	unsigned int ulReg;
-- 
1.9.1


