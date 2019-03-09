X-GM-THRID: 6666505037570637824
X-Received: by 2002:a9f:35c4:: with SMTP id u4mr16406456uad.23.1552166658574;
        Sat, 09 Mar 2019 13:24:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:ab84:: with SMTP id u126ls2161778vke.0.gmail; Sat, 09
 Mar 2019 13:24:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqxlzXjXTpaLaEL/TBWG6F135/tSBWDk0E7eaLqRvHSxYByvCDQQUf0Fsay4ALR+N9dbJJgc
X-Received: by 2002:a1f:a94c:: with SMTP id s73mr15927526vke.16.1552166657459;
        Sat, 09 Mar 2019 13:24:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552166657; cv=none;
        d=google.com; s=arc-20160816;
        b=JTojaRwFgBsIpIIgRg1LlfnKgQsw+BDTWfs3Ia9ZQ8ehHWEFk1epo2md8YGeqQzoC6
         XIrOZZsLfbwj2Q37Zu+wkijxrMRwLJqNG1OQUNWH/WZrgWhyOLugR/qaOcpaUPFbU0AX
         J28/WYm/WBKDziU0179jkkY4eBh7GGP8ZkxUCehVEiepKqmT0M+JQVTwuBrEQ7R/sjDH
         ubq4T6Fj7EUIf4fqBYunZKzxcNqgvNh8k60nCE5VC4QPQ1LPEQkrt6iNKlC9L9GtDC1t
         O6yTk8r+t2HIQIcfF45DxQhp6vZ4XQ0FRmrfHQJhrxL8Nadywufm1gH9A/k7BDyctXhI
         3mpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=EafivKCX2hQfKcEJXkK25XEKUwteWnq8elqSHwVOMMw=;
        b=vE9ETtGpDKQMmGImPAuSDMpzDVv/MnGyisMMzueC77Eipi+Q+5QvfgMd4twlt4DpF5
         EYjkIPIwTxhnXoIEN1OEJP5AWM332cqrD8aQQAb3B8CFGnirfqVsC2caRw+yziAs+6yk
         N+JQMDQMn2k9Do3UVFbCM1F0Nz1n1Bl81sc7dZY8d3VJJlzI/JIAe6D/IKI+toLUExSb
         rh78qHLWDZojYADHcs3Z2O7n6pdw0mLH+pTF0lAHAz08Za83+4m8hotVvi1v5R+SwDW2
         e1ByClRpexbVjbevIH2pXgrtluIejOxV5pnoYNx+nu4coqntpQCxCO97cSBl2kYPgAz8
         4qoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J5wFOZum;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id q85si35458vke.5.2019.03.09.13.24.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 13:24:17 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J5wFOZum;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id n22so759631pfa.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 13:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EafivKCX2hQfKcEJXkK25XEKUwteWnq8elqSHwVOMMw=;
        b=J5wFOZum4xROQGGIH5vT8O7NZmEu32FK1+cMX+ZIUD6WrAIA+uHMl+IboLn3cCFtr3
         EF9PCWpbBYU+yrS2oJ4c62WexmLd8MSvi+VlcUNUx5kceiHbSqoueNKzTuLl6MjYNvCT
         eFVOXUtoNUmQjdhFswztIFyxnETsNBYqH/eJhxioJ2K2iCNpPbjJ1XP5a0+890ZREa1M
         w2FkHSMsiv19ikisUwoO/Lg51GjPWmkiB7e8qtAJ3TNBgM1XeFsyuJNPSjFKwDW4ZwUa
         TuOr4AR/gZvM3TT9VFSwpgryJpdviDhuMkyNAO5WeId6VbdYywFLzGwIciPInBj/JHFE
         461Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EafivKCX2hQfKcEJXkK25XEKUwteWnq8elqSHwVOMMw=;
        b=FO5rz3JHAYbdMJ0AchTYVuzXAsnV3I9ONcL0o9EPNzbU4RGOmFAvjPmnu9k8Se1pWb
         sYKUNCaMPKyH9sJzDBSBlggB0s0MaaAabavaaM0Hra+uimWmreobNeWAzZTfivCyT4If
         0ZYzh+Kki08YpiaAnSSYEaB+/SlGPCMQX1sICVltFa/xru+h5jMXC5k+BNPW1PQZq8Ma
         V4/PBSnjHZeVQV64drT/Xt8RZO27T+6W1LS8Bgvp75va02lsrIQDb6kdtiyYs9y1Wv1A
         3wqJadk2uvc8KY25H6BWRtvAbT0VvWcKFAcjxWliOfmvMK3CYldlv5x7k08U5I2ZRBvo
         AmhA==
X-Gm-Message-State: APjAAAUdG4HjWEqlWPacYM/qDo8rkY8dn+wcqvXvYaWT2OoUE48kadZB
	xqzhv5AnY2Ten6Hlua7PmTcYGREBA2M=
X-Received: by 2002:a63:4542:: with SMTP id u2mr22847009pgk.291.1552166654500;
        Sat, 09 Mar 2019 13:24:14 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id g188sm2450498pfc.24.2019.03.09.13.24.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 13:24:13 -0800 (PST)
Date: Sun, 10 Mar 2019 02:54:08 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: rtl8712: Modify coding style alignments.
Message-ID: <20190309212408.GA22063@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, detected by checkpatch.pl "CHECK:
Alignment should match open parenthesis"

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c       |   7 +-
 drivers/staging/rtl8712/rtl8712_efuse.h       |   2 +-
 drivers/staging/rtl8712/rtl8712_led.c         |   6 +-
 drivers/staging/rtl8712/rtl8712_recv.c        |  36 +++---
 drivers/staging/rtl8712/rtl8712_xmit.c        |  34 ++---
 drivers/staging/rtl8712/rtl8712_xmit.h        |   4 +-
 drivers/staging/rtl8712/rtl871x_cmd.c         |  39 +++---
 drivers/staging/rtl8712/rtl871x_cmd.h         |   7 +-
 drivers/staging/rtl8712/rtl871x_io.c          |   2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 178 +++++++++++++-------------
 drivers/staging/rtl8712/rtl871x_ioctl_set.c   |  12 +-
 drivers/staging/rtl8712/rtl871x_mlme.c        | 116 ++++++++---------
 drivers/staging/rtl8712/rtl871x_mlme.h        |   2 +-
 drivers/staging/rtl8712/rtl871x_mp.c          |   6 +-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c    |  16 +--
 drivers/staging/rtl8712/rtl871x_pwrctrl.c     |   2 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.h     |   2 +-
 drivers/staging/rtl8712/rtl871x_recv.c        |  24 ++--
 drivers/staging/rtl8712/rtl871x_recv.h        |   4 +-
 drivers/staging/rtl8712/rtl871x_security.c    |  18 +--
 drivers/staging/rtl8712/rtl871x_sta_mgt.c     |   2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c        |  60 ++++-----
 drivers/staging/rtl8712/rtl871x_xmit.h        |   4 +-
 drivers/staging/rtl8712/usb_halinit.c         |   2 +-
 drivers/staging/rtl8712/usb_intf.c            |   6 +-
 drivers/staging/rtl8712/usb_ops.c             |  12 +-
 drivers/staging/rtl8712/usb_ops.h             |   6 +-
 drivers/staging/rtl8712/usb_ops_linux.c       |  10 +-
 drivers/staging/rtl8712/xmit_osdep.h          |   8 +-
 29 files changed, 316 insertions(+), 311 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 39eb743..0b8731d 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -353,7 +353,8 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 }
 
 u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
-			 const u8 word_en, const u8 *data)
+			       const u8 word_en,
+			       const u8 *data)
 {
 	u8 pg_header = 0;
 	u16 efuse_addr = 0, curr_size = 0;
@@ -441,7 +442,7 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 			break;
 		}
 		res = efuse_one_byte_rw(padapter, bRead, start_addr + i,
-		      data + i);
+					data + i);
 		if (!bRead && !res)
 			break;
 	}
@@ -554,7 +555,7 @@ u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
 		offset++;
 		if (!empty)
 			if (!r8712_efuse_pg_packet_read(padapter, offset,
-			    pktdata))
+							pktdata))
 				return false;
 		i = 0;
 		j = 0;
diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
index dbba51cd..37dea0f 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.h
+++ b/drivers/staging/rtl8712/rtl8712_efuse.h
@@ -40,5 +40,5 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead,
 u8 r8712_efuse_map_read(struct _adapter *padapter, u16 addr,
 			u16 cnts, u8 *data);
 u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr,
-				u16 cnts, u8 *data);
+			 u16 cnts, u8 *data);
 #endif
diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index a899a93..d79ec09 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -75,7 +75,7 @@ static void BlinkWorkItemCallback(struct work_struct *work);
  *		Initialize an LED_871x object.
  */
 static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
-		 enum LED_PIN_871x	LedPin)
+			enum LED_PIN_871x LedPin)
 {
 	pLed->padapter = padapter;
 	pLed->LedPin = LedPin;
@@ -883,7 +883,7 @@ static void SwLedControlMode1(struct _adapter *padapter,
 	case LED_CTL_NO_LINK:
 		if (!pLed->bLedNoLinkBlinkInProgress) {
 			if (pLed->CurrLedState == LED_SCAN_BLINK ||
-			  IS_LED_WPS_BLINKING(pLed))
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			if (pLed->bLedLinkBlinkInProgress) {
 				del_timer(&pLed->BlinkTimer);
@@ -1124,7 +1124,7 @@ static void SwLedControlMode2(struct _adapter *padapter,
 		if (!pLed->bLedBlinkInProgress &&
 		    check_fwstate(pmlmepriv, _FW_LINKED)) {
 			if (pLed->CurrLedState == LED_SCAN_BLINK ||
-			   IS_LED_WPS_BLINKING(pLed))
+			    IS_LED_WPS_BLINKING(pLed))
 				return;
 			pLed->bLedBlinkInProgress = true;
 			pLed->CurrLedState = LED_TXRX_BLINK;
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 9aa950e..a3a0433 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -62,13 +62,13 @@ int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-				 &(precvpriv->free_recv_buf_queue.queue));
+			      &(precvpriv->free_recv_buf_queue.queue));
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
 	tasklet_init(&precvpriv->recv_tasklet,
-	     (void(*)(unsigned long))recv_tasklet,
-	     (unsigned long)padapter);
+		     (void(*)(unsigned long))recv_tasklet,
+		     (unsigned long)padapter);
 	skb_queue_head_init(&precvpriv->rx_skb_queue);
 
 	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
@@ -122,7 +122,7 @@ int r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
 }
 
 int r8712_free_recvframe(union recv_frame *precvframe,
-		   struct  __queue *pfree_recv_queue)
+			 struct  __queue *pfree_recv_queue)
 {
 	unsigned long irqL;
 	struct _adapter *padapter = precvframe->u.hdr.adapter;
@@ -144,7 +144,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 }
 
 static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
-					   struct recv_stat *prxstat)
+						  struct recv_stat *prxstat)
 {
 	u16 drvinfo_sz;
 
@@ -181,7 +181,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 
 /*perform defrag*/
 static union recv_frame *recvframe_defrag(struct _adapter *adapter,
-				   struct  __queue *defrag_q)
+					  struct  __queue *defrag_q)
 {
 	struct list_head *plist, *phead;
 	u8 wlanhdr_offset;
@@ -279,7 +279,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 				if (!list_empty(&pdefrag_q->queue)) {
 					/*free current defrag_q */
 					r8712_free_recvframe_queue(pdefrag_q,
-							     pfree_recv_queue);
+							pfree_recv_queue);
 				}
 			}
 			/* Then enqueue the 0~(n-1) fragment to the defrag_q */
