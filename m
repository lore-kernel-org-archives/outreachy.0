X-GM-THRID: 6947963118205009920
X-Received: by 2002:a05:6512:3993:: with SMTP id j19mr3445561lfu.339.1617698727696;
        Tue, 06 Apr 2021 01:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9212:: with SMTP id k18ls3436960ljg.8.gmail; Tue, 06 Apr
 2021 01:45:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRDXh6C3g0E74u0dh9Gd0/5Dyei+wIKWNP4abw3TAB0R18XdNsNNGEmu+ATvRUgJsashL6
X-Received: by 2002:a2e:b4b7:: with SMTP id q23mr18486842ljm.88.1617698726094;
        Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698726; cv=none;
        d=google.com; s=arc-20160816;
        b=OXukBkox6sq2zJSl5P/foP7fI8UgSMy342Rj3+kpwSKoLsiveDbXTC+xA5hT5jUpR2
         0eGz48xQIHBbKFSG2qgYofzds2VuHqWptnL98xak469u6AksGxJn4VDhXM/b7fTixM0+
         rwKM03xEXwkrN0OpGfy+BN7R+/gHxWuboLAU1rqON6g421rrOmJpBq9TJlHl1VOsFEXY
         fc0MKisVGQc80aqNo7Z5+0kkY8WENrrUq6dqlF3+xFdGam2OXfaNh8qed+abiO/YTWlz
         uQsLU8U5Xz5shiV55uZA3THySPjHHHWWX4fLSmZZF61e5meVChKxhkE38toYTYTjzl9x
         VinQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n4FEsffBOj3g2bz2GH2q2OLx2NIGrN5f+d8qx4lm1yU=;
        b=KKAzSKCzcm+Pde4CLHVfZAtVK0HvF3EHwM6sMR1TIfZoMHAUG6tYzO7oe6j4v0ZUJY
         MvMMURkFdGlFijS1801zd6ssQCGOdQFZ3ctVr1dpFNSuaOmOcmbgW6hPNsHf++hEXewY
         pS2rx/D1TTUBHSriY98RDsnXE/iYwgRMhJZGIr/HbljvmKSPO4lTQceWLeErwwWm+PkK
         NC/YYZMlb93V9iNpVhZgMuBfH0M8Dt4+cDGp4rAqzq+r1dwqft0YC8b6IcT5Jhoa1CSN
         jxzAnStYb6M1mBMbS7dALrGQZqzQ5o0ugDwdcYU6SRPCLQ0zmpUsDwWMXHu3Rf04c2Wy
         lW6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mRWM/Bes";
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id q26si1532773ljj.4.2021.04.06.01.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mRWM/Bes";
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x129.google.com with SMTP id b4so21460096lfi.6
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=n4FEsffBOj3g2bz2GH2q2OLx2NIGrN5f+d8qx4lm1yU=;
        b=mRWM/BesbkyYZZ2NY8NNKYQSc/3wq4Us74TFMclZBnXibkZzsiB/CkBLjVpPQ2+GPk
         bZndGYvRwL3moaUf7t9T4CGcli/JQC7Ka57OCwm5aPF0XQ5xhWyh0BhJYKLysXt/lcXq
         fBrILiMVhjvCfnz/JStdAgQ7v1zAdyL7wqX5kfZJoOsZ3AS7ISe68w5ofvd0wz4+DTvE
         KyhcrD+wVZv1N8NhZCboA4A/4zx5JnKACDCdLzqrFQXgEtl4ZjkXbynGwipKX1FE3FsA
         MZJAww/Q2ZLGfElBBZC5rEgR76sFidg1+Vv7m5fz16ioEdgKG1M74jIcbV+2k5v8TKfK
         Nk+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=n4FEsffBOj3g2bz2GH2q2OLx2NIGrN5f+d8qx4lm1yU=;
        b=KahPPaJf0jQKXeCDqUBNAV1FLs/mSz6HJUONC0io6yhzaHKSRDpAUTe8gGrnvLYt4j
         emhKRWtRQan2PrxJBUZG/5NRQDK4wRG6tuVUn/VzNhQccM8Xp9nmzU42bGiYJ8gcAsXs
         tBLv5aXAuafLqSxoYBvYvauoAKzW9jYgG2Dm0blKWadOOIDqgWX+2/JKzxh/mMQFrBff
         riJG6pgPZFSOTyD4qjdGcUiL6jVl3FxGBbJHKFyEGXsxZZhkmjE7NEpj+pnb4UxqaueF
         prJO79mGCTDMxa16iJ5J7MYMaMKRculbQXHYfwJnnBkdVt7/2pcQGZgqFfvCzWCD4Kz9
         WHOA==
X-Gm-Message-State: AOAM533UjJpnFyy85qV0dFPbyW68m/W44meUj8GDM6UFLkBcLERnjrNV
	2Qfi6oy2drCFzrr90l04IutDf8uyLPStBQ==
X-Received: by 2002:a05:6512:39cd:: with SMTP id k13mr3000947lfu.449.1617698725653;
        Tue, 06 Apr 2021 01:45:25 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id w21sm2078138lfk.171.2021.04.06.01.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:45:25 -0700 (PDT)
Date: Tue, 6 Apr 2021 14:45:24 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8712: match parentheses alignment
Message-ID: <664f324330611a78e184a203ece38d4facc9d791.1617697237.git.zhansayabagdaulet@gmail.com>
References: <cover.1617697237.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617697237.git.zhansayabagdaulet@gmail.com>

