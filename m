X-GM-THRID: 6392997475785900032
X-Received: by 10.107.159.137 with SMTP id i131mr671815ioe.26.1488529348339;
        Fri, 03 Mar 2017 00:22:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls9740581otc.30.gmail; Fri, 03 Mar
 2017 00:22:27 -0800 (PST)
X-Received: by 10.157.15.214 with SMTP id m22mr590421otd.104.1488529347932;
        Fri, 03 Mar 2017 00:22:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id f7si1968109pfk.5.2017.03.03.00.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 00:22:27 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so12010021pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 00:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f4JPlJSE4paVnRJT4VS0Ux8zCccSdkOLYpBkU/EKzBU=;
        b=I2eJ60NFqRt76o62qFXaYaY2fEY409DwDBnfxf5JN7vzDAEOjh8HTnhOOV70n13CzZ
         VjWqbHe0eihbZtJAGL0BzPb3Q0H6mPvbd41CsdXmkg49JShfrJVJeN7Y8IzdP4uDLp58
         qU3gt4yzdLgfUoe+yfOQYYNcWgfbMcsxamWDTRl7Ggae3DkKp+1N3jQgqeVl9GRSpmYL
         8D/5ntZjmEAX+PBTcVOiLBVjFSL9bZoUW8RxHuSFSfr+9dTMzQlXTUbSt4gGfpQs1bv2
         O3hwSugv5PDoElH4yEJ7b610CzWpimE9Ings/ae0TpFVHA+DFyPOoVfgw9J45OC/fz1Y
         2DNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f4JPlJSE4paVnRJT4VS0Ux8zCccSdkOLYpBkU/EKzBU=;
        b=MSyDfDh3Vw94nQfv6D4b5cexLdGIJaJPKhQVuA+I0CzGcIvNnJAbX509h0ejQw0XFo
         dhVhZB+FzIBhyyDXCGgx7KgiWLbCeCXSw8VHRXPQwverfo8z7i96nb4C2RH1S+wblrD/
         6YFF92Z1SNaF9Um9eDMv7zbI0bHI25Y9kks4N8IGwETlb9jOunop15SUE4Wf7bRaV9S6
         kQekyRcvDG21mLZjDQ5oSgZ+Ohj88Jk9LtajCfh3LyL1nNyJP0Tt3BPX5GOGEEDeqz7o
         bavorAhwQYa0QIZBB2TGqxOenM0hHB04VAyCRcVWLr/SPodQ47cKfZCLIlb230IBZLwN
         HzVA==
X-Gm-Message-State: AMke39lrgOB/dwuXIfn62SU8lEXbHnDMDFW8oPHcMlORXin3CdA/CqG/tx16zSbaYNWrzQ==
X-Received: by 10.84.139.67 with SMTP id 61mr2420433plq.61.1488529347708;
        Fri, 03 Mar 2017 00:22:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m20sm21672877pgd.67.2017.03.03.00.22.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 00:22:26 -0800 (PST)
Date: Fri, 3 Mar 2017 13:52:23 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com, marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: rtl8712: Remove unnecessary cast on void
 pointer
Message-ID: <20170303082223.GA3784@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

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

 v2:
   -Moved pcontext to the previous line

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


