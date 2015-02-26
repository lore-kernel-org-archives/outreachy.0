X-GM-THRID: 3900162703360
X-Received: by 10.112.222.131 with SMTP id qm3mr1513282lbc.1.1424977825821;
        Thu, 26 Feb 2015 11:10:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.98 with SMTP id bf2ls175977wib.30.gmail; Thu, 26 Feb
 2015 11:10:25 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr987289wib.2.1424977825379;
        Thu, 26 Feb 2015 11:10:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id el6si185419wib.2.2015.02.26.11.10.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 11:10:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id l18so13894607wgh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 11:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0s+Epcq06fHgH+zQpkqC+AMQOpG+RNXxha84iVHyic8=;
        b=qmdDwhGtkDcDcmiGYiy5T9LukKSNt0ZHxCR4FGiEKVz9GFWcMuGP/a6BaWfPeiBJYG
         eU88H8bur4IpcePwmhApCcVvDoCHEQcZuH+yQbS8guajDhl2Xl6v9F0MtqVRk8JMvn47
         qTWA0zNxv1Gli6cC//kBab/aHtkXnXqj6Z5AXzpKjt7TEECLTHGkV10/rUYtWxMzdAME
         ArgiEKBjZYThdb/IZAYAxL+EsGqMFHM3VizWlepZEVGbzuaJddpzU+Yld+69GF0cH6ej
         DEtth3wRWpKO2kQS4Z2SIkgxkNyjqqzOVZS5Q8tla0uAqPwbIfvobyUusznZipmMF4LX
         ezKg==
X-Received: by 10.194.60.173 with SMTP id i13mr19634826wjr.124.1424977825237;
        Thu, 26 Feb 2015 11:10:25 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id vq9sm2707844wjc.6.2015.02.26.11.10.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Feb 2015 11:10:24 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Simplify if statements
Date: Thu, 26 Feb 2015 20:10:15 +0100
Message-Id: <1424977815-7967-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch simplifies if conditions that contain bool variable,
using Coccinelle script:
@@
bool x;
symbol true;
@@
- x == true
+ x

Signed-off-by:Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 02707d8..2efcb20 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2822,7 +2822,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 		}
 		dm_initialize_txpower_tracking(dev);
 
-		if (priv->bDcut == true) {
+		if (priv->bDcut) {
 			u32 i, TempCCk;
 			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
 			for (i = 0; i < TxBBGainTableLength; i++) {
-- 
1.9.1


