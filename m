X-GM-THRID: 6393330913423392768
X-Received: by 10.99.53.12 with SMTP id c12mr3095186pga.11.1488641476502;
        Sat, 04 Mar 2017 07:31:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1449477ith.16.canary-gmail; Sat,
 04 Mar 2017 07:31:16 -0800 (PST)
X-Received: by 10.99.96.71 with SMTP id u68mr3158356pgb.32.1488641476057;
        Sat, 04 Mar 2017 07:31:16 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si553415pfa.4.2017.03.04.07.31.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:31:16 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so12804490pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=cA1MgeGmubSdXY0Hd6xp/kARLyDbiapch9c0axbJNovTfswCD7gZ0Too/Gs0f07h9R
         9dq/+d8lkXVHcJ/mX13Z44T3tsEOxsyt5DYu50WZeImwDWGu1afkC9FuQ2plVImApHTT
         ZL9Oeax5Si4bEjcPeLJBYaLKMQ7+tfqMth+NtAbgOzy+gxAL6E8ammTqizSKEkMBW4WX
         zTyl3y+/PFrUf2ZTBfHbc43F4TzA67b/9n4+9dJkUkadK20WEnT2jxCS4y/g3fYlTwgK
         p1N63JWA1OgcPdNijMyPgsZkZFsJBJxWOZ9khArOmbi1/gu+vfd3/VXaf19SffnAwUI+
         ix3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uCdTRl1c6chO6fTbfc6g8cRDZvht7+0Yal0BGsI41Vs=;
        b=rVqPDeuVNms/9Zkgs1mxiK91gauQYiFFnKV1uUwLF8h8xMN9Fu5vTyi9UM9PVUb57D
         RhakJt/ukSkG78X2NxwNLqe2tPQkmOXaVo8i/ijQods4kHTs8E6EoUf6qRcJAjvH3ZF9
         WnAWtmyVCPcndP5tilpdkqnm4aDSRdiu89WKFBcx9yaxXgVcx5MmjpPIxGhcOblp3gxF
         igxCpfcrhvwczjqvBQjbLBZTmfZ7WaqqucYCqMW6ZVDsdt+I5UT/vWefdnrGTwlHbxx6
         Opa7H6U2oSctI94bhglWULKr+8CTmWv86nWzbSsAIhaKI1ptnaWLWCok0E6kBm0dYe6P
         pMWg==
X-Gm-Message-State: AMke39mLGR/YaKb4PTEo2cu8I6xpoRto9PqxbABJ+GE6YumCV+9B67ofv26M/4pHhFnRlg==
X-Received: by 10.84.217.68 with SMTP id e4mr12222071plj.99.1488641475871;
        Sat, 04 Mar 2017 07:31:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x63sm3327649pgb.30.2017.03.04.07.31.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:31:14 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v5 5/5] staging: rtl8712: Remove unnecessary cast on void pointer
Date: Sat,  4 Mar 2017 21:00:53 +0530
Message-Id: <1488641453-22575-6-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>
References: <1488641453-22575-1-git-send-email-singhalsimran0@gmail.com>

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


