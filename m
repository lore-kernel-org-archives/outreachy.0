X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.209.164 with SMTP id mn4mr5664335pbc.8.1426985642997;
        Sat, 21 Mar 2015 17:54:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.213 with SMTP id 79ls2019826qgn.12.gmail; Sat, 21 Mar
 2015 17:54:02 -0700 (PDT)
X-Received: by 10.236.62.193 with SMTP id y41mr95528893yhc.38.1426985642755;
        Sat, 21 Mar 2015 17:54:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ri9si1198570pdb.1.2015.03.21.17.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id we9so149685474pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5J6v1zM8CP4fU1iUCGLjTUCYKzwhv6ClC1a4viTicCY=;
        b=m7gYzYds/usrv0Mft8RAuVqv9ceRtp64VcW68hTxJA7ASbFzYwOYm0dGPy58X0f/Jt
         mGtc6VxXg9P12CyshmzBPpq7D93TNeuPYGy/VJ7K28DE/TDEix6BcbfUSoleQJLduUyR
         kvjPsGq7VC/K0rSke3t3ie5kR9ymGBxNulcCCm8EWITy+7zz3en5rMiV4xugn/f3xJfv
         6fHgbBfxDYrqnsP/Zq/yK3sfuMSPldSMf7YkXDDJKaAD1evAOS8eDbT1DnhlM2AAJsO0
         vQl7XwdjaGy08dvtlQAGV0ewIMGq3YjOh9K8Z5B1fCDb8/4wL0WnmcOM2jM2ACrdsp5n
         4MaA==
X-Received: by 10.70.100.39 with SMTP id ev7mr49968881pdb.29.1426985642653;
        Sat, 21 Mar 2015 17:54:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id tg14sm12722996pac.15.2015.03.21.17.54.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:54:01 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:22:01 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/10] Staging: rtl8712: Fix invalid assignment '|=' in
 rtl8712_xmit.c
Message-ID: <08ca313c059de0a0f10e692f7759c77b0910a342.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to fix Sparse warnings related to
invalid assignment '|=' in rtl8712_xmit.c

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 46 +++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index a3093ac..732e774 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -436,7 +436,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	memcpy(&txdesc_mp, ptxdesc, sizeof(struct tx_desc));
 	memset(ptxdesc, 0, sizeof(struct tx_desc));
 	/* offset 0 */
-	ptxdesc->txdw0 |= cpu_to_le32(sz&0x0000ffff);
+	ptxdesc->txdw0 |= sz&0x0000ffff;
 	if (pdvobj->ishighspeed) {
 		if (((sz + TXDESC_SIZE) % 512) == 0)
 			blnSetTxDescOffset = 1;
@@ -450,17 +450,17 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	}
 	if (blnSetTxDescOffset) {
 		/* 32 bytes for TX Desc + 8 bytes pending */
-		ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ + 8) <<
-			      OFFSET_SHT) & 0x00ff0000);
+		ptxdesc->txdw0 |= ((TXDESC_SIZE+OFFSET_SZ + 8) <<
+			      OFFSET_SHT) & 0x00ff0000;
 	} else {
 		/* default = 32 bytes for TX Desc */
-		ptxdesc->txdw0 |= cpu_to_le32(((TXDESC_SIZE+OFFSET_SZ) <<
-				  OFFSET_SHT) & 0x00ff0000);
+		ptxdesc->txdw0 |= ((TXDESC_SIZE+OFFSET_SZ) <<
+				  OFFSET_SHT) & 0x00ff0000;
 	}
