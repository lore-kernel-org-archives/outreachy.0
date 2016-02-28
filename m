X-GM-THRID: 6256336280251006976
X-Received: by 10.182.118.169 with SMTP id kn9mr9128997obb.11.1456666803446;
        Sun, 28 Feb 2016 05:40:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.37 with SMTP id c5ls269188igt.22.canary; Sun, 28 Feb
 2016 05:40:03 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr14456920ioi.14.1456666803169;
        Sun, 28 Feb 2016 05:40:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id p10si841049igg.1.2016.02.28.05.40.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:40:03 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x232.google.com with SMTP id 9so158825236iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4394FRuupvJYQFsg56NTG1vx95eh1erPlLf8IIPyV3w=;
        b=cjR8Gwutmgg0yl7CR6avuHGaRqC9uD2BU7UU7z8fFCnGg8TOnuUrKrB73h9CZSZA/Z
         wTG1apPY0QYI4Ryk/fW2/m+54UG6vTTH21UUvvz46wucpNwNF1pvW60ed9zbppMEBK1J
         QhMZEAKJTQdkjJko91ltHuOcSmddp8njyX/oyh74gtS/waDMGYgRZsg2QeP7x0/fGONQ
         9h5zaN6SwLEuDHNreMvpQaGx1Zbf5iQPTaCU6WcpAU9BsPxNtKyxgvdn+VyG8uMWHm+/
         XcKFbB/dHlc8+ZhPKuYkV+3G/G8xLSfIN5iTUJUNe/HVPehk+xzg56xQ/0bHQhMcI7zB
         t+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4394FRuupvJYQFsg56NTG1vx95eh1erPlLf8IIPyV3w=;
        b=YEG2IIHFgnfl3KoZOgEVWrpiDi3f44kLfceVY+dYqKbXPLvC5l1C23NR88mC4rlfCe
         7h3F3QvReb/S5p0jyoDeq5SniOdFQ6rW2pq2CHMHaIDYPqaSOtqmu2oBXvfN6q/FBr/I
         kW1aUfI3KQ7XffqjH4L28FxTtpyo9ayIlXI1CwqDDD0zj9P8oYRojB4vf0bOQsFg+pWX
         qwT87L86i+olHqGvjLO/MS7a8oTto7dkLSOdCFiYomNxf9sCATUnMQ2Osfo2ZbjppPCv
         tq+I7WhjUqwu4+si958ctHuKVVcYFsS7EVSvLldH7vX9kHNDGhf1TJEB7NlXUFy5LhBa
         WvUw==
X-Gm-Message-State: AG10YOTinbrVFVOSGuWY4SGV5txhAMTpIgnur8c8w5uJx+GDtGXAq0kH12cXS1nQlGmxEA==
X-Received: by 10.107.164.212 with SMTP id d81mr17620559ioj.169.1456666802995;
        Sun, 28 Feb 2016 05:40:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id xh7sm5066644igb.1.2016.02.28.05.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:40:02 -0800 (PST)
Date: Sun, 28 Feb 2016 13:39:13 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: Eliminate commented out code
Message-ID: <20160228183913.GA4893@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Reduce code clutter by removing commented out code.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_recv.c | 50 -------------------------------
 1 file changed, 50 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rtl8723au/core/rtw_recv.c
