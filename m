X-GM-THRID: 6750983693634895872
X-Received: by 2002:a37:4fd1:: with SMTP id d200mr8251227qkb.413.1571836909226;
        Wed, 23 Oct 2019 06:21:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:f992:: with SMTP id t18ls354556qvn.14.gmail; Wed, 23 Oct
 2019 06:21:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQ9oGyiYZ8J7+Zm0phJzTmp9O8eoq8LqiZVr0A61XReHjUhT1GNqfWgaKwA2cbEU3N5iBj
X-Received: by 2002:a0c:c590:: with SMTP id a16mr8949505qvj.144.1571836908197;
        Wed, 23 Oct 2019 06:21:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571836908; cv=none;
        d=google.com; s=arc-20160816;
        b=Rx9hEGUcSUvZ22Gz5ptlT69ZSO0zE1F9q5qMZ4nXSrhAeBeQjOTvZarKJ/66lrUbf3
         4KUVQYAlG+LBz+yCuyWkG08oulznDy2inQ/kc2Bp29qxQnFgMGOsV8WMtTKEpFEfmlQS
         OlSUU0pPTrqBK1cx6u4gnG/3W/+8WaHyJBOxMj+lm6J/C9R+0htLg8sHoXXxDwbHckbT
         0/SOIKqiajgVjgBIU4FczsUkgBrAQPonjjVZRURzg9WwaFTeKwI2tB7TDnmuoEZ2x2aD
         PWr5y42eb8jumtCvhgjP4mizuaPYjIMxJQPcupsWewnOtXa/z439uarA1dNdE/mL6TX/
         pvSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uG6CI2QwN1Haxla/Oryq3kj6OdVet54Z5zATdI4FkyM=;
        b=rUafGYbx5kns3x2lYi3V9sW1U/lSQ7TOdxmlndWDRCfIPkWJWnAGo4TjAgdHel6ErB
         DNmOYQ4tzoMjQLqdvXDDrzCsiHOWh1EQ1PPNP7laeqWOOQr58RBcvxd3LwYo5Do+4Q/l
         hjqkraLtI32AOY5d+bWaaUi8HvhgLc7rq+RTcoDe0kyUp5JWDhE/daq6w4q2Uf4T1Ljz
         KRVxsyLvrsFv1VfJTfDydS+X8nZ4ewiW5DPpUSqS3A/JMFZiYG1LtEJTCvMGuA8mZ96b
         2aCdUpAAIjEqu0DMHf/rbI/UV8o5vDUCRtHsPATJV8o6SBDgbuB8EnXtzl8O/uLkqUT2
         X20A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRINeGJW;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id k25si931547qkj.5.2019.10.23.06.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRINeGJW;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id d17so17606558qto.3
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 06:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uG6CI2QwN1Haxla/Oryq3kj6OdVet54Z5zATdI4FkyM=;
        b=VRINeGJWJCT6iW2lGpawV5YMjD4hdZSJaIlIr8WkPAq6dQ1bPCaSAl4s4CLeIPr93z
         Vzdzyd0mZpF3NfJE8U4guWAE48b9ofJNDgTQsWjFZxwnEQbS14nDzQb1Xez28FxuCMo4
         pALFpxZCZTnbl0qUVXDrJgxFXsmYtXddTm31l2PoZhgYFxwl/+omjPR/qZ7z5t9fR3iH
         DiDFATy4nFfisRsHWxxiTtGfSOyJT3Qb4zl5+yLJCMKkAth38Q3fXs0JfKPBq2eBBh+Z
         t8j+l/I6ehLJjzUetI6GoRgEh8iMUpgKdisXx3Y7L2JzZ9MnqoTgdTd/69Z+tl1Hjm+o
         AsRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uG6CI2QwN1Haxla/Oryq3kj6OdVet54Z5zATdI4FkyM=;
        b=p1UsJTN+mlkk9bYzH+6ZkcPX1wgRNKfh9In/4rZapn/EYxk83e4nU7MGZE1+VvnWb2
         J/pfVCE/2nY6duzcXOKgTQwkkRKqt5p6vdqtjgQAnRVjYXlu1Dw1BR8s2fvmIEVDw5Lw
         POLMcZwkjHuEGja7TQOf1Y9kTgUR0boWoG0lVgv5gVHPej3WYFy3TjKeps9TDUprJKIh
         z7zp2YcaZE1b7dvloYALkqjUDibiAaFAsdr+baEwMn/Oh6Q2JJFnnYZj1r633LGbW6vy
         RsOvktQc7wcw0o/Ye8/thRiMg9YVsCxm+o6nBq9kBM51xdHVpd3GMZmG06ySGvq5MrCw
         D5nw==
X-Gm-Message-State: APjAAAU0iVOGGh7/67Upd2sy0cCNHDpseWLz/SNvD12xjh77SzZQZHcm
	KvJ/x5eo361zsJA36ryI4XoyOdLhkb28hA==
X-Received: by 2002:a0c:f792:: with SMTP id s18mr8659258qvn.20.1571836907694;
        Wed, 23 Oct 2019 06:21:47 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id p3sm9911269qkm.52.2019.10.23.06.21.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:21:47 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:21:43 -0200
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: r8712: Fix Alignment of open parenthesis
Message-ID: <2186db2d69e518235e306e698c074dd0a8bb1271.1571834718.git.cristianenavescardoso09@gmail.com>
References: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment should match open parenthesis.Issue found by checkpatch.

Signed-off-by: CristianeNaves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index af12c16..12a3c64 100644
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
@@ -379,7 +379,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 		/* convert hdr + possible LLC headers into Ethernet header */
 		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
 		if (sub_skb->len >= 8 &&
-		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
+		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
 		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and
@@ -387,18 +387,18 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
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


