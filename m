X-GM-THRID: 6698286710784
X-Received: by 10.194.221.65 with SMTP id qc1mr1069552wjc.7.1425513117012;
        Wed, 04 Mar 2015 15:51:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.33 with SMTP id cr1ls36898lad.47.gmail; Wed, 04 Mar 2015
 15:51:56 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1043384lbb.24.1425513116195;
        Wed, 04 Mar 2015 15:51:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id el6si436303wib.2.2015.03.04.15.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 15:51:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id em10so34532830wid.5
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 15:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=r3m8PWuxmU3xgxoTrG2/+XqXH4QPN/gJzlDAw2/6UAc=;
        b=YGPU3kVq4OxpUMMxdkWfzHQnx0bWOH/3ngI5TyEX1cYXl0RUFbwHMXLksbavNBFkMM
         HajZSA/sD5L68NY5HHaQ6Uogl27gsG7109VcCBxFXEKJqhdOGgneTG9wPAewOi7u6vRH
         zwQgGsDVpeMK2e5c01Zg66jIaW96prFB0L+ePTx6QveDq/W0+mEjtrG2NT+G8NCauRr5
         D9FAc4qRw+sR/2+skBR9t3NVZJDmpEU6FQh1y5FlKvcaGaCX7UL4SO0i0Dpp8nbF6ctU
         bO9pYI+511Cxvbe4HWdKT0Guj3m2eTqcJFS1bQ2C4XkNSbQO5jIG5EoQb3ymRV4tOsDp
         JXnA==
X-Received: by 10.180.98.131 with SMTP id ei3mr17118022wib.62.1425513116103;
        Wed, 04 Mar 2015 15:51:56 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id j5sm27242657wie.3.2015.03.04.15.51.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 15:51:55 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace TRUE with true
Date: Thu,  5 Mar 2015 00:51:46 +0100
Message-Id: <1425513106-22425-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch replaces TRUE by true, since Linux kernel has already a
boolean type, bool, defined in linux/stddef.h

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 96ab304..9f68c65 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -553,16 +553,16 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
 #ifdef TO_DO_LIST
 	if(!IsDataFrame(pFrame))
 	{
-		pTcb->bTxDisableRateFallBack = TRUE;
-		pTcb->bTxUseDriverAssingedRate = TRUE;
+		pTcb->bTxDisableRateFallBack = true;
+		pTcb->bTxUseDriverAssingedRate = true;
 		pTcb->RATRIndex = 7;
 		return;
 	}
 
 	if(pMgntInfo->ForcedDataRate!= 0)
 	{
-		pTcb->bTxDisableRateFallBack = TRUE;
-		pTcb->bTxUseDriverAssingedRate = TRUE;
+		pTcb->bTxDisableRateFallBack = true;
+		pTcb->bTxUseDriverAssingedRate = true;
 		return;
 	}
 #endif
-- 
1.9.1


