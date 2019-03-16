X-GM-THRID: 6668981360875536384
X-Received: by 2002:aa7:9313:: with SMTP id 19mr3944619pfj.101.1552764762064;
        Sat, 16 Mar 2019 12:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls4817786pga.1.gmail; Sat, 16 Mar
 2019 12:32:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRwhkDDlAbow8Fbu1jbkW7hOosP2CLxet8w/hyOebIPMxi5CkfWdcUdZFToAosTIiHwxRr
X-Received: by 2002:a62:1786:: with SMTP id 128mr3918243pfx.124.1552764761326;
        Sat, 16 Mar 2019 12:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552764761; cv=none;
        d=google.com; s=arc-20160816;
        b=XBRBj/U9hmg/RDw7BC82UfhgAIKU//7LO7rD70oHJXOzdz8jeBB46p0AdFvGjzs6w9
         KIHBM6t4fPknojvQBfiDA9yY7qA+n9xyNicZ26rbVXdLXs0SUwjcZCo03Daz8H+h1kXo
         LVlwjnIMalqXZQfYz9oHUbDtQtWf4aIDCvH3saL5gUTSFfjBiKdRZCBtZj3+FcLiy8K5
         Cuc6Fq2jm8tViEYbllWPvLH4QfmedjV8jxKPPq0wND9tm8MYxt6Zj/L/xVzCYUN/zCy+
         OYnQ8bm+UJ7D+KgVV4D4AER6fY0yrPLrrZjLLHRTT/2lTjCygLob6kG+A7DAUcnQm4ar
         uMhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Vm6KEkQehhE3bvz1r/DpfWgEX8Fb1nj3StefvqLu+uE=;
        b=yalz8gaM5gzb+YOMWgqTz0Q9HvpqkKBMc/mTTu364Q8YEQUj5fe/KKebm+UwqOz/cp
         5DulzKuvHtdWe/ULWl2YwJNgxaAGFDRFGJnL763GkDSGt6r81zvPY4bi19mcW4ICGtYF
         P3YOOhIFxbaZttgnLbaL/jSPoPFK9VqVYIuUDCDU9WinGeZA/j6RaI9G9RitvhxPfSv8
         WJ5Hiq3A0e6XNfX6eyYdvEExhINa62timWLZpWr7cA6OgoqXCehhAjxgOK8QsTtwoGXw
         JrXDmI80cBOSOqNf3xffv0kPCJxFSw9Y/Bjun6tbscghSHxxI8BPTxYWXEzBZYVpKKxY
         WBpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USGD2j30;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j8si281068plk.3.2019.03.16.12.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=USGD2j30;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n125so8577679pfn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Vm6KEkQehhE3bvz1r/DpfWgEX8Fb1nj3StefvqLu+uE=;
        b=USGD2j30zB89Knl/6SLKZFFlM7hsLTTvU7OaceezeFQ/N28eoExPG0bXBcmotP3KUe
         g0t5WOuo/Ob5DK0/cgHQ3z3ef/3LtpAVU5d3QoCm7YOG1yq44s0V7VQCyevyqTj6fnsW
         Ydx+zvpMIX1ksiKLgCzNwZL0d2uUsuLG50TF3dcDZPRmOR+P8foXk7zMV8im3egB1Pl7
         CR6b7ZLLiGo+Soo/xAOcxbGiF8RVvYDvv/8u23aVe7XEgmAIkrzE5xizkncFGejGuBls
         UAZHX+iuJITOKSXJlswf0pO439EykdZwhFPh+QcZP0R1A7d91+EZWUBe3DVLNQO9vBzf
         Nx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Vm6KEkQehhE3bvz1r/DpfWgEX8Fb1nj3StefvqLu+uE=;
        b=i9lmfKoUj2kT1XtkgERfN6hS1XK1kYvXKhZrDjcifO5cZy7oZw40Xk+SIs2VQPLF0p
         LMr+aMEnyRqNJMCDNkk21k5fmgOmjon6nSIMZoHF+KaDnEdJTP6znycyHHzD2VcxJjlS
         yjJ3IoUqljqk3SCDvjUmDx/lcBCtz1DuuVo0ljm+K3R4/JUJRF4YrEX9SHNHT7hvguQf
         W4glwhV/+P97+L5vbEaDuU/fIDQ0Glf63p/MuEgNMtln99oBfC4j44Q0WCsu4WhXVg00
         eeEPlsY0ZxiVen7+NNvtuH+deej1efTqJfFolzMV4CNcdZDx502juyXUOH6z6naH6HnH
         nPeg==
X-Gm-Message-State: APjAAAVJquEKhC2y32fLuDB4Yn9ssAHIAUUNZmW4fLLgbPlPTIBrkJI1
	y3BoDf0T7YbOB+8otz8Sshk=
X-Received: by 2002:a17:902:8c84:: with SMTP id t4mr11119729plo.298.1552764761013;
        Sat, 16 Mar 2019 12:32:41 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.92])
        by smtp.googlemail.com with ESMTPSA id a192sm7062759pge.3.2019.03.16.12.32.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:32:40 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: rtl8188eu: rtw_recv.c: fix a space issue
