X-GM-THRID: 6751912583325810688
X-Received: by 2002:aca:ef85:: with SMTP id n127mr537390oih.42.1572277043956;
        Mon, 28 Oct 2019 08:37:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4783:: with SMTP id b3ls254089otf.5.gmail; Mon, 28 Oct
 2019 08:37:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzphiY0/TjH/j93rFn54Vh8o/oT58Dn3XWs9h5f9pYdFCRBedlB3Gxb2gnwodJRFfTFu4SJ
X-Received: by 2002:a9d:8a5:: with SMTP id 34mr13944855otf.197.1572277042736;
        Mon, 28 Oct 2019 08:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572277042; cv=none;
        d=google.com; s=arc-20160816;
        b=wwOzmoexAhRjZkIeopzyADU5sDX+AmvfHZGLfyF73m8cgR4VNouzpzsgPiNTSEzQBj
         rQvLFCjAO51WlXwXzIAdHqwF5pUl6jZmvC+OhhJnuKAuTL2keaMRQ1QHkZiEFLXN5Dk/
         1XY+U5nCV/33hRlMtEk1Orneik333gAJVNfdvTIJWqEgGfC/Oe9PhuudS7URrdj6f17k
         87mIEfjNEPTQW5ZOrsAzcCc4YhvAcHAiu1HJoMvrUMKpQIOJ2vE7wbDYmJuHliarQigq
         5TUUc8oyBA75DPfpztyXLNGtHAxkQhF+hBN+cMzvS8OYNweTMc45QNqnLjKvraQIPpnN
         IDFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wYGdeMVsSnldJ5HK72RXM3BlWxjO1W9juajBwhBiRmQ=;
        b=ncPQbVTBUnv7/1wcuwDtP9nSP3b8ywXin1dpTcSY2Tl51DZtRZ1Nt8RV7u5Bf5J9ZI
         obn0lrU4Xyhszfu+9H07F9AZm1I+I9nIVwi/RcONqRw1PvU/oBxxafI7Ph+FVeWExngR
         mGCiT4cX9buX0WVI0XxB+86gVV9WPeKsMOSYA53Lb8h+BtiocUZpvDk8NzixCOUWvtF6
         OPWRaXr0O40XNixgHE2MeCsQciZa0dXzRP7AzjpIyGsYBGqOldSAopns92YnBmqKIruI
         dNKY4BguFipJfPUGB/Zr1e8JGCyoRQ/cHCL/NS9OCPCtQz0GUaU79NTvnpmZwi+9JI/P
         ZFIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LAUIkKm4;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id n49si304569ota.2.2019.10.28.08.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LAUIkKm4;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id g50so15188928qtb.4
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wYGdeMVsSnldJ5HK72RXM3BlWxjO1W9juajBwhBiRmQ=;
        b=LAUIkKm4R+xKNzfWQS0cBKJSNG+zrwONod38afnFR3WzsQRmJr5Jv9KT/fkcJEuY39
         va3oNiXQreaCiQAwbKnZA9xOfIK0pyHLlmH8WgMUEyE6zcaPKNCfx2oZTw62GNZtAiZP
         ty0gdpzwWQJ/gTifeMJ7dnXtU2IwMRAvz9QKnU7uwc+oEICXwUv3lToSpwm7bgtw+RSV
         Dta/RNvaPH/5njoKM9jhOA+mlH3mZRVI/PpPc3IJtQTDG+GXtQ6I7g/zdrKXwzSa3iQM
         vFq1xCF7qdOSaVb6whT1USIgMjHt16PW9RPzUySYFZO40zi8f5uJ+QBT1Yd356RUPb3r
         4bZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wYGdeMVsSnldJ5HK72RXM3BlWxjO1W9juajBwhBiRmQ=;
        b=Xxj8qY1yx4ehA2ewvbCcPsxpaZVl5s4cX5uXGiFMU6e9iQkLoQ6uUJ4b9Tlu2cLdxN
         dOsh7rYWXUY0xezkhE0lcEmS7c6aEg3jFFCXVkEvmQ6p4cjb+NYLiJNoMs+YmltOKzmt
         qMf6zetexngovg8qaGQh7/pL4PNHPi/m7bqwfftu5FynE5mkxrlsHWVVFymePZ/tWrmO
         tzQfMqIYv4s05mpofQFkk5AacQY1l9c/mQMXCiZobjCIwHY6gTlKDQ2ylXJKGZxsOK1g
         DA28HseUofOjZCTmWmJfhAVeWIC7EbFyzaoviQQu/VXEXr/jWG5IEMnvNn1aOoA/8dpv
         Fx6A==
X-Gm-Message-State: APjAAAVm5jMpx66XUjbpm+eFLfOZS5iHPeRm76n3p7h9h8vpqhBtu4if
	Z5faxRZDUBguezl1e8Sph/9lFhYxxEHzRg==
X-Received: by 2002:ac8:2c45:: with SMTP id e5mr17690657qta.256.1572277042182;
        Mon, 28 Oct 2019 08:37:22 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id r6sm4882288qtp.75.2019.10.28.08.37.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:37:21 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:37:16 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] staging: rtl8712: Fix Alignment of open parenthesis
Message-ID: <2a6e8fbef7b9e72d95b7c4a7cbcce08a9e231d07.1572276208.git.cristianenavescardoso09@gmail.com>
References: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment should match open parenthesis. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index af12c16..36d5d2c 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
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
@@ -140,7 +140,7 @@ void r8712_free_recvframe(union recv_frame *precvframe,
 }
 
 static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
-					   struct recv_stat *prxstat)
+						  struct recv_stat *prxstat)
 {
 	u16 drvinfo_sz;
 
@@ -177,7 +177,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 
 /*perform defrag*/
 static union recv_frame *recvframe_defrag(struct _adapter *adapter,
-				   struct  __queue *defrag_q)
+					  struct  __queue *defrag_q)
 {
 	struct list_head *plist, *phead;
 	u8 wlanhdr_offset;
@@ -379,26 +379,26 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
 		if (sub_skb->len >= 8 &&
-		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
-		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
-		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+		      eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
+		     !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
 			 * replace EtherType
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
@@ -472,7 +472,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
-			      union recv_frame *prframe)
+				     union recv_frame *prframe)
 {
 	struct list_head *phead, *plist;
 	union recv_frame *pnextrframe;
@@ -499,8 +499,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 }
 
 int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
-			       struct recv_reorder_ctrl *preorder_ctrl,
-			       int bforced)
+				     struct recv_reorder_ctrl *preorder_ctrl,
+				     int bforced)
 {
 	struct list_head *phead, *plist;
 	union recv_frame *prframe;
@@ -530,7 +530,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 			plist = plist->next;
 			list_del_init(&(prframe->u.hdr.list));
 			if (SN_EQUAL(preorder_ctrl->indicate_seq,
-			    pattrib->seq_num))
+				     pattrib->seq_num))
 				preorder_ctrl->indicate_seq =
 				  (preorder_ctrl->indicate_seq + 1) % 4096;
 			/*indicate this recv_frame*/
@@ -555,7 +555,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 }
 
 static int recv_indicatepkt_reorder(struct _adapter *padapter,
-			     union recv_frame *prframe)
+				    union recv_frame *prframe)
 {
 	unsigned long irql;
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
@@ -624,7 +624,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
 }
 
 static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
-			      union recv_frame *prframe)
+					   union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-- 
2.7.4


