X-GM-THRID: 6478335539266191360
X-Received: by 10.157.6.108 with SMTP id 99mr4746323otn.58.1508355134488;
        Wed, 18 Oct 2017 12:32:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.212.132 with SMTP id l126ls1313833oig.1.gmail; Wed, 18 Oct
 2017 12:32:13 -0700 (PDT)
X-Received: by 10.202.102.149 with SMTP id m21mr8828032oik.54.1508355133883;
        Wed, 18 Oct 2017 12:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508355133; cv=none;
        d=google.com; s=arc-20160816;
        b=FzcX+fOlNot34xzyUcoveCEvXWXg/sNl4tVz39tPy779FJ1BLkGcwXRf8U6tpSd1Px
         XGnLAs9ZMWA/TRJvOjeTq1qP7ZbVjJm1Kp0w49Xt5JXWxwpB31kk4vx5xT6oESIE+K9B
         owQKDCDbgQ9VfgKXfl4kLmKY383IcIhyrdcMagVhzIbxuvTLVJVYZkgsoHMZ55FXWsG3
         Y2Dn1VRVl5jNKO5IZCPiPSpBV0Wlc24P/LXdjQ6ledT4d9NPnaQmkZircvfYTeyA1V/B
         44sb5F9BwvRmDa0HQGC+Boq3PxhmhkIKZ/9ynwjZqCWgHmRLX/ti2tEDDjP2YvD0wDq6
         TPug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=pejOz6n/GJDg3O/mrZ+gsVE8Q1Qol4qjzJei4ZvRBNA=;
        b=RrxytAUhEdEiREtvxQdaTHOaR6P0poixVb1MZphTQ8V9W3ehxzHjhZMguFc9r+ay9Z
         zvqb0fj/pyjdrkh3pgv/fip06d+5z+WbpvTkuZ7nCf0C5U0Z2qsaaeSh76Q1Hh9LvukD
         1Cys2p/ppGIugW+tqClR0HWwi3nHBtR9roN7Jej2L8U+mHWN+vabr6ijmo4g1oBelzSr
         BNi0oOOc4Tw+d1YRPn1dRNrZ/gjg2GG8JJJ1E8zGfBw13yVBNRhtICYpPnGQrhA9yVOz
         otz8RTaLkwUichblScGTBwiZN0uJ0eETdtkcVjM453u09L0MRX9b06Sxg6IyxnY3TCjT
         /QGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXI3wCZT;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x229.google.com (mail-pg0-x229.google.com. [2607:f8b0:400e:c05::229])
        by gmr-mx.google.com with ESMTPS id t9si765001ote.1.2017.10.18.12.32.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 12:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) client-ip=2607:f8b0:400e:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXI3wCZT;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x229.google.com with SMTP id 15so403527pgc.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 12:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pejOz6n/GJDg3O/mrZ+gsVE8Q1Qol4qjzJei4ZvRBNA=;
        b=oXI3wCZT/7Bp6r1u8nWRxbFhBeD62WjJZQhFUdBLFHImuFQciB+lljumwaOWUeOdqi
         No/eCFo39LiT+SCGOU2PaxBoJWfJVKbZ+RarW6s4rKxmPXNwqHZz/BMJuepAFRNaLohb
         YZNmI9VGk+lXb+nIBWVOn9Fm2cE/cbDPKTeOLGhdlghrWg9wgTXvhM+CEToCOkDPkOWU
         SztEdnTG7FoTYfTr8NwvQQWnUGUhugRHndIW0BVAxe+dHcvj9etiRsY4owbqjSPDosnJ
         iECJbeAa9VXZmUBuNLK/C69aWgPzCKP9eDBX6EJkTOLJ8oAHI/gfyaY+S5ohhbVwIESN
         omUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pejOz6n/GJDg3O/mrZ+gsVE8Q1Qol4qjzJei4ZvRBNA=;
        b=KlAreU99b+gEZhPSCphlvr3DAGiBs954KBX7Zi6mjxynNNdVV6I+EGCeHkc4W3s5uo
         fcAjSizcOHs8/WC5OFhv7F6pz8vZ5gbvrQ/UmJB6WXgDNFwTwaCGRsxLFkNoTTfp7WRe
         NLWDIjH3HzTun5kyvsrApBJPmwc+3TWt2+Q63sCWdBVJWTchz9+2JViZot8CrAs+DkzP
         QioQXG4eRsbl7r8kh32PFLdYiVpL04M7jvC5ZPjt4e6OujiwfTRtPCs4Ij6WkyMZJ2Tk
         nDd6VH8mXtQH6caqsvNu3eALiVayZqCacvJ1Oc28zRTdNDgvo8fg57k2V9a6/l6Ld707
         KuhA==
X-Gm-Message-State: AMCzsaWoC4MQpPIEdDr0C9f8v7NqwoY+wBKn62nP1dE5YSD42Z1QBbzT
	ziAp5fBphDE6kY6IVVvnOtE=
X-Google-Smtp-Source: AOwi7QDb5iS88UNqXDMXS+sC79TAmxFMSH3YffhNUxS7cyEpTJVPaAw3+89z3Yy9DLtML6qY3KODGg==
X-Received: by 10.99.53.14 with SMTP id c14mr14579905pga.440.1508355133582;
        Wed, 18 Oct 2017 12:32:13 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.60.166.95])
        by smtp.gmail.com with ESMTPSA id f10sm21911476pgr.8.2017.10.18.12.32.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 12:32:13 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 4/4] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Thu, 19 Oct 2017 01:02:08 +0530
Message-Id: <3255a2d68544cf47055264e84d9871f1e794646b.1508354332.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508354332.git.srishtishar@gmail.com>
References: <cover.1508354332.git.srishtishar@gmail.com>

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
 drivers/staging/rtl8188eu/core/rtw_ap.c       |  4 ++--
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  8 ++++----
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  2 +-
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  | 12 ++++++------
 drivers/staging/rtl8188eu/core/rtw_xmit.c     |  8 ++++----
 5 files changed, 17 insertions(+), 17 deletions(-)

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
index cf85fb4..5b38f63 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1798,7 +1798,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			u8 *p;
 			struct wlan_bssid_ex *pbss_network;
 
-			pnetwork = container_of(plist, struct wlan_network, list);
+			pnetwork = list_entry(plist, struct wlan_network, list);
 
 			plist = plist->next;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 2fd2a9e..aab2895 100644
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
@@ -323,7 +323,7 @@ u32	rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 		plist = phead->next;
 
 		while (!list_empty(phead)) {
-			prframe = container_of(plist, struct recv_frame, list);
+			prframe = list_entry(plist, struct recv_frame, list);
 
 			plist = plist->next;
 
@@ -399,7 +399,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 		plist = phead->next;
 
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, hash_list);
+			psta = list_entry(plist, struct sta_info, hash_list);
 
 			plist = plist->next;
 
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
index 5255c27..1bc98c6 100644
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


