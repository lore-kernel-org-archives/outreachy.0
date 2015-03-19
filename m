X-GM-THRID: 9186991669248
X-Received: by 10.112.44.167 with SMTP id f7mr10130814lbm.9.1426800941233;
        Thu, 19 Mar 2015 14:35:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.237 with SMTP id r13ls348981lal.74.gmail; Thu, 19 Mar
 2015 14:35:40 -0700 (PDT)
X-Received: by 10.152.20.41 with SMTP id k9mr414216lae.10.1426800940543;
        Thu, 19 Mar 2015 14:35:40 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id o3si8605wib.2.2015.03.19.14.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 14:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id v3so73716353wgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 14:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=h4HjmZerclD5xqh0VSoIn96IfpD4Q9gLaZeJB0blvio=;
        b=F0hkDgaoE/k6/7qHc675v2zyxCGtAW7iul/q9tXER/7sC58OS6I457zRPAIvQKgl7z
         Dd5TmT395dG9UR37fJLks5LMUkR9ciFk0zg3X8zOYGVbH4qVr/T4jebSLuksseY3aLBt
         r8HTYBsw9zbBACd4W6labf0VM1QCxSQG+YNet77PqtNaKeE6uKtKL7EeH1Z7S/Sp/Wx8
         K8GT4tYMinqsEUJPEz/fji7dTryJNmxhh9h4mcptiUOCZrP1vTO5tgcKVWa3usbtADxM
         xhL8rx0ZuzGX9rDtFkaoj5TpSe3xFAhaI7wsiaA2HW75NLtuiilRrJthfUrV8Q+i671x
         ayBg==
X-Received: by 10.180.126.69 with SMTP id mw5mr20227447wib.12.1426800940410;
        Thu, 19 Mar 2015 14:35:40 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id e18sm3605284wjz.27.2015.03.19.14.35.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2015 14:35:39 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: Change from // to /* */
Date: Thu, 19 Mar 2015 23:35:33 +0200
Message-Id: <1426800933-25598-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the all '//' and instead of '/* */' put.
This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/mac.c | 80 ++++++++++++++++++++++----------------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 3653a2b..59452e9 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -141,7 +141,7 @@ bool MACbIsIntDisable(void __iomem *dwIoBase)
  */
 void MACvSetShortRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
 {
-	// set SRT
+	/* set SRT */
 	VNSvOutPortB(dwIoBase + MAC_REG_SRT, byRetryLimit);
 }
 
@@ -162,7 +162,7 @@ void MACvSetShortRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
  */
 void MACvSetLongRetryLimit(void __iomem *dwIoBase, unsigned char byRetryLimit)
 {
-	// set LRT
+	/* set LRT */
 	VNSvOutPortB(dwIoBase + MAC_REG_LRT, byRetryLimit);
 }
 
@@ -186,7 +186,7 @@ void MACvSetLoopbackMode(void __iomem *dwIoBase, unsigned char byLoopbackMode)
 
 	ASSERT(byLoopbackMode < 3);
 	byLoopbackMode <<= 6;
-	// set TCR
+	/* set TCR */
 	VNSvInPortB(dwIoBase + MAC_REG_TEST, &byOrgValue);
 	byOrgValue = byOrgValue & 0x3F;
 	byOrgValue = byOrgValue | byLoopbackMode;
@@ -210,13 +210,13 @@ void MACvSaveContext(void __iomem *dwIoBase, unsigned char *pbyCxtBuf)
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
 
@@ -242,27 +242,27 @@ void MACvRestoreContext(void __iomem *dwIoBase, unsigned char *pbyCxtBuf)
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
@@ -290,7 +290,7 @@ bool MACbSoftwareReset(void __iomem *dwIoBase)
 	unsigned char byData;
 	unsigned short ww;
 
-	// turn on HOSTCR_SOFTRST, just write 0x01 to reset
+	/* turn on HOSTCR_SOFTRST, just write 0x01 to reset */
 	VNSvOutPortB(dwIoBase + MAC_REG_HOSTCR, 0x01);
 
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -321,15 +321,15 @@ bool MACbSafeSoftwareReset(void __iomem *dwIoBase)
 	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0+MAC_MAX_CONTEXT_SIZE_PAGE1];
 	bool bRetVal;
 
