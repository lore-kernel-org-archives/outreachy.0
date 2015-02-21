X-GM-THRID: 2110375591936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,76fcb55a8c257c0b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.198 with SMTP id dy6mr451882lbc.22.1424550289011;
        Sat, 21 Feb 2015 12:24:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls249949lac.49.gmail; Sat, 21 Feb
 2015 12:24:48 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr420134lbc.15.1424550288419;
        Sat, 21 Feb 2015 12:24:48 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id l8si561037wia.0.2015.02.21.12.24.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:24:48 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so6007198wgg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=u8ceZsjK4SVdjOeCug6owDdcMUA3ZHY3mgppxMItQyk=;
        b=FqqfmRl+J5dA59TFx48WDDnDZHEYiQdsm4XwcFepjO01Zpt5dYLEc63AWVO0Sib+lf
         /r70V7UfYFg98pMU0xErde+sHxZpILJ4CCrdJPJcguoY431VJd48/aEDztwSQEFn0cVd
         NlgyHwQEDsHdpZFU8TiyyOTLDt+6dE4EEopFENpTnuIPdN4UHrx4GrItPZIUSSiUJTmr
         VZNdd47xkey3ziZeQBSO+2MMqL+RQNwAjv2Mo3HlZTlUoOk7xNzlDbRToOkfpLF16yN7
         5dt9apLCOpDsfy1n7lBCE8k+Xos5htCZxsTtpEe7zIYrNoNirXWu/uDNA5VFPGW1V6o1
         FEXA==
X-Received: by 10.180.149.242 with SMTP id ud18mr6654259wib.94.1424550288324;
        Sat, 21 Feb 2015 12:24:48 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id gi3sm8344640wic.15.2015.02.21.12.24.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:24:47 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: { retrieved upper row
Date: Sat, 21 Feb 2015 22:24:40 +0200
Message-Id: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace { should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/card.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index a079640..e77a5f6 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -68,8 +68,8 @@
 
 /*---------------------  Static Variables  --------------------------*/
 
-static const unsigned short cwRXBCNTSFOff[MAX_RATE] =
-{17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
+static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
+17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
 
 /*---------------------  Static Functions  --------------------------*/
 
-- 
1.9.1


