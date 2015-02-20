X-GM-THRID: 1437501227008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,58373dc54f5b2d8c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.105.129 with SMTP id gm1mr33903wib.3.1424457985006;
        Fri, 20 Feb 2015 10:46:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.7 with SMTP id cq7ls332861lad.8.gmail; Fri, 20 Feb 2015
 10:46:24 -0800 (PST)
X-Received: by 10.112.45.197 with SMTP id p5mr1527654lbm.18.1424457984424;
        Fri, 20 Feb 2015 10:46:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x244.google.com (mail-we0-x244.google.com. [2a00:1450:400c:c03::244])
        by gmr-mx.google.com with ESMTPS id ew5si165272wid.1.2015.02.20.10.46.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 10:46:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) client-ip=2a00:1450:400c:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x244.google.com with SMTP id q59so2064443wes.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2W3rIVvR9/vcePqLCatN8xRNey7O1ccIJaaAn08Eihk=;
        b=QbcL/BI8ZsCtlMV7S8wUxbzX3h3TbL4zcGE8egGMz3hnPzAahDvj6+A5lzM4vma8sy
         liMYQ3oApThZJyUsTxknIsA/AClQuDqzzkC6a97wrU8OT730z2sA9va39htyfrQf9jrv
         WSLi16ghXLHrhJ5ZCPl7hirg9VfXZ/Zao1KgNrS7SlU7MpquUFGDdbcDcczd/xTVCVrY
         bJ9Q4/JsrOVBElQXyTqHExjS12+JO4EotqTwIyqHpaCyZONmKPan8ZTDdK2Wbqz4FaVi
         7uJQuX//h8CiOjg/kMYzpTmJFeH/H+J6O/+kg/D2xpBG4Vex0OdhMlKdTZ27cHU+yJ70
         Jxig==
X-Received: by 10.180.7.131 with SMTP id j3mr267785wia.55.1424457984234;
        Fri, 20 Feb 2015 10:46:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id jg3sm3577169wid.0.2015.02.20.10.46.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 10:46:23 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Drivers: staging: vt6655: mac: changed C99 // comments
Date: Fri, 20 Feb 2015 20:46:16 +0200
Message-Id: <1424457976-5427-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /**/ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/mac.c | 82 ++++++++++++++++++++++----------------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 8f0d652..dd241bb 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -142,7 +142,7 @@ bool MACbIsIntDisable(void __iomem *dwIoBase)
  */
 void MACvSetShortRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
 {
-	// set SRT
+	/* set SRT */
 	VNSvOutPortB(dwIoBase + MAC_REG_SRT, byRetryLimit);
 }
 
@@ -161,7 +161,7 @@ void MACvSetShortRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
  */
 void MACvGetShortRetryLimit(void __iomem *dwIoBase, unsigned char *pbyRetryLimit)
 {
-	// get SRT
+	/* get SRT */
 	VNSvInPortB(dwIoBase + MAC_REG_SRT, pbyRetryLimit);
 }
 
@@ -181,7 +181,7 @@ void MACvGetShortRetryLimit(void __iomem *dwIoBase, unsigned char *pbyRetryLimit
  */
 void MACvSetLongRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
 {
-	// set LRT
+	/* set LRT */
 	VNSvOutPortB(dwIoBase + MAC_REG_LRT, byRetryLimit);
 }
 
@@ -205,7 +205,7 @@ void MACvSetLoopbackMode(void __iomem *dwIoBase, unsigned char byLoopbackMode)
 
 	ASSERT(byLoopbackMode < 3);
 	byLoopbackMode <<= 6;
-	// set TCR
+	/* set TCR */
 	VNSvInPortB(dwIoBase + MAC_REG_TEST, &byOrgValue);
 	byOrgValue = byOrgValue & 0x3F;
 	byOrgValue = byOrgValue | byLoopbackMode;
@@ -229,13 +229,13 @@ void MACvSaveContext(void __iomem *dwIoBase, unsigned char *pbyCxtBuf)
 {
 	int         ii;
 
-	// read page0 register
+	/* read page0 register */
 	for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE0; ii++)
 		VNSvInPortB((dwIoBase + ii), (pbyCxtBuf + ii));
 
 	MACvSelectPage1(dwIoBase);
 
-	// read page1 register
+	/* read page1 register */
 	for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE1; ii++)
 		VNSvInPortB((dwIoBase + ii), (pbyCxtBuf + MAC_MAX_CONTEXT_SIZE_PAGE0 + ii));
 
