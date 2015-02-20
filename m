X-GM-THRID: 1468298952704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d6b71599a99892e7,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.13.236 with SMTP id fb12mr6311wid.1.1424460094031;
        Fri, 20 Feb 2015 11:21:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls324145lae.5.gmail; Fri, 20 Feb 2015
 11:21:33 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr1507264lah.8.1424460093063;
        Fri, 20 Feb 2015 11:21:33 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id ew5si168648wid.1.2015.02.20.11.21.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:21:33 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x242.google.com with SMTP id hi2so1858515wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IoTUYwvdy/R93A//3z2gy1i8NTCkyri8HjKAGyUjt7o=;
        b=Y2BnIAklLMtiULlkCj+9LUFKcHqRVrFeh35Saw0E5CWDCcz7mBTuvWMjPbVw8RgE5u
         jfYVoerpcK0Weu7MaKDaq3p9Lkb9qbv1iSPZUW7MWFEvMWhnsq0SGq1eEdm1Q3q4L7OR
         TMj+pe6praJXq/Ga3G+NgQ48e5rgyM5ZlN1OPkfpirdU+OKh9LRT3Vb+rfU9d0IYXUyy
         pURLQ4IWhZPEMbCCyDTHUkEJpeF/K31q8/vAmD5nfhUmZpvkhYjqkyI6qERRC4nCjKXo
         +5R7bzpsm/V6wVi6WMg6prqocwDzu2AKW54H3m9r4jIJcSGQACxlRfK2LKUkXjSAsh0t
         NOiw==
X-Received: by 10.194.62.52 with SMTP id v20mr21909579wjr.137.1424460092962;
        Fri, 20 Feb 2015 11:21:32 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id hs7sm3688383wib.4.2015.02.20.11.21.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 11:21:32 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: power: changed C99 // comments
Date: Fri, 20 Feb 2015 21:21:25 +0200
Message-Id: <1424460085-6420-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /**/ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/power.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index e826f07..be3c4e9 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -71,33 +71,33 @@ PSvEnablePowerSaving(
 	struct vnt_private *pDevice = hDeviceContext;
 	u16 wAID = pDevice->current_aid | BIT(14) | BIT(15);
 
-	// set period of power up before TBTT
+	/* set period of power up before TBTT */
 	VNSvOutPortW(pDevice->PortOffset + MAC_REG_PWBT, C_PWBT);
 	if (pDevice->op_mode != NL80211_IFTYPE_ADHOC) {
-		// set AID
+		/* set AID */
 		VNSvOutPortW(pDevice->PortOffset + MAC_REG_AIDATIM, wAID);
 	} else {
-		// set ATIM Window
+		/* set ATIM Window */
 #if 0 /* TODO atim window */
 		MACvWriteATIMW(pDevice->PortOffset, pMgmt->wCurrATIMWindow);
 #endif
 	}
-	// Set AutoSleep
+	/* Set AutoSleep */
 	MACvRegBitsOn(pDevice->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-	// Set HWUTSF
+	/* Set HWUTSF */
 	MACvRegBitsOn(pDevice->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
 
 	if (wListenInterval >= 2) {
-		// clear always listen beacon
+		/* clear always listen beacon */
 		MACvRegBitsOff(pDevice->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
-		// first time set listen next beacon
+		/* first time set listen next beacon */
 		MACvRegBitsOn(pDevice->PortOffset, MAC_REG_PSCTL, PSCTL_LNBCN);
 	} else {
-		// always listen beacon
+		/* always listen beacon */
 		MACvRegBitsOn(pDevice->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 	}
 
-	// enable power saving hw function
+	/* enable power saving hw function */
 	MACvRegBitsOn(pDevice->PortOffset, MAC_REG_PSCTL, PSCTL_PSEN);
 	pDevice->bEnablePSMode = true;
 
@@ -122,13 +122,13 @@ PSvDisablePowerSaving(
 {
 	struct vnt_private *pDevice = hDeviceContext;
 
-	// disable power saving hw function
+	/* disable power saving hw function */
 	MACbPSWakeup(pDevice->PortOffset);
-	//clear AutoSleep
+	/* clear AutoSleep */
 	MACvRegBitsOff(pDevice->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);
-	//clear HWUTSF
+	/* clear HWUTSF */
 	MACvRegBitsOff(pDevice->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);
-	// set always listen beacon
+	/* set always listen beacon */
 	MACvRegBitsOn(pDevice->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 
 	pDevice->bEnablePSMode = false;
-- 
1.9.1


