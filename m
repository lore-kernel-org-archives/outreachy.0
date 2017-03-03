X-GM-THRID: 6393234614676094976
X-Received: by 10.99.170.76 with SMTP id x12mr960812pgo.93.1488540951183;
        Fri, 03 Mar 2017 03:35:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.135 with SMTP id 7ls3564468otl.0.gmail; Fri, 03 Mar 2017
 03:35:50 -0800 (PST)
X-Received: by 10.129.172.6 with SMTP id k6mr878579ywh.52.1488540950795;
        Fri, 03 Mar 2017 03:35:50 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si398786pfa.6.2017.03.03.03.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so12459424pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=TT3qYV6Jt91Lt7NSqhfB3LyLzrq9OXJniK3nQ/NF0ZJXn7rVRypG0aIgkmeoaC5v9l
         NdtFJe4ziaenwhiRPVVgU4R4ZdyXj4OSYYps0p5P2+n2+5xgkvVHeq+bxfZRSijxPXbt
         hi1lSdUoQqeX/gVqp6iWNFX8iyz7Uc72GCnmiL9RKTucma7ZsjNcrGlCmtunl4pCalLr
         rCXmUKZHnfjii9n2HhP5vcHf+/B7UdWz2wCb5wkAcdn3xDrA1uHiWXQujCShwS18JVez
         Mlztrp8VduX06p/LttAsN+VCNiV5BbQJjzC3fo2P37yiEnmIztRycsAfxgMQ+Upjp2nL
         SevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=bgMt022bJUWC97CYvQ8yREFClPB/RLc4++XfLVEyFVKGr0UgcDNPRXyPEVTlvv6Vpu
         gq4QdZZCbEFYj5rOrUdI63DtT5+t9LUxe7iNMMDVHRyVQtLEmlGOOQaGHAik9qa8Z18A
         61dgJRxu1OZBkMs8j/0XE/VLcIxD6rw1TcTiAcPlE3wPYnZlFwWOHv4CtkzJDY+idzma
         eZ15Y9e7OgKdNLyCiDC+F47rMOjua12maUwWxOmmrcrMFB6Qxve4b0ER7eFYYUUsj19d
         pGQE3+9K+yxESBePLNEek41fj7k1jrtdZCIBzPr1RfhE+HGi3SQ1avZztz3MHNka1ryd
         wW/g==
X-Gm-Message-State: AMke39lusSrdNWlJ40mcdG0SSIoz4bhrVDZZNfl3ShZ7R1u1uJOCh/4cfAwTZfhKQXjT6g==
X-Received: by 10.99.64.4 with SMTP id n4mr2881336pga.71.1488540950570;
        Fri, 03 Mar 2017 03:35:50 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d63sm22919668pfg.132.2017.03.03.03.35.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:49 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 5/5] staging: rtl8712: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 17:05:25 +0530
Message-Id: <1488540925-16898-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>

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


