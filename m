X-GM-THRID: 5483873173504
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4028323104cfe580,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.126.194 with SMTP id na2mr3303500lbb.18.1425229339986;
        Sun, 01 Mar 2015 09:02:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls294499lac.47.gmail; Sun, 01 Mar
 2015 09:02:19 -0800 (PST)
X-Received: by 10.112.199.69 with SMTP id ji5mr3232873lbc.0.1425229339468;
        Sun, 01 Mar 2015 09:02:19 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o3si504050wib.2.2015.03.01.09.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 09:02:19 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwh11 with SMTP id h11so9948751wiw.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 09:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MomrBTiOeYWQLZ2qC2DEU8YzZQnSckO7NYOUGnPmD4k=;
        b=sR1XRBTecdCJhcvJmnlED5hKx2OgYKjQF/dSt3p/vjNhpIXYpmCkh3COzsRMiEOCEx
         Vip494Gma4vQOMiNoQp3HcS8J7gJNgyPpEyC2xVXL0AWw3qahzc4NWtMLkF/OgXzsqEo
         KZnYjr1OgV+ouDTrrfcqMb/ORrl73sEytq7qK8mmzeB/jUfDK/8MgQcFmzHkf1QQL6Sa
         79D9a38RGLJsM4yVlOqzPaGZlMiMAKOtEFrkD2w1sICWkqsB4ALnul0n0v3aZS9XikuM
         RQt5xm+F/3TiA3hhkx/yFw74i7NSuBZ0Mn7OowfSVU6jJCFpjkoqaSvVzLDbaHKSJWx+
         cBkA==
X-Received: by 10.194.62.198 with SMTP id a6mr50727783wjs.90.1425229339259;
        Sun, 01 Mar 2015 09:02:19 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id g1sm12493879wjy.24.2015.03.01.09.02.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 09:02:18 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8192e: rtl8192e: fix space prohibited before that ','
Date: Sun,  1 Mar 2015 19:02:11 +0200
Message-Id: <1425229331-4775-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following checkpatch.pl error:
space prohibited before that ','

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_cam.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
index 89ea70b..0569642 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
@@ -192,7 +192,7 @@ void CamRestoreAllEntry(struct net_device *dev)
 		for (EntryId = 0; EntryId < 4; EntryId++) {
 			MacAddr = CAM_CONST_ADDR[EntryId];
 			if (priv->rtllib->swcamtable[EntryId].bused) {
-				setKey(dev, EntryId , EntryId,
+				setKey(dev, EntryId, EntryId,
 				       priv->rtllib->pairwise_key_type, MacAddr,
 				       0, (u32 *)(&priv->rtllib->swcamtable
 				      [EntryId].key_buf[0]));
@@ -254,7 +254,7 @@ void CamRestoreAllEntry(struct net_device *dev)
 		MacAddr = CAM_CONST_BROAD;
 		for (EntryId = 1; EntryId < 4; EntryId++) {
 			if (priv->rtllib->swcamtable[EntryId].bused) {
-				setKey(dev, EntryId , EntryId,
+				setKey(dev, EntryId, EntryId,
 				       priv->rtllib->group_key_type,
 				       MacAddr, 0,
 				       (u32 *)(&priv->rtllib->swcamtable[EntryId].key_buf[0]));
@@ -263,7 +263,7 @@ void CamRestoreAllEntry(struct net_device *dev)
 
 		if (priv->rtllib->iw_mode == IW_MODE_ADHOC) {
 			if (priv->rtllib->swcamtable[0].bused) {
-				setKey(dev, 0 , 0,
+				setKey(dev, 0, 0,
 					priv->rtllib->group_key_type,
 					CAM_CONST_ADDR[0], 0,
 					(u32 *)(&priv->rtllib->swcamtable[0].key_buf[0]));
-- 
1.9.1


