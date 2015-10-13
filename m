X-GM-THRID: 6205040264708358144
X-Received: by 10.13.242.134 with SMTP id b128mr30020909ywf.7.1444725402440;
        Tue, 13 Oct 2015 01:36:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.170 with SMTP id j39ls3190332qgd.92.gmail; Tue, 13 Oct
 2015 01:36:41 -0700 (PDT)
X-Received: by 10.13.221.143 with SMTP id g137mr27957204ywe.48.1444725401073;
        Tue, 13 Oct 2015 01:36:41 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si213186pbb.0.2015.10.13.01.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:36:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ve7so15108913pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Tycp3DiR22mquj1DWUMD7KqjrWwn+3NDG4nNv45/TuU=;
        b=lv713RDdzlTGgycYUoVVsiTHgMXRRoUCT1n7uNYEN4g3D5/xiIzfX/ps7L9fImHmQJ
         bJNDelklrhwE7C0y90KrOl4ZJCSpkfd9HqJ42ATM5szhYilSR0LsrdBpwglKHrNbPF/F
         D5UmmD9qc+6B687/ZeOWOaMrv85fF/m2DXFE2baiRAl0BJASGNzFwT2SPI6qPTP+sdkE
         9cTC4iYe1Ud5Bbodhn1q+/98dd+KFjb0ajSyNXj3epuGEpJSSIze+AUQRjI0+iWeS3oc
         J9AyluTRsC1wATTCZJeYm0OgRbCIpEOQijtaKp7ArQP7Ye7/0hSpGLWysJTeoJU3EcVT
         lNCA==
X-Received: by 10.67.5.102 with SMTP id cl6mr40196732pad.4.1444725400903;
        Tue, 13 Oct 2015 01:36:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id ux7sm2426247pac.10.2015.10.13.01.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:36:40 -0700 (PDT)
Date: Tue, 13 Oct 2015 14:06:38 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8712: Remove useless cast on void pointer
Message-ID: <51897423d712105b40c029f056127a10db63251d.1444725049.git.amitoj1606@gmail.com>
References: <cover.1444725049.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444725049.git.amitoj1606@gmail.com>
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
Changes in v2:
        -None

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