Match next line with open parentheses by adding tabs/spaces
to conform with Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 22 +++++++++++-----------
 drivers/staging/rtl8712/rtl871x_xmit.h |  2 +-
 drivers/staging/rtl8712/xmit_osdep.h   |  8 ++++----
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 17d4a261dea0..f4b871637795 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -69,7 +69,7 @@ void _r8712_init_recv_priv(struct recv_priv *precvpriv,
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		INIT_LIST_HEAD(&(precvframe->u.list));
 		list_add_tail(&(precvframe->u.list),
-				 &(precvpriv->free_recv_queue.queue));
+			      &(precvpriv->free_recv_queue.queue));
 		r8712_os_recv_resource_alloc(padapter, precvframe);
 		precvframe->u.hdr.adapter = padapter;
 		precvframe++;
@@ -175,7 +175,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 			if (bmic_err) {
 				if (prxattrib->bdecrypted)
 					r8712_handle_tkip_mic_err(adapter,
-						(u8)is_multicast_ether_addr(prxattrib->ra));
+								  (u8)is_multicast_ether_addr(prxattrib->ra));
 				res = _FAIL;
 			} else {
 				/* mic checked ok */
@@ -191,14 +191,14 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 
 /* decrypt and set the ivlen,icvlen of the recv_frame */
 union recv_frame *r8712_decryptor(struct _adapter *padapter,
-			    union recv_frame *precv_frame)
+				  union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *prxattrib = &precv_frame->u.hdr.attrib;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	union recv_frame *return_packet = precv_frame;
 
 	if ((prxattrib->encrypt > 0) && ((prxattrib->bdecrypted == 0) ||
-	    psecuritypriv->sw_decrypt)) {
+					 psecuritypriv->sw_decrypt)) {
 		psecuritypriv->hw_decrypted = false;
 		switch (prxattrib->encrypt) {
 		case _WEP40_:
@@ -252,7 +252,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 			} else {
 				/*free this frame*/
 				r8712_free_recvframe(precv_frame,
-					 &adapter->recvpriv.free_recv_queue);
+						     &adapter->recvpriv.free_recv_queue);
 				prtnframe = NULL;
 			}
 		} else {
@@ -274,7 +274,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 }
 
 static sint recv_decache(union recv_frame *precv_frame, u8 bretry,
-		  struct stainfo_rxcache *prxcache)
+			 struct stainfo_rxcache *prxcache)
 {
 	sint tid = precv_frame->u.hdr.attrib.priority;
 	u16 seq_ctrl = ((precv_frame->u.hdr.attrib.seq_num & 0xffff) << 4) |
@@ -393,7 +393,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 			return _FAIL;
 		/* check BSSID */
 		if (is_zero_ether_addr(pattrib->bssid) ||
-		     is_zero_ether_addr(mybssid) ||
+		    is_zero_ether_addr(mybssid) ||
 		     (memcmp(pattrib->bssid, mybssid, ETH_ALEN)))
 			return _FAIL;
 		if (bmcast)
@@ -443,20 +443,20 @@ static sint sta2ap_data_frame(struct _adapter *adapter,
 }
 
 static sint validate_recv_ctrl_frame(struct _adapter *adapter,
-			      union recv_frame *precv_frame)
+				     union recv_frame *precv_frame)
 {
 	return _FAIL;
 }
 
 static sint validate_recv_mgnt_frame(struct _adapter *adapter,
-			      union recv_frame *precv_frame)
+				     union recv_frame *precv_frame)
 {
 	return _FAIL;
 }
 
 
 static sint validate_recv_data_frame(struct _adapter *adapter,
-			      union recv_frame *precv_frame)
+				     union recv_frame *precv_frame)
 {
 	int res;
 	u8 bretry;
@@ -602,7 +602,7 @@ int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
 	if ((!memcmp(psnap, (void *)rfc1042_header, SNAP_SIZE) &&
-	    (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
+	     (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
 	    (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
 	     !memcmp(psnap, (void *)bridge_tunnel_header, SNAP_SIZE)) {
 		/* remove RFC1042 or Bridge-Tunnel encapsulation and
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 1fb395c9d068..2e6afc7bb0a1 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -280,7 +280,7 @@ void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 void r8712_xmit_bh(struct tasklet_struct *t);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-			struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 
 #include "rtl8712_xmit.h"
 
diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
index 21f6b31e0f50..b76021b568f8 100644
--- a/drivers/staging/rtl8712/xmit_osdep.h
+++ b/drivers/staging/rtl8712/xmit_osdep.h
@@ -37,16 +37,16 @@ struct xmit_buf;
 int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev);
 void r8712_SetFilter(struct work_struct *work);
 int r8712_xmit_resource_alloc(struct _adapter *padapter,
-			   struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 void r8712_xmit_resource_free(struct _adapter *padapter,
-			   struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 
 void r8712_set_qos(struct pkt_file *ppktfile,
-		    struct pkt_attrib *pattrib);
+		   struct pkt_attrib *pattrib);
 void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile);
 uint _r8712_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen);
 sint r8712_endofpktfile(struct pkt_file *pfile);
 void r8712_xmit_complete(struct _adapter *padapter,
-			     struct xmit_frame *pxframe);
+			 struct xmit_frame *pxframe);
 
 #endif
-- 
2.25.1


