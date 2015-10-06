X-GM-THRID: 6202300337979654144
X-Received: by 10.194.240.230 with SMTP id wd6mr6803727wjc.0.1444158855895;
        Tue, 06 Oct 2015 12:14:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.223 with SMTP id 92ls653512lft.101.gmail; Tue, 06 Oct
 2015 12:14:15 -0700 (PDT)
X-Received: by 10.112.132.6 with SMTP id oq6mr6692141lbb.1.1444158855072;
        Tue, 06 Oct 2015 12:14:15 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id w4si599736wiz.0.2015.10.06.12.14.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 12:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so173313307wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 12:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qUE34Z2Wua83ZHwJ1GMdzN29goKRli0chmfoYu3a94k=;
        b=umYDmsynfLAisAupkhcy2AOBEI5tDX/wIev3KBXP4OBYKzjdaO0LGFf+L+kpb4uIPT
         oZVBAlX3R7lKd16D9PFsRUmnnhWGstk9I7KkVAy8O6cqpWZQ0mmwHSPl+kzaZzYqGKbo
         kCGruKwmGfY9/ReRISaTCsXC5Xcm5nvxTq6UjpzpleGJqFjJ1ThPDuf4M4Na41QsAZhZ
         PaR88i2rCoVeLGmHn8j3DLozm/ywLYPLxiwCvM6cE4rg0H9hqwP4H0VLjZszmIBQHO0a
         VwrSDbyhCSeT6j+puPE2ThzikMUR7CFALK1yIPLcPEdX3Xnazm3AaboeTt/s8n1y1Ame
         N6Dg==
X-Received: by 10.194.171.69 with SMTP id as5mr37998087wjc.137.1444158854954;
        Tue, 06 Oct 2015 12:14:14 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([78.178.177.3])
        by smtp.gmail.com with ESMTPSA id bv2sm34294866wjc.11.2015.10.06.12.14.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 12:14:13 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3 2/2] Staging: wilc1000: fix spelling mistake.
Date: Tue,  6 Oct 2015 22:14:02 +0300
Message-Id: <1444158842-6903-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch corrects the spelling of the word function by adding missing
letter.
Problem found by checkpatch.pl :
CHECK: 'funcion' may be misspelled - perhaps 'function'?

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changed v1:
* "Added" commit message title in the form of the "fixed" has been changed.
Changed v2:
* Edited complex message content
---
 drivers/staging/wilc1000/coreconfigurator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 65a130d..9f87d05 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -264,7 +264,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
 	return cap_info;
 }
 
-/* This funcion extracts the association status code from the incoming       */
+/* This function extracts the association status code from the incoming       */
 /* association response frame and returns association status code            */
 static inline u16 get_asoc_status(u8 *data)
 {
-- 
1.9.1