-	ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG);
+	ptxdesc->txdw0 |= OWN | FSG | LSG;
 	if (pxmitframe->frame_tag == DATA_FRAMETAG) {
 		/* offset 4 */
-		ptxdesc->txdw1 |= cpu_to_le32((pattrib->mac_id)&0x1f);
+		ptxdesc->txdw1 |= (pattrib->mac_id)&0x1f;
 
 #ifdef CONFIG_R8712_TX_AGGR
 		/* dirty workaround, need to check if it is aggr cmd. */
@@ -493,28 +493,28 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		pattrib->qsel = 0x13;
 #else
 		qsel = (uint)(pattrib->qsel & 0x0000001f);
-		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
+		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
 #endif
 		if (!pqospriv->qos_option)
-			ptxdesc->txdw1 |= cpu_to_le32(BIT(16));/*Non-QoS*/
+			ptxdesc->txdw1 |= BIT(16);/*Non-QoS*/
 		if ((pattrib->encrypt > 0) && !pattrib->bswenc) {
 			switch (pattrib->encrypt) {	/*SEC_TYPE*/
 			case _WEP40_:
 			case _WEP104_:
-				ptxdesc->txdw1 |= cpu_to_le32((0x01 << 22) &
+				ptxdesc->txdw1 |= ((0x01 << 22) &
 						  0x00c00000);
 				/*KEY_ID when WEP is used;*/
-				ptxdesc->txdw1 |= cpu_to_le32((psecuritypriv->
+				ptxdesc->txdw1 |= ((psecuritypriv->
 						  PrivacyKeyIndex << 17) &
 						  0x00060000);
 				break;
 			case _TKIP_:
 			case _TKIP_WTMIC_:
-				ptxdesc->txdw1 |= cpu_to_le32((0x02 << 22) &
+				ptxdesc->txdw1 |= ((0x02 << 22) &
 						  0x00c00000);
 				break;
 			case _AES_:
-				ptxdesc->txdw1 |= cpu_to_le32((0x03 << 22) &
+				ptxdesc->txdw1 |= ((0x03 << 22) &
 						  0x00c00000);
 				break;
 			case _NO_PRIVACY_:
@@ -524,7 +524,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		}
 		/*offset 8*/
 		if (bmcst)
-			ptxdesc->txdw2 |= cpu_to_le32(BMC);
+			ptxdesc->txdw2 |= BMC;
 
 		/*offset 12*/
 		/* f/w will increase the seqnum by itself, driver pass the
@@ -534,7 +534,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		 * the correct mapping between AC&Endpoint,
 		 * the purpose is that correct mapping lets the MAC release
 		 * the AC Queue list correctly. */
-		ptxdesc->txdw3 = cpu_to_le32((pattrib->priority << SEQ_SHT) &
+		ptxdesc->txdw3 = ((pattrib->priority << SEQ_SHT) &
 				 0x0fff0000);
 		if ((pattrib->ether_type != 0x888e) &&
 		    (pattrib->ether_type != 0x0806) &&
@@ -542,7 +542,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 			/*Not EAP & ARP type data packet*/
 			if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
 				if (phtpriv->ampdu_enable != true)
-					ptxdesc->txdw2 |= cpu_to_le32(BK);
+					ptxdesc->txdw2 |= BK;
 			}
 		} else {
 			/* EAP data packet and ARP packet.
@@ -560,8 +560,8 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 			/* offset 8 */
 			ptxdesc->txdw2 = cpu_to_le32(ptxdesc_mp->txdw2);
 			if (bmcst)
-				ptxdesc->txdw2 |= cpu_to_le32(BMC);
-			ptxdesc->txdw2 |= cpu_to_le32(BK);
+				ptxdesc->txdw2 |= BMC;
+			ptxdesc->txdw2 |= BK;
 			/* offset 16 */
 			ptxdesc->txdw4 = cpu_to_le32(ptxdesc_mp->txdw4);
 			/* offset 20 */
@@ -572,11 +572,11 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		/* offset 4 */
 		ptxdesc->txdw1 |= (0x05) & 0x1f;/*CAM_ID(MAC_ID), default=5;*/
 		qsel = (uint)(pattrib->qsel & 0x0000001f);
-		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
-		ptxdesc->txdw1 |= cpu_to_le32(BIT(16));/* Non-QoS */
+		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
+		ptxdesc->txdw1 |= BIT(16);/* Non-QoS */
 		/* offset 8 */
 		if (bmcst)
-			ptxdesc->txdw2 |= cpu_to_le32(BMC);
+			ptxdesc->txdw2 |= BMC;
 		/* offset 12 */
 		/* f/w will increase the seqnum by itself, driver pass the
 		 * correct priority to fw
@@ -594,11 +594,11 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	} else if (pxmitframe->frame_tag == TXAGG_FRAMETAG) {
 		/* offset 4 */
 		qsel = 0x13;
-		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
+		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
 	} else {
 		/* offset 4 */
 		qsel = (uint)(pattrib->priority&0x0000001f);
-		ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);
+		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
 		/*offset 8*/
 		/*offset 12*/
 		ptxdesc->txdw3 = cpu_to_le32((pattrib->seqnum << SEQ_SHT) &
-- 
1.9.1


