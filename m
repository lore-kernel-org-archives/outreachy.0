X-GM-THRID: 6208462507609161728
X-Received: by 10.180.9.104 with SMTP id y8mr8367743wia.7.1445520321833;
        Thu, 22 Oct 2015 06:25:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.202 with SMTP id ba10ls997920wib.28.canary; Thu, 22 Oct
 2015 06:25:21 -0700 (PDT)
X-Received: by 10.180.99.71 with SMTP id eo7mr2791462wib.3.1445520321476;
        Thu, 22 Oct 2015 06:25:21 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bn7si684177wib.0.2015.10.22.06.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:25:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id fv8so119627935wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 06:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=So3a7zscSUlm+zHmH9+dcSpNmSyW+yrvT0mrQ0X6awE=;
        b=a53rahPbAs+Kycy0Ecu49ZXzX2oSYO0NM1Fxsr0MYjvF6i+7vHxhm5qeF17G1miiGZ
         7N4/7wIfdaPnrxRTH2oPjQ7h3fu2cpqQ8ikKDfWYK61JbFOXr942ZAdhRTq4IQuR9ATE
         IzrjZY4MZXAVOVR6z7PUaSxAtFWE/tdxDi0LjYG/mvNZ/AWmSwTTvF9C+HqJf+m2AAy8
         4dEj3VOXKWVYReuz8wumLcp9cPjqeWwJ1RDEgrl5tLrYXxMHT/hH0iNkOXHTGs5ZwqTc
         6R6fZzxyXp9fGxLyjogLAjGUKeLJaCGN2jMDenlEsOZhOS9oxJdIP094Jx2N6kj4mqyo
         5g5A==
X-Received: by 10.194.63.81 with SMTP id e17mr19382511wjs.147.1445520321355;
        Thu, 22 Oct 2015 06:25:21 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id mu9sm11643287wib.6.2015.10.22.06.25.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 06:25:20 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: skein: Add space around '%'
Date: Thu, 22 Oct 2015 16:25:08 +0300
Message-Id: <1445520308-3743-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '%'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '%' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/skein/skein_block.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
index b0cd935..65cb241 100644
--- a/drivers/staging/skein/skein_block.c
+++ b/drivers/staging/skein/skein_block.c
@@ -212,7 +212,7 @@ do {                                                                  \
 #undef  RCNT
 #define RCNT  (SKEIN_1024_ROUNDS_TOTAL/8)
 #ifdef SKEIN_LOOP /* configure how much to unroll the loop */
-#define SKEIN_UNROLL_1024 ((SKEIN_LOOP)%10)
+#define SKEIN_UNROLL_1024 ((SKEIN_LOOP) % 10)
 #else
 #define SKEIN_UNROLL_1024 (0)
 #endif
-- 
1.9.1