@@ -383,7 +383,7 @@ static int amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
 		if (sub_skb->len >= 8 &&
-		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
 		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
@@ -391,18 +391,18 @@ static int amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 			 */
 			skb_pull(sub_skb, SNAP_SIZE);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else {
 			__be16 len;
 			/* Leave Ethernet header part of hdr and full payload */
 			len = htons(sub_skb->len);
 			memcpy(skb_push(sub_skb, 2), &len, 2);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
-				ETH_ALEN);
+			       ETH_ALEN);
 		}
 		/* Indicate the packets to upper layer */
 		if (sub_skb) {
@@ -477,7 +477,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
-			      union recv_frame *prframe)
+				     union recv_frame *prframe)
 {
 	struct list_head *phead, *plist;
 	union recv_frame *pnextrframe;
@@ -504,7 +504,7 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
-			       struct recv_reorder_ctrl *preorder_ctrl,
+				     struct recv_reorder_ctrl *preorder_ctrl,
 			       int bforced)
 {
 	struct list_head *phead, *plist;
@@ -536,7 +536,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 			plist = plist->next;
 			list_del_init(&(prframe->u.hdr.list));
 			if (SN_EQUAL(preorder_ctrl->indicate_seq,
-			    pattrib->seq_num))
+				     pattrib->seq_num))
 				preorder_ctrl->indicate_seq =
 				  (preorder_ctrl->indicate_seq + 1) % 4096;
 			/*indicate this recv_frame*/
@@ -551,7 +551,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 				if (amsdu_to_msdu(padapter, prframe) !=
 				    _SUCCESS)
 					r8712_free_recvframe(prframe,
-						   &precvpriv->free_recv_queue);
+						&precvpriv->free_recv_queue);
 			}
 			/* Update local variables. */
 			bPktInBuf = false;
@@ -564,7 +564,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 }
 
 static int recv_indicatepkt_reorder(struct _adapter *padapter,
-			     union recv_frame *prframe)
+				    union recv_frame *prframe)
 {
 	unsigned long irql;
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
@@ -634,7 +634,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 }
 
 static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
-			      union recv_frame *prframe)
+					   union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index aa6fb51..36ab372 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -147,9 +147,9 @@ static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
 }
 
 static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv,
-					 struct hw_xmit *phwxmit,
-					 struct tx_servq *ptxservq,
-					 struct  __queue *pframe_queue)
+						struct hw_xmit *phwxmit,
+						struct tx_servq *ptxservq,
+						struct  __queue *pframe_queue)
 {
 	struct list_head *xmitframe_plist, *xmitframe_phead;
 	struct	xmit_frame *pxmitframe = NULL;
@@ -167,7 +167,8 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv,
 }
 
 static struct xmit_frame *dequeue_xframe_ex(struct xmit_priv *pxmitpriv,
-				     struct hw_xmit *phwxmit_i, sint entry)
+					    struct hw_xmit *phwxmit_i,
+					    sint entry)
 {
 	unsigned long irqL0;
 	struct list_head *sta_plist, *sta_phead;
@@ -201,7 +202,8 @@ static struct xmit_frame *dequeue_xframe_ex(struct xmit_priv *pxmitpriv,
 						tx_pending);
 			pframe_queue = &ptxservq->sta_pending;
 			pxmitframe = dequeue_one_xmitframe(pxmitpriv, phwxmit,
-				     ptxservq, pframe_queue);
+							   ptxservq,
+							   pframe_queue);
 			if (pxmitframe) {
 				phwxmit->accnt--;
 				goto exit_dequeue_xframe_ex;
@@ -283,7 +285,7 @@ u8 r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
 }
 
 u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+			  struct xmit_frame *pxmitframe)
 {
 	struct _adapter *padapter = pxmitframe->padapter;
 	struct tx_desc *ptx_desc = (struct tx_desc *)pxmitbuf->pbuf;
@@ -296,14 +298,14 @@ u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 	r8712_xmit_complete(padapter, pxmitframe);
 	if (pxmitframe->attrib.ether_type != 0x0806) {
 		if ((pxmitframe->attrib.ether_type != 0x888e) &&
-			(pxmitframe->attrib.dhcp_pkt != 1)) {
+		    (pxmitframe->attrib.dhcp_pkt != 1)) {
 			r8712_issue_addbareq_cmd(padapter,
-					pxmitframe->attrib.priority);
+						 pxmitframe->attrib.priority);
 		}
 	}
 	pxmitframe->last[0] = 1;
 	update_txdesc(pxmitframe, (uint *)(pxmitframe->buf_addr),
-		pxmitframe->attrib.last_txcmdsz);
+		      pxmitframe->attrib.last_txcmdsz);
 	/*padding zero */
 	last_txcmdsz = pxmitframe->attrib.last_txcmdsz;
 	padding_sz = (8 - (last_txcmdsz % 8));
@@ -325,7 +327,7 @@ u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 
 
 u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+			    struct xmit_frame *pxmitframe)
 {
 	/* linux complete context doesn't need to protect */
 	pxmitframe->pxmitbuf = pxmitbuf;
@@ -343,7 +345,7 @@ u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 }
 
 u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+			      struct xmit_frame *pxmitframe)
 {
 	pxmitframe->pxmitbuf = pxmitbuf;
 	pxmitbuf->priv_data = pxmitframe;
@@ -362,7 +364,7 @@ u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
 }
 
 u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+			  struct xmit_frame *pxmitframe)
 {
 	struct _adapter *padapter = pxmitframe->padapter;
 	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
@@ -398,7 +400,7 @@ u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 		/*default = 32 bytes for TX Desc*/
 	}
 	r8712_write_port(pxmitframe->padapter, RTL8712_DMA_H2CCMD,
-			total_length + TXDESC_SIZE, (u8 *)pxmitframe);
+			 total_length + TXDESC_SIZE, (u8 *)pxmitframe);
 
 	return _SUCCESS;
 }
@@ -637,7 +639,7 @@ int r8712_xmitframe_complete(struct _adapter *padapter,
 		 */
 		if (AGGR_NR_HIGH_BOUND > 1)
 			p2ndxmitframe = dequeue_xframe_ex(pxmitpriv, phwxmits,
-							hwentry);
+							  hwentry);
 		if (pxmitframe->frame_tag != DATA_FRAMETAG) {
 			r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
 			return false;
@@ -727,10 +729,10 @@ static void dump_xframe(struct _adapter *padapter,
 		ff_hwaddr = get_ff_hwaddr(pxmitframe);
 #ifdef CONFIG_R8712_TX_AGGR
 		r8712_write_port(padapter, RTL8712_DMA_H2CCMD, w_sz,
-				(unsigned char *)pxmitframe);
+				 (unsigned char *)pxmitframe);
 #else
 		r8712_write_port(padapter, ff_hwaddr, w_sz,
-			   (unsigned char *)pxmitframe);
+				 (unsigned char *)pxmitframe);
 #endif
 		mem_addr += w_sz;
 		mem_addr = (u8 *)RND4(((addr_t)(mem_addr)));
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 9be8fb7..5dc8d37 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -103,9 +103,9 @@ void r8712_do_queue_select(struct _adapter *padapter,
 
 #ifdef CONFIG_R8712_TX_AGGR
 u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe);
+			    struct xmit_frame *pxmitframe);
 u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe);
+			  struct xmit_frame *pxmitframe);
 #endif
 
 #endif
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index eaae9c0..8de0a91 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -279,7 +279,7 @@ u8 r8712_set_chplan_cmd(struct _adapter *padapter, int chplan)
 		return _FAIL;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, psetchplanpara,
-				GEN_CMD_CODE(_SetChannelPlan));
+				   GEN_CMD_CODE(_SetChannelPlan));
 	psetchplanpara->ChannelPlan = chplan;
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 	return _SUCCESS;
@@ -300,7 +300,7 @@ u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset)
 		return _FAIL;
 	}
 	init_h2fwcmd_w_parm_no_rsp(ph2c, pssetbasicratepara,
-		_SetBasicRate_CMD_);
+				   _SetBasicRate_CMD_);
 	memcpy(pssetbasicratepara->basicrates, rateset, NumRates);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 	return _SUCCESS;
@@ -401,7 +401,7 @@ void r8712_getbbrfreg_cmdrsp_callback(struct _adapter *padapter,
 }
 
 void r8712_readtssi_cmdrsp_callback(struct _adapter *padapter,
-				struct cmd_obj *pcmd)
+				    struct cmd_obj *pcmd)
 {
 	kfree(pcmd->parmbuf);
 	kfree(pcmd);
@@ -477,10 +477,10 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 					     psecnetwork->IELength;
 	if ((psecnetwork->IELength - 12) < (256 - 1))
 		memcpy(&psecuritypriv->authenticator_ie[1],
-			&psecnetwork->IEs[12], psecnetwork->IELength - 12);
+		       &psecnetwork->IEs[12], psecnetwork->IELength - 12);
 	else
 		memcpy(&psecuritypriv->authenticator_ie[1],
-			&psecnetwork->IEs[12], (256 - 1));
+		       &psecnetwork->IEs[12], (256 - 1));
 	psecnetwork->IELength = 0;
 	/*
 	 * If the driver wants to use the bssid to create the connection.
@@ -491,18 +491,18 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 		ether_addr_copy(&pmlmepriv->assoc_bssid[0],
 				&pnetwork->network.MacAddress[0]);
 	psecnetwork->IELength = r8712_restruct_sec_ie(padapter,
-						&pnetwork->network.IEs[0],
-						&psecnetwork->IEs[0],
+						      &pnetwork->network.IEs[0],
+						      &psecnetwork->IEs[0],
 						pnetwork->network.IELength);
 	pqospriv->qos_option = 0;
 	if (pregistrypriv->wmm_enable) {
 		u32 tmp_len;
 
 		tmp_len = r8712_restruct_wmm_ie(padapter,
-					  &pnetwork->network.IEs[0],
-					  &psecnetwork->IEs[0],
-					  pnetwork->network.IELength,
-					  psecnetwork->IELength);
+						&pnetwork->network.IEs[0],
+						&psecnetwork->IEs[0],
+						pnetwork->network.IELength,
+						psecnetwork->IELength);
 		if (psecnetwork->IELength != tmp_len) {
 			psecnetwork->IELength = tmp_len;
 			pqospriv->qos_option = 1; /* WMM IE in beacon */
@@ -529,10 +529,10 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 	psecuritypriv->supplicant_ie[0] = (u8)psecnetwork->IELength;
 	if (psecnetwork->IELength < 255)
 		memcpy(&psecuritypriv->supplicant_ie[1], &psecnetwork->IEs[0],
-			psecnetwork->IELength);
+		       psecnetwork->IELength);
 	else
 		memcpy(&psecuritypriv->supplicant_ie[1], &psecnetwork->IEs[0],
-			255);
+		       255);
 	/* get cmdsz before endian conversion */
 	pcmd->cmdsz = r8712_get_wlan_bssid_ex_sz(psecnetwork);
 #ifdef __BIG_ENDIAN
