X-GM-THRID: 6673407094899605504
X-Received: by 2002:ab0:aa:: with SMTP id 39mr1712616uaj.19.1553773669618;
        Thu, 28 Mar 2019 04:47:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:83c1:: with SMTP id f184ls4049650vsd.6.gmail; Thu, 28
 Mar 2019 04:47:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+cTBIviEwyjlsE/q5484E8i80ZIUZ4kUsJUkNn2MgmM6t7+ldQoVqpaDVVZFpy3WuOZ2J
X-Received: by 2002:a67:7b56:: with SMTP id w83mr2807517vsc.14.1553773668870;
        Thu, 28 Mar 2019 04:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553773668; cv=none;
        d=google.com; s=arc-20160816;
        b=0O2hTVLsq4LWKaNw3yeah7ILCJIrRK+XRcVArDPvUirrxM1ZyOb0pyMEQeuRa9R7Fr
         6DaDGsIpQ21Y3mBVx9ApjwsTUyFgEWs4YxTd1xgh2EMysyb85JnOIRsIgXVdR/YiwF1r
         shhS3fboLxGXFAOFsTrvNkCo3RsmFIsG2h+mRjc9dU60myDDfbqIts+4ya/8X7Nt+rV5
         EW0hnhb8h2JD7DwPcdfkV5Avtj0+51qizUILZXOantk9DO/36fMORuJXGw9usW60nuZH
         55v59H3EPosP5I3Np4Ejp+Z518EXxD9JAPbuLsUpVdIpbJP9ZXcNABX7sAlRmM5CK57e
         O2wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=J2VOHQr1iX88KocwIbIY6a49dpaKuwJzEGJJgQMtrqM=;
        b=QRFZ0WdoW7EMgk9cN+tbjtBNTDv5n31X1HEK9yXXoKqSt31sFTJYsPHO27ptel31cH
         DB6tHDnDD6a0uGD9Ko2J8gQjVPDIYrxb4kI20Tbm3/2HTRpr6BR8vXkQPqsbzN+QAYFK
         a5DnZssIw/4XsvN08Iav3PT5zGJhOtGt6fwSqOvnszMbZbRJNEFVeEEGLPFN+3h6Fmy7
         rZRstlLEPO2erwEMK3TWXLkivMQAJsfZWFnj4GhAD8EaMVxj/GhoAvCKkmdGLpSf31Ay
         fdRXAvNwPu7qNm81gCY9YZsuebRD0gM7PqtCvYYj0iaB9Mbt1f8yfy/O/G4a86eFFbLn
         /tew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J8HTMIQq;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h13si1497078vkf.4.2019.03.28.04.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 04:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J8HTMIQq;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k3so7790635pga.6
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 04:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=J2VOHQr1iX88KocwIbIY6a49dpaKuwJzEGJJgQMtrqM=;
        b=J8HTMIQqWrX4QycJv14LvYckhEe89ZZ/QweQyP50sDGn6ER8wiuxwhuo2DDYgac6KC
         M+jPh5SNM6oxiVpOlZ5AKM80et0HhOxVFQmMUDsm6yi7vENBLY0T0pBez2d4xCbRAdnf
         2wydy7e296aVmM2q+CxBDsoePtu+Ks+aFVvpbDNe7B2cw9BMooxrH1deqhnmEY+oCya8
         etY9Frz2GMHdU7rYDMD8Zz8T9MP4C0dmmRiaaZI2CrYDdEkcI1n8OKv2auvYk8GcnCEo
         BbfExmasBQ1PIQqdwqBIRjDmrtdmF74ypP8ob5KQ8lxMGSMn9R2Zz94njIMj/OVxAbwf
         I28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J2VOHQr1iX88KocwIbIY6a49dpaKuwJzEGJJgQMtrqM=;
        b=QfMwA+KiO7CazF2QfHuUVWiBZBSGmzdsG8O0YFyBmYvJJ9wEkKI+CI5m8IUVFVrKwX
         ZOF5rWNHTv7iUPhN6Rs7+0aOs/1sMOTBjpmEHG33vp+RhIcFc/3EtJRILZoeM8JI0o3N
         v3CLQPrTaHaPGj+YYpgMMR0pijVuvrjKctp9Ow4kyR830Zs2RR3/25CYXkH/U/wWwhDW
         vmJOd620pugvZBdZgjmXwQuIBFsA33MzWNisyyyiylfFNLQPKIeHEVDepSfm7udoubnX
         vvSS43Tiol5jTFvfPDQNEzSYdMjK19vIYVcUu0OWDuZSOhAfhGNwXyMQOqpUlTjZhHWk
         e5vA==
X-Gm-Message-State: APjAAAWSARfNdFLS5/Dd0Sx6ZuxxXtMmk515ZyLsMbb4al3ZUh0nP1L3
	ayioPRKyERbVHESYWMyALSWTezlrzU4=
X-Received: by 2002:a62:29c5:: with SMTP id p188mr39619738pfp.203.1553773667684;
        Thu, 28 Mar 2019 04:47:47 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.30])
        by smtp.googlemail.com with ESMTPSA id i31sm49555305pgi.36.2019.03.28.04.47.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 04:47:46 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtl8188eu: use list_entry to access current list element instead of container_of
Date: Thu, 28 Mar 2019 17:17:41 +0530
Message-Id: <20190328114741.4367-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

For struct list_head* type variables use list_entry to access the current list
elements rather than using container_of.
Issue found using coccinelle.

The following semantic patch is used to implement this:

<smpl>
@rule_list@
struct list_head* l;
@@

-container_of
+list_entry
  (l,...)
</smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index c360856a86ec..0554792e191f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -179,7 +179,7 @@ void expire_timeout_chk(struct adapter *padapter)
 
 	/* check auth_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, auth_list);
+		psta = list_entry(plist, struct sta_info, auth_list);
 		plist = plist->next;
 
 		if (psta->expire_to > 0) {
@@ -212,7 +212,7 @@ void expire_timeout_chk(struct adapter *padapter)
 
 	/* check asoc_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
+		psta = list_entry(plist, struct sta_info, asoc_list);
 		plist = plist->next;
 
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
@@ -1021,7 +1021,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1081,7 +1081,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	plist = phead->next;
 
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1328,7 +1328,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 
 		/* check asoc_queue */
 		while (phead != plist) {
-			psta = container_of(plist, struct sta_info, asoc_list);
+			psta = list_entry(plist, struct sta_info, asoc_list);
 
 			plist = plist->next;
 
@@ -1599,7 +1599,7 @@ int rtw_sta_flush(struct adapter *padapter)
 
 	/* free sta asoc_queue */
 	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
+		psta = list_entry(plist, struct sta_info, asoc_list);
 
 		plist = plist->next;
 
@@ -1726,7 +1726,7 @@ void stop_ap_mode(struct adapter *padapter)
 	phead = get_list_head(pacl_node_q);
 	plist = phead->next;
 	while (phead != plist) {
-		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
+		paclnode = list_entry(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
 		if (paclnode->valid) {
-- 
2.17.1