Date: Sun, 17 Mar 2019 01:02:30 +0530
Message-Id: <20190316193230.23325-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

fix a space issue around the below operators mentioned in CHECK.Issue found by checkpatch.pl semantic patch results for
rtw_recv.c..

CHECK: spaces preferred around '%' (ctx:VxV)
CHECK: spaces preferred around '-' (ctx:VxV)
CHECK: spaces preferred around '&' (ctx:VxV)
CHECK: spaces preferred around '+' (ctx:VxV)
CHECK: spaces preferred around '<<' (ctx:VxV)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v3:
fix a overflow of 80 characters which occurred due to fix a spaces around '-'
from the [PATCH v2 3/3]
fix a space issue around '>>' from the [PATCH v3 3/3]
fix a space issue around  '-' from the [PATCH v3 3/3]

Changes in v2:
Remove "From" line from the [PATCH 3/3]
Change subject line in [PATCH 3/3]
Change log message in [PATCH 3/3]

 drivers/staging/rtl8188eu/core/rtw_recv.c | 97 +++++++++++++----------
 1 file changed, 54 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index fc72e797f8e5..d7620b89813f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -252,21 +252,22 @@ static int recvframe_chkmic(struct adapter *adapter,
 			}
 
 			/* icv_len included the mic code */
-			datalen = precvframe->pkt->len-prxattrib->hdrlen -
-				  prxattrib->iv_len-prxattrib->icv_len-8;
+			datalen = precvframe->pkt->len - prxattrib->hdrlen -
+				  prxattrib->iv_len - prxattrib->icv_len - 8;
 			pframe = precvframe->pkt->data;
-			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
+			payload = pframe + prxattrib->hdrlen +
+				prxattrib->iv_len;
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n prxattrib->iv_len=%d prxattrib->icv_len=%d\n", prxattrib->iv_len, prxattrib->icv_len));
 			rtw_seccalctkipmic(mickey, pframe, payload, datalen, &miccode[0],
 					   (unsigned char)prxattrib->priority); /* care the length of the data */
 
