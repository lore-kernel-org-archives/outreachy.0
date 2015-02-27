X-GM-THRID: 4890285834240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f68d36dda4a163b2,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr2350137lah.8.1425070615518;
        Fri, 27 Feb 2015 12:56:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.149.168 with SMTP id ub8ls101777wib.50.gmail; Fri, 27 Feb
 2015 12:56:55 -0800 (PST)
X-Received: by 10.180.182.201 with SMTP id eg9mr754730wic.3.1425070615231;
        Fri, 27 Feb 2015 12:56:55 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id by11si212114wib.1.2015.02.27.12.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:56:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id em10so3009761wid.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=JH438yWdHaw0UAcGsx4LWC3CqT5GQeGJ2t2s4jJtcLo=;
        b=qFAPO8qOPaahks/kOXA2y3Ex9mdZeVk4xP9TfpXLRc69k/1iAqfBGFMKFdsiWn2+if
         a9cSkBpnAb5n8yfKo37i4Ddp1jtfQGkMIiB82WXFKoF3dlSxiqhWOUiB94Nea2Wsmr4p
         BclMhyw/j+gG9knC2wUIzVwxvtpwccYzWNuX4auMComsIRFaPddYnEfUGNydLkxNnKES
         VWkF/JE+mcP1g8c/9eZIldz9C4IBLYPxjsU5wDQM+XjvMsUwWess/MKHPz+S+Zvw8M32
         FPdR4eqe7J9JEZQj7EbSmPMsz4INLEDP1/xbYaxEsqkU59tZLPcHoKFUEeGoOAvVW+sI
         CTTw==
X-Received: by 10.180.98.131 with SMTP id ei3mr10297038wib.62.1425070615146;
        Fri, 27 Feb 2015 12:56:55 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id fa3sm4362756wib.17.2015.02.27.12.56.53
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:56:54 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: Removed necessary braces {}
Date: Fri, 27 Feb 2015 22:55:50 +0200
Message-Id: <1425070550-31050-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Deleted {}.Because braces {} are not necessary for single statement
blocks

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/nrs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/nrs.c b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
index d5fd721..a9f4bc6 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/nrs.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
@@ -155,9 +155,8 @@ static void nrs_policy_stop_primary(struct ptlrpc_nrs *nrs)
 {
 	struct ptlrpc_nrs_policy *tmp = nrs->nrs_policy_primary;
 
-	if (tmp == NULL) {
+	if (tmp == NULL)
 		return;
-	}
 
 	nrs->nrs_policy_primary = NULL;
 
-- 
1.8.3.2


