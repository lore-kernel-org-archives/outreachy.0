X-GM-THRID: 6205479417229082624
X-Received: by 10.68.68.202 with SMTP id y10mr2359761pbt.0.1444825766296;
        Wed, 14 Oct 2015 05:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.194 with SMTP id 185ls182985ioo.0.gmail; Wed, 14 Oct
 2015 05:29:25 -0700 (PDT)
X-Received: by 10.66.163.102 with SMTP id yh6mr2358444pab.23.1444825765867;
        Wed, 14 Oct 2015 05:29:25 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si869100pbb.0.2015.10.14.05.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id p3so5532766pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 05:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9qxYySqVwplOh4cJS4GKdUckyB/LDZV9WdAsbUNojhs=;
        b=pO/oxgFcfcXI11bIuHcBhT5RajAnY/ojYHSJiP18TNbRq8SGztOv1RlYsl8/suFU5d
         B4ksHSfeHeDU3RM07etzWFxB1sDguGldx7Nqvz1Uwnu9rirz0JzUDoAve9M4p8FuZ4zf
         e2oVijfwZTnxurRz1A14ROjnuteYymt0cOMi+BUZa17QDjiqisGYtd4bJMZtYBH2aUXh
         DJUW6VyxL2B+V46YqnO3uJsP6syVbwMpNGz45yAfyw97tmp9n2Gd8h7DeyXEYZWEeC2V
         XEVDlF5b7GohGywg9rApsOY0hmt0vpEXFpTDx6jM3SleNXzk0xRtrHcBFxyanInVM5lE
         KvFA==
X-Received: by 10.68.104.66 with SMTP id gc2mr3418316pbb.21.1444825765786;
        Wed, 14 Oct 2015 05:29:25 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id iu2sm7124902pbd.16.2015.10.14.05.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 05:29:24 -0700 (PDT)
Date: Wed, 14 Oct 2015 17:59:15 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: rtl8712_xmit: Remove unnecessary cast
Message-ID: <20151014122915.GA11874@ubuntu>
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
 drivers/staging/rtl8712/rtl8712_xmit.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 86206d3..9e50bbf 100644
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
+	struct tx_desc *ptxdesc   = pxmitbuf->pbuf;
 	struct cmd_hdr *pcmd_hdr = (struct cmd_hdr *)
 		(pxmitbuf->pbuf + TXDESC_SIZE);
 	u16 total_length = (u16) (ptxdesc->txdw0 & 0xffff);
@@ -419,10 +419,10 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
-	struct tx_desc *ptxdesc = (struct tx_desc *)pmem;
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct tx_desc *ptxdesc    = (struct tx_desc *)pmem;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 #ifdef CONFIG_R8712_TX_AGGR
-	struct cmd_priv *pcmdpriv = (struct cmd_priv *)&padapter->cmdpriv;
+	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 #endif
 	u8 blnSetTxDescOffset;
 	sint bmcst = IS_MCAST(pattrib->ra);
-- 
2.1.0


