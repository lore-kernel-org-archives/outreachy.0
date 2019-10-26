X-GM-THRID: 6751912583325810688
X-Received: by 2002:ab0:14c1:: with SMTP id f1mr5126777uae.137.1572121680388;
        Sat, 26 Oct 2019 13:28:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls679201uai.5.gmail; Sat, 26 Oct
 2019 13:27:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQbi3r0QE5Y7++gpok9srcqZ46oGrxeksus3bgZRm1IQtXWVeu1Abv5wGdL1tjA0UBguT8
X-Received: by 2002:ab0:304e:: with SMTP id x14mr5048087ual.41.1572121679172;
        Sat, 26 Oct 2019 13:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572121679; cv=none;
        d=google.com; s=arc-20160816;
        b=u2VLMjWyEfSjh+xVHINrtu42yQDqt7CM9XncLW/qvjsDNt/qBsxb1/3IOWgsdTUBnv
         TZwzgNfRIA8oMASm6eH/ThzfeIbZaDbIIym75wk0Cf6SLZpfcjTCbJ22KzC+/G63tvx7
         xwOZo1u+pz7ET8ocf9LMKUD9a7zCYH9pU6kWIKKrjAUhniNU9FUFG9k80GGC1uJxuoq9
         Fv2C8ni5Oe+EFD3Zs7os0HkSOiMkUzhiBGzeWp65j/DTCZTZN6m6jig/debe2tEEmEMi
         8rr8fu6YBFvfvbg1P0ZamRjc1oLVSPyevH0VlZ5mY1tyKdZICwB/r/UZb0WW1PgmyGPe
         4s+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yx6Awz2IKlaX/UU/stsvXaWgodHP34R/qQ1ioU24SwQ=;
        b=btXztnqwnwUeDaqShL8/tU2BdlL2XRAzvwrHnmE0vTopm34a1F//Qvk28VgQwlVmPJ
         IvCNclkz6YbY1YxtccsBFUU8znQa4Uf1iIu2SD2E6BuF8oZJJ7kQIRGBDdlbVrKYt5cE
         y+NW+WI3IaUQj9Oe7LcYNUdJG4K0vSH7MrfTVeImccjsoys5uviJaau/gyvUuG6TxMfl
         hybuHASggbXhimr+S4+jF88jf25WFFm4av6SaystruHWCankoVtR8Pgd2SyRZzUmN0po
         7lJSwTPwwW2frX8qZSNRfBEgnU3Ge9UbicJcfdOoW4tB0q9rbsBf4Rm7bawKj4iVKIY/
         uQxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gRlciENf;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id s197si416859vkd.5.2019.10.26.13.27.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gRlciENf;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id y39so3313465qty.0
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 13:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yx6Awz2IKlaX/UU/stsvXaWgodHP34R/qQ1ioU24SwQ=;
        b=gRlciENfE7dB24CJ1rfqSgjJze87Zo4V8lt5NhzuS/S0h8op+o5t/exaRDdOsBocv1
         zKDO4hZjLT0difaOw5S5fVgRXLoqr0iVZrb/9a8zzzALl1acS0cc4TGFcCVNyUo4cLiZ
         Y6642VNr8PBJTu9Oo50x4uCL3LvAj6gljWA2kVl/KDWRZnaqo4JC6X1rVq+6LsEtNPbX
         ANv2qugAmXOvBBmqSezgG0RFWDNEvUfVPPUJfJyn3U5qvSLUKot/86LUu+sNukrjiStM
         6D0VxolHyQsDTWupGBWvFCfya6UpolzvmIih8bKuykS5UD6gkB46e3JfHaT22HeLf3/I
         3wlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yx6Awz2IKlaX/UU/stsvXaWgodHP34R/qQ1ioU24SwQ=;
        b=S5HGZ07i2gDtK6hG7PHrd+NNq9MLdN0YaQjWrAWQ6zRVnFYdRdWCnNpZeAD1vTCNOi
         xJjAPLKWMgFepWjSY6Q8btHlu60Wq5Gvmdq/McU7z3qtIjfiEKpr0KTwZOcJv2sd9rRC
         jxgGDW8VdUSrdafPSHD6Hfu/fHgNRWUKVi8UPnU7bxENaAx9XDCcYkOxRGo5I2CJdNqh
         LxnjQJcNb/MQU2BmM5DXHPd2tPCb43MDUoe5sjRjydzAYRVShs2froUZANxcEUfXCleV
         umqentomN6lcLGyWlC5oouLfiuW51usWPGUDgL8otDDZA4zCzdhBzdoS+Or33Y9WLPE3
         Q+Fw==
X-Gm-Message-State: APjAAAViYGCLPU1NcuGH1Mb5qV0M51v2PRBJ5KvvJLYtTUFBYMR41TEi
	DmAJgbB5lPtZ/zlIVI7nsCnNccQmCaxlsQ==
X-Received: by 2002:ac8:65c9:: with SMTP id t9mr4685261qto.329.1572121678697;
        Sat, 26 Oct 2019 13:27:58 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id o67sm3057894qkf.8.2019.10.26.13.27.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:27:58 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:27:54 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] staging: rtl8712: Fix Alignment of open parenthesis
Message-ID: <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignment should match open parenthesis. Issue found by checkpatch.

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