-	// PATCH....
-	// save some important register's value, then do
-	// reset, then restore register's value
+	/* PATCH....
+	 * save some important register's value, then do
+	 * reset, then restore register's value
 
-	// save MAC context
+	 * save MAC context */
 	MACvSaveContext(dwIoBase, abyTmpRegData);
-	// do reset
+	/* do reset */
 	bRetVal = MACbSoftwareReset(dwIoBase);
-	// restore MAC context, except CR0
+	/* restore MAC context, except CR0 */
 	MACvRestoreContext(dwIoBase, abyTmpRegData);
 
 	return bRetVal;
@@ -354,9 +354,9 @@ bool MACbSafeRxOff(void __iomem *dwIoBase)
 	unsigned long dwData;
 	unsigned char byData;
 
-	// turn off wow temp for turn off Rx safely
+	/* turn off wow temp for turn off Rx safely
 
-	// Clear RX DMA0,1
+	 Clear RX DMA0,1 */
 	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL0, DMACTL_CLRRUN);
 	VNSvOutPortD(dwIoBase + MAC_REG_RXDMACTL1, DMACTL_CLRRUN);
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -380,9 +380,9 @@ bool MACbSafeRxOff(void __iomem *dwIoBase)
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
@@ -415,10 +415,10 @@ bool MACbSafeTxOff(void __iomem *dwIoBase)
 	unsigned long dwData;
 	unsigned char byData;
 
-	// Clear TX DMA
-	//Tx0
+	/* Clear TX DMA
+	Tx0 */
 	VNSvOutPortD(dwIoBase + MAC_REG_TXDMACTL0, DMACTL_CLRRUN);
-	//AC0
+	/* AC0 */
 	VNSvOutPortD(dwIoBase + MAC_REG_AC0DMACTL, DMACTL_CLRRUN);
 
 	for (ww = 0; ww < W_MAX_TIMEOUT; ww++) {
@@ -442,10 +442,10 @@ bool MACbSafeTxOff(void __iomem *dwIoBase)
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
@@ -509,10 +509,10 @@ bool MACbSafeStop(void __iomem *dwIoBase)
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
@@ -536,18 +536,18 @@ bool MACbShutdown(void __iomem *dwIoBase)
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
 
@@ -678,7 +678,7 @@ void MACvSetCurrTx0DescAddrEx(void __iomem *dwIoBase, unsigned long dwCurrDescAd
  * Return Value: none
  *
  */
-//TxDMA1 = AC0DMA
+/* TxDMA1 = AC0DMA */
 void MACvSetCurrAC0DescAddrEx(void __iomem *dwIoBase, unsigned long dwCurrDescAddr)
 {
 	unsigned short ww;
@@ -733,7 +733,7 @@ void MACvTimer0MicroSDelay(void __iomem *dwIoBase, unsigned int uDelay)
 	VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, 0);
 	VNSvOutPortD(dwIoBase + MAC_REG_TMDATA0, uDelay);
 	VNSvOutPortB(dwIoBase + MAC_REG_TMCTL0, (TMCTL_TMD | TMCTL_TE));
-	for (ii = 0; ii < 66; ii++) {  // assume max PCI clock is 66Mhz
+	for (ii = 0; ii < 66; ii++) {  /* assume max PCI clock is 66Mhz */
 		for (uu = 0; uu < uDelay; uu++) {
 			VNSvInPortB(dwIoBase + MAC_REG_TMCTL0, &byValue);
 			if ((byValue == 0) ||
@@ -780,14 +780,14 @@ bool MACbPSWakeup(void __iomem *dwIoBase)
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
 		VNSvInPortB(dwIoBase + MAC_REG_PSCTL, &byOrgValue);
 		if (byOrgValue & PSCTL_WAKEDONE)
@@ -859,7 +859,7 @@ void MACvSetKeyEntry(void __iomem *dwIoBase, unsigned short wKeyCtl, unsigned in
 
 	wOffset += (uKeyIdx * 4);
 	for (ii = 0; ii < 4; ii++) {
-		// always push 128 bits
+		/* always push 128 bits */
 		pr_debug("3.(%d) wOffset: %d, Data: %X\n",
 			 ii, wOffset+ii, *pdwKey);
 		VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, wOffset+ii);
-- 
1.9.1


