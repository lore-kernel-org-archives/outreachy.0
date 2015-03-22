X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.199.66 with SMTP id ji2mr96363409obc.14.1426985669620;
        Sat, 21 Mar 2015 17:54:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls2053751qgi.34.gmail; Sat, 21 Mar
 2015 17:54:29 -0700 (PDT)
X-Received: by 10.236.8.69 with SMTP id 45mr78804043yhq.39.1426985669411;
        Sat, 21 Mar 2015 17:54:29 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pc4si1341322pac.0.2015.03.21.17.54.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:54:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padcy3 with SMTP id cy3so149632994pad.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5FZF365nOUEJihWx/yeI+Xi7dhX7BrkS1N6YayZ6uno=;
        b=PJpYcxwDFRaLSeuLxtiBOwui9kF6JbUk9zPZ23E2WVP7EwXfkJ+zcYY6lCfe6tsIdO
         oyA75vtX+Y8aIgk2uvZA92CPIjRt6D0bUBzsdRxh1aDQRRrl10DTebDrL1IPbVPPDqMB
         KXlX8+ywWA9qwwQyOn5yjDNV4p1urKUvRQAID7O8o5PO/a1+w3AMAblbbR9xwzebGqmL
         +/GJSlrbVkvhPDDuJBHw7u0+kFEy8vi909cTVIrsieLt4sXoNCAyKQG/dsPjQJvzSZ9+
         zNN7Q4yTJxhyVssi4DN5SunTf9XnZqGvgKPyc3Phz9RGJf8i0YSKzl556MWzg0HsgedP
         ppJg==
X-Received: by 10.68.175.66 with SMTP id by2mr8430568pbc.141.1426985669294;
        Sat, 21 Mar 2015 17:54:29 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id z6sm12611793pdm.78.2015.03.21.17.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:54:28 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:22:27 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/10] Staging: rtl8712: Fix incorrect assignment type in
 rtl8712_xmit.c
Message-ID: <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to fix Sparse warnings due to incorrect assignment
type in rtl8712_xmit.c

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 732e774..c0c86ef 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -550,22 +550,22 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 			 * This will maybe make the handshake smooth.
 			 */
 			/*driver uses data rate*/
-			ptxdesc->txdw4 = cpu_to_le32(0x80000000);
-			ptxdesc->txdw5 = cpu_to_le32(0x001f8000);/*1M*/
+			ptxdesc->txdw4 = 0x80000000;
+			ptxdesc->txdw5 = 0x001f8000;/*1M*/
 		}
 		if (pattrib->pctrl == 1) { /* mp tx packets */
 			struct tx_desc *ptxdesc_mp;
 
 			ptxdesc_mp = &txdesc_mp;
 			/* offset 8 */
-			ptxdesc->txdw2 = cpu_to_le32(ptxdesc_mp->txdw2);
+			ptxdesc->txdw2 = ptxdesc_mp->txdw2;
 			if (bmcst)
 				ptxdesc->txdw2 |= BMC;
 			ptxdesc->txdw2 |= BK;
 			/* offset 16 */
-			ptxdesc->txdw4 = cpu_to_le32(ptxdesc_mp->txdw4);
+			ptxdesc->txdw4 = ptxdesc_mp->txdw4;
 			/* offset 20 */
-			ptxdesc->txdw5 = cpu_to_le32(ptxdesc_mp->txdw5);
+			ptxdesc->txdw5 = ptxdesc_mp->txdw5;
 			pattrib->pctrl = 0;/* reset to zero; */
 		}
 	} else if (pxmitframe->frame_tag == MGNT_FRAMETAG) {
@@ -585,12 +585,12 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		 * correct mapping between AC&Endpoint,
 		 * the purpose is that correct mapping let the MAC releases
 		 * the AC Queue list correctly. */
-		ptxdesc->txdw3 = cpu_to_le32((pattrib->priority << SEQ_SHT) &
-					      0x0fff0000);
+		ptxdesc->txdw3 = (pattrib->priority << SEQ_SHT) &
+					      0x0fff0000;
 		/* offset 16 */
-		ptxdesc->txdw4 = cpu_to_le32(0x80002040);/*gtest*/
+		ptxdesc->txdw4 = 0x80002040;/*gtest*/
 		/* offset 20 */
-		ptxdesc->txdw5 = cpu_to_le32(0x001f8000);/* gtest 1M */
+		ptxdesc->txdw5 = 0x001f8000;/* gtest 1M */
 	} else if (pxmitframe->frame_tag == TXAGG_FRAMETAG) {
 		/* offset 4 */
 		qsel = 0x13;
@@ -601,12 +601,12 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
 		/*offset 8*/
 		/*offset 12*/
-		ptxdesc->txdw3 = cpu_to_le32((pattrib->seqnum << SEQ_SHT) &
-					      0x0fff0000);
+		ptxdesc->txdw3 = (pattrib->seqnum << SEQ_SHT) &
+					      0x0fff0000;
 		/*offset 16*/
-		ptxdesc->txdw4 = cpu_to_le32(0x80002040);/*gtest*/
+		ptxdesc->txdw4 = 0x80002040;/*gtest*/
 		/*offset 20*/
-		ptxdesc->txdw5 = cpu_to_le32(0x001f9600);/*gtest*/
+		ptxdesc->txdw5 = 0x001f9600;/*gtest*/
 	}
 }
 
-- 
1.9.1


