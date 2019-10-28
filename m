X-GM-THRID: 6751912583325810688
X-Received: by 2002:a05:6830:1491:: with SMTP id s17mr1437692otq.310.1572275758991;
        Mon, 28 Oct 2019 08:15:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:8d7:: with SMTP id 81ls3499312otf.12.gmail; Mon, 28 Oct
 2019 08:15:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8xXsP5uHgymBUz6sVTZog9d80OwIbHLRAHv16fo0KMDSN9QkE/8k0AKzKqREepZTNFgzg
X-Received: by 2002:a9d:3674:: with SMTP id w107mr14492595otb.244.1572275757854;
        Mon, 28 Oct 2019 08:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572275757; cv=none;
        d=google.com; s=arc-20160816;
        b=WjWQ85XSHYHnD1IM9DkMvoBEBjikSfvpuGRuyYjKBwplcf8Tc0Y+uC/t2kqsCX9iJ0
         kNfLpYBzxCV9QA4L+cidGQSNVNiwhhBJWBjDqPJ/wVSe3Ix7m0IinwBOfGS+BP04i3P9
         S6dO2kM7Dbfod1mkN59gZwyEOK9CrCgpALn+EhF6ayafY6ULwILUwn7t5SypFdmDz+Fm
         /78uvBJZFcWalLGx2l1eMHaxixNjFXDgI5nXugJZMa6Q14ehNLEpcVudEa7jlIOT4DgC
         UxQi2iS4YX8MAFZVQ68Ro5llp8GCVmNRFPOTBbzB/Un3IAsQAlwOsvEVDF+ViUxNbXEb
         +L/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0FV5BQJa/pO//IMI+ZT8jkadIpmBxWA942zfBURnizc=;
        b=x3ryB06z9IetYarGAM2HZFg6EQgNdZ/xKHkHM9ZH/qafSDTz/8lPUC3P00/IESvz32
         hzI1GmKlb746zy+N3d3B+YSXBkvN7KNa3G7kdheIDonBIlqTucpCkqzKs5hRvLAS8RaL
         Dtqc4yxJTn0G2ITN8goCP70Vr2d5A1CIlGMUtCw8UEBxeI88jxpzkJ5MWFG57tn3wmPF
         ZHYFyr1KlJxQ+quwhny5H6kjiQZiByInom/OWOKDY7Bc9CIGuY4A2K2B5WwZvALR2m8S
         zCX6PcFeOCbznm3Q/OC4ORv534dRNMuaq+feLQhtmo5WT7X+9SerLTkbRnVY5eE1YBZL
         tM+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvFgAelO;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id n49si300066ota.2.2019.10.28.08.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cvFgAelO;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id 15so8788785qkh.6
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 08:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0FV5BQJa/pO//IMI+ZT8jkadIpmBxWA942zfBURnizc=;
        b=cvFgAelOwhD77oP34pW6C/TIbj8PtSAhy+4AFLfcQZqbZCBxE3qBGDROsT0Rapje/5
         AubWT8QOi5W2ZLDchMUSedGJHRRIbNlD875Ap7avtGtcWF5FxNfu/FxU2GoYsPlgyTvN
         cKZUFKIu1yS4LKNVxO1+L/vsEVCSFmt9s7/ttfT3yufJAAYn0zN1mDf4ylBXbGq0xDYq
         cHTHmPV3MvoObnHl4LEpbYFDFAS5B6rxPv9Vur2tsEgr0dng+RbzLNgyhHaaZrrLyfBi
         z+jHajwTeapS9re7DqIGUJrxHjYte8p38Omppmu0vJCu7E+p0QnxgPgRdO6328I9qnoj
         lbiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0FV5BQJa/pO//IMI+ZT8jkadIpmBxWA942zfBURnizc=;
        b=AnnNSvnZ4Evl/tRSTsIPUKK5EgOBeGD3z+p3hDqK0uOXGQNGGN1e8lJGG9uATixhSK
         gL0K8mnY3hXtP2EY4t5ddMPE7mdyRXG40Ev77F1LjkVLRKdwVWJX5FY5/7Vs+FuBXNw5
         s+deUgczkbgRO+9g6CNk5w/pUHy/hHBRtn/zqlZEpBbJ5sBY3rkYfqfqEaCqOb4/OcKU
         HZ/DWWMTO96rri7bKB9W5o/hrMV+PYG61+N8NbcwHmhgSkOgvis3Ie8X3N1W5H0PnFcN
         r2oJyjSqqoJpyobPQUaEJ36CEJieoDbu/Ec8/cuPpXJP7oiB9BatCMzghBzce8VubwEx
         mUDA==
X-Gm-Message-State: APjAAAV8pdGyDWMAU4rCV8CKrjbKV5Xla03QwTgKYlaYP1Ue04gEEcwF
	TPp74d7QB5kztJnYh37rQF2jf0twWvhT+Q==
X-Received: by 2002:ae9:c307:: with SMTP id n7mr4110015qkg.185.1572275757080;
        Mon, 28 Oct 2019 08:15:57 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id 187sm6216703qkk.103.2019.10.28.08.15.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:15:56 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:15:52 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v3 1/2] staging: rtl8712: Fix Alignment of open parenthesis
Message-ID: <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment should match open parenthesis. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index af12c16..304d031 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-				 &(precvpriv->free_recv_buf_queue.queue));
+			      (&precvpriv->free_recv_buf_queue.queue));
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


