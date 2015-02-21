X-GM-THRID: 2032441229312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5fe858cdf1cb5d18,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr410924lbo.8.1424546232567;
        Sat, 21 Feb 2015 11:17:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls438809lab.101.gmail; Sat, 21 Feb
 2015 11:17:12 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr410920lbo.8.1424546232179;
        Sat, 21 Feb 2015 11:17:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x243.google.com (mail-we0-x243.google.com. [2a00:1450:400c:c03::243])
        by gmr-mx.google.com with ESMTPS id r6si364992wix.0.2015.02.21.11.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:17:12 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) client-ip=2a00:1450:400c:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x243.google.com with SMTP id q59so3668837wes.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3+BCWsBG8ywJACJAXQ+LYbmuN9zJI1qfLdVvR2YeCvI=;
        b=N5WZSMtS9wPyC3/VEAiziY5PPxAM/nV0F4CbW5YQM/fOZtJJcdY0mXt278EmBZv+Jj
         kbvlxhd5M9lLrii5khKTFEAtSkypBDBVS2PQiJhMJ6aUsUqg2xukxXiVlL/PV4MSg/EY
         Y1/PJgjFgwszoxbZXOUkqyeCaU7F5cUBgfBT4X/JdqStHJC79yvekeB8PAJq36RGc+pM
         dslUEfVoneKTeelvM6hnxEYhWaEEGknvbpuCBfk9s3FP9VGtk+R5X9vnN//YQ0m+VRqI
         qXBxWz/wYBysjEghEH67kf0dV1Tmn6uvVc5HZofzXur1l6Z+/asfsnYrL5VeOi7Uff51
         GtoA==
X-Received: by 10.181.13.174 with SMTP id ez14mr6339030wid.72.1424546232085;
        Sat, 21 Feb 2015 11:17:12 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id v6sm1906639wix.8.2015.02.21.11.17.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:17:11 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: coding style ether_addr_copy
Date: Sat, 21 Feb 2015 21:17:00 +0200
Message-Id: <1424546220-20722-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following issues detected by checkpatch.pl:

 WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 54 +++++++++++++++----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 2b022be..d387974 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -771,11 +771,11 @@ int sta2sta_data_frame(struct adapter *adapter, struct recv_frame *precv_frame,
 			sta_addr = pattrib->src;
 		}
 	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
-		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
-		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
+		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
+		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
+		ether_addr_copy(pattrib->ra, pattrib->dst);
+		ether_addr_copy(pattrib->ta, pattrib->src);
 
 		sta_addr = mybssid;
 	} else {
@@ -869,14 +869,14 @@ static int ap2sta_data_frame(
 		}
 	} else if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) &&
 		   (check_fwstate(pmlmepriv, _FW_LINKED) == true)) {
-		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
-		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
+		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
+		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
+		ether_addr_copy(pattrib->ra, pattrib->dst);
+		ether_addr_copy(pattrib->ta, pattrib->src);
 
 		/*  */
-		memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
+		ether_addr_copy(pattrib->bssid,  mybssid);
 
 		*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get sta_info */
 		if (*psta == NULL) {
@@ -1156,30 +1156,30 @@ static int validate_recv_data_frame(struct adapter *adapter,
 		goto exit;
 	}
 
-	memcpy(pattrib->dst, pda, ETH_ALEN);
-	memcpy(pattrib->src, psa, ETH_ALEN);
+	ether_addr_copy(pattrib->dst, pda);
+	ether_addr_copy(pattrib->src, psa);
 
-	memcpy(pattrib->bssid, pbssid, ETH_ALEN);
+	ether_addr_copy(pattrib->bssid, pbssid);
 
 	switch (pattrib->to_fr_ds) {
 	case 0:
-		memcpy(pattrib->ra, pda, ETH_ALEN);
-		memcpy(pattrib->ta, psa, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pda);
+		ether_addr_copy(pattrib->ta, psa);
 		ret = sta2sta_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 1:
-		memcpy(pattrib->ra, pda, ETH_ALEN);
-		memcpy(pattrib->ta, pbssid, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pda);
+		ether_addr_copy(pattrib->ta, pbssid);
 		ret = ap2sta_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 2:
-		memcpy(pattrib->ra, pbssid, ETH_ALEN);
-		memcpy(pattrib->ta, psa, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pbssid);
+		ether_addr_copy(pattrib->ta, psa);
 		ret = sta2ap_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 3:
-		memcpy(pattrib->ra, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ta, GetAddr2Ptr(ptr), ETH_ALEN);
+		ether_addr_copy(pattrib->ra, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->ta, GetAddr2Ptr(ptr));
 		ret = _FAIL;
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" case 3\n"));
 		break;
@@ -1419,7 +1419,7 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 		ptr = recvframe_pull(precvframe, (rmv_len-sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
 	}
 
-	memcpy(ptr, pattrib->dst, ETH_ALEN);
+	ether_addr_copy(ptr, pattrib->dst);
 	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
 
 	if (!bsnaphdr) {
@@ -1700,15 +1700,15 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 			 !memcmp(sub_skb->data, rtw_bridge_tunnel_header, SNAP_SIZE))) {
 			/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
 			skb_pull(sub_skb, SNAP_SIZE);
-			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
-			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst, ETH_ALEN);
+			ether_addr_copy(skb_push(sub_skb, ETH_ALEN), pattrib->src);
+			ether_addr_copy(skb_push(sub_skb, ETH_ALEN), pattrib->dst);
 		} else {
 			__be16 len;
 			/* Leave Ethernet header part of hdr and full payload */
 			len = htons(sub_skb->len);
 			memcpy(skb_push(sub_skb, 2), &len, 2);
-			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src, ETH_ALEN);
-			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst, ETH_ALEN);
+			ether_addr_copy(skb_push(sub_skb, ETH_ALEN), pattrib->src);
+			ether_addr_copy(skb_push(sub_skb, ETH_ALEN), pattrib->dst);
 		}
 
 		/* Indicate the packets to upper layer */
-- 
1.9.1


