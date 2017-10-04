X-GM-THRID: 6471467521247543296
X-Received: by 10.99.109.143 with SMTP id i137mr317824pgc.74.1507122598429;
        Wed, 04 Oct 2017 06:09:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls4375641pgn.22.gmail; Wed, 04 Oct
 2017 06:09:57 -0700 (PDT)
X-Received: by 10.101.64.138 with SMTP id t10mr17566pgp.147.1507122597218;
        Wed, 04 Oct 2017 06:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507122597; cv=none;
        d=google.com; s=arc-20160816;
        b=BQG4MglFzaH4Oi9wjMF5zE+IYOeAKKcumbKQY1rFwOSEBhOfTCLlwalMIYqTstc8Cp
         JsqaDYnp3pHVbebcrgUuOs3wgOhR/pvtEm99SkVV/zDmB9fqOTJ7eq9qppzsZEXyBjJz
         PW8MQ44DeTZH5GrOdg2Tl8lOM2aHi3Ei8Pgi4Kig91YwI+LpQtkGofpJsaqw8FzEjdy+
         XYz2XD7y/fIw/qFrxePAgFfVqhf//r98FqPBmEaZdi8VeOOijDIoX8HuYuST9X4oGy7V
         ngVZqwj2AybHh2PAQyMZN7EZFz4POT9r1cW10HhfP3vzVrHsxduKpfFlg1ntGo4p73L/
         ni1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=MEB3qX/C0BJNmX1ryxE2lGhdl2n3tlIFnlLKnx3gWLQ=;
        b=Fr+VcJ3IbTVL9iZW1PuNzMI9/IV8nMIYdDtHKjBgln+4nnyTyuHjASzCIl2ckzhswS
         Gsu3GqlRRJUvB92Hg+Loe+uKpS9+Qu72cXe4K51bGIGTCqgii8yvgECL4s0xNWlMlLUz
         4loi/JpzTxwnCiIT7b1P2Xyppols8/BIfBOHlYj3X7/yPA06QKHJQdI65fSbOQ038sF2
         NclRrK4xv8QbdkR1urKBtlvUkn93uph1SjSo6HbRz56b2avoYUSxUH3D4Mj3h6HvmKN8
         a+kaw2qTXQ63Bn8Tx83qKOg0LR15EQoNCWDKALIYF3ZWMenXV2P7DTGL/SHDchgr04gH
         2z6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uo6te75b;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d207si1638630pfd.16.2017.10.04.06.09.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uo6te75b;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id m28so12195670pfi.0
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 06:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MEB3qX/C0BJNmX1ryxE2lGhdl2n3tlIFnlLKnx3gWLQ=;
        b=Uo6te75bPoWNt02CXy6JxlubmwMV9c7DuRjaX2LNThyt1f24Hji13i+F8/herxvfio
         VqQHb0ILuYpFBg0/+FE3juqliBWQRLNECu/C1TMAOuEIrw9m8LM9TpQ2MLAeoOekD3hn
         coc5GSISd8Sc1OaFW2kzb9OvGdNMIbEJO2JEDk1odmpssN8UHxhMtNr1AtjmOta7jJUF
         kxuEHnEB/RRkqM7MGufb68v2OAfZpyxSz4m9g2oJeqUavhciSfKThj5BSxkGFCnWpO47
         E1FGAq3MJSIC1+UIvPeeNI/Ke8dY6YZa/9SoxBb3V8NrXtiIq29pmz/Iy5yz43V5yoRM
         nfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MEB3qX/C0BJNmX1ryxE2lGhdl2n3tlIFnlLKnx3gWLQ=;
        b=t/M0rLTOvfBhp12nwiACtYPeFNnd+QEqulBCOCGRpkN+rbD0E1BFXAPLaiP1AzQEFv
         fI4JqAKQQ8/5RCFUQvCj/e9LuUDWpfeqM8RGtciXMJFpqQtpzmkzmunWh5EWwlzFCZqd
         rzsmMM/oUqmHFwSa5pY8ggcOOMkVy0KRAmzkm/Qd5Ol8HrRuBiVopHvL5ejzXM8iaL3C
         WKmfEG4yuS68vvCYpT3xNja11e3QjO+vMzGsmImo/z7HCZobU9kJJBd0XOq7s6FYilyq
         6sQrTwk4nXbueyD4L2WTap/72ejF8nWFOdsr0a5IVhBBJz0sLmSK8Zv/6SD/QhaCJobI
         MQQA==