@@ -594,7 +594,7 @@ u8 r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
 }
 
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
-		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
+		       enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
 {
 	struct cmd_obj *ph2c;
 	struct setopmode_parm *psetop;
@@ -653,7 +653,7 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
 		memcpy(&psetstakey_para->key, &sta->x_UncstKey, 16);
 	else
 		memcpy(&psetstakey_para->key,
-			&psecuritypriv->XGrpKey[
+		       &psecuritypriv->XGrpKey[
 			psecuritypriv->XGrpKeyid - 1]. skey, 16);
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 	return _SUCCESS;
@@ -889,13 +889,13 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 			pwlan->last_scanned = jiffies;
 		} else {
 			list_add_tail(&(pwlan->list),
-					 &pmlmepriv->scanned_queue.queue);
+					&pmlmepriv->scanned_queue.queue);
 		}
 		pnetwork->Length = r8712_get_wlan_bssid_ex_sz(pnetwork);
 		memcpy(&(pwlan->network), pnetwork, pnetwork->Length);
 		pwlan->fixed = true;
 		memcpy(&tgt_network->network, pnetwork,
-			(r8712_get_wlan_bssid_ex_sz(pnetwork)));
+		       (r8712_get_wlan_bssid_ex_sz(pnetwork)));
 		if (pmlmepriv->fw_state & _FW_UNDER_LINKING)
 			pmlmepriv->fw_state ^= _FW_UNDER_LINKING;
 		/*
@@ -950,7 +950,8 @@ void r8712_setassocsta_cmdrsp_callback(struct _adapter *padapter,
 }
 
 u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
-			u32 tryPktCnt, u32 tryPktInterval, u32 firstStageTO)
+			      u32 tryPktCnt, u32 tryPktInterval,
+			      u32 firstStageTO)
 {
 	struct cmd_obj *ph2c;
 	struct DisconnectCtrlEx_param *param;
@@ -971,7 +972,7 @@ u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
 	param->FirstStageTO = (unsigned int)firstStageTO;
 
 	init_h2fwcmd_w_parm_no_rsp(ph2c, param,
-				GEN_CMD_CODE(_DisconnectCtrlEx));
+				   GEN_CMD_CODE(_DisconnectCtrlEx));
 	r8712_enqueue_cmd(pcmdpriv, ph2c);
 	return _SUCCESS;
 }
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 262984c..9cd644e 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -718,7 +718,7 @@ u8 r8712_joinbss_cmd(struct _adapter *padapter,
 		     struct wlan_network *pnetwork);
 u8 r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
-		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
+		       enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 u8 r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
 u8 r8712_set_chplan_cmd(struct _adapter  *padapter, int chplan);
 u8 r8712_setbasicrate_cmd(struct _adapter *padapter, u8 *rateset);
@@ -742,13 +742,14 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 void r8712_getbbrfreg_cmdrsp_callback(struct _adapter *padapter,
 				      struct cmd_obj *pcmd);
 void r8712_readtssi_cmdrsp_callback(struct _adapter *padapter,
-				struct cmd_obj *pcmd);
+				    struct cmd_obj *pcmd);
 void r8712_setstaKey_cmdrsp_callback(struct _adapter  *padapter,
 				     struct cmd_obj *pcmd);
 void r8712_setassocsta_cmdrsp_callback(struct _adapter  *padapter,
 				       struct cmd_obj *pcmd);
 u8 r8712_disconnectCtrlEx_cmd(struct _adapter *adapter, u32 enableDrvCtrl,
-			u32 tryPktCnt, u32 tryPktInterval, u32 firstStageTO);
+			      u32 tryPktCnt, u32 tryPktInterval,
+			      u32 firstStageTO);
 
 struct _cmd_callback {
 	u32	cmd_code;
diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index e34302a..82753be0 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -113,7 +113,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 	if ((pio_queue->pallocated_free_ioreqs_buf) == NULL)
 		goto alloc_io_queue_fail;
 	memset(pio_queue->pallocated_free_ioreqs_buf, 0,
-			(NUM_IOREQ * (sizeof(struct io_req)) + 4));
+	       (NUM_IOREQ * (sizeof(struct io_req)) + 4));
 	pio_queue->free_ioreqs_buf = pio_queue->pallocated_free_ioreqs_buf + 4
 			- ((addr_t)(pio_queue->pallocated_free_ioreqs_buf)
 			& 3);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index e55db92..06f198e 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -62,7 +62,7 @@ void r8712_indicate_wx_assoc_event(struct _adapter *padapter)
 
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 	memcpy(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress,
-		ETH_ALEN);
+	       ETH_ALEN);
 	wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, NULL);
 }
 
@@ -114,7 +114,7 @@ static inline void handle_group_key(struct ieee_param *param,
 		       &param->u.crypt.key[24], 8);
 		padapter->securitypriv.binstallGrpkey = true;
 		r8712_set_key(padapter, &padapter->securitypriv,
-			param->u.crypt.idx);
+			      param->u.crypt.idx);
 		if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
 			if (padapter->registrypriv.power_mgnt !=
 			    padapter->pwrctrlpriv.pwr_mode)
@@ -125,9 +125,9 @@ static inline void handle_group_key(struct ieee_param *param,
 }
 
 static noinline_for_stack char *translate_scan(struct _adapter *padapter,
-				   struct iw_request_info *info,
-				   struct wlan_network *pnetwork,
-				   char *start, char *stop)
+					       struct iw_request_info *info,
+					       struct wlan_network *pnetwork,
+					       char *start, char *stop)
 {
 	struct iw_event iwe;
 	struct ieee80211_ht_cap *pht_capie;
@@ -185,7 +185,7 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 	/* Add mode */
 	iwe.cmd = SIOCGIWMODE;
 	memcpy((u8 *)&cap, r8712_get_capability_from_ie(pnetwork->network.IEs),
-		2);
+	       2);
 	le16_to_cpus(&cap);
 	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_BSS)) {
 		if (cap & WLAN_CAPABILITY_BSS)
@@ -193,7 +193,7 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 		else
 			iwe.u.mode = (u32)IW_MODE_ADHOC;
 		start = iwe_stream_add_event(info, start, stop, &iwe,
-			IW_EV_UINT_LEN);
+					     IW_EV_UINT_LEN);
 	}
 	/* Add frequency/channel */
 	iwe.cmd = SIOCGIWFREQ;
@@ -212,7 +212,7 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 	iwe.u.freq.e = (s16)1;
 	iwe.u.freq.i = (u8)pnetwork->network.Configuration.DSConfig;
 	start = iwe_stream_add_event(info, start, stop, &iwe,
-		IW_EV_FREQ_LEN);
+				     IW_EV_FREQ_LEN);
 	/* Add encryption capability */
 	iwe.cmd = SIOCGIWENCODE;
 	if (cap & WLAN_CAPABILITY_PRIVACY)
@@ -222,7 +222,7 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 		iwe.u.data.flags = (u16)(IW_ENCODE_DISABLED);
 	iwe.u.data.length = (u16)0;
 	start = iwe_stream_add_point(info, start, stop, &iwe,
-		pnetwork->network.Ssid.Ssid);
+				     pnetwork->network.Ssid.Ssid);
 	/*Add basic and extended rates */
 	current_val = start + iwe_stream_lcp_len(info);
 	iwe.cmd = SIOCGIWRATE;
@@ -235,7 +235,7 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 		iwe.u.bitrate.value = (pnetwork->network.rates[i++] &
 				      0x7F) * 500000;
 		current_val = iwe_stream_add_value(info, start, current_val,
-			      stop, &iwe, IW_EV_PARAM_LEN);
+						   stop, &iwe, IW_EV_PARAM_LEN);
 	}
 	/* Check if we added any event */
 	if ((current_val - start) > iwe_stream_lcp_len(info))
@@ -263,12 +263,12 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 			iwe.cmd = IWEVCUSTOM;
 			iwe.u.data.length = (u16)strlen(buf);
 			start = iwe_stream_add_point(info, start, stop,
-				&iwe, buf);
+						     &iwe, buf);
 			memset(&iwe, 0, sizeof(iwe));
 			iwe.cmd = IWEVGENIE;
 			iwe.u.data.length = (u16)wpa_len;
 			start = iwe_stream_add_point(info, start, stop,
-				&iwe, wpa_ie);
+						     &iwe, wpa_ie);
 		}
 		if (rsn_len > 0) {
 			memset(buf, 0, MAX_WPA_IE_LEN);
@@ -283,12 +283,12 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 			iwe.cmd = IWEVCUSTOM;
 			iwe.u.data.length = strlen(buf);
 			start = iwe_stream_add_point(info, start, stop,
-				&iwe, buf);
+						     &iwe, buf);
 			memset(&iwe, 0, sizeof(iwe));
 			iwe.cmd = IWEVGENIE;
 			iwe.u.data.length = rsn_len;
 			start = iwe_stream_add_point(info, start, stop, &iwe,
-				rsn_ie);
+						     rsn_ie);
 		}
 	}
 
@@ -297,13 +297,13 @@ static noinline_for_stack char *translate_scan(struct _adapter *padapter,
 		uint wps_ielen;
 
 		if (r8712_get_wps_ie(pnetwork->network.IEs,
-		    pnetwork->network.IELength,
-		    wps_ie, &wps_ielen)) {
+				     pnetwork->network.IELength,
+				     wps_ie, &wps_ielen)) {
 			if (wps_ielen > 2) {
 				iwe.cmd = IWEVGENIE;
 				iwe.u.data.length = (u16)wps_ielen;
 				start = iwe_stream_add_point(info, start, stop,
-					&iwe, wps_ie);
+							     &iwe, wps_ie);
 			}
 		}
 	}
@@ -478,13 +478,13 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 			goto exit;
 		}
 		if (r8712_parse_wpa_ie(buf, ielen, &group_cipher,
-		    &pairwise_cipher) == _SUCCESS) {
+				       &pairwise_cipher) == _SUCCESS) {
 			padapter->securitypriv.AuthAlgrthm = 2;
 			padapter->securitypriv.ndisauthtype =
 				  Ndis802_11AuthModeWPAPSK;
 		}
 		if (r8712_parse_wpa2_ie(buf, ielen, &group_cipher,
-		    &pairwise_cipher) == _SUCCESS) {
+					&pairwise_cipher) == _SUCCESS) {
 			padapter->securitypriv.AuthAlgrthm = 2;
 			padapter->securitypriv.ndisauthtype =
 				  Ndis802_11AuthModeWPA2PSK;
@@ -562,8 +562,7 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 					    (buf[cnt + 1] + 2) :
 					    (MAX_WPA_IE_LEN << 2);
 					memcpy(padapter->securitypriv.wps_ie,
-					    &buf[cnt],
-					    padapter->securitypriv.wps_ie_len);
+					       &buf[cnt], padapter->securitypriv.wps_ie_len);
 					padapter->securitypriv.wps_phase =
 								 true;
 					netdev_info(padapter->pnetdev, "r8712u: SET WPS_IE, wps_phase==true\n");
@@ -647,8 +646,8 @@ static int r8711_wx_set_freq(struct net_device *dev,
 
 /* If setting by frequency, convert to a channel */
 	if ((fwrq->e == 1) &&
-	  (fwrq->m >= (int) 2.412e8) &&
-	  (fwrq->m <= (int) 2.487e8)) {
+	    (fwrq->m >= (int) 2.412e8) &&
+	    (fwrq->m <= (int) 2.487e8)) {
 		int f = fwrq->m / 100000;
 		int c = 0;
 
@@ -733,7 +732,7 @@ static int r8711_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 		wrqu->mode = IW_MODE_INFRA;
 	else if (check_fwstate(pmlmepriv,
-		 WIFI_ADHOC_MASTER_STATE | WIFI_ADHOC_STATE))
+			       WIFI_ADHOC_MASTER_STATE | WIFI_ADHOC_STATE))
 		wrqu->mode = IW_MODE_ADHOC;
 	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		wrqu->mode = IW_MODE_MASTER;
