X-GM-THRID: 6392997475785900032
X-Received: by 10.157.67.145 with SMTP id t17mr5480433ote.35.1488489565489;
        Thu, 02 Mar 2017 13:19:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls5730311otf.16.gmail; Thu, 02 Mar
 2017 13:19:25 -0800 (PST)
X-Received: by 10.157.49.110 with SMTP id v43mr5752989otd.44.1488489565164;
        Thu, 02 Mar 2017 13:19:25 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id h79si1737983pfh.2.2017.03.02.13.19.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so10455187pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=byHa2zFKSWjs4Bv0JQ6TKd8M3WpSRJi+N6oTGTipXaY=;
        b=Fhx2R6dcI9l5xW8ocMyHFobKqDFrOjXO1tjVJH9kooSROpRw6tJfHPzu9FUWlhGoiN
         D1SA2vAFFYWm4jWdQmSy/oz+z2WTnNOvX43zWmNq9KKzyevpPvRd7I1bACY73Z5sRD83
         Av+xn3UBH2yP1ygXv+ADpHAUZHoiXuRVjJac6ksN0cH13mgqeRpVXQgsXZ58dKl2toCW
         17diKPYcYvhe1s4GGSXcRTh7hNzz5g1NJn3vhk9fuMgXvPBtW1ohV+6rhiYk7cTqtA9Y
         F6E913MLuxjy793IS/vNL0alRE6vO1pEqfhDx1EB4Lc5BGwfR0C0h7bLP5JEbWtwJKDp
         sVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=byHa2zFKSWjs4Bv0JQ6TKd8M3WpSRJi+N6oTGTipXaY=;
        b=RxTQsK2Y8VNe1WPxeNjgwaX9mFLPGP339Ap0vBVrmMqZyMh8KH2n1JkHmKdKvOVszC
         X6fsd05CNszR8ArYotbVnDP7xfRO3jVs2HDf2LYFhQi+QfgBxgoBZTRrmf3sWCUQUtCO
         5lvxuNE/4MzrRI4RUfXD0Y9iVkkl9ldor1Qc7Csl9verxMtRF4OtJlsu7DSDhjA5SYwo
         638uH1cFRUd9pffvmgUKU8NLuOmCFGAUOBVuocwn6HUBKuODIDa2rGawkGVHEGMw4kr7
         l8LnDe2yNZJQPh0h5R/exD5/DdjSESLFf4rvZcII2F53qcFbysQ/RE+jrsCSs2ZA6oGk
         Jm8A==
X-Gm-Message-State: AMke39nCDpRLXVbEM3+XSR3sEtMwAqxe+uARdNTpm4LMtjyYVjpk9m6ekwZgH1UByFF2Vw==
X-Received: by 10.84.193.101 with SMTP id e92mr21780737pld.4.1488489564634;
        Thu, 02 Mar 2017 13:19:24 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s64sm12832139pfe.10.2017.03.02.13.19.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:19:23 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: rtl8712: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 02:49:04 +0530
Message-Id: <1488489544-25941-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>

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
 drivers/staging/rtl8712/rtl8712_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 20fe45a..4367c68 100644
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
@@ -635,7 +635,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 {
 	unsigned long irql;
 	struct recv_reorder_ctrl *preorder_ctrl =
-				 (struct recv_reorder_ctrl *)pcontext;
+				 pcontext;
 	struct _adapter *padapter = preorder_ctrl->padapter;
 	struct  __queue *ppending_recvframe_queue =
 				 &preorder_ctrl->pending_recvframe_queue;
@@ -976,7 +976,7 @@ int recv_func(struct _adapter *padapter, void *pcontext)
 	struct  __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
 	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;
 
-	prframe = (union recv_frame *)pcontext;
+	prframe = pcontext;
 	orig_prframe = prframe;
 	pattrib = &prframe->u.hdr.attrib;
 	if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
@@ -1124,7 +1124,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 static void recv_tasklet(void *priv)
 {
 	struct sk_buff *pskb;
-	struct _adapter *padapter = (struct _adapter *)priv;
+	struct _adapter *padapter = priv;
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 
 	while (NULL != (pskb = skb_dequeue(&precvpriv->rx_skb_queue))) {
-- 
2.7.4


