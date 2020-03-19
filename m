X-GM-THRID: 6805913239014080512
X-Received: by 2002:a17:906:1e56:: with SMTP id i22mr3204801ejj.314.1584625174483;
        Thu, 19 Mar 2020 06:39:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:16ca:: with SMTP id t10ls488008ejd.9.gmail; Thu, 19
 Mar 2020 06:39:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuplZSHah+7Oc1s1we+lqyb0oAnzztk8YkRiho9GjDM0rG4EgoieVhv7Q20n1Fk3MFKZvl4
X-Received: by 2002:a17:906:4a4d:: with SMTP id a13mr3418096ejv.72.1584625173354;
        Thu, 19 Mar 2020 06:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584625173; cv=none;
        d=google.com; s=arc-20160816;
        b=hDbA2zT6/7kZxgByh2uS+EfHN80Qs1nAuCib+gUfj87yqbzwWExrvWfih3jf1raW+x
         BJbVYqWJPptRWRHMHv9OjrtVTc/FZBWBawlelcv+sTfQJ1b/KxBqVEJu/08VzaaFPG1J
         NSU3tAw8IOgfFXMoqxP2GcezBc1eb3G6EzEZASEgeeyGqfKYUtDAe9KB/EvAz48H2qxA
         s/AuLxd9U0+HJGXxWcx4ouf/PQEU/nFdrGbF9R26YPYalej+kjNsyUN2K60pTXhV3iRX
         U+kRlx6UKv2+K+rMBbQF7y1wgiASLUEZkqbk84726+mmC5f3dL6T/Vlmk8t09fuwF/Fo
         fqgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=9IN7BOF4QaxaBHfbBbAqu+yxCwamtOVU8WNfTbW9Rlg=;
        b=vDzxYJOgeEzspYcF/RqER9l0GSbBLT1tIQ4wPXnbqmAj3uRN3VjfustYgZTyZSQNA1
         3hyEIYvwFV/po7kup7+2IY3hd4t0TIPJsy7bT6XxW7vRasTJVvT/hSxucnnfQbcdhCxD
         3G4W6vlLVkbvMIT+5AeqUa3q0iMpNAQQ/W6GX/tjqfHJ0Lia7QfyHIC3dcMkvEPVDEn0
         W6m6loxVZA2AiwmuCJwgd8qrnIJFa6XYQjwPLd251/7ZyPG2VVpBMWj3Z5WOh6enA8xH
         JhL2i3lwzGybobjOCzwUw2hUH17vmr0I1rH2oJYCji+tooHC31j7MqzojzkzeDaklMl4
         ds9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id l21si105689edq.4.2020.03.19.06.39.33
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 06:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28916 invoked from network); 19 Mar 2020 13:39:31 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 13:39:31 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: rtl8723bs: os_dep: Correct long line comments
Date: Thu, 19 Mar 2020 19:09:00 +0530
Message-Id: <96f4bde2df7cea5309398a6fdd5d52836d5ae914.1584624834.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584624834.git.vkor@vkten.in>
References: <cover.1584624834.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to respect 80 character line
limit.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a6491f163272..8296ea03ecde 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -35,7 +35,9 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		if (precvframe->u.hdr.pkt) {
-			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
+
+			/* free skb by driver */
+			dev_kfree_skb_any(precvframe->u.hdr.pkt);
 			precvframe->u.hdr.pkt = NULL;
 		}
 		precvframe++;
@@ -80,7 +82,10 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
 		((!memcmp(sub_skb->data, rtw_rfc1042_header, SNAP_SIZE) &&
 		  eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
 		 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
-		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
+		/*
+		 * remove RFC1042 or Bridge-Tunnel encapsulation and replace
+		 * EtherType
+		 */
 		skb_pull(sub_skb, SNAP_SIZE);
 		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
 		memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst, ETH_ALEN);
@@ -112,7 +117,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 			/* DBG_871X("bmcast =%d\n", bmcast); */
 
 			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
-				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
+				/*
+				 *  DBG_871X("not ap psta =%p, addr =%pM\n",
+				 *  psta, pattrib->dst);
+				 */
 
 				if (bmcast) {
 					psta = rtw_get_bcmc_stainfo(padapter);
@@ -124,7 +132,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 				if (psta) {
 					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
 
-					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
+					/*
+					 * DBG_871X("directly forwarding to the
+					 * rtw_xmit_entry\n");
+					 */
 
 					/* skb->ip_summed = CHECKSUM_NONE; */
 					pkt->dev = pnetdev;
@@ -236,7 +247,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
 			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
 
-			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
+			/*
+			 * DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n",
+			 * len, ctrl_type);
+			 */
 			DBG_871X("eth, RC: len = 0x%x\n", len);
 
 			for (i = 0; i < len; i++)
@@ -291,7 +305,8 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 	rtw_os_recv_indicate_pkt(padapter, skb, pattrib);
 
-	precv_frame->u.hdr.pkt = NULL; /*  pointers to NULL before rtw_free_recvframe() */
+	/*  pointers to NULL before rtw_free_recvframe() */
+	precv_frame->u.hdr.pkt = NULL;
 
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-- 
2.20.1


