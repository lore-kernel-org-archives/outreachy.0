X-GM-THRID: 6330303746353922048
X-Received: by 10.13.231.68 with SMTP id q65mr6045954ywe.58.1473943233463;
        Thu, 15 Sep 2016 05:40:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls3450969oty.10.gmail; Thu, 15 Sep
 2016 05:40:33 -0700 (PDT)
X-Received: by 10.237.36.19 with SMTP id r19mr6247401qtc.14.1473943233130;
        Thu, 15 Sep 2016 05:40:33 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id w188si181028itc.3.2016.09.15.05.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id p2so2093174pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1ctf1JYuZXS4mvUUVYeAFX3qqAVrXyjZfNUOn2aDEak=;
        b=zBYC+eECUHWWT6l6YmmuncAXDc/P1mqfB78FeSrldSMeWW6je7Ft4XqCTWUXqyOq1D
         xNWcRg+gipxvw2pECqvgst+w7AlzqWrOY9561nW2okpKVUZMxH/00hMLVKtl9l4K8Q+J
         GeGVhQ0mBonGcZSf97m36PjR5bEtxEJDqtnZyJruRZ+qIHePnjA0rRsJx9JdXlUUHh1O
         WzgdtL49EcnBpKKqzXjSFg6o2eGcKwoHBuVm9mCUOB11BTzv6OJN+lc8ayIaoSfOZS/j
         JoAmfYoCvQabGHRlCtqZi4sVG4A2xkXxnH+yzkdPL6RWnK1C9nH4a93ogx65RRvnoAwP
         uHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1ctf1JYuZXS4mvUUVYeAFX3qqAVrXyjZfNUOn2aDEak=;
        b=IonRahGr+tVZpgTSX4ZI1JqDXmkoQGYvMZdTBFbJweCwbE/Fp48YjP3jR0ZbpQ9KGE
         IlXZPdKVctjTLtDXN/g6FrLptnJTrVT/9cWjrr0Oo24XUpF6hP3zBzcSfLxPD07onyFi
         qgcbzbdBPOwTxntr6VcmNw//NsvUW/Gr1oUrj9k2RpTcd1UGOp6wn3T8QhY0ID6qmmwT
         ioB/BDKEa+2K648xixRDmtY5cItHUQtJMDwCLGZHbfCbFKoJPFn34smdF1cgNVcGO2kc
         GYFv2uPmmdZc0uoErOSQwlMxnY09PVBvetxpD635G3ABZlBS4qnAjcckpgZX8bATIPBE
         L17w==
X-Gm-Message-State: AE9vXwMnJyXomEM1a7TIsDRpgA9mJ3LYDqj8rCGvC5BuUDCx5KHSZaVk2HT5me6U6LuMJQ==
X-Received: by 10.66.22.102 with SMTP id c6mr426925paf.175.1473943232679;
        Thu, 15 Sep 2016 05:40:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:32 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 6/6] staging: xgifb: fix alignment for if arguments
Date: Thu, 15 Sep 2016 18:09:19 +0530
Message-Id: <940f51ac0ff58da6ff9a9b7b296ef8cfdda8907d.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>

Reduce indentation of multi-line if-test
arguments for better readability.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 8488612..068f422 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
 		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
 				(unsigned short) (0x10 * i));
 		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
-				!(pVBInfo->VBInfo & SetInSlaveMode)) {
+			!(pVBInfo->VBInfo & SetInSlaveMode)) {
 			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
 			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
 		} else {
@@ -4132,8 +4132,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
 					| TVSetHiVision))) {
 				temp |= 0x0001;
 				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
-						!(pVBInfo->TVInfo
-								& TVSimuMode))
+					!(pVBInfo->TVInfo & TVSimuMode))
 					temp &= (~0x0001);
 			}
 		}
-- 
2.9.2


