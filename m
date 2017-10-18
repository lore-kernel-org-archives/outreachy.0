X-GM-THRID: 6478335539266191360
X-Received: by 10.159.46.7 with SMTP id t7mr4396878uaj.59.1508355081812;
        Wed, 18 Oct 2017 12:31:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.27.91 with SMTP id n27ls1338264uai.5.gmail; Wed, 18 Oct
 2017 12:31:20 -0700 (PDT)
X-Received: by 10.159.44.153 with SMTP id w25mr5114491uaj.86.1508355080913;
        Wed, 18 Oct 2017 12:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508355080; cv=none;
        d=google.com; s=arc-20160816;
        b=RJLbNAyys4WWMQwaXWJptP4+bu+bkSOfVIjTdxWvhA7hYyBV2rC+ZEKtrjXn+Fimcu
         kX0LI4MYANPsjh+pBGvCSxdEd0AV96mKxORHKCUbSqxRtissihVjuIVRVBHZfmT29jfe
         MT/oFgGXWTAZBjCwtbb/+RpDKFhPA637M/aR2QvpMyJi3UzjE+iot9DjYPHR4JBh7YmC
         phz9CWQLwLKvhYsh59RuQsSfpDI9qHkPyRkuTgVOQJPDFaPnHYgJvjYMvPQhTDHwAKyF
         YkdboGg7xAr6ILwdjJZcwpJsLOUHGt22Prt/qslwuvfKoSTM4o7pCRUrdiWar6bG8ewR
         zZYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=5UUqDrqwu+uefX+8fBcXspAzJDD0uiV97K8KwrrLKJo=;
        b=HuIxZqK38TSZNxdEicaKzBFDyBQluYSxbo28pmsuXDVKMyD6APT5pexxgyy1x5fSPm
         KZYfid6sW/0LjSTzlwmWaqBT/OJFWGdm2nB/C4WxEuezmLJpNh6eDzNZBpBPfXvgWKy+
         xRtb7aZIKbFPvRkKeWRnNVV5r+YXNNjEvlAFCB4B8S+0voPA0GmDGCby84jmeR2trq8h
         dOa9gRGT5QcwNInAalj99Pc9O2LXf1TBv75mmWo55j4H4IPyuQ4NSUE+1GGiCdLSr6DF
         AXWEo3zH0gde4YvBn7z6t3WRb0TNx0dDjEiwSlhZpFQOdqbv5ZDqL7Q11zA67ufhGL3C
         pFAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D3M36h+w;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x22d.google.com (mail-pg0-x22d.google.com. [2607:f8b0:400e:c05::22d])
        by gmr-mx.google.com with ESMTPS id 91si828869uau.2.2017.10.18.12.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 12:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) client-ip=2607:f8b0:400e:c05::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D3M36h+w;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22d.google.com with SMTP id r25so5080226pgn.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 12:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5UUqDrqwu+uefX+8fBcXspAzJDD0uiV97K8KwrrLKJo=;
        b=D3M36h+wYzsr/H0l2px22BnrI37I1sVCDounVQfZ1FevTlHs9to6CzzwrSeGRVrDxX
         KappnddkHM+qeYtkJ/x+mg0SPKnq7oDdrIhiEexhvaZG3EP4azD12i96zZgpsV/qw/ZY
         Ybwrhx5iwNveT/tPt4bT1z+AGi52Yrh0P/e4aH0oKlr5uU+16BHBEmT0fOTyF333ErhF
         gyvqIlNWCxNhaud9WLWKqnwKESFxHklSVOeaB99nB/EK4LmgtezRfDU7fsrw/7oYZxIe
         rtZU4lrqSMzqaAVyWOsgQsPavcQPwOyDCfqdC68HXkTB7x4UxClam6ojR51b/xjB1Xhl
         h5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5UUqDrqwu+uefX+8fBcXspAzJDD0uiV97K8KwrrLKJo=;
        b=RnLa9FSwFjgn68T6yO7XBtlKrjRDVSecivXKrdlxtAmbphalDSRXR6pyFsKJTiTuW5
         M/uaztkysYt3jQlP0/OeXgbq7W0BrvFe/nBCc/rlbfpgoCOsO968Zh1tZ7TRlIt2TlUR
         RA0bbBtQEnnNwonNTuxB3tmoE/3Lp5yss5Vdbs8jc3IIr4hEbsTMXRjU49XAGvhkpTPV
         DPtMU94BG9bQhJojZykR+qyarRFW91RmTsP9eSS1AoqU1z9SxaTWJIccftdfk4KKeIhb
         I82Qejkw5TYduaNsnVcVRyipchjqEJtv0W6VFe9tL8Ocm99nsDGHL0AJ5zbKC/l8OROP
         dzVA==
