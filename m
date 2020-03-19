X-GM-THRID: 6805954026607214592
X-Received: by 2002:a50:f092:: with SMTP id v18mr3554906edl.77.1584634670114;
        Thu, 19 Mar 2020 09:17:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f293:: with SMTP id f19ls1418337edm.9.gmail; Thu, 19 Mar
 2020 09:17:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtsdLioLbeOtmDpvoNXNGlUWOUl3O5r9DVqd8V0haOy53/ioYUtTRCEu2T5l3bkC04W5ahJ
X-Received: by 2002:a05:6402:1002:: with SMTP id c2mr3694106edu.185.1584634668612;
        Thu, 19 Mar 2020 09:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584634668; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0TCFiSskISA5/ff9en5q4d2ny/5CM3SxbI5Q1B598HqabD25dR6CUUo8wcD82QyWT
         2ElwhRoHEpRoDikeKLyWEFv4Y2cqcF2ZDm5oiL21QaNuPlV/sep0ORD1XwKlAlWXsqqD
         e6Hq9hWq6QxpHg3cahDeuRJwjIa3bMeUwicaGzgdHZyaERfsjk6W7g+XZ6IRG9bQyC6m
         hJnuGezh9isysc7UgoMDQUEkmBuOqUhJv5+PPBNg2Z92T+QJeDmMRuH5Z4gVeULRWAyV
         9dkbNs9HkGNtu17idD4dpW+PS/PLtN1xwb/wR91MOunGpbZLXcVacalIqhMYrErEkelE
         roPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=5iUelsz6kQH2re3HkcCSkK8doPM2IOnJHaDIS+jebY8=;
        b=rd/JPQauXiwsXMCeEOcn4vBEFHFrEwMC99XFeZulHWKSliObLYCmRGoapuL5YkQRfz
         XzxUshafvElkX5heFYC4+UW1G/Q7eCwpsLAfkJqNX3xteKu54TQ1SC9sNxCHbxMb4HB6
         iL2ZkTSkTLxB99V3yuJkwJuLBJT6vbSgMnDg++3uLyq46+NY9mgdDvgKW1KCdxhOxeib
         ZZJSLCVTzwgsV3jA2MBlbRcK+sEZDPC3NaHbGslg/96NZvJfbEhl4aeckshTOWx1lt12
         ze6iRXCThDTuehxfJybgdV3nccIxc0BJVoEvW/HxK1UAuDuHuQv9eNVzrjKChzetmqN6
         x/KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id cw13si157438edb.2.2020.03.19.09.17.48
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 09:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 30441 invoked from network); 19 Mar 2020 16:17:46 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 16:17:46 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/2] staging: rtl8723bs: os_dep: Correct long line comments
Date: Thu, 19 Mar 2020 21:47:13 +0530
Message-Id: <876ab0cca61886355ca75004ba9ec9e62465b7bd.1584633953.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584633953.git.vkor@vkten.in>
References: <cover.1584633953.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to respect 80 character per
line limit.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove an extra blank line added by error
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 26 ++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a6491f163272..35241c0493d2 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -35,7 +35,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
 		if (precvframe->u.hdr.pkt) {
-			dev_kfree_skb_any(precvframe->u.hdr.pkt);/* free skb by driver */
+			/* free skb by driver */
+			dev_kfree_skb_any(precvframe->u.hdr.pkt);
 			precvframe->u.hdr.pkt = NULL;
 		}
 		precvframe++;
@@ -80,7 +81,10 @@ _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8
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
@@ -112,7 +116,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 			/* DBG_871X("bmcast =%d\n", bmcast); */
 
 			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
-				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
+				/*
+				 *  DBG_871X("not ap psta =%p, addr =%pM\n",
+				 *  psta, pattrib->dst);
+				 */
 
 				if (bmcast) {
 					psta = rtw_get_bcmc_stainfo(padapter);
@@ -124,7 +131,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 				if (psta) {
 					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
 
-					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
+					/*
+					 * DBG_871X("directly forwarding to the
+					 * rtw_xmit_entry\n");
+					 */
 
 					/* skb->ip_summed = CHECKSUM_NONE; */
 					pkt->dev = pnetdev;
@@ -236,7 +246,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
 			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
 
-			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
+			/*
+			 * DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n",
+			 * len, ctrl_type);
+			 */
 			DBG_871X("eth, RC: len = 0x%x\n", len);
 
 			for (i = 0; i < len; i++)
@@ -291,7 +304,8 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 	rtw_os_recv_indicate_pkt(padapter, skb, pattrib);
 
-	precv_frame->u.hdr.pkt = NULL; /*  pointers to NULL before rtw_free_recvframe() */
+	/*  pointers to NULL before rtw_free_recvframe() */
+	precv_frame->u.hdr.pkt = NULL;
 
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-- 
2.20.1


