X-GM-THRID: 6253704501095563264
X-Received: by 10.98.72.199 with SMTP id q68mr21739294pfi.14.1456054044992;
        Sun, 21 Feb 2016 03:27:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.83.36 with SMTP id n4ls361846igy.17.gmail; Sun, 21 Feb 2016
 03:27:24 -0800 (PST)
X-Received: by 10.107.184.195 with SMTP id i186mr23242764iof.24.1456054044701;
        Sun, 21 Feb 2016 03:27:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id u66si2849885pfa.2.2016.02.21.03.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 03:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so76688582pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 03:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oBx8LOdl+S9M3tcWVAQbGk0uLYRO3NMFXaDmRWLfVGc=;
        b=xaz/PYdbZCTBnSM3bh3xx1qPBOT1DWz7eOYxykOTMwzULa9vp+C9p0FEyOPGvRxcL0
         LfPtJIfrCJbjcRiecDJ4Bo3QB73p5ktk/8+oDgmFwzII1bkMbU6y8SM9V26khopOm/sm
         8SDyFt7FlJzXY4spkMMrJmfoGDKS7IVwdcSJ3wAp2D4yrph1MvmN51xOfkI6K9yyW8JW
         w4Pjt/WNonA4hlNrHoIMQlFV/ID2az3kRHmzqhwcO9b19v6omrJ39+1KYXE9EtboDggm
         xK0HaRW0Xi0so5Bav+si7hFhktUO4iBu+zgpZLG1rs7ZWizpVA40wGYD+dx/HZ/KwKD8
         lGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=oBx8LOdl+S9M3tcWVAQbGk0uLYRO3NMFXaDmRWLfVGc=;
        b=N14zAPZLYMOXMnZ9fmAxIJrb5J0SrMAMmiy/S4s0RrwXZN/OkJSwSdCsMcBj5a1Ae3
         PzODVajSSSPK4cOqnRAZbCVs3U4HSBPIyxwl2q2FzyICPwxQyTTsbn47qsmB0ze66LUb
         NR7spTd/oEBxntQEgIKWYcd1bRpBsW9xduqbeZdxWggGTq+5VS3CbYYYAchvMNTGb/6a
         jjcaSu+GDlL3s66SKFqhimXJzxAG36z5gFFPvjeaL0Lqe0vAvr6fFTedP1JBIZ4K4qia
         gSllFw9/MM5g2tpV+rz4401lxcMdIaUZIExlsjLncHVMKySJEvOBpPRRc/JfVFX96gw4
         d2Dg==
X-Gm-Message-State: AG10YOS/67AidwtvkIIER11i6Pnxd5kmithusJCipKP2+BrCDYogpiZ0KlmcgfBNh8PfOA==
X-Received: by 10.98.93.155 with SMTP id n27mr30615491pfj.88.1456054044573;
        Sun, 21 Feb 2016 03:27:24 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ta2sm29653365pab.42.2016.02.21.03.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 03:27:24 -0800 (PST)
Date: Sun, 21 Feb 2016 16:57:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Prefer kmalloc_array over
 kmalloc
Message-ID: <20160221112752.GA28003@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:
@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(sizeof(e1)*e2, C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(e1), C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(t), C)
+ kmalloc_array(e2, sizeof(t), C)
|
- kmalloc(sizeof(t)*e2, C)
+ kmalloc_array(e2, sizeof(t), C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 9dfde07..b45c12f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -601,8 +601,9 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);

-	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
-			REORDER_WIN_SIZE, GFP_KERNEL);
+	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
+					  sizeof(struct ieee80211_rxb *),
+					  GFP_KERNEL);
 	if (!prxbIndicateArray)
 		return;

--
2.1.4