X-Gm-Message-State: AHPjjUhnLflhvBF9sN04RtI9XfU5uWjhj2od6PH5Js3S/RJowqNPXZwY
	1aSWLGKB7FKZ9IgFEIgLMPQ=
X-Google-Smtp-Source: AOwi7QBlQA6jtLcRHQtBqKn2eM91Q5VRWcHYmnCIZL/rG6FQ54fJDw6T7/hP7PeiF150qG5bxAW6lA==
X-Received: by 10.84.195.1 with SMTP id i1mr19779977pld.70.1507122596895;
        Wed, 04 Oct 2017 06:09:56 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id 207sm25792822pfu.0.2017.10.04.06.09.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 06:09:56 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Wed,  4 Oct 2017 18:39:47 +0530
Message-Id: <1507122587-5431-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

For variables of the struct list_head* use list_entry to access
current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
   (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c       | 4 ++--
 drivers/staging/rtl8188eu/core/rtw_mlme.c     | 8 ++++----
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  | 8 ++++----
 drivers/staging/rtl8188eu/core/rtw_xmit.c     | 8 ++++----
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 551af9e..c968472 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1143,7 +1143,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1447,7 +1447,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 
 		/* check asoc_queue */
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, asoc_list);
+			psta = list_entry(plist, struct sta_info, asoc_list);
 
 			plist = plist->next;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index b15cf17..82f25b6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -198,7 +198,7 @@ struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
 	plist = phead->next;
 
 	while (plist != phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 		plist = plist->next;
@@ -223,7 +223,7 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 	plist = phead->next;
 
 	while (phead != plist) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 
 		plist = plist->next;
 
@@ -342,7 +342,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 	phead = get_list_head(scanned_queue);
 
 	for (plist = phead->next; plist != phead; plist = plist->next) {
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 
 		if (!pwlan->fixed) {
 			if (!oldest || time_after(oldest->last_scanned, pwlan->last_scanned))
@@ -421,7 +421,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 	plist = phead->next;
 
 	while (phead != plist) {
-		pnetwork	= container_of(plist, struct wlan_network, list);
+		pnetwork	= list_entry(plist, struct wlan_network, list);
 
 		if (is_same_network(&(pnetwork->network), target))
 			break;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 4e1d06c..6ecc871 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1790,7 +1790,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			u8 *p;
 			struct wlan_bssid_ex *pbss_network;
 
-			pnetwork = container_of(plist, struct wlan_network, list);
+			pnetwork = list_entry(plist, struct wlan_network, list);
 
 			plist = plist->next;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 2fd2a9e..21c4d38 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -152,8 +152,8 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 			while (phead != plist) {
 				int i;
 
-				psta = container_of(plist, struct sta_info,
-						    hash_list);
+				psta = list_entry(plist, struct sta_info,
+						  hash_list);
 				plist = plist->next;
 
 				for (i = 0; i < 16; i++) {
@@ -435,7 +435,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, hash_list);
+		psta = list_entry(plist, struct sta_info, hash_list);
 
 		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)) == true) {
 			/*  if found the matched address */
@@ -493,7 +493,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN)) {
diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 6d8820b..3f4e55c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1401,7 +1401,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	plist = phead->next;
 
 	while (phead != plist) {
-		pxmitframe = container_of(plist, struct xmit_frame, list);
+		pxmitframe = list_entry(plist, struct xmit_frame, list);
 
 		plist = plist->next;
 
@@ -1432,7 +1432,7 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, str
 	xmitframe_plist = xmitframe_phead->next;
 
 	if (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = xmitframe_plist->next;
 
@@ -1473,7 +1473,7 @@ struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmi
 		sta_plist = sta_phead->next;
 
 		while (sta_phead != sta_plist) {
-			ptxservq = container_of(sta_plist, struct tx_servq, tx_pending);
+			ptxservq = list_entry(sta_plist, struct tx_servq, tx_pending);
 
 			pframe_queue = &ptxservq->sta_pending;
 
@@ -1811,7 +1811,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 	plist = phead->next;
 
 	while (phead != plist) {
-		pxmitframe = container_of(plist, struct xmit_frame, list);
+		pxmitframe = list_entry(plist, struct xmit_frame, list);
 
 		plist = plist->next;
 
-- 
2.7.4


