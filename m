X-GM-THRID: 9808836034560
X-Received: by 10.182.33.97 with SMTP id q1mr10773738obi.42.1427288876221;
        Wed, 25 Mar 2015 06:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.21 with SMTP id c21ls296279ioc.37.gmail; Wed, 25 Mar
 2015 06:07:56 -0700 (PDT)
X-Received: by 10.66.194.234 with SMTP id hz10mr10256692pac.10.1427288875984;
        Wed, 25 Mar 2015 06:07:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pj7si294593pbb.2.2015.03.25.06.07.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 06:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id xg6so28650650pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 06:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=sQaEUs3zzU3m6QTSCSAGW0spcYPhWHxWuPqdZ74vajI=;
        b=Z72wSoFBWIW6kduDDX53vXqBalqpZYNeUaBHgRB9iAV1NoDkwfkAsxk5LcMM/LzUd3
         dkBc2yg7s5btiZBVfH7+saRHw3CFGhMCWJ2uwGL5HGdpogirbVz8ywP56pr6Xb+HrhoW
         8yE/1M6OubyBuECwNNrtyxBWoHaqnsNWv29nVVLbeysz3JzJnb9UDed8fapRQWKx9Ks6
         6TkQl4MdXn79fO6iKm+B65qLo/aP1FXPu1yEXh9vJleUvtz/xnRJuiNfDNJ4oKoMBBzA
         9yjNN9IZ4LbZojG6OTWeS53ZIiugoL/eXjkDWg2QPK5+ik5UKhjt7h6zNMKpgUkzx/sz
         jFwg==
X-Received: by 10.70.42.197 with SMTP id q5mr17141431pdl.115.1427288875921;
        Wed, 25 Mar 2015 06:07:55 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id x1sm2505378pdp.1.2015.03.25.06.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 06:07:54 -0700 (PDT)
Date: Wed, 25 Mar 2015 18:35:47 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: rtl8188eu: Refactor repititive code to loop to
 increase compactness
Message-ID: <465dae90680239c3215985dea12f3c75d1f5e329.1427288450.git.vatikaharlalka@gmail.com>
References: <cover.1427288450.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427288450.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Refactor repetitive code to loop so as to increase
compactness and introduce newlines for readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 22e4309..082f0ca 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -260,7 +260,7 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 		struct odm_ra_info *pRaInfo
 	)
 {
-	u8 RateID = 0, RtyPtID = 0, PenaltyID1 = 0, PenaltyID2 = 0;
+	u8 RateID = 0, RtyPtID = 0, PenaltyID1 = 0, PenaltyID2 = 0, i = 0;
 	/* u32 pool_retry; */
 	static u8 DynamicTxRPTTimingCounter;
 
@@ -286,14 +286,14 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
 			     (" NscDown init is %d\n", pRaInfo->NscDown));
-		pRaInfo->NscDown += pRaInfo->RTY[0] * RETRY_PENALTY[PenaltyID1][0];
-		pRaInfo->NscDown += pRaInfo->RTY[1] * RETRY_PENALTY[PenaltyID1][1];
-		pRaInfo->NscDown += pRaInfo->RTY[2] * RETRY_PENALTY[PenaltyID1][2];
-		pRaInfo->NscDown += pRaInfo->RTY[3] * RETRY_PENALTY[PenaltyID1][3];
-		pRaInfo->NscDown += pRaInfo->RTY[4] * RETRY_PENALTY[PenaltyID1][4];
+
+		for (i = 0 ; i <= 4 ; i++)
+			pRaInfo->NscDown += pRaInfo->RTY[i] * RETRY_PENALTY[PenaltyID1][i];
+
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
-			     (" NscDown is %d, total*penalty[5] is %d\n",
-			     pRaInfo->NscDown, (pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID1][5])));
+			     (" NscDown is %d, total*penalty[5] is %d\n", pRaInfo->NscDown,
+			      (pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID1][5])));
+
 		if (pRaInfo->NscDown > (pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID1][5]))
 			pRaInfo->NscDown -= pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID1][5];
 		else
@@ -303,14 +303,14 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 		PenaltyID2 = RETRY_PENALTY_UP_IDX[RateID];
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
 			     (" NscUp init is %d\n", pRaInfo->NscUp));
-		pRaInfo->NscUp += pRaInfo->RTY[0] * RETRY_PENALTY[PenaltyID2][0];
-		pRaInfo->NscUp += pRaInfo->RTY[1] * RETRY_PENALTY[PenaltyID2][1];
-		pRaInfo->NscUp += pRaInfo->RTY[2] * RETRY_PENALTY[PenaltyID2][2];
-		pRaInfo->NscUp += pRaInfo->RTY[3] * RETRY_PENALTY[PenaltyID2][3];
-		pRaInfo->NscUp += pRaInfo->RTY[4] * RETRY_PENALTY[PenaltyID2][4];
+
+		for (i = 0 ; i <= 4 ; i++)
+			pRaInfo->NscUp += pRaInfo->RTY[i] * RETRY_PENALTY[PenaltyID2][i];
+
 		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
 			     ("NscUp is %d, total*up[5] is %d\n",
 			     pRaInfo->NscUp, (pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID2][5])));
+
 		if (pRaInfo->NscUp > (pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID2][5]))
 			pRaInfo->NscUp -= pRaInfo->TOTAL * RETRY_PENALTY[PenaltyID2][5];
 		else
-- 
1.9.1


