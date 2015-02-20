X-GM-THRID: 1550436007936
X-Received: by 10.112.124.142 with SMTP id mi14mr1514443lbb.1.1424464942250;
        Fri, 20 Feb 2015 12:42:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls201622lab.70.gmail; Fri, 20 Feb
 2015 12:42:21 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr1512223lbf.21.1424464941923;
        Fri, 20 Feb 2015 12:42:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id i7si186411wif.0.2015.02.20.12.42.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:42:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesk11 with SMTP id k11so7660852wes.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Yq33dWx/2WenZ2krO/s7zAEc0s/9lYsJXd2KG2RnPik=;
        b=Ak7rE8a2QcLiZAr3l6IPOt4UwUalZAYCrU6u11Fzf4vMzeND9BMCKH1WtQ6NfsBjCL
         DXn13WJtyxXcw4IZQ2bOO9EIv8ICcE9c+5xO4G/FdNd0z+foSwiHmvbqlqLJ3N1KPusB
         jmMlFpVWUI1rX9OgVf7CqjEKQl2cLmJRrWVFBeTye0q7j4c3GHb4nfU2x3UrlAqo9Yeb
         eOCDjuRwiYGj24Lfqzc/+1T2uV1O38ZycqSv1onSe1GDBQVaU6Y/N0HO0DULhLq+Pyvu
         3wSKZOB7Pe19JnqckgO4C4FyYSlqxjhqLfWezksaxYuoo/VV8trbtkzXEYb94tU58GnU
         EcFA==
X-Received: by 10.180.77.166 with SMTP id t6mr1240885wiw.28.1424464941800;
        Fri, 20 Feb 2015 12:42:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([81.214.238.226])
        by mx.google.com with ESMTPSA id j9sm43630132wjy.18.2015.02.20.12.42.20
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:42:20 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH 1/2] staging: rtl8712: warning of prefer ether_addr_copy
Date: Fri, 20 Feb 2015 22:42:16 +0200
Message-Id: <1424464937-8767-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

This patch fixes the following checkpatch.pl warnings:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 46 +++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 06f15f8..243c8d8 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -356,11 +356,11 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 			sta_addr = pattrib->src;
 		}
 	  } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) {
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
 	  } else
 		ret  = _FAIL;
@@ -421,12 +421,12 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 			return _FAIL;
 	} else if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) &&
 		   (check_fwstate(pmlmepriv, _FW_LINKED) == true)) {
-		memcpy(pattrib->dst, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->src, GetAddr2Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->bssid, GetAddr3Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
-		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
-		memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
+		ether_addr_copy(pattrib->dst, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->src, GetAddr2Ptr(ptr));
+		ether_addr_copy(pattrib->bssid, GetAddr3Ptr(ptr));
+		ether_addr_copy(pattrib->ra, pattrib->dst);
+		ether_addr_copy(pattrib->ta, pattrib->src);
+		ether_addr_copy(pattrib->bssid,  mybssid);
 		*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
 		if (*psta == NULL)
 			return _FAIL;
@@ -487,28 +487,28 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	pbssid = get_hdr_bssid(ptr);
 	if (pbssid == NULL)
 		return _FAIL;
-	memcpy(pattrib->dst, pda, ETH_ALEN);
-	memcpy(pattrib->src, psa, ETH_ALEN);
-	memcpy(pattrib->bssid, pbssid, ETH_ALEN);
+	ether_addr_copy(pattrib->dst, pda);
+	ether_addr_copy(pattrib->src, psa);
+	ether_addr_copy(pattrib->bssid, pbssid);
 	switch (pattrib->to_fr_ds) {
 	case 0:
-		memcpy(pattrib->ra, pda, ETH_ALEN);
-		memcpy(pattrib->ta, psa, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pda);
+		ether_addr_copy(pattrib->ta, psa);
 		res = sta2sta_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 1:
-		memcpy(pattrib->ra, pda, ETH_ALEN);
-		memcpy(pattrib->ta, pbssid, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pda);
+		ether_addr_copy(pattrib->ta, pbssid);
 		res = ap2sta_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 2:
-		memcpy(pattrib->ra, pbssid, ETH_ALEN);
-		memcpy(pattrib->ta, psa, ETH_ALEN);
+		ether_addr_copy(pattrib->ra, pbssid);
+		ether_addr_copy(pattrib->ta, psa);
 		res = sta2ap_data_frame(adapter, precv_frame, &psta);
 		break;
 	case 3:
-		memcpy(pattrib->ra, GetAddr1Ptr(ptr), ETH_ALEN);
-		memcpy(pattrib->ta, GetAddr2Ptr(ptr), ETH_ALEN);
+		ether_addr_copy(pattrib->ra, GetAddr1Ptr(ptr));
+		ether_addr_copy(pattrib->ta, GetAddr2Ptr(ptr));
 		return _FAIL;
 	default:
 		return _FAIL;
@@ -644,7 +644,7 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 		ptr = recvframe_pull(precvframe, (rmv_len -
 		      sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
 
-	memcpy(ptr, pattrib->dst, ETH_ALEN);
+	ether_addr_copy(ptr, pattrib->dst);
 	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
 	if (!bsnaphdr) {
 		len = htons(len);
-- 
2.1.0