@@ -743,8 +742,8 @@ static int r8711_wx_get_mode(struct net_device *dev, struct iw_request_info *a,
 }
 
 static int r871x_wx_set_pmkid(struct net_device *dev,
-			     struct iw_request_info *a,
-			     union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *a,
+			      union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -816,7 +815,7 @@ static int r871x_wx_set_pmkid(struct net_device *dev,
 		break;
 	case IW_PMKSA_FLUSH:
 		memset(psecuritypriv->PMKIDList, 0,
-			sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		       sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
 		intReturn = true;
 		break;
@@ -839,7 +838,7 @@ static int r8711_wx_get_sens(struct net_device *dev,
 }
 
 static int r8711_wx_get_range(struct net_device *dev,
-				struct iw_request_info *info,
+			      struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
 {
 	struct iw_range *range = (struct iw_range *)extra;
@@ -900,9 +899,9 @@ static int r8711_wx_get_rate(struct net_device *dev,
 			     union iwreq_data *wrqu, char *extra);
 
 static int r871x_wx_set_priv(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *awrq,
-				char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *awrq,
+			     char *extra)
 {
 	int ret = 0, len = 0;
 	char *ext;
@@ -988,7 +987,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 		goto FREE_EXT;
 	}
 	if (copy_to_user(dwrq->pointer, ext,
-				min(dwrq->length, (__u16)(strlen(ext) + 1))))
+			 min(dwrq->length, (__u16)(strlen(ext) + 1))))
 		ret = -EFAULT;
 
 FREE_EXT:
@@ -1010,7 +1009,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
  *
  */
 static int r8711_wx_set_wap(struct net_device *dev,
-			 struct iw_request_info *info,
+			    struct iw_request_info *info,
 			 union iwreq_data *awrq,
 			 char *extra)
 {
@@ -1061,8 +1060,8 @@ static int r8711_wx_set_wap(struct net_device *dev,
 }
 
 static int r8711_wx_get_wap(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1111,8 +1110,8 @@ static int r871x_wx_set_mlme(struct net_device *dev,
  *
  */
 static int r8711_wx_set_scan(struct net_device *dev,
-			struct iw_request_info *a,
-			union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *a,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1139,7 +1138,7 @@ static int r8711_wx_set_scan(struct net_device *dev,
 			u32 len = min_t(u8, req->essid_len, IW_ESSID_MAX_SIZE);
 
 			memset((unsigned char *)&ssid, 0,
-				 sizeof(struct ndis_802_11_ssid));
+			       sizeof(struct ndis_802_11_ssid));
 			memcpy(ssid.Ssid, req->essid, len);
 			ssid.SsidLength = len;
 			spin_lock_irqsave(&pmlmepriv->lock, irqL);
@@ -1162,8 +1161,8 @@ static int r8711_wx_set_scan(struct net_device *dev,
 }
 
 static int r8711_wx_get_scan(struct net_device *dev,
-				struct iw_request_info *a,
-				union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *a,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1217,8 +1216,8 @@ static int r8711_wx_get_scan(struct net_device *dev,
  *
  */
 static int r8711_wx_set_essid(struct net_device *dev,
-				struct iw_request_info *a,
-				union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *a,
+			      union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1257,7 +1256,7 @@ static int r8711_wx_set_essid(struct net_device *dev,
 			    && (pnetwork->network.Ssid.SsidLength ==
 			     ndis_ssid.SsidLength)) {
 				if (check_fwstate(pmlmepriv,
-							WIFI_ADHOC_STATE)) {
+						  WIFI_ADHOC_STATE)) {
 					if (pnetwork->network.
 						InfrastructureMode
 						!=
@@ -1280,7 +1279,7 @@ static int r8711_wx_set_essid(struct net_device *dev,
 }
 
 static int r8711_wx_get_essid(struct net_device *dev,
-				struct iw_request_info *a,
+			      struct iw_request_info *a,
 				union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
@@ -1300,7 +1299,7 @@ static int r8711_wx_get_essid(struct net_device *dev,
 }
 
 static int r8711_wx_set_rate(struct net_device *dev,
-				struct iw_request_info *a,
+			     struct iw_request_info *a,
 				union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
@@ -1428,8 +1427,8 @@ static int r8711_wx_get_rate(struct net_device *dev,
 }
 
 static int r8711_wx_get_rts(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 
@@ -1439,8 +1438,8 @@ static int r8711_wx_get_rts(struct net_device *dev,
 }
 
 static int r8711_wx_set_frag(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 
@@ -1456,8 +1455,8 @@ static int r8711_wx_set_frag(struct net_device *dev,
 }
 
 static int r8711_wx_get_frag(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 
@@ -1467,8 +1466,8 @@ static int r8711_wx_get_frag(struct net_device *dev,
 }
 
 static int r8711_wx_get_retry(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *info,
+			      union iwreq_data *wrqu, char *extra)
 {
 	wrqu->retry.value = 7;
 	wrqu->retry.fixed = 0;	/* no auto select */
@@ -1477,8 +1476,8 @@ static int r8711_wx_get_retry(struct net_device *dev,
 }
 
 static int r8711_wx_set_enc(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *keybuf)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *keybuf)
 {
 	u32 key;
 	u32 keyindex_provided;
@@ -1520,8 +1519,8 @@ static int r8711_wx_set_enc(struct net_device *dev,
 		authmode = Ndis802_11AuthModeOpen;
 		padapter->securitypriv.ndisauthtype = authmode;
 	} else if (erq->flags & IW_ENCODE_RESTRICTED) {
-		netdev_info(dev,
-				"r8712u: %s: IW_ENCODE_RESTRICTED\n", __func__);
+		netdev_info(dev, "r8712u: %s: IW_ENCODE_RESTRICTED\n",
+			    __func__);
 		padapter->securitypriv.ndisencryptstatus =
 				 Ndis802_11Encryption1Enabled;
 		padapter->securitypriv.AuthAlgrthm = 1; /* shared system */
@@ -1574,8 +1573,8 @@ static int r8711_wx_set_enc(struct net_device *dev,
 }
 
 static int r8711_wx_get_enc(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *keybuf)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *keybuf)
 {
 	uint key, ret = 0;
 	struct _adapter *padapter = netdev_priv(dev);
@@ -1637,8 +1636,8 @@ static int r8711_wx_get_enc(struct net_device *dev,
 }
 
 static int r8711_wx_get_power(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *info,
+			      union iwreq_data *wrqu, char *extra)
 {
 	wrqu->power.value = 0;
 	wrqu->power.fixed = 0;	/* no auto select */
@@ -1647,8 +1646,8 @@ static int r8711_wx_get_power(struct net_device *dev,
 }
 
 static int r871x_wx_set_gen_ie(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			       struct iw_request_info *info,
+			       union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 
@@ -1656,8 +1655,8 @@ static int r871x_wx_set_gen_ie(struct net_device *dev,
 }
 
 static int r871x_wx_set_auth(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_param *param = (struct iw_param *)&(wrqu->param);
@@ -1739,8 +1738,8 @@ static int r871x_wx_set_auth(struct net_device *dev,
 }
 
 static int r871x_wx_set_enc_ext(struct net_device *dev,
-			     struct iw_request_info *info,
-			     union iwreq_data *wrqu, char *extra)
+				struct iw_request_info *info,
+				union iwreq_data *wrqu, char *extra)
 {
 	struct iw_point *pencoding = &wrqu->encoding;
 	struct iw_encode_ext *pext = (struct iw_encode_ext *)extra;
@@ -1802,8 +1801,8 @@ static int r871x_wx_get_nick(struct net_device *dev,
 }
 
 static int r8711_wx_read32(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *keybuf)
+			   struct iw_request_info *info,
+			   union iwreq_data *wrqu, char *keybuf)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	u32 addr;
@@ -1819,8 +1818,8 @@ static int r8711_wx_read32(struct net_device *dev,
 }
 
 static int r8711_wx_write32(struct net_device *dev,
-				 struct iw_request_info *info,
-				 union iwreq_data *wrqu, char *keybuf)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *keybuf)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	u32 addr;
@@ -1833,22 +1832,22 @@ static int r8711_wx_write32(struct net_device *dev,
 }
 
 static int dummy(struct net_device *dev,
-		struct iw_request_info *a,
-		union iwreq_data *wrqu, char *b)
+		 struct iw_request_info *a,
+		 union iwreq_data *wrqu, char *b)
 {
 	return -EINVAL;
 }
 
 static int r8711_drvext_hdl(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
 {
 	return 0;
 }
 
 static int r871x_mp_ioctl_hdl(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			      struct iw_request_info *info,
+			      union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *p = &wrqu->data;
@@ -1923,8 +1922,8 @@ static int r871x_mp_ioctl_hdl(struct net_device *dev,
 }
 
 static int r871x_get_ap_info(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1972,13 +1971,13 @@ static int r871x_get_ap_info(struct net_device *dev,
 		if (ether_addr_equal(bssid, pnetwork->network.MacAddress)) {
 			/* BSSID match, then check if supporting wpa/wpa2 */
 			pbuf = r8712_get_wpa_ie(&pnetwork->network.IEs[12],
-			       &wpa_ielen, pnetwork->network.IELength - 12);
+				&wpa_ielen, pnetwork->network.IELength - 12);
 			if (pbuf && (wpa_ielen > 0)) {
 				pdata->flags = 1;
 				break;
 			}
 			pbuf = r8712_get_wpa2_ie(&pnetwork->network.IEs[12],
-			       &wpa_ielen, pnetwork->network.IELength - 12);
+				&wpa_ielen, pnetwork->network.IELength - 12);
 			if (pbuf && (wpa_ielen > 0)) {
 				pdata->flags = 2;
 				break;
@@ -1989,15 +1988,15 @@ static int r871x_get_ap_info(struct net_device *dev,
 	spin_unlock_irqrestore(&(pmlmepriv->scanned_queue.lock), irqL);
 	if (pdata->length >= 34) {
 		if (copy_to_user((u8 __user *)pdata->pointer + 32,
-		    (u8 *)&pdata->flags, 1))
+				 (u8 *)&pdata->flags, 1))
 			return -EINVAL;
 	}
 	return 0;
 }
 
 static int r871x_set_pid(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			 struct iw_request_info *info,
+			 union iwreq_data *wrqu, char *extra)
 {
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *pdata = &wrqu->data;
@@ -2010,8 +2009,9 @@ static int r871x_set_pid(struct net_device *dev,
 }
 
 static int r871x_set_chplan(struct net_device *dev,
-				struct iw_request_info *info,
-				union iwreq_data *wrqu, char *extra)
+			    struct iw_request_info *info,
+			    union iwreq_data *wrqu, char *extra)
+
 {
 	int ret = 0;
 	struct _adapter *padapter = netdev_priv(dev);
@@ -2141,18 +2141,18 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 	switch (param->cmd) {
 	case IEEE_CMD_SET_WPA_PARAM:
 		ret = wpa_set_param(dev, param->u.wpa_param.name,
-		      param->u.wpa_param.value);
+				    param->u.wpa_param.value);
 		break;
 	case IEEE_CMD_SET_WPA_IE:
 		ret =  r871x_set_wpa_ie(padapter, (char *)param->u.wpa_ie.data,
-		       (u16)param->u.wpa_ie.len);
+					(u16)param->u.wpa_ie.len);
 		break;
 	case IEEE_CMD_SET_ENCRYPTION:
 		ret = wpa_set_encryption(dev, param, p->length);
 		break;
 	case IEEE_CMD_MLME:
 		ret = wpa_mlme(dev, param->u.mlme.command,
-		      param->u.mlme.reason_code);
+			       param->u.mlme.reason_code);
 		break;
 	default:
 		ret = -EOPNOTSUPP;
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index 2622d5e..2a2e5d9 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -121,9 +121,9 @@ u8 r8712_set_802_11_bssid(struct _adapter *padapter, u8 *bssid)
 		goto _Abort_Set_BSSID;
 	}
 	if (check_fwstate(pmlmepriv,
-	    _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
+			  _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
 		if (!memcmp(&pmlmepriv->cur_network.network.MacAddress, bssid,
-		    ETH_ALEN)) {
+			    ETH_ALEN)) {
 			if (!check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				/* driver is in
 				 * WIFI_ADHOC_MASTER_STATE
@@ -135,7 +135,7 @@ u8 r8712_set_802_11_bssid(struct _adapter *padapter, u8 *bssid)
 				r8712_ind_disconnect(padapter);
 			r8712_free_assoc_resources(padapter);
 			if ((check_fwstate(pmlmepriv,
-			     WIFI_ADHOC_MASTER_STATE))) {
+					   WIFI_ADHOC_MASTER_STATE))) {
 				_clr_fwstate_(pmlmepriv,
 					      WIFI_ADHOC_MASTER_STATE);
 				set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
@@ -172,14 +172,14 @@ void r8712_set_802_11_ssid(struct _adapter *padapter,
 		    ssid->SsidLength))) {
 			if (!check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 				if (!r8712_is_same_ibss(padapter,
-				     pnetwork)) {
+							pnetwork)) {
 					/* if in WIFI_ADHOC_MASTER_STATE or
 					 *  WIFI_ADHOC_STATE, create bss or
 					 * rejoin again
 					 */
 					r8712_disassoc_cmd(padapter);
 					if (check_fwstate(pmlmepriv,
-					    _FW_LINKED))
+							  _FW_LINKED))
 						r8712_ind_disconnect(padapter);
 					r8712_free_assoc_resources(padapter);
 					if (check_fwstate(pmlmepriv,
@@ -348,7 +348,7 @@ u8 r8712_set_802_11_add_wep(struct _adapter *padapter,
 		break;
 	}
 	memcpy(psecuritypriv->DefKey[keyid].skey, &wep->KeyMaterial,
-		wep->KeyLength);
+	       wep->KeyLength);
 	psecuritypriv->DefKeylen[keyid] = wep->KeyLength;
 	psecuritypriv->PrivacyKeyIndex = keyid;
 	if (r8712_set_key(padapter, psecuritypriv, keyid) == _FAIL)
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index d48f3d1..9a08e85 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -59,7 +59,7 @@ static sint _init_mlme_priv(struct _adapter *padapter)
 	for (i = 0; i < MAX_BSS_CNT; i++) {
 		INIT_LIST_HEAD(&(pnetwork->list));
 		list_add_tail(&(pnetwork->list),
-				 &(pmlmepriv->free_bss_pool.queue));
+			      &(pmlmepriv->free_bss_pool.queue));
 		pnetwork++;
 	}
 	pmlmepriv->sitesurveyctrl.last_rx_pkts = 0;
@@ -111,7 +111,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 }
 
 static void free_network_nolock(struct mlme_priv *pmlmepriv,
-			  struct wlan_network *pnetwork)
+				struct wlan_network *pnetwork)
 {
 	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
 
@@ -130,7 +130,7 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
  * to avoid possible racing condition...
  */
 static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
-					 u8 *addr)
+						u8 *addr)
 {
 	unsigned long irqL;
 	struct list_head *phead, *plist;
@@ -245,7 +245,7 @@ int r8712_is_same_ibss(struct _adapter *adapter, struct wlan_network *pnetwork)
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
 
 	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
-		    (pnetwork->network.Privacy == cpu_to_le32(0)))
+	    (pnetwork->network.Privacy == cpu_to_le32(0)))
 		ret = false;
 	else if ((psecuritypriv->PrivacyAlgrthm == _NO_PRIVACY_) &&
 		 (pnetwork->network.Privacy == cpu_to_le32(1)))
@@ -294,7 +294,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
-			    (unsigned long)pwlan->last_scanned))
+				       (unsigned long)pwlan->last_scanned))
 				oldest = pwlan;
 		}
 		plist = plist->next;
@@ -346,15 +346,15 @@ static void update_current_network(struct _adapter *adapter,
 		update_network(&(pmlmepriv->cur_network.network),
 			       pnetwork, adapter);
 		r8712_update_protection(adapter,
-			       (pmlmepriv->cur_network.network.IEs) +
-			       sizeof(struct NDIS_802_11_FIXED_IEs),
-			       pmlmepriv->cur_network.network.IELength);
+					(pmlmepriv->cur_network.network.IEs) +
+					sizeof(struct NDIS_802_11_FIXED_IEs),
+					pmlmepriv->cur_network.network.IELength);
 	}
 }
 
 /* Caller must hold pmlmepriv->lock first */
 static void update_scanned_network(struct _adapter *adapter,
-			    struct wlan_bssid_ex *target)
+				   struct wlan_bssid_ex *target)
 {
 	struct list_head *plist, *phead;
 
@@ -376,7 +376,7 @@ static void update_scanned_network(struct _adapter *adapter,
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
 		    time_after((unsigned long)oldest->last_scanned,
-				(unsigned long)pnetwork->last_scanned))
+			       (unsigned long)pnetwork->last_scanned))
 			oldest = pnetwork;
 
 		plist = plist->next;
@@ -393,7 +393,7 @@ static void update_scanned_network(struct _adapter *adapter,
 			target->Rssi = (pnetwork->network.Rssi +
 					target->Rssi) / 2;
 			memcpy(&pnetwork->network, target,
-				r8712_get_wlan_bssid_ex_sz(target));
+			       r8712_get_wlan_bssid_ex_sz(target));
 			pnetwork->last_scanned = jiffies;
 		} else {
 			/* Otherwise just pull from the free list */
@@ -418,7 +418,7 @@ static void update_scanned_network(struct _adapter *adapter,
 }
 
 static void rtl8711_add_network(struct _adapter *adapter,
-			 struct wlan_bssid_ex *pnetwork)
+				struct wlan_bssid_ex *pnetwork)
 {
 	unsigned long irqL;
 	struct mlme_priv *pmlmepriv = &(((struct _adapter *)adapter)->mlmepriv);
@@ -438,7 +438,7 @@ static void rtl8711_add_network(struct _adapter *adapter,
  *			(5) others
  */
 static int is_desired_network(struct _adapter *adapter,
-				struct wlan_network *pnetwork)
+			      struct wlan_network *pnetwork)
 {
 	u8 wps_ie[512];
 	uint wps_ielen;
@@ -447,13 +447,13 @@ static int is_desired_network(struct _adapter *adapter,
 
 	if (psecuritypriv->wps_phase) {
 		if (r8712_get_wps_ie(pnetwork->network.IEs,
-		    pnetwork->network.IELength, wps_ie,
-		    &wps_ielen))
+				     pnetwork->network.IELength, wps_ie,
+				     &wps_ielen))
 			return true;
 		return false;
 	}
 	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
-		    (pnetwork->network.Privacy == 0))
+	    (pnetwork->network.Privacy == 0))
 		bselected = false;
 	if (check_fwstate(&adapter->mlmepriv, WIFI_ADHOC_STATE)) {
 		if (pnetwork->network.InfrastructureMode !=
@@ -511,17 +511,17 @@ void r8712_survey_event_callback(struct _adapter *adapter, u8 *pbuf)
 	/* update IBSS_network 's timestamp */
 	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
 		if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress),
-		    pnetwork->MacAddress, ETH_ALEN)) {
+			      pnetwork->MacAddress, ETH_ALEN)) {
 			struct wlan_network *ibss_wlan = NULL;
 
 			memcpy(pmlmepriv->cur_network.network.IEs,
-				pnetwork->IEs, 8);
+			       pnetwork->IEs, 8);
 			ibss_wlan = r8712_find_network(
 						&pmlmepriv->scanned_queue,
 						pnetwork->MacAddress);
 			if (ibss_wlan) {
 				memcpy(ibss_wlan->network.IEs,
-					pnetwork->IEs, 8);
+				       pnetwork->IEs, 8);
 				goto exit;
 			}
 		}
@@ -570,8 +570,8 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 							dev_network.MacAddress;
 					pmlmepriv->fw_state ^= _FW_UNDER_SURVEY;
 					memcpy(&pdev_network->Ssid,
-						&pmlmepriv->assoc_ssid,
-						sizeof(struct
+					       &pmlmepriv->assoc_ssid,
+					       sizeof(struct
 							 ndis_802_11_ssid));
 					r8712_update_registrypriv_dev_network
 						(adapter);
@@ -621,7 +621,7 @@ void r8712_free_assoc_resources(struct _adapter *adapter)
 	}
 
 	if (check_fwstate(pmlmepriv,
-	    WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
+		WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE | WIFI_AP_STATE))
 		r8712_free_all_stainfo(adapter);
 	if (pwlan)
 		pwlan->fixed = false;
@@ -782,7 +782,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 
 			if (!ptarget_wlan) {
 				if (check_fwstate(pmlmepriv,
-					_FW_UNDER_LINKING))
+						  _FW_UNDER_LINKING))
 					pmlmepriv->fw_state ^=
 						 _FW_UNDER_LINKING;
 				goto ignore_joinbss_callback;