X-Gm-Message-State: AMCzsaVItlK5nyEfnAo8FRxTmkeall77c8TqJrW+4bssX464IdJqdjyQ
	aogY29BPNwU1pNag7GXxb50=
X-Google-Smtp-Source: AOwi7QDd2XVbqwpf3UrztGSgQlJ494I3BkrMkA7KBApSQ6n7ZXyJPzuUTqk6JafGkGKkiiwog8W30A==
X-Received: by 10.99.178.77 with SMTP id t13mr14832270pgo.219.1508355080594;
        Wed, 18 Oct 2017 12:31:20 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.60.166.95])
        by smtp.gmail.com with ESMTPSA id c26sm24865815pfl.115.2017.10.18.12.31.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 12:31:20 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 2/4] Staging: rtl8188eu: core: rtw_ap: Use list_for_each_entry_safe
Date: Thu, 19 Oct 2017 01:01:14 +0530
Message-Id: <869f4d40ae746a70e2b7456a143a6f966fbe05c9.1508354332.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508354332.git.srishtishar@gmail.com>
References: <cover.1508354332.git.srishtishar@gmail.com>

This is a cleanup patch and doesn't change runtime behaviour. It
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m,list_del_init,f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
<+...
-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
 list_del_init(&pos->m)
 ...+>
}
...+>

}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 34 +++++++++------------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 32a4837..551af9e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -280,7 +280,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
 	u8 updated = 0;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 chk_alive_num = 0;
 	char chk_alive_list[NUM_STA];
@@ -292,10 +292,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check auth_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, auth_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, auth_list) {
 		if (psta->expire_to > 0) {
 			psta->expire_to--;
 			if (psta->expire_to == 0) {
@@ -326,10 +323,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check asoc_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, asoc_list) {
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
 			psta->expire_to = pstapriv->expire_to;
 			psta->keep_alive_trycnt = 0;
@@ -1196,7 +1190,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 {
 	struct list_head *plist, *phead;
-	struct rtw_wlan_acl_node *paclnode;
+	struct rtw_wlan_acl_node *paclnode, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 	struct __queue *pacl_node_q = &pacl_list->acl_node_q;
@@ -1208,10 +1202,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 
-	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(paclnode, tmp, plist, list) {
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
 			if (paclnode->valid) {
 				paclnode->valid = false;
@@ -1711,7 +1702,7 @@ u8 ap_free_sta(struct adapter *padapter, struct sta_info *psta,
 int rtw_sta_flush(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
@@ -1727,11 +1718,7 @@ int rtw_sta_flush(struct adapter *padapter)
 	plist = phead->next;
 
 	/* free sta asoc_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
-
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, asoc_list) {
 		list_del_init(&psta->asoc_list);
 		pstapriv->asoc_list_cnt--;
 
@@ -1833,7 +1820,7 @@ void start_ap_mode(struct adapter *padapter)
 void stop_ap_mode(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
-	struct rtw_wlan_acl_node *paclnode;
+	struct rtw_wlan_acl_node *paclnode, *tmp;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1855,10 +1842,7 @@ void stop_ap_mode(struct adapter *padapter)
 	spin_lock_bh(&pacl_node_q->lock);
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
-	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(paclnode, tmp, plist, list) {
 		if (paclnode->valid) {
 			paclnode->valid = false;
 
-- 
2.7.4


