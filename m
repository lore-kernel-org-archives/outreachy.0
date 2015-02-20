X-GM-THRID: 1463092772864
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3539e97c4c1c7bcc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr378012lbc.3.1424459399335;
        Fri, 20 Feb 2015 11:09:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.161 with SMTP id dd1ls159971wib.49.canary; Fri, 20 Feb
 2015 11:09:58 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr568218wix.0.1424459398026;
        Fri, 20 Feb 2015 11:09:58 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id l8si367213wia.0.2015.02.20.11.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:09:58 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so1868611wib.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Rvv23YzfwtaA5ehDYe33HV+Q0vWC/FUcZKgD8cpF02U=;
        b=HE1LKVN7CTgfrJfUXB3zdrTd2+VJoq5wMRulxEuzC/RbLVS5aU/oCRgBvCq9rImZoc
         96F7ocLn9UGGxCiy3ZKJ8olOXFCQOvd+8ns/5vWLmqPYTALM5O/BTYLWatp7Ksv4KPtU
         9Ha7WrkUemPRB3FzUSmfd+iiqAIUC4+VZu6PJ0lxRRdJFv7YteFE7Ppz1y0RVbLX2VcY
         T89W1Vi+J9tqByfZnSleg7boxi7Wgy01ZpfH/Mg0kMft9StU/OCj1HnWBj+ChhnmlYdZ
         NrRhdpN0a3jN/QLPolPQ4tGO80qJd7asndKiVfUWSNqZYozvg1fEX/BI7CsWY+PG0Iw6
         WrCg==
X-Received: by 10.194.6.228 with SMTP id e4mr21514017wja.63.1424459397926;
        Fri, 20 Feb 2015 11:09:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id y14sm30189208wjr.39.2015.02.20.11.09.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:09:57 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: mac: Deleted space
Date: Fri, 20 Feb 2015 21:09:49 +0200
Message-Id: <1424459389-5989-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index dd241bb..f3c492f 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -808,7 +808,7 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
 
 	/* Check if SyncFlushOK */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
-		VNSvInPortB(dwIoBase + MAC_REG_PSCTL , &byOrgValue);
+		VNSvInPortB(dwIoBase + MAC_REG_PSCTL, &byOrgValue);
 		if (byOrgValue & PSCTL_WAKEDONE)
 			break;
 	}
-- 
1.9.1