@@ -844,7 +844,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					}
 				} else {
 					if (check_fwstate(pmlmepriv,
-					    _FW_UNDER_LINKING))
+							  _FW_UNDER_LINKING))
 						pmlmepriv->fw_state ^=
 							 _FW_UNDER_LINKING;
 					goto ignore_joinbss_callback;
@@ -853,7 +853,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 
 			/*s3. update cur_network & indicate connect*/
 			memcpy(&cur_network->network, &pnetwork->network,
-				pnetwork->network.Length);
+			       pnetwork->network.Length);
 			cur_network->aid = pnetwork->join_res;
 			/*update fw_state will clr _FW_UNDER_LINKING*/
 			switch (pnetwork->network.InfrastructureMode) {
@@ -868,9 +868,9 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 				break;
 			}
 			r8712_update_protection(adapter,
-					  (cur_network->network.IEs) +
-					  sizeof(struct NDIS_802_11_FIXED_IEs),
-					  (cur_network->network.IELength));
+					(cur_network->network.IEs) +
+					sizeof(struct NDIS_802_11_FIXED_IEs),
+					(cur_network->network.IELength));
 			/*TODO: update HT_Capability*/
 			update_ht_cap(adapter, cur_network->network.IEs,
 				      cur_network->network.IELength);
@@ -970,11 +970,11 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
 			pdev_network = &(adapter->registrypriv.dev_network);
 			pibss = adapter->registrypriv.dev_network.MacAddress;
 			memcpy(pdev_network, &tgt_network->network,
-				r8712_get_wlan_bssid_ex_sz(&tgt_network->
+			       r8712_get_wlan_bssid_ex_sz(&tgt_network->
 							network));
 			memcpy(&pdev_network->Ssid,
-				&pmlmepriv->assoc_ssid,
-				sizeof(struct ndis_802_11_ssid));
+			       &pmlmepriv->assoc_ssid,
+			       sizeof(struct ndis_802_11_ssid));
 			r8712_update_registrypriv_dev_network(adapter);
 			r8712_generate_random_ibss(pibss);
 			if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
@@ -1088,7 +1088,7 @@ void _r8712_dhcp_timeout_handler (struct _adapter *adapter)
 		return;
 	if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt)
 		r8712_set_ps_mode(adapter, adapter->registrypriv.power_mgnt,
-			    adapter->registrypriv.smart_ps);
+				  adapter->registrypriv.smart_ps);
 }
 
 void _r8712_wdg_timeout_handler(struct _adapter *adapter)
