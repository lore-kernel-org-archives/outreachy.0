X-GM-THRID: 9808836034560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d635fb7ef78669be
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.4.100 with SMTP id 64mr10583637yhi.43.1427288875116;
        Wed, 25 Mar 2015 06:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.48 with SMTP id nt16ls232362obb.9.gmail; Wed, 25 Mar
 2015 06:07:54 -0700 (PDT)
X-Received: by 10.182.246.198 with SMTP id xy6mr10008880obc.26.1427288874878;
        Wed, 25 Mar 2015 06:07:54 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id gu4si302261pac.1.2015.03.25.06.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 06:07:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cy3so28461950pad.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 06:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4gjiK2ihm+mCeuV6aC2mTBdWrrPo4KhHNwnuw0ZBi/o=;
        b=T6V2nGvgL6BLVG9Qflxc5ma5gS2T/15/Nn6fZWqip7IA72hMug2dh79WTRSJPG7S+y
         qFRZ6wDnos6/9ASRdokdRJJXkeRG8timLMSFSsInl0NXruvnNHG/4tzUnv29O/lbVBsJ
         E5yALEB5veJpBQ3L0nCtCtSKjFRTA+9raE0qJDUwC3adKC7jK3M3znUADfysrBHP9Vkm
         oPAmzy6XSCO+a3IFAMjk5wMb/jlagJfwE2Spik201mlkntV4v/ShGNNXbOuLATzDNKoy
         0tv/YjR9VPdPFPCpzS3U1/DBx1tghUPCqjdzvZngKVwUOJTa44r1OU2RqZltQQwetlzK
         3mjA==
X-Received: by 10.66.237.35 with SMTP id uz3mr17430802pac.46.1427288874627;
        Wed, 25 Mar 2015 06:07:54 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id l2sm2469638pdb.81.2015.03.25.06.07.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 06:07:53 -0700 (PDT)
Date: Wed, 25 Mar 2015 18:35:46 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8188eu: Reduce line size to increase
 readability
Message-ID: <a6f7c189e56e32ee4882e9e13243ae08b7eaabea.1427288450.git.vatikaharlalka@gmail.com>
References: <cover.1427288450.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427288450.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Reduce line size to increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   | 50 +++++++++++++++-------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 353ff37..22e4309 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -115,17 +115,21 @@ static void odm_SetTxRPTTiming_8188E(
 	}
 	pRaInfo->RptTime = DynamicTxRPTTiming[idx];
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("pRaInfo->RptTime = 0x%x\n", pRaInfo->RptTime));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+			("pRaInfo->RptTime = 0x%x\n", pRaInfo->RptTime));
 }
 
-static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_info *pRaInfo)
+static int odm_RateDown_8188E(struct odm_dm_struct *dm_odm,
+				struct odm_ra_info *pRaInfo)
 {
 	u8 RateID, LowestRate, HighestRate;
 	u8 i;
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, ("=====>odm_RateDown_8188E()\n"));
 	if (NULL == pRaInfo) {
-		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("odm_RateDown_8188E(): pRaInfo is NULL\n"));
+		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+				("odm_RateDown_8188E(): pRaInfo is NULL\n"));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -167,10 +171,15 @@ RateDownFinish:
 
 	pRaInfo->DecisionRate = RateID;
 	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 2);
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("Rate down, RPT Timing default\n"));
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("RAWaitingCounter %d, RAPendingCounter %d", pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateDown_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_LOUD, ("Rate down, RPT Timing default\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
+			("RAWaitingCounter %d, RAPendingCounter %d",
+			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+			("Rate down to RateID %d RateSGI %d\n", RateID, pRaInfo->RateSGI));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
+			("<===== odm_RateDown_8188E()\n"));
 	return 0;
 }
 
@@ -182,9 +191,11 @@ static int odm_RateUp_8188E(
 	u8 RateID, HighestRate;
 	u8 i;
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, ("=====>odm_RateUp_8188E()\n"));
 	if (NULL == pRaInfo) {
-		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("odm_RateUp_8188E(): pRaInfo is NULL\n"));
+		ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+				("odm_RateUp_8188E(): pRaInfo is NULL\n"));
 		return -1;
 	}
 	RateID = pRaInfo->PreRate;
@@ -200,7 +211,8 @@ static int odm_RateUp_8188E(
 		goto RateUpfinish;
 	}
 	odm_SetTxRPTTiming_8188E(dm_odm, pRaInfo, 0);
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("odm_RateUp_8188E():Decrease RPT Timing\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+			("odm_RateUp_8188E():Decrease RPT Timing\n"));
 
 	if (RateID < HighestRate) {
 		for (i = RateID+1; i <= HighestRate; i++) {
@@ -218,15 +230,20 @@ static int odm_RateUp_8188E(
 		RateID = HighestRate;
 	}
 RateUpfinish:
-	if (pRaInfo->RAWaitingCounter == (4+PendingForRateUpFail[pRaInfo->RAPendingCounter]))
+	if (pRaInfo->RAWaitingCounter ==
+		(4+PendingForRateUpFail[pRaInfo->RAPendingCounter]))
 		pRaInfo->RAWaitingCounter = 0;
 	else
 		pRaInfo->RAWaitingCounter++;
 
 	pRaInfo->DecisionRate = RateID;
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("Rate up to RateID %d\n", RateID));
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("RAWaitingCounter %d, RAPendingCounter %d", pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
+			("Rate up to RateID %d\n", RateID));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
+			("RAWaitingCounter %d, RAPendingCounter %d",
+			 pRaInfo->RAWaitingCounter, pRaInfo->RAPendingCounter));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE,
+			ODM_DBG_TRACE, ("<===== odm_RateUp_8188E()\n"));
 	return 0;
 }
 
@@ -247,7 +264,8 @@ static void odm_RateDecision_8188E(struct odm_dm_struct *dm_odm,
 	/* u32 pool_retry; */
 	static u8 DynamicTxRPTTimingCounter;
 
-	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE, ("=====>odm_RateDecision_8188E()\n"));
+	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
+			("=====>odm_RateDecision_8188E()\n"));
 
 	if (pRaInfo->Active && (pRaInfo->TOTAL > 0)) { /*  STA used and data packet exits */
 		if ((pRaInfo->RssiStaRA < (pRaInfo->PreRssiStaRA - 3)) ||
-- 
1.9.1


