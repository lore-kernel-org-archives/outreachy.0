X-GM-THRID: 6330303746353922048
X-Received: by 10.36.89.85 with SMTP id p82mr2018322itb.0.1473943218944;
        Thu, 15 Sep 2016 05:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.23 with SMTP id 23ls2916965otg.44.gmail; Thu, 15 Sep
 2016 05:40:18 -0700 (PDT)
X-Received: by 10.157.5.37 with SMTP id 34mr6224881otw.31.1473943218621;
        Thu, 15 Sep 2016 05:40:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si2619985pfe.0.2016.09.15.05.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so2107748pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=oNwGYJwNGAfF9NkrF6g5AcKCVtr0VgUKllEV72bo8llwZnJVSJ0ae1GUYeaBceDiFC
         AeR9LS6kxGZvca8wbllEi5IZydbPImq0/Ur77nmEx3MDBhkidW/ZzqcHCrTV+tcDYuYW
         UJB3idQjguRN2iq7UXEcswe5gbRYBirpMo476aWKxTWKjozDSr0wdCQHbtyv11RL95Yc
         DRVwpfOC/OqJxZwVNbnNDg5xw6TDW8NRHTlEtqy71x5TyycJjjLqBmxCPZLYle6eVk7s
         mDGnZOe0AA3b2B4yOjQDEHE65Vewn6eKHwz9zWaAp0zEI2bpswachw6ExAjZypL8wraZ
         rJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CbarsrTaswuBtbMCtZkCk6P39TUe0qdh2y38+KPcLJE=;
        b=cN3GP5ruardAnnKvBRVN3//5uKRMYezHJjl2Gk2bPorNWxGGk+5SiuewfFiOytB7td
         neJuxoBLrpSpCTATOpmMKkUENsscI7d42uPzmyWO3rfnS0mq0drHjBAkF9Vd+p8FxSMC
         EgpR/cb7eX9FYvQlS7q3yq8fdkb0UJrSuGm8vvChilySU/5/hps5QuT+UamK2YHQgbQN
         nXh3nopKy49/pr7PnT3rGXyIlJ1Y8AZWdshdwSylFcJ0i2Rz5c+jDwpBRGgeKV90Z4fJ
         LdpBptmW9TSde7hkK3Z/stBtehhEbAkdLc/rza/2qvmfegn6bfzoc2mzvkxcoAIeQCNj
         lhZg==
X-Gm-Message-State: AE9vXwOlgK3BpIok7On6EUHmkHtb0gJ8VllGC1mIxaswdb2MSuKrwkFl0cn05ahOhNDyDw==
X-Received: by 10.66.22.102 with SMTP id c6mr425259paf.175.1473943218401;
        Thu, 15 Sep 2016 05:40:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:17 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 1/6] staging: xgifb: move AND operator for logical continuation
Date: Thu, 15 Sep 2016 18:09:14 +0530
Message-Id: <5fa943ebdb054cf0da49402df9a6134c334aaf3f.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>

Move && up to the previous line, to fix the checkpatch issue Logical
continuations should be on the previous line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 50c8ea4..316209f 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 	for (i = 0; i < 4; i++) {
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
-		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA))
-				&& (!(pVBInfo->VBInfo & SetInSlaveMode))) {
+		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
+				(!(pVBInfo->VBInfo & SetInSlaveMode))) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -4141,8 +4141,8 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetYPbPr525p | TVSetYPbPr750p
 					| TVSetHiVision))) {
 				temp |= 0x0001;
-				if ((pVBInfo->VBInfo & SetInSlaveMode)
-						&& (!(pVBInfo->TVInfo
+				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
+						(!(pVBInfo->TVInfo
 								& TVSimuMode)))
 					temp &= (~0x0001);
 			}
-- 
2.9.2


