X-GM-THRID: 2110375591936
X-Received: by 10.112.168.104 with SMTP id zv8mr444340lbb.10.1424554191831;
        Sat, 21 Feb 2015 13:29:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.225 with SMTP id z1ls401971lad.109.gmail; Sat, 21 Feb
 2015 13:29:51 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr454832laa.2.1424554191396;
        Sat, 21 Feb 2015 13:29:51 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id by11si594769wib.1.2015.02.21.13.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:29:51 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so6100475wgg.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pBbzHX5ODW4kiDHIkmjxkh5gAf1CTYdgtUJYJ97eYPo=;
        b=QnbjPInN/j/S5bxO61Nov0sXcoT8Gm/IQB4VdDB+jL7E+x3mmGVB4O9Ua9o1cHjMW5
         mRshFV6iCIUv0ENr71KVUX+q+AQtJgqhEzaMplG8a1qIHZx8Bn6Wz1FX9PNqS2XCVacq
         jnGS8if0R+LLDpEQMm4pNM25oEGgnc0ktCt53tTLlB/x5oRk9sUBXuA+tdkgyn9MCSnQ
         4Bu47bLkcjYC8KDQ9krklIleh6BndFqSeoHXTkHEVYv+oRTPvNM3+HiMYczVbqWKgZNo
         nHThzKxJcEb5HO/yIC5y/VOO/nxjON5rNz+sm4btVdTmzM025qRBW+7QGyJcZFf7CjoH
         sOfg==
X-Received: by 10.194.236.200 with SMTP id uw8mr7854221wjc.10.1424554191296;
        Sat, 21 Feb 2015 13:29:51 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id a1sm8530144wiy.10.2015.02.21.13.29.50
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 13:29:50 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH v2] Staging: vt6655: { retrieved upper row
Date: Sat, 21 Feb 2015 23:29:42 +0200
Message-Id: <1424554182-23841-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

That open brace { should be on the previous line.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v2:
 Retrieved all rows above.
---
 drivers/staging/vt6655/card.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e77a5f6..ddfa4f5 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -68,8 +68,7 @@
 
 /*---------------------  Static Variables  --------------------------*/
 
-static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
-17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
+static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
 
 /*---------------------  Static Functions  --------------------------*/
 
-- 
1.9.1


