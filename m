X-GM-THRID: 6393330913423392768
X-Received: by 10.129.82.134 with SMTP id g128mr1490925ywb.18.1488563373725;
        Fri, 03 Mar 2017 09:49:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.24.130 with SMTP id 124ls3004108ioy.54.gmail; Fri, 03 Mar
 2017 09:49:32 -0800 (PST)
X-Received: by 10.99.114.9 with SMTP id n9mr1473454pgc.145.1488563372837;
        Fri, 03 Mar 2017 09:49:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si169172pfa.4.2017.03.03.09.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:49:32 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e66so4815958pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 09:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=M5mLRE1skTB25N8QTiv6Spnd6u5inqpk8odgBrnw7k+uDe7pzjrTC/1ndX4rCNTzjD
         kmBzxqb2ZDZo88CJmY+pqGzvOE88vwREDqGYFiQSMTvAuLhq0HklsQyEVAIFCTjhTPdZ
         xWqaipdcdafqFa7Xxj07jhPqJ8l+GYphQ2/XXT0yDuNWWFsZuDYnkZdGprbgmLwp/b4D
         hBWWUw2rsarJJe63yf+R16HJZB21dUbFj1HSjtx4met1buqx086Dmf2uyOXPOaOkPIPP
         UFLwidsgKOg8iFU/xQp+yNxAxfCuzbOpTCC2IzTD4k0nxSoNiQ9vNvHcOa3UG/rEt3Lu
         O40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=Yyl5pYTjh/TwLgBS4e94xO0gv++MSnTHqxU3lyO0duhtBe2VngKRtY44TnPKWcUr7K
         3VT4HUQrEu2gKzolvU7buy7YxbEONpeyV2Tfg658J5zuWlAreXxmfjNyHd19Rnp7ksWa
         0uzpKIGJdALjZcsa2olhqFVjbImC0o9+vBaReqlcgRDpOZl6tNO8bcpr3TL8zNpq5vVw
         07Q7VENRoDSNbPbt0veF3Fpu56Mf/x44SWc9+1vvG124J/OslEiydpjg7ax8Ufbn0YK2
         cjGe5KnieBpe5ilAtrGBxdIoS+/u1a3os8fv2YIX1fO/N8iCHVZsK7MjfEc0rRDdpjYc
         VHcQ==
X-Gm-Message-State: AMke39mls6zsMgmqVHGUqoU86dpeCQTSTo3N/og0x9EfmUXuqiKLa0zznGL9HLH/G2sedw==
X-Received: by 10.99.171.5 with SMTP id p5mr4825822pgf.182.1488563372661;
        Fri, 03 Mar 2017 09:49:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a77sm24629726pfl.91.2017.03.03.09.49.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 09:49:31 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4 5/5] staging: rtl8712: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 23:19:04 +0530
Message-Id: <1488563344-31032-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>
References: <1488563344-31032-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 20fe45a..266ffef 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -444,9 +444,9 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 	u16 cmd_len, drvinfo_sz;
 	struct recv_stat *prxstat;
 
-	poffset = (u8 *)prxcmdbuf;
+	poffset = prxcmdbuf;
 	voffset = *(__le32 *)poffset;
-	prxstat = (struct recv_stat *)prxcmdbuf;
+	prxstat = prxcmdbuf;
 	drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 	drvinfo_sz <<= 3;
 	poffset += RXDESC_SIZE + drvinfo_sz;
@@ -634,8 +634,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 {
 	unsigned long irql;
-	struct recv_reorder_ctrl *preorder_ctrl =
-				 (struct recv_reorder_ctrl *)pcontext;
+	struct recv_reorder_ctrl *preorder_ctrl = pcontext;
 	struct _adapter *padapter = preorder_ctrl->padapter;
 	struct  __queue *ppending_recvframe_queue =
 				 &preorder_ctrl->pending_recvframe_queue;
@@ -976,7 +975,7 @@ int recv_func(struct _adapter *padapter, void *pcontext)
 	struct  __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	prframe = (union recv_frame *)pcontext;
+	prframe = pcontext;
 	orig_prframe = prframe;
 	pattrib = &prframe->u.hdr.attrib;
 	if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
@@ -1124,7 +1123,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 static void recv_tasklet(void *priv)
 {
 	struct sk_buff *pskb;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = priv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
-- 
2.7.4