-			pframemic = payload+datalen;
+			pframemic = payload + datalen;
 
 			bmic_err = false;
 
 			for (i = 0; i < 8; i++) {
-				if (miccode[i] != *(pframemic+i)) {
+				if (miccode[i] != *(pframemic + i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
 						  __func__, i, miccode[i], i, *(pframemic + i)));
@@ -277,14 +278,24 @@ static int recvframe_chkmic(struct adapter *adapter,
 			if (bmic_err) {
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
-					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
-					 *(pframemic-2), *(pframemic-1)));
+					 *(pframemic - 8),
+					 *(pframemic - 7),
+					 *(pframemic - 6),
+					 *(pframemic - 5),
+					 *(pframemic - 4),
+					 *(pframemic - 3),
+					 *(pframemic - 2),
+					 *(pframemic - 1)));
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
-					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
-					 *(pframemic-10), *(pframemic-9)));
+					 *(pframemic - 16),
+					 *(pframemic - 15),
+					 *(pframemic - 14),
+					 *(pframemic - 13),
+					 *(pframemic - 12),
+					 *(pframemic - 11),
+					 *(pframemic - 10),
+					 *(pframemic - 9)));
 				{
 					uint i;
 
@@ -295,14 +306,14 @@ static int recvframe_chkmic(struct adapter *adapter,
 						RT_TRACE(_module_rtl871x_recv_c_,
 							 _drv_err_,
 							 ("0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x",
-							 *(precvframe->pkt->data+i),
-							 *(precvframe->pkt->data+i+1),
-							 *(precvframe->pkt->data+i+2),
-							 *(precvframe->pkt->data+i+3),
-							 *(precvframe->pkt->data+i+4),
-							 *(precvframe->pkt->data+i+5),
-							 *(precvframe->pkt->data+i+6),
-							 *(precvframe->pkt->data+i+7)));
+							 *(precvframe->pkt->data + i),
+							 *(precvframe->pkt->data + i + 1),
+							 *(precvframe->pkt->data + i + 2),
+							 *(precvframe->pkt->data + i + 3),
+							 *(precvframe->pkt->data + i + 4),
+							 *(precvframe->pkt->data + i + 5),
+							 *(precvframe->pkt->data + i + 6),
+							 *(precvframe->pkt->data + i + 7)));
 					}
 					RT_TRACE(_module_rtl871x_recv_c_,
 						 _drv_err_,
@@ -365,9 +376,9 @@ static struct recv_frame *decryptor(struct adapter *padapter,
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted=%x prxattrib->encrypt=0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));
 
 	if (prxattrib->encrypt > 0) {
-		u8 *iv = precv_frame->pkt->data+prxattrib->hdrlen;
+		u8 *iv = precv_frame->pkt->data + prxattrib->hdrlen;
 
-		prxattrib->key_index = (((iv[3])>>6)&0x3);
+		prxattrib->key_index = (((iv[3]) >> 6) & 0x3);
 
 		if (prxattrib->key_index > WEP_KEYS) {
 			DBG_88E("prxattrib->key_index(%d)>WEP_KEYS\n", prxattrib->key_index);
@@ -496,7 +507,7 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
 {
 	int tid = precv_frame->attrib.priority;
 
-	u16 seq_ctrl = ((precv_frame->attrib.seq_num&0xffff) << 4) |
+	u16 seq_ctrl = ((precv_frame->attrib.seq_num & 0xffff) << 4) |
 		(precv_frame->attrib.frag_num & 0xf);
 
 	if (tid > 15) {
@@ -561,29 +572,29 @@ static void process_wmmps_data(struct adapter *padapter,
 	if (!psta->qos_option)
 		return;
 
-	if (!(psta->qos_info&0xf))
+	if (!(psta->qos_info & 0xf))
 		return;
 
-	if (psta->state&WIFI_SLEEP_STATE) {
+	if (psta->state & WIFI_SLEEP_STATE) {
 		u8 wmmps_ac = 0;
 
 		switch (pattrib->priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(1);
+			wmmps_ac = psta->uapsd_bk & BIT(1);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(1);
+			wmmps_ac = psta->uapsd_vi & BIT(1);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(1);
+			wmmps_ac = psta->uapsd_vo & BIT(1);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(1);
+			wmmps_ac = psta->uapsd_be & BIT(1);
 			break;
 		}
 
@@ -897,20 +908,20 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 		switch (pattrib->priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(0);
+			wmmps_ac = psta->uapsd_bk & BIT(0);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(0);
+			wmmps_ac = psta->uapsd_vi & BIT(0);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(0);
+			wmmps_ac = psta->uapsd_vo & BIT(0);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(0);
+			wmmps_ac = psta->uapsd_be & BIT(0);
 			break;
 		}
 
@@ -923,7 +934,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 			psta->state ^= WIFI_STA_ALIVE_CHK_STATE;
 		}
 
-		if ((psta->state&WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap&BIT(psta->aid))) {
+		if ((psta->state & WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap & BIT(psta->aid))) {
 			struct list_head *xmitframe_plist, *xmitframe_phead;
 			struct xmit_frame *pxmitframe = NULL;
 
@@ -961,7 +972,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 					update_beacon(padapter, _TIM_IE_, NULL, false);
 				}
 			} else {
-				if (pstapriv->tim_bitmap&BIT(psta->aid)) {
+				if (pstapriv->tim_bitmap & BIT(psta->aid)) {
 					if (psta->sleepq_len == 0) {
 						DBG_88E("no buffered packets to xmit\n");
 
@@ -1160,7 +1171,7 @@ static int validate_recv_frame(struct adapter *adapter,
 	u8 bDumpRxPkt;
 	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
 	u8 *ptr = precv_frame->pkt->data;
-	u8  ver = (unsigned char)(*ptr)&0x3;
+	u8  ver = (unsigned char)(*ptr) & 0x3;
 	struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;
 
 	if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
@@ -1279,8 +1290,8 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	if (pattrib->encrypt)
 		skb_trim(precvframe->pkt, precvframe->pkt->len - pattrib->icv_len);
 
-	psnap = (struct ieee80211_snap_hdr *)(ptr+pattrib->hdrlen + pattrib->iv_len);
-	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
+	psnap = (struct ieee80211_snap_hdr *)(ptr + pattrib->hdrlen + pattrib->iv_len);
+	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
 	if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
 	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
@@ -1299,7 +1310,7 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
 		 ("\n===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\n\n", pattrib->hdrlen,  pattrib->iv_len));
 
-	memcpy(&be_tmp, ptr+rmv_len, 2);
+	memcpy(&be_tmp, ptr + rmv_len, 2);
 	eth_type = ntohs(be_tmp); /* pattrib->ether_type */
 	pattrib->eth_type = eth_type;
 
@@ -1308,11 +1319,11 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 		return _FAIL;
 
 	memcpy(ptr, pattrib->dst, ETH_ALEN);
-	memcpy(ptr+ETH_ALEN, pattrib->src, ETH_ALEN);
+	memcpy(ptr + ETH_ALEN, pattrib->src, ETH_ALEN);
 
 	if (!bsnaphdr) {
 		be_tmp = htons(len);
-		memcpy(ptr+12, &be_tmp, 2);
+		memcpy(ptr + 12, &be_tmp, 2);
 	}
 
 	return _SUCCESS;
@@ -1560,7 +1571,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 		pdata += nSubframe_Length;
 		a_len -= nSubframe_Length;
 		if (a_len != 0) {
-			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
+			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4 - 1));
 			if (padding_len == 4)
 				padding_len = 0;
 
@@ -1763,7 +1774,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			rtw_recv_indicatepkt(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return _SUCCESS;
 		}
 	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
@@ -1771,7 +1782,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			retval = amsdu_to_msdu(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return retval;
 		}
 	}
-- 
2.17.1


