X-GM-THRID: 1550436007936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9eec88c8272265f5
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr621491lbf.21.1424595562227;
        Sun, 22 Feb 2015 00:59:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.10.229 with SMTP id l5ls370638wib.32.gmail; Sun, 22 Feb
 2015 00:59:21 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr595313wiv.0.1424595561854;
        Sun, 22 Feb 2015 00:59:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id cl5si443595wib.3.2015.02.22.00.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 00:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gamzepolat94@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=gamzepolat94@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id x3so12736355wes.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 00:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=cz7hUi1GTgat3Qm53MEwd0N7SNFF0z4ucuTaCXOKwNM=;
        b=uy+di9mdXea6ehQsDS9j7iY/I34K1r2CIR9QFm3hHTPw8lSny2nSYuEEEwHIKzIJcz
         7wQvBV2Bflt4fQX7IIMsq7rWG0uE5wrz9xkkxRIkYH+OzfY9atAB+/zQlLGRfjbMmce9
         z4yvkbvejP/lOYUS9bveCc5SnnMa2ZTVmxM6iST2liIlFK/78emGF4/WJ4ZqCWMa8Rxb
         YJxtHIcV+tB2LtcromnJCLByIazvwSRKHyTJd0TyLS5B9dqUS+vApS8K9xWMIUDc2G6A
         Pos5fPY4U/a2T5/Zm95oWfuMDeDwVYVXt44DhpYtQqr7ULSc8hpU9UHRaHCAKtn2XWO7
         9d0Q==
X-Received: by 10.195.12.71 with SMTP id eo7mr11481035wjd.3.1424595561760;
        Sun, 22 Feb 2015 00:59:21 -0800 (PST)
Return-Path: <gamzepolat94@gmail.com>
Received: from gamze-Lenovo-IdeaPad-Z510 ([94.122.20.155])
        by mx.google.com with ESMTPSA id fo9sm10446522wib.16.2015.02.22.00.59.20
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 00:59:20 -0800 (PST)
From: Gamze POLAT <gamzepolat94@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gamze POLAT <gamzepolat94@gmail.com>
Subject: [PATCH] staging: rtl8712: warning of prefer ether_addr_copy
Date: Sun, 22 Feb 2015 10:59:16 +0200
Message-Id: <1424595556-4544-1-git-send-email-gamzepolat94@gmail.com>
X-Mailer: git-send-email 2.1.0

This patch fixes the following checkpatch.pl warnings:
WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
addresses are __aligned(2)
Pahole shows that the addresses are aligned

Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 49 +++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 06f15f8..f3eff94 100644
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
@@ -517,8 +517,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 		return _FAIL;
 	if (psta == NULL)
 		return _FAIL;
-	else
-		precv_frame->u.hdr.psta = psta;
+	precv_frame->u.hdr.psta = psta;
 	pattrib->amsdu = 0;
 	/* parsing QC field */
 	if (pattrib->qos == 1) {
@@ -644,7 +643,7 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 		ptr = recvframe_pull(precvframe, (rmv_len -
 		      sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
 
-	memcpy(ptr, pattrib->dst, ETH_ALEN);
+	ether_addr_copy(ptr, pattrib->dst);
 	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
 	if (!bsnaphdr) {
 		len = htons(len);
-- 
2.1.0


