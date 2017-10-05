X-GM-THRID: 6473105457256857600
X-Received: by 10.101.66.5 with SMTP id c5mr2204476pgq.133.1507196809372;
        Thu, 05 Oct 2017 02:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.253.142 with SMTP id q14ls6473438pls.0.gmail; Thu, 05 Oct
 2017 02:46:48 -0700 (PDT)
X-Received: by 10.99.160.85 with SMTP id u21mr1105562pgn.113.1507196808429;
        Thu, 05 Oct 2017 02:46:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507196808; cv=none;
        d=google.com; s=arc-20160816;
        b=LI/2BpptxTF1/moVfVVPejFvIHoZkkrnpjlqLTPXg8kAhUiFTLHI8u2PV3veBo7wXu
         b3esQCpnWXMd2uWAzJHObPyHhQNMueeN21ldRZUVEpwyKaAyBXXWkBxbLxD3YgtK637J
         NwrXM2Y0v8rPfFPWJkW0EDxidZtkKRmm6Hhp6ZcOpWHMzoh6hdSBHpB/0g67aIeQB4Rn
         NqhfwGb5omqDOU9bXl4ibBhbY2k11KPzxv7QAnBIhbadHsrMqWjOGcEzik9tzH+tw7/t
         Es4pEKmRFPsasatN3v6Dn1OBB8Bdbf9Z0lpW8BhZVRWtaZFMgpOd568P8Cqogz6UWgt9
         MWLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=/fJSddIW0y63x+y9aEGl4TBAkgfRcOpAKYYMtPdH6+0=;
        b=ALGnDgTUZJtEiezV91S+PsBtxiN01TBKs4mdkltn/et03Jbgu1bBW0nFBpBmWfJugb
         NespIWe8fvZvQzDA7rvviAb12PzfwHYK7PxY4yLRPRdVriSh8n9wAPrTnfsi4+wZwHha
         XPTKG5qVh2SqFVUNwaZaTA5t2ecNY8o/8NruBOvbU3ZnhZiPQh1ajoMa+dVuhxxQ1bhQ
         qWUG0/obNzZSP3titi5TflSVTD8+DlLnV6sB8WVf95NvfcvNyfdh9A9m388Sg6FBKJgJ
         bdUwSV6Cfpl1Xixvi/2b/UFie7gffLFPjkYghXzbyJZcgKxsrrXA8rNk6/SoB4qmaIml
         fIPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AimZ4HoC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id f189si1804563pfa.1.2017.10.05.02.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 02:46:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AimZ4HoC;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b11so6292457pgn.0
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 02:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/fJSddIW0y63x+y9aEGl4TBAkgfRcOpAKYYMtPdH6+0=;
        b=AimZ4HoCRl+q7spWNPMMug3H78y6+MksJiVIkfhewjpGn9FrDKIC+H05D1/9RmuwvT
         auUovg5S4ilkX+M7Z4AA7+eL948QzWD69eT08uJf8SIzB7zYfxkUhEsltndshk3RANMH
         BVQrKZ4l7DfRgI72DXvS8PaAoO2MYqu6XmYZYPC0TuBxM1HGdPsHV8x0EChizQfaBwZi
         rMGNZmQ0JUr7IDaa3kmWjdgodn2nu/D5TMHr2Upkmnm09iWzgS/GFfltArS1yoZ1otJW
         35AhF0Td/Y5NXPffv0wkgIGPxsWtvb+LbBCKXwJc+V4QvsCPfVdED08OyFFVZj6kTtV7
         dvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/fJSddIW0y63x+y9aEGl4TBAkgfRcOpAKYYMtPdH6+0=;
        b=l+9dwJmMHTJyqdpdeDOVF6EIwxX66RbV8JNJcxIe3InXY3Ul0KOZ5/kHz+/jxG/eQv
         peG85kgoPrJBRqU4FtUHxwinR8salBDqNqi9MSJ/46I7OkW4Od/gI77jMoHQECeYqlET
         AjxNDYxs1Uju35InvxTzIEyHi/Z/VPJK2+cWeYu6r+n+rt7gnXJN8eLbZvjYZmXFkgVo
         +PLiOOmYLtZKkY51mjJnCZztGShBP7c9XqS/s/vzQJnHToo3jSQnGbRFCPVsGcr7xRwl
         UDEdI6Idv3GBS7xLQsRmzb2TzbixuvNM/4yr6iAQSZM0JNJxnPDJsHKqUobeSFW6kwMg
         0t0g==
X-Gm-Message-State: AHPjjUheEitu6vURo1reE0cmLmXvK2mnk3GlgeyXxnH7j6ovkOZZwWsi
	+KJP8hA2x4BU3fVd0eLw00M=
X-Google-Smtp-Source: AOwi7QBOs1RZjwz5W83m/J1OzP0Obt/HzICXV38Djkz3G9+QCV3DBEaVFgRNEszA1C33iKpnzJdoLw==
X-Received: by 10.159.246.24 with SMTP id b24mr22662432pls.358.1507196808200;
        Thu, 05 Oct 2017 02:46:48 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.169.210])
        by smtp.gmail.com with ESMTPSA id q62sm12706578pga.75.2017.10.05.02.46.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 02:46:47 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_ap: Use list_for_each_entry_safe
Date: Thu,  5 Oct 2017 15:16:42 +0530
Message-Id: <1507196802-4143-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This is a cleanup patch and doesn't change runtime behavior. It 
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m, list_del_init, f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
...
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
...
}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2
 -Make commit message clear.
 -Add file name to subject.

 drivers/staging/rtl8188eu/core/rtw_ap.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 32a4837..a2c599f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1196,7 +1196,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 {
 	struct list_head *plist, *phead;
-	struct rtw_wlan_acl_node *paclnode;
+	struct rtw_wlan_acl_node *paclnode, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 	struct __queue *pacl_node_q = &pacl_list->acl_node_q;
@@ -1208,10 +1208,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
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
@@ -1711,7 +1708,7 @@ u8 ap_free_sta(struct adapter *padapter, struct sta_info *psta,
 int rtw_sta_flush(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
@@ -1727,11 +1724,7 @@ int rtw_sta_flush(struct adapter *padapter)
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
 
@@ -1833,7 +1826,7 @@ void start_ap_mode(struct adapter *padapter)
 void stop_ap_mode(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
-	struct rtw_wlan_acl_node *paclnode;
+	struct rtw_wlan_acl_node *paclnode, *tmp;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1855,10 +1848,7 @@ void stop_ap_mode(struct adapter *padapter)
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