@@ -1132,7 +1132,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 					    cur_network.network,
 					    &pnetwork->network)) {
 						_clr_fwstate_(pmlmepriv,
-							_FW_UNDER_LINKING);
+							      _FW_UNDER_LINKING);
 						/*r8712_indicate_connect again*/
 						r8712_indicate_connect(adapter);
 						return 2;
@@ -1235,12 +1235,12 @@ sint r8712_set_key(struct _adapter *adapter,
 	case _WEP40_:
 		keylen = 5;
 		memcpy(psetkeyparm->key,
-			psecuritypriv->DefKey[keyid].skey, keylen);
+		       psecuritypriv->DefKey[keyid].skey, keylen);
 		break;
 	case _WEP104_:
 		keylen = 13;
 		memcpy(psetkeyparm->key,
-			psecuritypriv->DefKey[keyid].skey, keylen);
+		       psecuritypriv->DefKey[keyid].skey, keylen);
 		break;
 	case _TKIP_:
 		if (keyid < 1 || keyid > 2) {
@@ -1249,7 +1249,7 @@ sint r8712_set_key(struct _adapter *adapter,
 		}
 		keylen = 16;
 		memcpy(psetkeyparm->key,
-			&psecuritypriv->XGrpKey[keyid - 1], keylen);
+		       &psecuritypriv->XGrpKey[keyid - 1], keylen);
 		psetkeyparm->grpkey = 1;
 		break;
 	case _AES_:
@@ -1259,7 +1259,7 @@ sint r8712_set_key(struct _adapter *adapter,
 		}
 		keylen = 16;
 		memcpy(psetkeyparm->key,
-			&psecuritypriv->XGrpKey[keyid - 1], keylen);
+		       &psecuritypriv->XGrpKey[keyid - 1], keylen);
 		psetkeyparm->grpkey = 1;
 		break;
 	default:
@@ -1284,7 +1284,7 @@ sint r8712_set_key(struct _adapter *adapter,
 
 /* adjust IEs for r8712_joinbss_cmd in WMM */
 int r8712_restruct_wmm_ie(struct _adapter *adapter, u8 *in_ie, u8 *out_ie,
-		    uint in_len, uint initial_out_len)
+			  uint in_len, uint initial_out_len)
 {
 	unsigned int ielength = 0;
 	unsigned int i, j;
@@ -1325,7 +1325,7 @@ static int SecIsInPMKIDList(struct _adapter *Adapter, u8 *bssid)
 
 	do {
 		if (psecuritypriv->PMKIDList[i].bUsed &&
-		   (!memcmp(psecuritypriv->PMKIDList[i].Bssid,
+		    (!memcmp(psecuritypriv->PMKIDList[i].Bssid,
 			    bssid, ETH_ALEN)))
 			break;
 		i++;
@@ -1343,7 +1343,7 @@ static int SecIsInPMKIDList(struct _adapter *Adapter, u8 *bssid)
 }
 
 sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
-		     u8 *out_ie, uint in_len)
+			   u8 *out_ie, uint in_len)
 {
 	u8 authmode = 0, match;
 	u8 sec_ie[IW_CUSTOM_MAX], uncst_oui[4], bkup_ie[255];
@@ -1393,13 +1393,13 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			if ((authmode == _WPA_IE_ID_) &&
 			    (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) {
 				memcpy(&sec_ie[0], &in_ie[cnt],
-					in_ie[cnt + 1] + 2);
+				       in_ie[cnt + 1] + 2);
 				match = true;
 				break;
 			}
 			if (authmode == _WPA2_IE_ID_) {
 				memcpy(&sec_ie[0], &in_ie[cnt],
-					in_ie[cnt + 1] + 2);
+				       in_ie[cnt + 1] + 2);
 				match = true;
 				break;
 			}
@@ -1407,7 +1407,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 			     (!memcmp(&in_ie[cnt + 2], &wpa_oui[0], 4))) ||
 			     (authmode == _WPA2_IE_ID_))
 				memcpy(&bkup_ie[0], &in_ie[cnt],
-					in_ie[cnt + 1] + 2);
+				       in_ie[cnt + 1] + 2);
 		}
 		cnt += in_ie[cnt + 1] + 2; /*get next*/
 	}
@@ -1462,7 +1462,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 				if (sec_ie[12] == 0x01) {
 					/*check the unicast encryption type*/
 					if (memcmp(&sec_ie[14],
-					    &uncst_oui[0], 4)) {
+						   &uncst_oui[0], 4)) {
 						match = false;
 						break;
 
@@ -1477,9 +1477,9 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 					memcpy(&sec_ie[14], &uncst_oui[0], 4);
 					/*remove the other unicast suit*/
 					memcpy(&sec_ie[18],
-						&sec_ie[18 + remove_cnt],
-						sec_ie[1] - 18 + 2 -
-						remove_cnt);
+					       &sec_ie[18 + remove_cnt],
+					       sec_ie[1] - 18 + 2 -
+					       remove_cnt);
 					sec_ie[1] = sec_ie[1] - remove_cnt;
 				}
 				break;
@@ -1526,7 +1526,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 				if (sec_ie[8] == 0x01) {
 					/*check the unicast encryption type*/
 					if (memcmp(&sec_ie[10],
-						     &uncst_oui[0], 4)) {
+						   &uncst_oui[0], 4)) {
 						match = false;
 						break;
 					} /*else the uncst_oui is match*/
@@ -1540,9 +1540,9 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 					memcpy(&sec_ie[10], &uncst_oui[0], 4);
 					/*remove the other unicast suit*/
 					memcpy(&sec_ie[14],
-						&sec_ie[14 + remove_cnt],
-						(sec_ie[1] - 14 + 2 -
-						remove_cnt));
+					       &sec_ie[14 + remove_cnt],
+					       (sec_ie[1] - 14 + 2 -
+					       remove_cnt));
 					sec_ie[1] = sec_ie[1] - remove_cnt;
 				}
 				break;
@@ -1583,7 +1583,7 @@ sint r8712_restruct_sec_ie(struct _adapter *adapter, u8 *in_ie,
 		out_ie[ielength] = 0;	/*PMKID count = 0x0100*/
 		ielength++;
 		memcpy(&out_ie[ielength],
-			&psecuritypriv->PMKIDList[iEntry].PMKID, 16);
+		       &psecuritypriv->PMKIDList[iEntry].PMKID, 16);
 		ielength += 16;
 		out_ie[13] += 18;/*PMKID length = 2+16*/
 	}
@@ -1599,7 +1599,7 @@ void r8712_init_registrypriv_dev_network(struct _adapter *adapter)
 
 	memcpy(pdev_network->MacAddress, myhwaddr, ETH_ALEN);
 	memcpy(&pdev_network->Ssid, &pregistrypriv->ssid,
-		sizeof(struct ndis_802_11_ssid));
+	       sizeof(struct ndis_802_11_ssid));
 	pdev_network->Configuration.Length =
 			 sizeof(struct NDIS_802_11_CONFIGURATION);
 	pdev_network->Configuration.BeaconPeriod = 100;
@@ -1732,9 +1732,9 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 	/*check Max Rx A-MPDU Size*/
 	len = 0;
 	p = r8712_get_ie(pie + sizeof(struct NDIS_802_11_FIXED_IEs),
-				_HT_CAPABILITY_IE_,
-				&len, ie_len -
-				sizeof(struct NDIS_802_11_FIXED_IEs));
+			 _HT_CAPABILITY_IE_,
+			 &len, ie_len -
+			 sizeof(struct NDIS_802_11_FIXED_IEs));
 	if (p && len > 0) {
 		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info &
@@ -1767,8 +1767,8 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 	}
 	len = 0;
 	p = r8712_get_ie(pie + sizeof(struct NDIS_802_11_FIXED_IEs),
-		   _HT_ADD_INFO_IE_, &len,
-		   ie_len - sizeof(struct NDIS_802_11_FIXED_IEs));
+			 _HT_ADD_INFO_IE_, &len,
+			 ie_len - sizeof(struct NDIS_802_11_FIXED_IEs));
 }
 
 void r8712_issue_addbareq_cmd(struct _adapter *padapter, int priority)
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 8a54181..757ec45 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -152,7 +152,7 @@ static inline void clr_fwstate(struct mlme_priv *pmlmepriv, sint state)
 }
 
 static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv,
-					     sint val)
+					   sint val)
 {
 	unsigned long irqL;
 
diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 1d5364f..cf4038a 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -55,7 +55,7 @@ static int init_mp_priv(struct mp_priv *pmp_priv)
 	for (i = 0; i < NR_MP_XMITFRAME; i++) {
 		INIT_LIST_HEAD(&(pmp_xmitframe->list));
 		list_add_tail(&(pmp_xmitframe->list),
-				 &(pmp_priv->free_mp_xmitqueue.queue));
+			      &(pmp_priv->free_mp_xmitqueue.queue));
 		pmp_xmitframe->pkt = NULL;
 		pmp_xmitframe->frame_tag = MP_FRAMETAG;
 		pmp_xmitframe->padapter = pmp_priv->papdater;
@@ -241,7 +241,7 @@ static u32 get_rf_reg(struct _adapter *pAdapter, u8 path, u8 offset,
 }
 
 static u8 set_rf_reg(struct _adapter *pAdapter, u8 path, u8 offset, u32 bitmask,
-	      u32 value)
+		     u32 value)
 {
 	u32 org_value, bit_shift, new_value;
 
@@ -320,7 +320,7 @@ void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset)
 	TxAGCOffset_D = (ulTxAGCOffset & 0x00ff0000) >> 16;
 	tmpAGC = TxAGCOffset_D << 8 | TxAGCOffset_C << 4 | TxAGCOffset_B;
 	set_bb_reg(pAdapter, rFPGA0_TxGainStage,
-			(bXBTxAGC | bXCTxAGC | bXDTxAGC), tmpAGC);
+		   (bXBTxAGC | bXCTxAGC | bXDTxAGC), tmpAGC);
 }
 
 void r8712_SetDataRate(struct _adapter *pAdapter)
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index bbef96f9f..90f5bb9 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -159,7 +159,7 @@ static int mp_start_test(struct _adapter *padapter)
 	memcpy(bssid.MacAddress, pmppriv->network_macaddr, ETH_ALEN);
 	bssid.Ssid.SsidLength = 16;
 	memcpy(bssid.Ssid.Ssid, (unsigned char *)"mp_pseudo_adhoc",
-		bssid.Ssid.SsidLength);
+	       bssid.Ssid.SsidLength);
 	bssid.InfrastructureMode = Ndis802_11IBSS;
 	bssid.NetworkTypeInUse = Ndis802_11DS;
 	bssid.IELength = 0;
@@ -591,15 +591,15 @@ uint oid_rt_pro_read_register_hdl(struct oid_par_priv
 		switch (RegRWStruct->width) {
 		case 1:
 			RegRWStruct->value = r8712_read8(Adapter,
-						   RegRWStruct->offset);
+							 RegRWStruct->offset);
 			break;
 		case 2:
 			RegRWStruct->value = r8712_read16(Adapter,
-						    RegRWStruct->offset);
+							  RegRWStruct->offset);
 			break;
 		case 4:
 			RegRWStruct->value = r8712_read32(Adapter,
-						    RegRWStruct->offset);
+							  RegRWStruct->offset);
 			break;
 		default:
 			status = RNDIS_STATUS_NOT_ACCEPTED;
