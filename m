X-GM-THRID: 746747592704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35770f706c8015
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.26.74 with SMTP id j10mr829860lag.10.1424376448642;
        Thu, 19 Feb 2015 12:07:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.9 with SMTP id gq9ls1474362wib.23.canary; Thu, 19 Feb
 2015 12:07:28 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr839522wjz.0.1424376448381;
        Thu, 19 Feb 2015 12:07:28 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id by11si176931wib.1.2015.02.19.12.07.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:07:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so4200669wiv.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FwcEPS28OXP+fxj8oca4SwjljTUmS5NaSmeqEFXf0/U=;
        b=PUmNpt/Dvh4ulhMy9MYciDoe7DltUJaeVAbj+3bTdkPRujuS72PEsKQOGCMvBt/ANu
         agVa3Wp+EU2qGwmSFQQ9VWPRJ6luO+puSF4xWeURuu9XTHWhZkdRr885ksxLxSaCz/5x
         YxLProbhZAXI2owy/+HXUbu5CxgNrMA524Fi3UZOxEq5lYiT48AG9eJm9AZYAOekw1Bz
         bjS1EKadLweezWWZlFS9aCKNvmRFJS1NdNPObHadLT++1xpjza03KSIEWYZ4HJE3vUqI
         nz8t7Ab/1hYAObr2z2VQtb2IXp6w3rLClIfaXLWPHKkgp9hBeL99BTlzYDvvHquFvcLM
         +VlA==
X-Received: by 10.194.184.83 with SMTP id es19mr12004688wjc.93.1424376448299;
        Thu, 19 Feb 2015 12:07:28 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id kr5sm33896377wjc.1.2015.02.19.12.07.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:07:27 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: dma: ste_dma40: fixed trailing statements
Date: Thu, 19 Feb 2015 22:07:21 +0200
Message-Id: <1424376441-29634-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

ERROR: trailing statements should be on next line
chackpatch.pl error in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 796c070..308795e 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -2372,9 +2372,11 @@ static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
 
 	switch (D40_DT_FLAGS_MODE(flags)) {
 	case 0:
-		cfg.mode = STEDMA40_MODE_LOGICAL; break;
+		cfg.mode = STEDMA40_MODE_LOGICAL;
+		break;
 	case 1:
-		cfg.mode = STEDMA40_MODE_PHYSICAL; break;
+		cfg.mode = STEDMA40_MODE_PHYSICAL;
+		break;
 	}
 
 	switch (D40_DT_FLAGS_DIR(flags)) {
-- 
1.9.1


