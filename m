X-GM-THRID: 6471467521247543296
X-Received: by 10.99.181.19 with SMTP id y19mr910559pge.47.1506756041962;
        Sat, 30 Sep 2017 00:20:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls1958540pgn.22.gmail; Sat, 30 Sep
 2017 00:20:41 -0700 (PDT)
X-Received: by 10.99.56.25 with SMTP id f25mr404593pga.29.1506756041314;
        Sat, 30 Sep 2017 00:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506756041; cv=none;
        d=google.com; s=arc-20160816;
        b=FpqrBWSNzfpzcmxUGz6+NnGn4zZI6VX8YiuK+LCla4EhIOVoYQN9Y3rP8HS98nuooR
         3ZKRAEoIpxQ7Nv7Let5rS+iwG2/CnF3GNXvEggqM558G9PiBZceAIlOwXAMjC7qMzNyz
         f52NyCzr+okKT157IHNa6oQ20nbnUytnxHliyzn4cZUEzDSivxJo/HZLZ6zZkAkVVog/
         0n0sL9Sbb6ji1fvG5z3Q5higJRC9eIakUVNhVTZVvg/ri7//rNzsMgRMd7H7OlUHTs8a
         AermNG+T06cBK/B67fPlT70VnKwmG0/fkGZNNL9V7SwUcqIP0B4Fw1TVdWrEIglsdAcp
         Wgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=mwK5aoKcade4UYnFU2AViM88myOjKOnfuoZwhK5q0+M=;
        b=rf9OTvHwiTxdLbtBQgg3Wf9si+BonzszMM9sLt3/XY6Oc8xMZJLpnePOD/4zSMH2qm
         av3/Sro/1bI371vEcx1ZcVVk1Ar5oYJbl31oLz9YtGykz81WOUqOHTU77s1I5pIOY0gu
         Pm4NcpbEvB4Knnq/7qxhZ4FfFsKCW6kFUWekEiUNJVZy5OiaH+8g55TsZVobgXScf70E
         nQqmE1V8aALmCINUJnO9Igtn68g1SRsFxcKhm1H3FA+O32io23GwuWgKUth9ewxGRjz6
         rIgSj7X53Ckc5C9MXqyQmsEF6cn6bSLESCjqs6FpNudaT/tlZzs3713nvEM/2f8q8VFe
         XWwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BInbcP2R;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id b6si702957pfm.28.2017.09.30.00.20.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BInbcP2R;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id u136so1192109pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mwK5aoKcade4UYnFU2AViM88myOjKOnfuoZwhK5q0+M=;
        b=BInbcP2R0B1MOpETWYEEKf8r9TJzrsHDeNppblV4RAiwMW0+qVkS7ZOivLdKnxghFY
         HfQCdcKeO6evp9SuNg8QgyTvhb0Ma/BT+3UVIdEIk380p6VE39k8yC2IQS/nhOgjln2P
         c0hxhMtg8iMw19D/ndhUul4TJLL//ASIc99re5chv7g2QVY2Bi41o2bEKZszUMVIW0R3
         t4lMelbN/uJjdUhj8d3BnnGW58hY0MkEyV4MoP4Nk+i/iviYT7kCdZZAN5R5YAp5S15B
         4MvmZl75z/oGLOzKs08oCU2dMn3IYfpQ+K5ew5C8P3aEMhNn5MaVLn2zJoZLKeei2CS6
         PKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mwK5aoKcade4UYnFU2AViM88myOjKOnfuoZwhK5q0+M=;
        b=JKMnksg2vM0GbvewaqFB/AcX98nkG+7YGhHK2UeYDxtKQrG7d96e03JBr3PNeuU9PO
         5iHt+X//5oRQNwWr+2HTgcbg2TMdHp2OCw7ibr/ifYFhMv85QS4F30dv0PUJyJARh6uO
         NSzLotxJ1FNWNkqU1J1+HRHUyjEgX+nUM39kMRnpnYVSj79MkAWdqQbGwkhD6aql4iuS
         hhv2oNNsVS6XHd9JtVqFQ0mjQNcZt1kod59uedpdF2mdJDUtGbkRcPvXEM6VxlWk3JtP
         WC65bK2ZdYo86GBQZUaFRAig1oKQ4ZTlAnFUjwCmkaEjkAdsOu+mMiHBWYxhnr1pHzph
         Tm9g==
X-Gm-Message-State: AMCzsaUNzvXj3C3hOyjovPSLdF6kDaraRusvv8hGImeF1ZAtm6brM8yl
	GhIIJbEboCXqJDtqqbAtIvM=
X-Google-Smtp-Source: AOwi7QCiLjAoTnCuF1ajHmYfFo2mPbrJKy24C6Rrw+47h6bpc8hNrXLBf22fWP30W+h/n9xmpQHBBw==
X-Received: by 10.98.233.10 with SMTP id j10mr2402145pfh.317.1506756041073;
        Sat, 30 Sep 2017 00:20:41 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id f9sm9265735pfe.150.2017.09.30.00.20.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:20:40 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 4/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:50:34 +0530
Message-Id: <4fd2ea2c05b8790717ff37b0d0cb6ecd93ad2b70.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of the type struct list_head* use list_entry to access
current list element instead of using container_of. Done using the
following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
   (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 32a4837..35c03d8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -293,7 +293,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 
 	/* check auth_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, auth_list);
+		psta = list_entry(plist, struct sta_info, auth_list);
 		plist = plist->next;
 
 		if (psta->expire_to > 0) {
@@ -327,7 +327,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 
 	/* check asoc_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
+		psta = list_entry(plist, struct sta_info, asoc_list);
 		plist = plist->next;
 
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
@@ -1149,7 +1149,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1209,7 +1209,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1456,7 +1456,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 
 		/* check asoc_queue */
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, asoc_list);
+			psta = list_entry(plist, struct sta_info, asoc_list);
 
 			plist = plist->next;
 
@@ -1728,7 +1728,7 @@ int rtw_sta_flush(struct adapter *padapter)
 
 	/* free sta asoc_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
+		psta = list_entry(plist, struct sta_info, asoc_list);
 
 		plist = plist->next;
 
@@ -1856,7 +1856,7 @@ void stop_ap_mode(struct adapter *padapter)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (paclnode->valid) {
-- 
2.7.4


