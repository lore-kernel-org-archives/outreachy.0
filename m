X-GM-THRID: 6472784237919469568
X-Received: by 10.99.55.74 with SMTP id g10mr982236pgn.114.1507062520027;
        Tue, 03 Oct 2017 13:28:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.236.65 with SMTP id h1ls5179711pln.13.gmail; Tue, 03 Oct
 2017 13:28:38 -0700 (PDT)
X-Received: by 10.99.123.26 with SMTP id w26mr1689376pgc.115.1507062518877;
        Tue, 03 Oct 2017 13:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507062518; cv=none;
        d=google.com; s=arc-20160816;
        b=mW1MzEs02blE9QFpEfUFxwL7YV19OiFOZOniU7GWztk/rQ/pEIFbeTh0YQzSTxHfFh
         SO5heekTMP7hfHjEeXC5GzaSjF+jKBS60EqLixVupFQiY0S7CsIHscEnUvah9ZOA/6O8
         dmRjDKFZ+tEW7gTa3dS4srLKwpgWsZn33ErYTar3zOAaq8Il3TVAEfrEQKuN/wvKK4x+
         AGlvTtMRorZeXv/NyV1nOofu+xme5MwaCb4jfuVhMvauPalrv95//7726iAy52GwGDAV
         3zYpYbgyHuCn75W9VmrFPoeaKcV3BMQNWO+DiwKuB4GW/5dClOXgMEeXt9SJRMhNr+cn
         voYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=sS6PmyW+y4oMlEg/Ugw6RxcTY0XQ3HVqO2B3PMDJUkQ=;
        b=FR8amZfmJMQI6oS23Fz4HugFSUzhaaARf2IsurDk17ncsGUVcfzQc5RFNiD22su2km
         3H07u6mzJBzcHxerOk6lSXZBcab0mdpF4RS27nPix6edWEYpS6Vey8ZNnW6pjY0TDSBi
         2gnOWCH/qMCbbSL6ZjdbcJ8wauyaIIdW66tgbqjOIlHON5ZrCkxE0PwMWk6RiNG0QaXe
         mFQi5efl637JnMhEY5PcCYzMaZMqIYBnMtLibmOqNUbSkJ3T3cMu1Jb6fGhMWLdjLDuE
         6uasFsDBL9kfE+poH3S4JJfWdc+6h57IYcFthE/FhgXzoxva10JCSvgibz3dv3aiFeYM
         usMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3zWaf3N;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id n21si588340pfk.18.2017.10.03.13.28.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 13:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d3zWaf3N;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o1so9726507pga.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 13:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sS6PmyW+y4oMlEg/Ugw6RxcTY0XQ3HVqO2B3PMDJUkQ=;
        b=d3zWaf3Nqb/DbtE+uzyPRsLvVV0lBMM4MIjxaq9FogGDWuf6mFxiD0HfJvzG5yZDCb
         gIZvA2IwLlQxrU5tURTY41t++AM2SuBnH7WUOMRT3WSWURU1wHqKcPEL4xPeqUt3+np7
         xbiVniuKyX2Et2halsKXykIT3RIFEC/nbZ8Ivf1a2LtkY/+fN3VQrIcTwOMsG+5OzDPU
         LfOs9b5FPCamSPmvBcNyKH4SptnVrwAq41cj9au/XYCtdF/Z+v8yIFt7t8NOctueFwJy
         1QMsOUU2bLZs2BYuBcRZNmko3fTZBp5jverY0bh8OTlbU9YkG65FAiELwqLJVX4jiddU
         XKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sS6PmyW+y4oMlEg/Ugw6RxcTY0XQ3HVqO2B3PMDJUkQ=;
        b=gcGg5SRmvReKgl5x+AkQFWkVonmDYiC3lEicLUIktbOATg3OnVjzKQjy9KZhcYrXg7
         qZa3dotot6Ny2eVV6xOpFPGfcwpVm10vjfaqXeeIG4eIXGeOugdZGJvmRqduerdP0+d6
         o6Jkn+n6KkpzNSqT1H+tBbcoLc8bCVOevZJQwe2d8La7KLyhi4IIIQw3orzzYQPXgZ/C
         dtIyNwh58ZSbJ+qcYI/gof+gAY5HVArBOvnBRoERXrC1ircIMJUu6iYIrqIwxfwStcX0
         MJDPlPq2nCPQ+zcDgtvbhNnXqbePtyrUGxmoipX4+9FCbfINAkB0gZQLgOhVFrnDca8h
         gHmQ==
X-Gm-Message-State: AMCzsaWbOojUzibISmsJGQA7WGNbyrhTyqSLOYE/OnzrjiJ45e2Jr+KF
	jP2r9rsnRZt5o/F95x8RsqHhkA==
X-Google-Smtp-Source: AOwi7QDGe2pOaaXIZ2ifWKYo4WmaecCXKYVZRTyJW80BZicQK5zngt9hHbVfra4QslhuHF76F9oSfA==
X-Received: by 10.99.49.134 with SMTP id x128mr7527563pgx.35.1507062518637;
        Tue, 03 Oct 2017 13:28:38 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.110.160])
        by smtp.gmail.com with ESMTPSA id k73sm23318942pfg.81.2017.10.03.13.28.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 03 Oct 2017 13:28:37 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 01:58:32 +0530
Message-Id: <1507062512-9145-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use list_for_each_entry_safe when the list elements may get deleted
during traversal. Done using the following semantic patch by
coccinelle.

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


