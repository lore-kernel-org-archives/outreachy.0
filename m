X-GM-THRID: 4353845886976
X-Received: by 10.112.162.135 with SMTP id ya7mr1928162lbb.14.1425030785097;
        Fri, 27 Feb 2015 01:53:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.210 with SMTP id ba18ls131011lab.78.gmail; Fri, 27 Feb
 2015 01:53:04 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr1883356lbb.6.1425030784597;
        Fri, 27 Feb 2015 01:53:04 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id r6si87031wix.0.2015.02.27.01.53.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 01:53:04 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so18917442wgh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 01:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=/iLpzu6twTDTho55wyXIpCgMMdq9F907knKaLasNubw=;
        b=YS0+IWY1C392vJ8FbRKXsWO0ns0jI6C5oxSa3JFPChbGWDAMLsIOaJ5knMa9Lj8GN7
         0JgC3/JGd7PTpBts8UDDt3zMLAoaSEnbNBzoRLmFLesoH4shwqRucHtcw6u/PNuYmBML
         85AN7uh/vSqoUM+RrTx7uSrQtgy2LCcPRC1WcO7YcRATrp49wkwRhZY4388u9eJJ0cES
         zWo6Vn80mk4fKkuGLU8oWfkffVNe3x7lb8gaufzNNx2wqbi06hcWP3KKK9KCKc8IB2SI
         IOlTMXP4RR6LKOM/cfoiNYQX/1CqPjEKkqw9PrAlj4u87C5psSFkiduiaAe/Vq6prgl8
         +9Mg==
X-Received: by 10.180.77.196 with SMTP id u4mr4974088wiw.6.1425030784368;
        Fri, 27 Feb 2015 01:53:04 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id lg18sm1996195wic.23.2015.02.27.01.53.01
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 01:53:03 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix do not use C99 // comments
Date: Fri, 27 Feb 2015 11:53:12 +0200
Message-Id: <1425030792-6216-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

Fix checkpatch.pl issues with do not use C99 //
comments in device_main.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 4324282..9b4f38a 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -64,9 +64,9 @@
 #include <linux/slab.h>
 
 /*---------------------  Static Definitions -------------------------*/
-//
-// Define module options
-//
+/* */
+/* Define module options */
+/* */
 MODULE_AUTHOR("VIA Networking Technologies, Inc., <lyndonchen@vntek.com.tw>");
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("VIA Networking Solomon-A/B/G Wireless LAN Adapter Driver");
@@ -126,9 +126,9 @@ DEVICE_PARAM(LongRetryLimit, "long frame retry limits");
 
 DEVICE_PARAM(BasebandType, "baseband type");
 
-//
-// Static vars definitions
-//
+/* */
+/* Static vars definitions */
+/* */
 static CHIP_INFO chip_info_table[] = {
 	{ VT3253,       "VIA Networking Solomon-A/B/G Wireless LAN Adapter ",
 	  256, 1,     DEVICE_FLAGS_IP_ALIGN|DEVICE_FLAGS_TX_ALIGN },
@@ -231,9 +231,9 @@ device_set_options(struct vnt_private *pDevice)
 	pr_debug(" byBBType= %d\n", (int)pDevice->byBBType);
 }
 
-//
-// Initialisation of MAC & BBP registers
-//
+/* */
+/* Initialisation of MAC & BBP registers */
+/* */
 
 static void device_init_registers(struct vnt_private *pDevice)
 {
@@ -584,7 +584,7 @@ static bool device_init_rings(struct vnt_private *pDevice)
 	pDevice->td1_pool_dma = pDevice->td0_pool_dma +
 		pDevice->sOpts.nTxDescs[0] * sizeof(STxDesc);
 
-	// vir_pool: pvoid type
+	/* vir_pool: pvoid type */
 	pDevice->apTD0Rings = vir_pool
 		+ pDevice->sOpts.nRxDescs0 * sizeof(SRxDesc)
 		+ pDevice->sOpts.nRxDescs1 * sizeof(SRxDesc);
@@ -943,7 +943,7 @@ static int device_tx_srv(struct vnt_private *pDevice, unsigned int uIdx)
 		byTsr0 = pTD->m_td0TD0.byTSR0;
 		byTsr1 = pTD->m_td0TD0.byTSR1;
 
-		//Only the status of first TD in the chain is correct
+		/* Only the status of first TD in the chain is correct */
 		if (pTD->m_td1TD1.byTCR & TCR_STP) {
 			if ((pTD->pTDInfo->byFlags & TD_FLAGS_NETIF_SKB) != 0) {
 
@@ -992,7 +992,7 @@ static void device_free_tx_buf(struct vnt_private *pDevice, PSTxDesc pDesc)
 	PDEVICE_TD_INFO  pTDInfo = pDesc->pTDInfo;
 	struct sk_buff *skb = pTDInfo->skb;
 
-	// pre-allocated buf_dma can't be unmapped.
+	/* pre-allocated buf_dma can't be unmapped. */
 	if (pTDInfo->skb_dma && (pTDInfo->skb_dma != pTDInfo->buf_dma)) {
 		pci_unmap_single(pDevice->pcid, pTDInfo->skb_dma, skb->len,
 				 PCI_DMA_TODEVICE);
@@ -1084,7 +1084,7 @@ static  irqreturn_t  device_intr(int irq,  void *dev_instance)
 
 	spin_lock_irqsave(&pDevice->lock, flags);
 
-	//Make sure current page is 0
+	/* Make sure current page is 0 */
 	VNSvInPortB(pDevice->PortOffset + MAC_REG_PAGE1SEL, &byOrgPageSel);
 	if (byOrgPageSel == 1)
 		MACvSelectPage0(pDevice->PortOffset);
@@ -1092,10 +1092,10 @@ static  irqreturn_t  device_intr(int irq,  void *dev_instance)
 		byOrgPageSel = 0;
 
 	MACvReadMIBCounter(pDevice->PortOffset, &dwMIBCounter);
-	// TBD....
-	// Must do this after doing rx/tx, cause ISR bit is slow
-	// than RD/TD write back
-	// update ISR counter
+	/* TBD.... */
+	/* Must do this after doing rx/tx, cause ISR bit is slow */
+	/* than RD/TD write back */
+	/* update ISR counter */
 	STAvUpdate802_11Counter(&pDevice->s802_11Counter, &pDevice->scStatistic, dwMIBCounter);
 	while (pDevice->dwIsr != 0) {
 		STAvUpdateIsrStatCounter(&pDevice->scStatistic, pDevice->dwIsr);
-- 
1.8.3.2


