X-GM-THRID: 6205497748614021120
X-Received: by 10.129.109.211 with SMTP id i202mr2607019ywc.16.1444830035074;
        Wed, 14 Oct 2015 06:40:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.33 with SMTP id w1ls85876obx.68.gmail; Wed, 14 Oct 2015
 06:40:34 -0700 (PDT)
X-Received: by 10.182.24.169 with SMTP id v9mr2574790obf.35.1444830034610;
        Wed, 14 Oct 2015 06:40:34 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si866870pab.1.2015.10.14.06.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id p3so7044137pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 06:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=e8YRye2HF575IBEN2FOn4xN/2x6+3Ja8XyIbb4U1fKk=;
        b=bHjXwblri9aDKgD7fsLVBCMFZJzcqULh8O3ay66eW+4w+m6fMv71xSrrZCkBI+iHRP
         OFijoG9h7phmrfuKH9wq8dFRw8vQB5TcASDSGc6uCxRxR9xMHMLYVbT4NFLyqe/yTW8v
         0dFU9covtvTJakvy2+DBSsB1I1Y3F7gXKojsol9mlheCTgyfMOE3vtgd6ItF7xOfocD3
         LalrOYDLlHWLSgVyMEAUcZk8jXrd2O7YNoNKKjoVE1jQYPLRigXRSXAuI5k639cawF2S
         tHzRy1YYPkVxOYEadnNnkILdm3V/oOu7JpniNwjBzggyvv6vjyo3ZcqDB61Jkq39i/O6
         EJXA==
X-Received: by 10.68.68.167 with SMTP id x7mr3844734pbt.140.1444830034459;
        Wed, 14 Oct 2015 06:40:34 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fx4sm9819400pbb.92.2015.10.14.06.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:40:33 -0700 (PDT)
Date: Wed, 14 Oct 2015 19:10:21 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8712: rtl8712_xmit: Remove useless cast
Message-ID: <20151014134020.GA13550@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit typecasting of variables is not required and should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	-Fix spacing of variables.

 drivers/staging/rtl8712/rtl8712_xmit.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 86206d3..27b1213 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -96,7 +96,7 @@ static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
 	u32 addr = 0;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 	struct _adapter *padapter = pxmitframe->padapter;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 
 	if (pxmitframe->frame_tag == TXAGG_FRAMETAG)
 		addr = RTL8712_DMA_H2CCMD;
@@ -237,7 +237,7 @@ void r8712_do_queue_select(struct _adapter *padapter,
 			   struct pkt_attrib *pattrib)
 {
 	unsigned int qsel = 0;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 
 	if (pdvobj->nr_endpoint == 6)
 		qsel = (unsigned int) pattrib->priority;
@@ -374,8 +374,8 @@ u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 			struct xmit_frame *pxmitframe)
 {
 	struct _adapter *padapter = pxmitframe->padapter;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *) &padapter->dvobjpriv;
-	struct tx_desc *ptxdesc = (struct tx_desc *)pxmitbuf->pbuf;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
+	struct tx_desc *ptxdesc = pxmitbuf->pbuf;
 	struct cmd_hdr *pcmd_hdr = (struct cmd_hdr *)
 		(pxmitbuf->pbuf + TXDESC_SIZE);
 	u16 total_length = (u16) (ptxdesc->txdw0 & 0xffff);
@@ -420,9 +420,9 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 	struct tx_desc *ptxdesc = (struct tx_desc *)pmem;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 #ifdef CONFIG_R8712_TX_AGGR
-	struct cmd_priv *pcmdpriv = (struct cmd_priv *)&padapter->cmdpriv;
+	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 #endif
 	u8 blnSetTxDescOffset;
 	sint bmcst = IS_MCAST(pattrib->ra);
-- 
2.1.0


