X-GM-THRID: 6751912583325810688
X-Received: by 2002:a81:48c3:: with SMTP id v186mr4697061ywa.285.1572052185310;
        Fri, 25 Oct 2019 18:09:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c7c9:: with SMTP id w192ls1769782ybe.8.gmail; Fri, 25
 Oct 2019 18:09:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyI8/xIQqth+IfGTYjaiNbJk1ZFmg/ucYLXiPQ3Xq1fKow2ZRF2obzgjPCJBPUv64w4lUXm
X-Received: by 2002:a25:5346:: with SMTP id h67mr5830901ybb.365.1572052183759;
        Fri, 25 Oct 2019 18:09:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572052183; cv=none;
        d=google.com; s=arc-20160816;
        b=MXBBEg23O9GtAHlRbOqtKd5rGnJVi77RRfVystsHs+3B4QkVqcj4whooz9Y07ko9Cm
         DouB1FkFxtPDAoCjm34HcDJVAXp0otY9h6C2sTE3dTicigHMYZI9ZECWG6/jplGoQcdP
         0qBS2c1KGg5QYc8Fpm/Qmz5VevXoxWwN6nyJjzJUKS8TPYFci85dhqX6FDWhEMk7pycb
         MeRt1n4mNT5WTL3oQ07YRPe9XjQXX3Z54FALXyGF9yWhVuRjHnp6S75tOT4e8gZt1lqQ
         xisciWnwUVxLQje8+09KwgpHVO46venMv42Cu+K4cHiMor5qLhOFMsz4MOpxcvohgprl
         RLPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4Z9OgauNAZlyv4DUV1e7z6dKzXgCBbvCPqc4vHiEOxo=;
        b=c/5Xocin9+EHYfbed2Wy8uHujlEzM2YzWyIrWHogcakQJ+Ro3qjTGla+0FM285sjfO
         RUxhoTklczVk1rXIAEdpK6SbvnPvBVVlvwhFrMjUFjGrinvK7aUdckg8Z2NPWelTrfYr
         oen/pRn199ULSBttuInj4W8tE+kyuXPf4JKHDhgRIOAmEOModF0/u9Y4B7CKF4XXwoqi
         9TjKJOjVburx+vTkj1lWFjPA4KvvNoLGhxG0T8e5ngyToMvbM9kxLMkYWC0kFK5V+uZH
         KZret6njG82rXJ9Dbw6DbiCcHQHGYU2923FnNw3fqJh0UdJBWY8apJHX/y7VMYBNQ7Fx
         XWfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SnGWbjza;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id r16si281990ybk.1.2019.10.25.18.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SnGWbjza;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o3so6040507qtj.8
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 18:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4Z9OgauNAZlyv4DUV1e7z6dKzXgCBbvCPqc4vHiEOxo=;
        b=SnGWbjzaNr2P+Am52dVGqNPCqNAgiY2/P/VjL8lAYUaQZS0Z+Lys2Qhj3gXqNRuz7G
         90HaqVxLFi/rqBdIJeuNT2WdmR3rUGbiEXstI92PeWo+piUS8116bUFjXM7OQVhmlq6D
         slmUe01EqObmxs5C4EotdrM56XfE4N61v1NLqb5OLjy2e3aHZUux5sjCNwya5h5l+mTv
         Dipm+1BrOkmfsads+E4ijod5UaMBtAP/pfIKqrxZuZZ8rvZH+/2/Ho8LVFWvXEeCVDJS
         58P+rTebn3D/AbL9SwC+az9z4sg3H3ZmyYFDUFzMIXCe3Fcg6zkG8sv/n6jYQHnyM6Kt
         9niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4Z9OgauNAZlyv4DUV1e7z6dKzXgCBbvCPqc4vHiEOxo=;
        b=XfWY4onHfZNwC4NjHm5bZ0Z6THYCXf3oUvvHXlJ8YGRj8KkCb3WmgMpzVZ21VtTIqj
         h6T/qRnQ/ghaINNJ+MbfoOo4LLiByH/lB3mKutF4sgJ95W1J+NSoc9XZdOyZqE/dd6um
         aw4w3exzPR0QCxFBapIG3X/fwnZmnwmlfO7vGVQZAkuIpTLObGUknZVDiScwt8wLWFWg
         d3TkbvgW6EjOvzzgAlUEgze28V2tNYE318CS2q1p3pg2x2YnSSIJ4+Y2mIzDldyCqAbv
         uaKu2JFoCUo172X0VkiBfybCXS6dt4rB1dviMF+yCAjul5AjlLlzYo9GQ+Mjc1RMdkaz
         3eBw==
X-Gm-Message-State: APjAAAXw940qpIN5ENqda5QKCDYxhG2i2wIdDj2/bJqScnL39EeanGh3
	RgL4LaQxoZFh8fPg+vTz0ugm33SAQWHUFQ==
X-Received: by 2002:ac8:75cb:: with SMTP id z11mr6234596qtq.64.1572052183254;
        Fri, 25 Oct 2019 18:09:43 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id g25sm2040226qtc.90.2019.10.25.18.09.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:09:42 -0700 (PDT)
Date: Fri, 25 Oct 2019 22:09:38 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment should match open parenthesis.Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
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


