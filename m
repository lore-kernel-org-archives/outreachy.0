X-GM-THRID: 6806098614327181312
X-Received: by 2002:a2e:87cd:: with SMTP id v13mr3726501ljj.210.1584668327450;
        Thu, 19 Mar 2020 18:38:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4bd6:: with SMTP id y205ls719121lfa.8.gmail; Thu, 19 Mar
 2020 18:38:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuOmTi6SQOMqTXQahcL4oOj/TQk7fAues3Wislf0WV7omq9rlQx7+W9ujbmfbSuitnbFGEL
X-Received: by 2002:a19:2286:: with SMTP id i128mr3670724lfi.193.1584668325995;
        Thu, 19 Mar 2020 18:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584668325; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh0fuc6qQhODV6wVdNr0qCPk67cW3wfA/yFBGiF8JmUif06C969Py+Zd1/ETeS+9Hc
         z0rTeYlxo5YaE0tqxRIsshRcrRv/wXIH2Bb0OwYHoy69uYT09btz8fb4OWcaqINRRD9/
         glPmG8jRfXUkJRUu2DpiNQUftdwhdaeodUmc/SHaMalaW8AQ/DgIWes+nAws+p12GEI6
         l2jcAYCzNHxJX36CAuJQjO2rZkIkRpWWdBhUpX8CHRflhCPgBafOGuK4D6PSvR7SziCP
         l04Rsa8FA+6JPSSKIzm6sgr7GdSR28/UhDdiGZP539wB6iaegZz0SNwJG6cNjrppwQbg
         6R4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Kvmi4NHL0rx1u8ZjOBGeacya4D82d9IYADxDuf3VwRU=;
        b=pDvNd0j5XYEV12o4rlUdYM3akScDYmicYf3UVXx4FGWpqaY8Of608ljF0mmMVnp3Rv
         qaKhJP/XEbbPELBRRjJf2Xtbe04Lay8MmeOBlh4k4O25aXIUVvY0l9kg2/+7epds5kCG
         NQphaFhtjtl1qd4ExHFZj177v6bkrTKLiYqVt7zjt9qR5BwdNXQeQ5Q6SHO7KsAmC2wt
         HDFYTnENnE6RuK3STrTO2e7KMTgMydB1yEM8AvHVcAaT4vTynG2SXI2BKU2W1U2tDk9N
         DGn4WI7DRXIrdS+WPfinh1zpdrmMFU1BRHWtb3pmp8Ero73/oQ033+IfzpXn92C7Thhb
         mjuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id e4si161571ljn.1.2020.03.19.18.38.45
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 18:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 3113 invoked from network); 20 Mar 2020 01:38:43 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 01:38:43 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: rtl8723bs: os_dep: Correct long line comments
Date: Fri, 20 Mar 2020 07:08:22 +0530
Message-Id: <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584667932.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584667932.git.vkor@vkten.in>
References: <cover.1584667932.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct long line comments to respect 80 character per
line limit.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v3:
 - Remove extra ' ' character before comment
Changes in v2:
 - Remove an extra blank line added by error
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 26 ++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index a6491f163272..87090af7d776 100644
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
+				 * DBG_871X("not ap psta =%p, addr =%pM\n",
+				 * psta, pattrib->dst);
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
+	/* pointers to NULL before rtw_free_recvframe() */
+	precv_frame->u.hdr.pkt = NULL;
 
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-- 
2.20.1