@@ -647,15 +647,15 @@ uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv)
 		switch (RegRWStruct->width) {
 		case 1:
 			r8712_write8(Adapter, RegRWStruct->offset,
-			       (unsigned char)RegRWStruct->value);
+				     (unsigned char)RegRWStruct->value);
 			break;
 		case 2:
 			r8712_write16(Adapter, RegRWStruct->offset,
-				(unsigned short)RegRWStruct->value);
+				      (unsigned short)RegRWStruct->value);
 			break;
 		case 4:
 			r8712_write32(Adapter, RegRWStruct->offset,
-				(unsigned int)RegRWStruct->value);
+				      (unsigned int)RegRWStruct->value);
 			break;
 		default:
 			status = RNDIS_STATUS_NOT_ACCEPTED;
@@ -820,7 +820,7 @@ uint oid_rt_pro_efuse_map_hdl(struct oid_par_priv *poid_par_priv)
 		/* SET_OID */
 		if (r8712_efuse_reg_init(Adapter)) {
 			if (r8712_efuse_map_write(Adapter, 0,
-			    EFUSE_MAP_MAX_SIZE, data))
+						  EFUSE_MAP_MAX_SIZE, data))
 				*poid_par_priv->bytes_rw = EFUSE_MAP_MAX_SIZE;
 			else
 				status = RNDIS_STATUS_FAILURE;
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.c b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
index 2beafc7..a7c6f3a 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.c
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.c
@@ -215,7 +215,7 @@ void r8712_unregister_cmd_alive(struct _adapter *padapter)
 	mutex_lock(&pwrctrl->mutex_lock);
 	unregister_task_alive(pwrctrl, CMD_ALIVE);
 	if ((pwrctrl->cpwm > PS_STATE_S2) &&
-	   (pwrctrl->pwr_mode > PS_MODE_ACTIVE)) {
+	    (pwrctrl->pwr_mode > PS_MODE_ACTIVE)) {
 		if ((pwrctrl->alives == 0) &&
 		    (check_fwstate(&padapter->mlmepriv,
 		     _FW_UNDER_LINKING) != true)) {
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.h b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
index 11b5034..ba87bdc 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.h
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
@@ -109,7 +109,7 @@ void r8712_unregister_cmd_alive(struct _adapter *padapter);
 void r8712_cpwm_int_hdl(struct _adapter *padapter,
 			struct reportpwrstate_parm *preportpwrstate);
 void r8712_set_ps_mode(struct _adapter *padapter, uint ps_mode,
-			uint smart_ps);
+		       uint smart_ps);
 void r8712_set_rpwm(struct _adapter *padapter, u8 val8);
 
 #endif  /* __RTL871X_PWRCTRL_H_ */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index aa4e406..57e71cb 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -74,7 +74,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		INIT_LIST_HEAD(&(precvframe->u.list));
 		list_add_tail(&(precvframe->u.list),
-				 &(precvpriv->free_recv_queue.queue));
+			      &(precvpriv->free_recv_queue.queue));
 		r8712_os_recv_resource_alloc(padapter, precvframe);
 		precvframe->u.hdr.adapter = padapter;
 		precvframe++;
@@ -196,14 +196,14 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 
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
@@ -279,7 +279,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 }
 
 static sint recv_decache(union recv_frame *precv_frame, u8 bretry,
-		  struct stainfo_rxcache *prxcache)
+			 struct stainfo_rxcache *prxcache)
 {
 	sint tid = precv_frame->u.hdr.attrib.priority;
 	u16 seq_ctrl = ((precv_frame->u.hdr.attrib.seq_num & 0xffff) << 4) |
@@ -398,8 +398,8 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 			return _FAIL;
 		/* check BSSID */
 		if (is_zero_ether_addr(pattrib->bssid) ||
-		     is_zero_ether_addr(mybssid) ||
-		     (memcmp(pattrib->bssid, mybssid, ETH_ALEN)))
+		    is_zero_ether_addr(mybssid) ||
+		    (memcmp(pattrib->bssid, mybssid, ETH_ALEN)))
 			return _FAIL;
 		if (bmcast)
 			*psta = r8712_get_bcmc_stainfo(adapter);
@@ -448,20 +448,20 @@ static sint sta2ap_data_frame(struct _adapter *adapter,
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
@@ -607,9 +607,9 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
 	if ((!memcmp(psnap, (void *)rfc1042_header, SNAP_SIZE) &&
-	    (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
-	    (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
-	     !memcmp(psnap, (void *)bridge_tunnel_header, SNAP_SIZE)) {
+	     (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
+	     (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
+	    !memcmp(psnap, (void *)bridge_tunnel_header, SNAP_SIZE)) {
 		/* remove RFC1042 or Bridge-Tunnel encapsulation and
 		 * replace EtherType
 		 */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 1a56cd4..0e18ecb 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -129,9 +129,9 @@ struct sta_recv_priv {
 /* get a free recv_frame from pfree_recv_queue */
 union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
 int r8712_free_recvframe(union recv_frame *precvframe,
-			  struct  __queue *pfree_recv_queue);
+			 struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe_queue(struct  __queue *pframequeue,
-				 struct  __queue *pfree_recv_queue);
+				struct  __queue *pfree_recv_queue);
 int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe);
 int recv_func(struct _adapter *padapter, void *pcontext);
 
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index a771272..fb59c92 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -90,7 +90,7 @@ static u32 arcfour_byte(struct arc4context *parc4ctx)
 }
 
 static void arcfour_encrypt(struct arc4context	*parc4ctx,
-		     u8 *dest, u8 *src, u32 len)
+			    u8 *dest, u8 *src, u32 len)
 {
 	u32 i;
 
@@ -583,7 +583,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 			stainfo = pattrib->psta;
 		else
 			stainfo = r8712_get_stainfo(&padapter->stapriv,
-				  &pattrib->ra[0]);
+						    &pattrib->ra[0]);
 		if (stainfo) {
 			prwskey = &stainfo->x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
@@ -620,7 +620,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 							payload, length));
 					arcfour_init(&mycontext, rc4key, 16);
 					arcfour_encrypt(&mycontext, payload,
-							 payload, length);
+							payload, length);
 					arcfour_encrypt(&mycontext,
 							payload + length, crc,
 							4);
@@ -678,7 +678,7 @@ u32 r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 			pnl = (u16)(txpn.val);
 			pnh = (u32)(txpn.val >> 16);
 			phase1((u16 *)&ttkey[0], prwskey, &prxattrib->ta[0],
-				pnh);
+			       pnh);
 			phase2(&rc4key[0], prwskey, (unsigned short *)
 			       &ttkey[0], pnl);
 			/* 4 decrypt payload include icv */
@@ -951,7 +951,7 @@ static void construct_mic_header1(u8 *mic_header1, sint header_length, u8 *mpdu)
 /* header fields.                               */
 /************************************************/
 static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, sint a4_exists,
-			   sint qc_exists)
+				  sint qc_exists)
 {
 	sint i;
 
@@ -1020,7 +1020,7 @@ static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
 }
 
 static sint aes_cipher(u8 *key, uint	hdrlen,
-			u8 *pframe, uint plen)
+		       u8 *pframe, uint plen)
 {
 	uint qc_exists, a4_exists, i, j, payload_remainder;
 	uint num_blocks, payload_index;
@@ -1054,7 +1054,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 		a4_exists = 1;
 
 	if ((frtype == WIFI_DATA_CFACK) ||
-	     (frtype == WIFI_DATA_CFPOLL) ||
+	    (frtype == WIFI_DATA_CFPOLL) ||
 	     (frtype == WIFI_DATA_CFACKPOLL)) {
 		qc_exists = 1;
 		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN)
@@ -1163,7 +1163,7 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 			stainfo = pattrib->psta;
 		else
 			stainfo = r8712_get_stainfo(&padapter->stapriv,
-				  &pattrib->ra[0]);
+						    &pattrib->ra[0]);
 		if (stainfo != NULL) {
 			prwskey = &stainfo->x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
@@ -1194,7 +1194,7 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 }
 
 static sint aes_decipher(u8 *key, uint	hdrlen,
-			u8 *pframe, uint plen)
+			 u8 *pframe, uint plen)
 {
 	static u8 message[MAX_MSG_SIZE];
 	uint qc_exists, a4_exists, i, j, payload_remainder;
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index f1439a7..96fd7b0 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -122,7 +122,7 @@ struct sta_info *r8712_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
  */
 		for (i = 0; i < 16; i++)
 			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i],
-				&wRxSeqInitialValue, 2);
+			       &wRxSeqInitialValue, 2);
 		/* for A-MPDU Rx reordering buffer control */
 		for (i = 0; i < 16; i++) {
 			preorder_ctrl = &psta->recvreorder_ctrl[i];
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 4060c55..8e53525 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -39,7 +39,7 @@ static void _init_txservq(struct tx_servq *ptxservq)
 void _r8712_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
 {
 	memset((unsigned char *)psta_xmitpriv, 0,
-		 sizeof(struct sta_xmit_priv));
+	       sizeof(struct sta_xmit_priv));
 	spin_lock_init(&psta_xmitpriv->lock);
 	_init_txservq(&psta_xmitpriv->be_q);
 	_init_txservq(&psta_xmitpriv->bk_q);
@@ -92,7 +92,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 		list_add_tail(&(pxframe->list),
-				 &(pxmitpriv->free_xmit_queue.queue));
+			      &(pxmitpriv->free_xmit_queue.queue));
 		pxframe++;
 	}
 	pxmitpriv->free_xmitframe_cnt = NR_XMITFRAME;
@@ -135,7 +135,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 				 (XMITBUF_ALIGN_SZ - 1));
 		r8712_xmit_resource_alloc(padapter, pxmitbuf);
 		list_add_tail(&pxmitbuf->list,
-				 &(pxmitpriv->free_xmitbuf_queue.queue));
+			      &(pxmitpriv->free_xmitbuf_queue.queue));
 		pxmitbuf++;
 	}
 	pxmitpriv->free_xmitbuf_cnt = NR_XMITBUFF;
@@ -143,8 +143,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	alloc_hwxmits(padapter);
 	init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
 	tasklet_init(&pxmitpriv->xmit_tasklet,
-		(void(*)(unsigned long))r8712_xmit_bh,
-		(unsigned long)padapter);
+		     (void(*)(unsigned long))r8712_xmit_bh,
+		     (unsigned long)padapter);
 	return _SUCCESS;
 }
 
@@ -173,7 +173,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 }
 
 sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