@@ -261,27 +261,27 @@ void MACvRestoreContext(void __iomem *dwIoBase, unsigned char *pbyCxtBuf)
 	int         ii;
 
 	MACvSelectPage1(dwIoBase);
-	// restore page1
+	/* restore page1 */
 	for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE1; ii++)
 		VNSvOutPortB((dwIoBase + ii), *(pbyCxtBuf + MAC_MAX_CONTEXT_SIZE_PAGE0 + ii));
 
 	MACvSelectPage0(dwIoBase);
 
-	// restore RCR,TCR,IMR...
+	/* restore RCR,TCR,IMR... */
 	for (ii = MAC_REG_RCR; ii < MAC_REG_ISR; ii++)
 		VNSvOutPortB(dwIoBase + ii, *(pbyCxtBuf + ii));
 
-	// restore MAC Config.
+	/* restore MAC Config. */
 	for (ii = MAC_REG_LRT; ii < MAC_REG_PAGE1SEL; ii++)
 		VNSvOutPortB(dwIoBase + ii, *(pbyCxtBuf + ii));
 
 	VNSvOutPortB(dwIoBase + MAC_REG_CFG, *(pbyCxtBuf + MAC_REG_CFG));
 
-	// restore PS Config.
+	/* restore PS Config. */
 	for (ii = MAC_REG_PSCFG; ii < MAC_REG_BBREGCTL; ii++)
 		VNSvOutPortB(dwIoBase + ii, *(pbyCxtBuf + ii));
 
-	// restore CURR_RX_DESC_ADDR, CURR_TX_DESC_ADDR
+	/* restore CURR_RX_DESC_ADDR, CURR_TX_DESC_ADDR */
 	VNSvOutPortD(dwIoBase + MAC_REG_TXDMAPTR0, *(unsigned long *)(pbyCxtBuf + MAC_REG_TXDMAPTR0));
 	VNSvOutPortD(dwIoBase + MAC_REG_AC0DMAPTR, *(unsigned long *)(pbyCxtBuf + MAC_REG_AC0DMAPTR));
 	VNSvOutPortD(dwIoBase + MAC_REG_BCNDMAPTR, *(unsigned long *)(pbyCxtBuf + MAC_REG_BCNDMAPTR));
@@ -309,7 +309,7 @@ bool MACbSoftwareReset(void __iomem *dwIoBase)
 	unsigned char byData;
 	unsigned short ww;
 
-	// turn on HOSTCR_SOFTRST, just write 0x01 to reset
+	/* turn on HOSTCR_SOFTRST, just write 0x01 to reset */
 	VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR, 0x01);
 
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -340,15 +340,15 @@ bool MACbSafeSoftwareReset(void __iomem *dwIoBase)
 	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0+MAC_MAX_CONTEXT_SIZE_PAGE1];
 	bool bRetVal;
 
-	// PATCH....
-	// save some important register's value, then do
-	// reset, then restore register's value
+	/* PATCH.... */
+	/* save some important register's value, then do */
+	/* reset, then restore register's value */
 
-	// save MAC context
+	/* save MAC context */
 	MACvSaveContext(dwIoBase, abyTmpRegData);
-	// do reset
+	/* do reset */
 	bRetVal = MACbSoftwareReset(dwIoBase);
-	// restore MAC context, except CR0
+	/* restore MAC context, except CR0 */
 	MACvRestoreContext(dwIoBase, abyTmpRegData);
 
 	return bRetVal;
@@ -373,9 +373,9 @@ bool MACbSafeRxOff(void __iomem *dwIoBase)
 	unsigned long dwData;
 	unsigned char byData;
 
-	// turn off wow temp for turn off Rx safely
+	/* turn off wow temp for turn off Rx safely */
 
-	// Clear RX DMA0,1
+	/* Clear RX DMA0,1 */
 	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_CLRRUN);
 	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_CLRRUN);
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -399,9 +399,9 @@ bool MACbSafeRxOff(void __iomem *dwIoBase)
 		return false;
 	}
 
-	// try to safe shutdown RX
+	/* try to safe shutdown RX */
 	MACvRegBitsOff(dwIoBase, MAC_REG_HOSTCR, HOSTCR_RXON);
-	// W_MAX_TIMEOUT is the timeout period
+	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
 		VNSvInPortB(dwIoBase + MAC_REG_HOSTCR, &byData);
 		if (!(byData & HOSTCR_RXONST))
@@ -434,10 +434,10 @@ bool MACbSafeTxOff(void __iomem *dwIoBase)
 	unsigned long dwData;
 	unsigned char byData;
 
-	// Clear TX DMA
-	//Tx0
+	/* Clear TX DMA */
+	/* Tx0 */
 	VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_CLRRUN);
