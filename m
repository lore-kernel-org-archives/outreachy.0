X-GM-THRID: 6205040264708358144
X-Received: by 10.107.165.5 with SMTP id o5mr23144363ioe.5.1444723677953;
        Tue, 13 Oct 2015 01:07:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.48 with SMTP id i45ls2365614qgd.21.gmail; Tue, 13 Oct
 2015 01:07:57 -0700 (PDT)
X-Received: by 10.13.228.133 with SMTP id n127mr27311303ywe.37.1444723677504;
        Tue, 13 Oct 2015 01:07:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si167285pbb.2.2015.10.13.01.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so14290262pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=yL0dFM5K4NFdQZpDNBNe0A/zgSkynK44DkPFI6klcSQ=;
        b=aTo+v88WunzOlE7TuWMNgqcuOKvWBW1fHAa8VhdGfHoxWGfqFCwLs/JPx9t//HcIit
         DOGMFiwr+78RVe+YGlvwxcTBwyu1tJJhH/eV9L1hQhH4h2CPjpLdYPM3zn5YwG3pQSo9
         shXic8StHap8AwprKyYqV4/vDtV0WgBcY4C2VOQavoiJO9MXADhe7NHX9T7qCKVT7Uaf
         fsOx5FzmoP98vcHV2jkLf5AzTkfif1bC2j0l95kyYUivUctPRnX1M5iT1eNwKTxEcmTO
         OrqVbOeEdN/jrl5mbAvcgt4n7SlIiuxLr6Xf/lo/5xOTr1kN4QQyWmG9YIdifHzP4yvo
         0NpQ==
X-Received: by 10.66.100.165 with SMTP id ez5mr38639025pab.63.1444723677352;
        Tue, 13 Oct 2015 01:07:57 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id d13sm2238704pbu.20.2015.10.13.01.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:07:56 -0700 (PDT)
Date: Tue, 13 Oct 2015 13:37:54 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8712: Remove useless cast on void pointer
Message-ID: <51897423d712105b40c029f056127a10db63251d.1444723375.git.amitoj1606@gmail.com>
References: <cover.1444723375.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444723375.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

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
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 4fa2540..fae06d9 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -434,7 +434,7 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 
 	poffset = (u8 *)prxcmdbuf;
 	voffset = *(uint *)poffset;
-	prxstat = (struct recv_stat *)prxcmdbuf;
+	prxstat = prxcmdbuf;
 	drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 	drvinfo_sz <<= 3;
 	poffset += RXDESC_SIZE + drvinfo_sz;
@@ -620,8 +620,7 @@ _err_exit:
 void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 {
 	unsigned long irql;
-	struct recv_reorder_ctrl *preorder_ctrl =
-				 (struct recv_reorder_ctrl *)pcontext;
+	struct recv_reorder_ctrl *preorder_ctrl = pcontext;
 	struct _adapter *padapter = preorder_ctrl->padapter;
 	struct  __queue *ppending_recvframe_queue =
 				 &preorder_ctrl->pending_recvframe_queue;
@@ -959,7 +958,7 @@ int recv_func(struct _adapter *padapter, void *pcontext)
 	struct  __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	prframe = (union recv_frame *)pcontext;
+	prframe = pcontext;
 	orig_prframe = prframe;
 	pattrib = &prframe->u.hdr.attrib;
 	if (check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) {
@@ -1103,7 +1102,7 @@ _exit_recvbuf2recvframe:
 static void recv_tasklet(void *priv)
 {
 	struct sk_buff *pskb;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = priv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
-- 
1.9.1