-		   struct pkt_attrib *pattrib)
+			 struct pkt_attrib *pattrib)
 {
 	struct pkt_file pktfile;
 	struct sta_info *psta = NULL;
@@ -247,7 +247,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		if (pktfile.pkt_len > 282) {/*MINIMUM_DHCP_PACKET_SIZE)*/
 			if (pattrib->ether_type == ETH_P_IP) {/* IP header*/
 				if (((tmp[21] == 68) && (tmp[23] == 67)) ||
-					((tmp[21] == 67) && (tmp[23] == 68))) {
+				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/* 68 : UDP BOOTP client
 					 * 67 : UDP BOOTP server
 					 * Use low rate to send DHCP packet.
@@ -374,16 +374,16 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 					return _FAIL;
 				/*start to calculate the mic code*/
 				r8712_secmicsetkey(&micdata,
-					 psecuritypriv->
-					 XGrptxmickey[psecuritypriv->
-					XGrpKeyid].skey);
+						   psecuritypriv->
+						   XGrptxmickey[psecuritypriv->
+						   XGrpKeyid].skey);
 			} else {
 				if (!memcmp(&stainfo->tkiptxmickey.skey[0],
 					    null_key, 16))
 					return _FAIL;
 				/* start to calculate the mic code */
 				r8712_secmicsetkey(&micdata,
-					     &stainfo->tkiptxmickey.skey[0]);
+					&stainfo->tkiptxmickey.skey[0]);
 			}
 			if (pframe[1] & 1) {   /* ToDS==1 */
 				r8712_secmicappend(&micdata,
@@ -485,7 +485,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			/* to_ds = 1, fr_ds = 0; */
 			SetToDs(fctrl);
 			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
@@ -493,7 +493,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			SetFrDs(fctrl);
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
 			   check_fwstate(pmlmepriv,
@@ -501,12 +501,12 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else {
 			return _FAIL;
 		}
@@ -533,13 +533,13 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 				else
 					psta =
 					 r8712_get_stainfo(&padapter->stapriv,
-					 pattrib->ra);
+							   pattrib->ra);
 			}
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid
 						  [pattrib->priority]++;
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
-						   &= 0xFFF;
+							     &= 0xFFF;
 				pattrib->seqnum = psta->sta_xmitpriv.
 						  txseq_tid[pattrib->priority];
 				SetSeqNum(hdr, pattrib->seqnum);
@@ -579,7 +579,7 @@ static sint r8712_put_snap(u8 *data, u16 h_proto)
  * 6. apply sw-encrypt, if necessary.
  */
 sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
-			struct xmit_frame *pxmitframe)
+			      struct xmit_frame *pxmitframe)
 {
 	struct pkt_file pktfile;
 
@@ -638,9 +638,9 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _TKIP_:
 					if (bmcst)
 						TKIP_IV(pattrib->iv,
-						    psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+							psta->txpn,
+							(u8)psecuritypriv->
+							XGrpKeyid);
 					else
 						TKIP_IV(pattrib->iv, psta->txpn,
 							0);
@@ -648,8 +648,8 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _AES_:
 					if (bmcst)
 						AES_IV(pattrib->iv, psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+						       (u8)psecuritypriv->
+						       XGrpKeyid);
 					else
 						AES_IV(pattrib->iv, psta->txpn,
 						       0);
@@ -669,10 +669,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			mpdu_len -= pattrib->icv_len;
 		if (bmcst)
 			mem_sz = _r8712_pktfile_read(&pktfile, pframe,
-				 pattrib->pktlen);
+						     pattrib->pktlen);
 		else
 			mem_sz = _r8712_pktfile_read(&pktfile, pframe,
-				 mpdu_len);
+						     mpdu_len);
 		pframe += mem_sz;
 		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {
 			memcpy(pframe, pattrib->icv, pattrib->icv_len);
@@ -825,7 +825,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 }
 
 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
-		      struct xmit_frame *pxmitframe)
+			     struct xmit_frame *pxmitframe)
 {
 	if (!pxmitframe)
 		return;
@@ -913,7 +913,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 		} else {
 			if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
 				psta = r8712_get_stainfo(pstapriv,
-				       get_bssid(pmlmepriv));
+							 get_bssid(pmlmepriv));
 			else
 				psta = r8712_get_stainfo(pstapriv, pattrib->ra);
 		}
@@ -921,7 +921,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 	if (!psta)
 		return _FAIL;
 	ptxservq = get_sta_pending(padapter, &pstapending,
-		   psta, pattrib->priority);
+				   psta, pattrib->priority);
 	spin_lock_irqsave(&pstapending->lock, irqL0);
 	if (list_empty(&ptxservq->tx_pending))
 		list_add_tail(&ptxservq->tx_pending, &pstapending->queue);
@@ -938,7 +938,7 @@ static void alloc_hwxmits(struct _adapter *padapter)
 
 	pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;
 	pxmitpriv->hwxmits = kmalloc_array(pxmitpriv->hwxmit_entry,
-				sizeof(struct hw_xmit), GFP_ATOMIC);
+					   sizeof(struct hw_xmit), GFP_ATOMIC);
 	if (!pxmitpriv->hwxmits)
 		return;
 	hwxmits = pxmitpriv->hwxmits;
@@ -994,7 +994,7 @@ static void init_hwxmits(struct hw_xmit *phwxmit, sint entry)
 }
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-			struct xmit_buf *pxmitbuf)
+			      struct xmit_buf *pxmitbuf)
 {
 	/* pxmitbuf attach to pxmitframe */
 	pxmitframe->pxmitbuf = pxmitbuf;
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 3bea2e3..ac7dc64 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -259,7 +259,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 void r8712_free_xmitframe_queue(struct xmit_priv *pxmitpriv,
 				struct  __queue *pframequeue);
 sint r8712_xmit_classifier(struct _adapter *padapter,
-			    struct xmit_frame *pxmitframe);
+			   struct xmit_frame *pxmitframe);
 sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			      struct xmit_frame *pxmitframe);
 sint _r8712_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
@@ -280,7 +280,7 @@ int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 void r8712_xmit_bh(void *priv);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-			struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 
 #include "rtl8712_xmit.h"
 
diff --git a/drivers/staging/rtl8712/usb_halinit.c b/drivers/staging/rtl8712/usb_halinit.c
index 02e73c2..fc5afdf 100644
--- a/drivers/staging/rtl8712/usb_halinit.c
+++ b/drivers/staging/rtl8712/usb_halinit.c
@@ -292,7 +292,7 @@ unsigned int r8712_usb_inirp_init(struct _adapter *padapter)
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
 		if (r8712_usb_read_port(pintfhdl, precvpriv->ff_hwaddr, 0,
-		   (unsigned char *)precvbuf) == false)
+		    (unsigned char *)precvbuf) == false)
 			return _FAIL;
 		precvbuf++;
 		precvpriv->free_recv_buf_queue_cnt--;
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 91382c2..8c1feea 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -441,7 +441,7 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 
 			for (i = 0, offset = 0; i < 128; i += 8, offset++)
 				r8712_efuse_pg_packet_read(padapter, offset,
-						     &pdata[i]);
+							   &pdata[i]);
 
 			if (!r8712_initmac || !mac_pton(r8712_initmac, mac)) {
 				/* Use the mac address stored in the Efuse
@@ -561,10 +561,10 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 			 */
 			mac[0] &= 0xFE;
 			dev_info(&udev->dev,
-				"r8712u: MAC Address from user = %pM\n", mac);
+				 "r8712u: MAC Address from user = %pM\n", mac);
 		} else {
 			dev_info(&udev->dev,
-				"r8712u: MAC Address from efuse = %pM\n", mac);
+				 "r8712u: MAC Address from efuse = %pM\n", mac);
 		}
 		ether_addr_copy(pnetdev->dev_addr, mac);
 	}
diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index eef52d5..49da781 100644
--- a/drivers/staging/rtl8712/usb_ops.c
+++ b/drivers/staging/rtl8712/usb_ops.c
@@ -38,7 +38,7 @@ static u8 usb_read8(struct intf_hdl *pintfhdl, u32 addr)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 1;
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 	return (u8)(le32_to_cpu(data) & 0x0ff);
 }
 
@@ -58,7 +58,7 @@ static u16 usb_read16(struct intf_hdl *pintfhdl, u32 addr)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 2;
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 	return (u16)(le32_to_cpu(data) & 0xffff);
 }
 
@@ -78,7 +78,7 @@ static u32 usb_read32(struct intf_hdl *pintfhdl, u32 addr)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 4;
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 	return le32_to_cpu(data);
 }
 
@@ -99,7 +99,7 @@ static void usb_write8(struct intf_hdl *pintfhdl, u32 addr, u8 val)
 	len = 1;
 	data = cpu_to_le32((u32)val & 0x000000ff);
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 }
 
 static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
@@ -119,7 +119,7 @@ static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
 	len = 2;
 	data = cpu_to_le32((u32)val & 0x0000ffff);
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 }
 
 static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
@@ -139,7 +139,7 @@ static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
 	len = 4;
 	data = cpu_to_le32(val);
 	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+				requesttype);
 }
 
 void r8712_usb_set_intf_option(u32 *poption)
diff --git a/drivers/staging/rtl8712/usb_ops.h b/drivers/staging/rtl8712/usb_ops.h
index d629754..7a6b619 100644
--- a/drivers/staging/rtl8712/usb_ops.h
+++ b/drivers/staging/rtl8712/usb_ops.h
@@ -21,9 +21,9 @@
 void r8712_usb_write_mem(struct intf_hdl *pintfhdl, u32 addr,
 			 u32 cnt, u8 *wmem);
 u32 r8712_usb_write_port(struct intf_hdl *pintfhdl, u32 addr,
-			  u32 cnt, u8 *wmem);
+			 u32 cnt, u8 *wmem);
 u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr,
-			 u32 cnt, u8 *rmem);
+			u32 cnt, u8 *rmem);
 void r8712_usb_set_intf_option(u32 *poption);
 void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl);
 uint r8712_usb_init_intf_priv(struct intf_priv *pintfpriv);
@@ -32,7 +32,7 @@ void r8712_usb_set_intf_ops(struct _io_ops *pops);
 void r8712_usb_read_port_cancel(struct _adapter *padapter);
 void r8712_usb_write_port_cancel(struct _adapter *padapter);
 int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
-		      u16 index, void *pdata, u16 len, u8 requesttype);
+			    u16 index, void *pdata, u16 len, u8 requesttype);
 
 #endif
 
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 9d290bc..17409be 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -192,7 +192,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 		if ((purb->actual_length > (MAX_RECVBUF_SZ)) ||
 		    (purb->actual_length < RXDESC_SIZE)) {
 			r8712_read_port(padapter, precvpriv->ff_hwaddr, 0,
-				  (unsigned char *)precvbuf);
+					(unsigned char *)precvbuf);
 		} else {
 			_pkt *pskb = precvbuf->pskb;
 
@@ -228,7 +228,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 			/* Fall through. */
 		case -EPROTO:
 			r8712_read_port(padapter, precvpriv->ff_hwaddr, 0,
-				  (unsigned char *)precvbuf);
+					(unsigned char *)precvbuf);
 			break;
 		case -EINPROGRESS:
 			netdev_err(padapter->pnetdev, "ERROR: URB IS IN PROGRESS!\n");
@@ -263,7 +263,7 @@ u32 r8712_usb_read_port(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *rmem)
 
 	if (!precvbuf->pskb) {
 		precvbuf->pskb = netdev_alloc_skb(adapter->pnetdev,
-				 MAX_RECVBUF_SZ + RECVBUFF_ALIGN_SZ);
+				MAX_RECVBUF_SZ + RECVBUFF_ALIGN_SZ);
 		if (!precvbuf->pskb)
 			return _FAIL;
 		tmpaddr = (addr_t)precvbuf->pskb->data;
@@ -367,7 +367,7 @@ static void usb_write_port_complete(struct urb *purb)
 		break;
 	default:
 		netdev_warn(padapter->pnetdev,
-				"r8712u: pipe error: (%d)\n", purb->status);
+			    "r8712u: pipe error: (%d)\n", purb->status);
 		break;
 	}
 	/* not to consider tx fragment */
@@ -467,7 +467,7 @@ void r8712_usb_write_port_cancel(struct _adapter *padapter)
 }
 
 int r8712_usbctrl_vendorreq(struct intf_priv *pintfpriv, u8 request, u16 value,
-		      u16 index, void *pdata, u16 len, u8 requesttype)
+			    u16 index, void *pdata, u16 len, u8 requesttype)
 {
 	unsigned int pipe;
 	int status;
diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
index 21f6b31..b76021b 100644
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
2.7.4


