X-GM-THRID: 3321174687744
X-Received: by 10.194.142.174 with SMTP id rx14mr2435749wjb.4.1424811258408;
        Tue, 24 Feb 2015 12:54:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls733365lac.90.gmail; Tue, 24 Feb
 2015 12:54:17 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr2431808lbb.19.1424811257713;
        Tue, 24 Feb 2015 12:54:17 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id o3si975732wib.2.2015.02.24.12.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 12:54:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id u56so27723306wes.10
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 12:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hmmBvKI1wzVNUKr3QRpoZviKnRSc0svbsA0RPTZyMno=;
        b=AJH2RW+Qh05UQVXJ8DIsX5/MoPDtb/NN8YJVGqm/2VOL4tvv6z3MwTqc+iRdkxtwBz
         kabJmgqgDkhcg1eBgpJp+0Mtn5egJhheBVfLg9cvvM0kME/SPnzjnBAxgIOKw7FFZtrG
         ftSbHhMLFYpN6PZ75F/ppItfE6MDj7AlMyhUXepo9LLBPVt8Ggme7sdtFpUcpn7eO0ef
         HUhcrccfsoMwpXrJKOmmwki8za2kopqXTVDXirDFLRemTDnS+aH2KIaDYsIVMK3SKGYE
         gw5l580FWH/ED2ozNmwyE2d55eUm4ThVow7kHLroEGNhXBoOAE+dXDxLsBRz5BVBc2ny
         1Avw==
X-Received: by 10.194.110.233 with SMTP id id9mr36207226wjb.136.1424811257600;
        Tue, 24 Feb 2015 12:54:17 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id e18sm61799870wjz.27.2015.02.24.12.54.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 12:54:17 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Simplify if condition.
Date: Tue, 24 Feb 2015 21:54:08 +0100
Message-Id: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unnecessary TRUE statement. Fields bDynamicTxLowPower and
bDynamicTxHighPower are of bool type so such change is correct.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 1868352..e000329 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -225,7 +225,7 @@ void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8 powerlevel)
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	TxAGC = powerlevel;
 
-	if (priv->bDynamicTxLowPower == TRUE) {
+	if (priv->bDynamicTxLowPower) {
 		if (priv->CustomerID == RT_CID_819x_Netcore)
 			TxAGC = 0x22;
 		else
@@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
 			priv->Pwr_Track = writeVal_tmp;
 		}
 
-		if (priv->bDynamicTxHighPower == TRUE) {
+		if (priv->bDynamicTxHighPower) {
 			/*Add by Jacken 2008/03/06
 			 *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
 			 */
-- 
1.9.1