-	//AC0
+	/* AC0 */
 	VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_CLRRUN);
 
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -461,10 +461,10 @@ bool MACbSafeTxOff(void __iomem *dwIoBase)
 		return false;
 	}
 
-	// try to safe shutdown TX
+	/* try to safe shutdown TX */
 	MACvRegBitsOff(dwIoBase, MAC_REG_HOSTCR, HOSTCR_TXON);
 
-	// W_MAX_TIMEOUT is the timeout period
+	/* W_MAX_TIMEOUT is the timeout period */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
 		VNSvInPortB(dwIoBase + MAC_REG_HOSTCR, &byData);
 		if (!(byData & HOSTCR_TXONST))
@@ -528,10 +528,10 @@ bool MACbSafeStop(void __iomem *dwIoBase)
  */
 bool MACbShutdown(void __iomem *dwIoBase)
 {
-	// disable MAC IMR
+	/* disable MAC IMR */
 	MACvIntDisable(dwIoBase);
 	MACvSetLoopbackMode(dwIoBase, MAC_LB_INTERNAL);
-	// stop the adapter
+	/* stop the adapter */
 	if (!MACbSafeStop(dwIoBase)) {
 		MACvSetLoopbackMode(dwIoBase, MAC_LB_NONE);
 		return false;
@@ -555,18 +555,18 @@ bool MACbShutdown(void __iomem *dwIoBase)
  */
 void MACvInitialize(void __iomem *dwIoBase)
 {
-	// clear sticky bits
+	/* clear sticky bits */
 	MACvClearStckDS(dwIoBase);
-	// disable force PME-enable
+	/* disable force PME-enable */
 	VNSvOutPortB(dwIoBase + MAC_REG_PMC1, PME_OVR);
-	// only 3253 A
+	/* only 3253 A */
 
-	// do reset
+	/* do reset */
 	MACbSoftwareReset(dwIoBase);
 
-	// reset TSF counter
+	/* reset TSF counter */
 	VNSvOutPortB(dwIoBase + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);
-	// enable TSF counter
+	/* enable TSF counter */
 	VNSvOutPortB(dwIoBase + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
 }
 
@@ -697,7 +697,7 @@ void MACvSetCurrTx0DescAddrEx(void __iomem *dwIoBase, unsigned long dwCurrDescAd
  * Return Value: none
  *
  */
-//TxDMA1 = AC0DMA
+/* TxDMA1 = AC0DMA */
 void MACvSetCurrAC0DescAddrEx(void __iomem *dwIoBase, unsigned long dwCurrDescAddr)
 {
 	unsigned short ww;
@@ -752,7 +752,7 @@ void MACvTimer0MicroSDelay(void __iomem *dwIoBase, unsigned int uDelay)
 	VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, 0);
 	VNSvOutPortD(dwIoBase + MAC_REG_TMDATA0, uDelay);
 	VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, (TMCTL_TMD | TMCTL_TE));
-	for (ii = 0; ii < 66; ii++) {  // assume max PCI clock is 66Mhz
+	for (ii = 0; ii < 66; ii++) {  /* assume max PCI clock is 66Mhz */
 		for (uu = 0; uu < uDelay; uu++) {
 			VNSvInPortB(dwIoBase + MAC_REG_TMCTL0, &byValue);
 			if ((byValue == 0) ||
@@ -799,14 +799,14 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
 {
 	unsigned char byOrgValue;
 	unsigned int ww;
-	// Read PSCTL
+	/* Read PSCTL */
 	if (MACbIsRegBitsOff(dwIoBase, MAC_REG_PSCTL, PSCTL_PS))
 		return true;
 
-	// Disable PS
+	/* Disable PS */
 	MACvRegBitsOff(dwIoBase, MAC_REG_PSCTL, PSCTL_PSEN);
 
-	// Check if SyncFlushOK
+	/* Check if SyncFlushOK */
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
 		VNSvInPortB(dwIoBase + MAC_REG_PSCTL , &byOrgValue);
 		if (byOrgValue & PSCTL_WAKEDONE)
@@ -878,7 +878,7 @@ void MACvSetKeyEntry(void __iomem *dwIoBase, unsigned short wKeyCtl, unsigned in
 
 	wOffset += (uKeyIdx * 4);
 	for (ii = 0; ii < 4; ii++) {
-		// always push 128 bits
+		/* always push 128 bits */
 		pr_debug("3.(%d) wOffset: %d, Data: %X\n",
 			 ii, wOffset+ii, *pdwKey);
 		VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, wOffset+ii);
-- 
1.9.1


