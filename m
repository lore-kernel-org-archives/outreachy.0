X-GM-THRID: 6673442126229929984
X-Received: by 2002:a81:dd0:: with SMTP id 199mr4356455ywn.21.1553922811437;
        Fri, 29 Mar 2019 22:13:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3451:: with SMTP id b78ls735333yba.4.gmail; Fri, 29 Mar
 2019 22:13:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1zG8tWDUo3m0yPPGf0R4qQVWMMKmuKDjDLb4aRHosIh0RArmZCzB5jb5WU1LWnFfpXgAF
X-Received: by 2002:a25:804a:: with SMTP id a10mr4463868ybn.47.1553922810626;
        Fri, 29 Mar 2019 22:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922810; cv=none;
        d=google.com; s=arc-20160816;
        b=s5wuroMCXoMUHoLv1DcCJm3JZlnBmaZyqVPsSM5Tbaups2ybJsd4oxYGg1IzfyAsZF
         XbdReG5bLFOzHFPoB5rApMONtiLWRMPk47oL3DVWx3rIk14GjwkF6yFJlwJ47HS35WWn
         elN8c+R/26XjLNA7fAFqf2Gqijl1Q+8OTjsXFDgbzx0GnGjSYc46rrDm6gRnkiGXfXjd
         GReaIhJU8T5a2vewMwDwHDYysQ5l+7rW+pR4IT7FX7ukWmbXVa3pmo1rQrhiZJrGLZO8
         mGs0K0YiRUaorsBT/Fdo/eZy6CtfHK4Zes5fFQWq73+qdSLyXX6ae5Bptr0B0NcrPEdf
         Ybsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=rNv8X0uiQ0vkmHqL7jXjG3qGvmMEAVDFW9gHLtvpzMrqkq/pLXNy27nqzyByM0dPoq
         RQR013M1BGFPRiv91qW3/roc5/jTh0ga5+YCHzk/2g5qW9cg8O7A+fxv3nx5dTjT1Gjp
         fPLYo4YGnHajdGFetp62dN69VZ4glEDIJhh+R98f6HDIbyjXrryvxWUsayaWENyKlAeO
         F4FyyUrXu5tuM/mUdoq0gATx3/z642h0/LSNJLj4MBD2hJs13A2lUNO5xTzeFBe0gqL4
         ymXryq4wmb05kuOhI9kQhsjk19AL2rmZ64AiHlO0gHa1EpWeX66gu5ggbpySUi9iu4yz
         j+eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBwRq+Gp;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z204si315695ywa.2.2019.03.29.22.13.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QBwRq+Gp;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 8so2003777pfr.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=QBwRq+Gp87ebqq80z7vWHO4g3ko5tUhxhKYh/srlZeb+xeEhCKQS135FJFqrr12zeR
         IsWXMzcsb9AxtDTad2SGmpu8h6J0N0pg5mQBgePiuvXMQkhmEHBbOGo19D1ZY4N0OBNA
         jd62EqWSAceeuRNoXWWzXDLQmTckm7UB3rbRdHrlziEVj+zro3C9Uc8c1Ou6GYaTQFBz
         hJ/sFqf6AAygx55XgOAWREmBbkXPqLVdm1sVZGOlIzCe93Ar5sq5YTia9BsG/DNSVm3M
         RvgjFdEc61D0U3I80G+lGuj2aGz4dWGTanWgxNU2ENe5Utrthzre/BbM1VhQn/fSiemG
         wTxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1npeB7eWWNTBV+rW6hGkkjkgY8JByfEzY6vk9jJQyFU=;
        b=UnrPXoVPK99my3gpz0W+Kq0XEkWYFrs8C3j9YTlvl1nk3AfUG5krv+u0jEMZ0fvbkO
         Jd6Lvl5VDrMynxvy5bCQr8nMRrVGEWTeZ3tZSa0QA7yK6f4xpaWd9+CZhuEVI2YKKYKR
         LWbfqm3PEHbQySReiOAClztSKsCVdCSZ7zRskd2mNwMwhNmd8yjkUQW0YxBlVofkqtNg
         pb6X7BHb401I0yRsc+1jTwrFEa6E9ILtG+WKAExh3c6o8y34riloqJmeY4IflwlkUJ3S
         kb26mRP/soOnvJob01o/gryGtI1Hb1zfOyTjhqZS8+NMD8vS5aUQ+S7ldUD5D6w2XCju
         zv2g==
X-Gm-Message-State: APjAAAXe1lOfEYguXLwMb8pLhF+M0JNiudz1YNkgL9Tj9wd1iIDjI/39
	ApBYWxdqBz48AukZ0AZqF5m5rmhp
X-Received: by 2002:a63:6605:: with SMTP id a5mr49714403pgc.372.1553922809523;
        Fri, 29 Mar 2019 22:13:29 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:28 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 5/8] staging: rtl8723bs: core: rtw_mlme.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:44 +0530
Message-Id: <c21ab121b0e9de5dfa2eac556950fb753cb04c04.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 406e313..12661d7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -332,7 +332,7 @@ void rtw_generate_random_ibss(u8 *pibss)
 
 u8 *rtw_get_capability_from_ie(u8 *ie)
 {
-	return (ie + 8 + 2);
+	return ie + 8 + 2;
 }
 
 
@@ -347,7 +347,7 @@ u16 rtw_get_capability(struct wlan_bssid_ex *bss)
 
 u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 {
-	return (ie + 8);
+	return ie + 8;
 }
 
 
@@ -451,14 +451,14 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 	s_cap = le16_to_cpu(tmps);
 	d_cap = le16_to_cpu(tmpd);
 
-	return ((src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
+	return (src->Ssid.SsidLength == dst->Ssid.SsidLength) &&
 		/* 	(src->Configuration.DSConfig == dst->Configuration.DSConfig) && */
 			((!memcmp(src->MacAddress, dst->MacAddress, ETH_ALEN))) &&
 			((!memcmp(src->Ssid.Ssid, dst->Ssid.Ssid, src->Ssid.SsidLength))) &&
 			((s_cap & WLAN_CAPABILITY_IBSS) ==
 			(d_cap & WLAN_CAPABILITY_IBSS)) &&
 			((s_cap & WLAN_CAPABILITY_BSS) ==
-			(d_cap & WLAN_CAPABILITY_BSS)));
+			(d_cap & WLAN_CAPABILITY_BSS));
 
 }
 
-- 
2.7.4


