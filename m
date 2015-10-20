X-GM-THRID: 6207671849157918720
X-Received: by 10.112.140.202 with SMTP id ri10mr460026lbb.10.1445336232052;
        Tue, 20 Oct 2015 03:17:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.135 with SMTP id fo7ls746095wib.1.canary; Tue, 20 Oct
 2015 03:17:11 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr5159842wij.5.1445336231352;
        Tue, 20 Oct 2015 03:17:11 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si637358wiy.3.2015.10.20.03.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 03:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q8so38603423wik.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 03:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=JEui2tLiymqiolWKpzUkB2F7kMt9Vr+Rjk/DQZlzSMo=;
        b=ZI73PkMysLTv19QBd8m36tP4G3VKgvwrsT3hogYhjjf498+gIQ9/mEa7BgOol37V1s
         JYhlkzVvL1AWFGf5DuhqlKw1H393HaTXW2FLU1rvUeEppLAkDB4C9CWyZM+ngp8CVFZR
         EPACkhh7p+/uBQmIN/LQS/NCkSkp/19nvj/YYW4PBrPtSrv5n4YfyysJeKF6lntI6nRG
         r2WLPf92AKKnF1q6BbHpHDjiSEjcN/xVGMpYyd0k1uMfJfIiEJg37Hashk8mCYi03ftg
         Gw9KhY7jHMqSfl3RBgZ5e5jsXPiLBFxdoi4CMzyKA8JijrM5EhcfWNKsM5KGKjd97+US
         AfKA==
X-Received: by 10.194.120.131 with SMTP id lc3mr2917780wjb.99.1445336231235;
        Tue, 20 Oct 2015 03:17:11 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.165])
        by smtp.gmail.com with ESMTPSA id qr6sm17039355wic.13.2015.10.20.03.17.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 03:17:10 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: comedi: Fix return flow
Date: Tue, 20 Oct 2015 13:16:33 +0300
Message-Id: <1445336193-3100-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Simplify function return flow. Issue found
with coccinelle.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/comedi/drivers/daqboard2000.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/daqboard2000.c b/drivers/staging/comedi/drivers/daqboard2000.c
index 611b0a3..57ab668 100644
--- a/drivers/staging/comedi/drivers/daqboard2000.c
+++ b/drivers/staging/comedi/drivers/daqboard2000.c
@@ -713,12 +713,8 @@ static int daqboard2000_auto_attach(struct comedi_device *dev,
 		return result;
 
 	s = &dev->subdevices[2];
-	result = subdev_8255_init(dev, s, daqboard2000_8255_cb,
-				  dioP2ExpansionIO8Bit);
-	if (result)
-		return result;
-
-	return 0;
+	return subdev_8255_init(dev, s, daqboard2000_8255_cb,
+				dioP2ExpansionIO8Bit);
 }
 
 static void daqboard2000_detach(struct comedi_device *dev)
-- 
1.9.1