index 7facf19..a66d631 100644
--- a/drivers/staging/rtl8723au/core/rtw_recv.c
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c
@@ -279,7 +279,6 @@ int recvframe_chkmic(struct rtw_adapter *adapter,
 	u8	bmic_err = false, brpt_micerror = true;
 	u8	*pframe, *payload, *pframemic;
 	u8	*mickey;
-	/* u8	*iv, rxdata_key_idx = 0; */
 	struct	sta_info *stainfo;
 	struct	rx_pkt_attrib *prxattrib = &precvframe->attrib;
 	struct	security_priv *psecuritypriv = &adapter->securitypriv;
@@ -1106,30 +1105,20 @@ static int validate_recv_ctrl_frame(struct rtw_adapter *padapter,
 
 				pxmitframe->attrib.triggered = 1;
 
-	                        /* DBG_8723A("handling ps-poll, q_len =%d, tim =%x\n", psta->sleepq_len, pstapriv->tim_bitmap); */
-
 				rtl8723au_hal_xmitframe_enqueue(padapter,
 								pxmitframe);
 
 				if (psta->sleepq_len == 0) {
 					pstapriv->tim_bitmap &= ~CHKBIT(psta->aid);
-
-					/* DBG_8723A("after handling ps-poll, tim =%x\n", pstapriv->tim_bitmap); */
-
-					/* update BCN for TIM IE */
-					/* update_BCNTIM(padapter); */
 					update_beacon23a(padapter, WLAN_EID_TIM,
 							 NULL, false);
 				}
 
-				/* spin_unlock_bh(&psta->sleep_q.lock); */
 				spin_unlock_bh(&pxmitpriv->lock);
 
 			} else {
-				/* spin_unlock_bh(&psta->sleep_q.lock); */
 				spin_unlock_bh(&pxmitpriv->lock);
 
-				/* DBG_8723A("no buffered packets to xmit\n"); */
 				if (pstapriv->tim_bitmap & CHKBIT(psta->aid)) {
 					if (psta->sleepq_len == 0) {
 						DBG_8723A("no buffered packets "
@@ -1148,8 +1137,6 @@ static int validate_recv_ctrl_frame(struct rtw_adapter *padapter,
 
 					pstapriv->tim_bitmap &= ~CHKBIT(psta->aid);
 
-					/* update BCN for TIM IE */
-					/* update_BCNTIM(padapter); */
 					update_beacon23a(padapter, WLAN_EID_TIM,
 							 NULL, false);
 				}
@@ -1169,7 +1156,6 @@ static int validate_recv_mgnt_frame(struct rtw_adapter *padapter,
 	struct sta_info *psta;
 	struct sk_buff *skb;
 	struct ieee80211_hdr *hdr;
-	/* struct mlme_priv *pmlmepriv = &adapter->mlmepriv; */
 
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
 		 "+validate_recv_mgnt_frame\n");
@@ -1277,8 +1263,6 @@ static int validate_recv_data_frame(struct rtw_adapter *adapter,
 		goto exit;
 	}
 
-	/* psta->rssi = prxcmd->rssi; */
-	/* psta->signal_quality = prxcmd->sq; */
 	precv_frame->psta = psta;
 
 	pattrib->hdrlen = sizeof(struct ieee80211_hdr_3addr);
@@ -1488,7 +1472,6 @@ static int wlanhdr_to_ethhdr (struct recv_frame *precvframe)
 	psnap = ptr + hdrlen;
 	eth_type = (psnap[6] << 8) | psnap[7];
 	/* convert hdr + possible LLC headers into Ethernet header */
-	/* eth_type = (psnap_type[0] << 8) | psnap_type[1]; */
 	if ((ether_addr_equal(psnap, rfc1042_header) &&
 	     eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 	    ether_addr_equal(psnap, bridge_tunnel_header)) {
@@ -1810,11 +1793,6 @@ static int enqueue_reorder_recvframe23a(struct recv_reorder_ctrl *preorder_ctrl,
 	struct rx_pkt_attrib *pnextattrib;
 
 	ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
-	/* DbgPrint("+enqueue_reorder_recvframe23a()\n"); */
-
-	/* spin_lock_irqsave(&ppending_recvframe_queue->lock); */
-	/* spin_lock_ex(&ppending_recvframe_queue->lock); */
-
 	phead = get_list_head(ppending_recvframe_queue);
 
 	list_for_each_safe(plist, ptmp, phead) {
@@ -1825,26 +1803,17 @@ static int enqueue_reorder_recvframe23a(struct recv_reorder_ctrl *preorder_ctrl,
 			continue;
 		} else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num)) {
 			/* Duplicate entry is found!! Do not insert current entry. */
-
-			/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock); */
 			return false;
 		} else {
 			break;
 		}
 
-		/* DbgPrint("enqueue_reorder_recvframe23a():while\n"); */
 	}
 
-	/* spin_lock_irqsave(&ppending_recvframe_queue->lock); */
-	/* spin_lock_ex(&ppending_recvframe_queue->lock); */
-
 	list_del_init(&prframe->list);
 
 	list_add_tail(&prframe->list, plist);
 
-	/* spin_unlock_ex(&ppending_recvframe_queue->lock); */
-	/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock); */
-
 	return true;
 }
 
@@ -1855,30 +1824,21 @@ int recv_indicatepkts_in_order(struct rtw_adapter *padapter,
 			       struct recv_reorder_ctrl *preorder_ctrl,
 			       int bforced)
 {
-	/* u8 bcancelled; */
 	struct list_head *phead, *plist;
 	struct recv_frame *prframe;
 	struct rx_pkt_attrib *pattrib;
-	/* u8 index = 0; */
 	int bPktInBuf = false;
 	struct recv_priv *precvpriv;
 	struct rtw_queue *ppending_recvframe_queue;
 
 	precvpriv = &padapter->recvpriv;
 	ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
-	/* DbgPrint("+recv_indicatepkts_in_order\n"); */
-
-	/* spin_lock_irqsave(&ppending_recvframe_queue->lock); */
-	/* spin_lock_ex(&ppending_recvframe_queue->lock); */
-
 	phead =	get_list_head(ppending_recvframe_queue);
 	plist = phead->next;
 
 	/*  Handling some condition for forced indicate case. */
 	if (bforced) {
 		if (list_empty(phead)) {
-			/*  spin_unlock_irqrestore(&ppending_recvframe_queue->lock); */
-			/* spin_unlock_ex(&ppending_recvframe_queue->lock); */
 			return true;
 		}
 
@@ -1928,12 +1888,8 @@ int recv_indicatepkts_in_order(struct rtw_adapter *padapter,
 			break;
 		}
 
-		/* DbgPrint("recv_indicatepkts_in_order():while\n"); */
 	}
 
-	/* spin_unlock_ex(&ppending_recvframe_queue->lock); */
-	/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock); */
-
 	return bPktInBuf;
 }
 
@@ -2049,8 +2005,6 @@ void rtw_reordering_ctrl_timeout_handler23a(unsigned long pcontext)
 		return;
 	}
 
-	/* DBG_8723A("+rtw_reordering_ctrl_timeout_handler23a() =>\n"); */
-
 	spin_lock_bh(&ppending_recvframe_queue->lock);
 
 	if (recv_indicatepkts_in_order(padapter, preorder_ctrl, true) == true) {
@@ -2067,14 +2021,10 @@ int process_recv_indicatepkts(struct rtw_adapter *padapter,
 			      struct recv_frame *prframe)
 {
 	int retval = _SUCCESS;
-	/* struct recv_priv *precvpriv = &padapter->recvpriv; */
-	/* struct rx_pkt_attrib *pattrib = &prframe->attrib; */
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 
 	if (phtpriv->ht_option == true) { /* B/G/N Mode */
-		/* prframe->preorder_ctrl = &precvpriv->recvreorder_ctrl[pattrib->priority]; */
-
 		/*  including perform A-MPDU Rx Ordering Buffer Control */
 		if (recv_indicatepkt_reorder(padapter, prframe) != _SUCCESS) {
 			if ((padapter->bDriverStopped == false) &&
-- 
2.5.0


