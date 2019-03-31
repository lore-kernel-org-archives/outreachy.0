X-GM-THRID: 6674542859228545024
X-Received: by 2002:a02:5a4a:: with SMTP id v71mr8328546jaa.22.1554043328472;
        Sun, 31 Mar 2019 07:42:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2578204ioc.3.gmail; Sun, 31 Mar
 2019 07:42:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwt5gkii7b2N9qJCcNIx3/ZXztkQCYyjKyNJzTxVT7622kkWvh+3Y+yM4HH9oCmN3QACvnP
X-Received: by 2002:a5e:a904:: with SMTP id c4mr8388977iod.19.1554043327630;
        Sun, 31 Mar 2019 07:42:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554043327; cv=none;
        d=google.com; s=arc-20160816;
        b=V51XP7PxKxuefEerjcr04O+0HWsgEypHSRrcmKUiUPx3jjPjnotuYYoQj56h07dgiP
         tkNrTvMnYEEZBO4xh2ShJO/BnrmwgnqGe+8Nt6Ff5fb1ZNuEOaHd+s3lvPqIs7UwWmZa
         KHJAe2N/Jrw2ueLoGgZqJkL4MoX/z4XraBuko+PCGRqmkQ+1laI4cww30z01aEgiC0Dy
         Cvjf8GXgsS8RBeL+ry7px7Izi2bZ6tHtUngudjBl81uhfmSyCNM1kJvSUxXVY/ZaAMJe
         LRpiaC1Msl+zBOB3ULpLMZ4XBx39isyY37EZeW+0pFrp9j/5DdDsTYb3pY/xq7Hseb++
         RVRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=kZZPpkj/rSdQmXR/zg4STz3JcmCcagwlPidO376YwwkI9ZDZ5hVKDHNLvcgrvBa1py
         OcILuaepgeokZmXqRLAw8+XL0gxGivLSwQ5rdPf75zR4PhZems2OeRYbLeOnAXRfHJJx
         3NUeHwMqAtDSWyGMlpsRK2pLQwQHS5aQrfJVC2jTVFLVs7BqJ/fCizq4pBDv4unLpF9x
         UcuwbrxopuXBV5vIZ5RIw8FaVQQN5o3K77p62rOkdaITjL1YhuZNpZQdf5EmEdBGYm0r
         bN7VvgoIkzwn//rhz89ags2fJ152bnmWTBf1x09f/c7T0BwrDCTTIBwdc4mjIh6U1C9H
         bhOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LO7sgKKs;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w136si377065itb.2.2019.03.31.07.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 07:42:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LO7sgKKs;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c207so3255951pfc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 07:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=LO7sgKKsJ3NONU5nEYCTgkxuLHDv1NW3+7ekK60PLFJigtu93in69TIXM6q+ynq05n
         yug7f1g03BdU1AVV3qO0+xAdHb46MMY8JHO90ZYFTYiPvtMaGqTF4ko/NfTRC5BMl29E
         lUVX2tXyY0DJpDShjgu2Bpl8vuhtaIx9iQoIEWYaqnSD1RKQFrxxrVdsjXXR6oPeGD2P
         f+5JyBdPhjZJpBfQ2fM02Icle3KrTs4pC5vK4PNsZS4AlBvLlORu3uoebB+TihGnaZxB
         ATKKlsFqoGcbX9jWkb2Zf807kaN/rRfFGnjAkBKu8TSKmDwds272axDPUm+fMiyPjIH3
         JFMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=RxKAyfjb0m1DwUZpD3CkxXJM7X3IySqiUytIbdGI5aiO5OaGfljdrpOcTh23+ClMfY
         XXS1QSt2bBN96n6R3kdwKbqSFiQHCf74R5LWgK3UBCXu/ExkPMwdzeV7ugOYI76P6NIC
         RHq5+NhiLwyhSyD7TkpPbVryvQRuhfaI6xo+dHhbi7lZODSqrHJJV0avuUF4IZvq0mOi
         V20TgsGfXtuE+Htmk397dJD2uNHno/g1XA+6yWd1Fw6BlQsdBVE9xsKNpRIUZ4Pu8Q0T
         6GU1633NqeWt6Yh5O8FL1YNq9+Z9mAQefsWHTh7RSVnrp1ixVVB0T+rSs/w/lGaDPDYM
         T6GQ==
X-Gm-Message-State: APjAAAV6wZ29fP587/JOA23wXR4dqrTmunMhTEAooysLfwJ/po0muSzi
	uaRI8j860cBYsq7QRLOh56kLb16V
X-Received: by 2002:a63:4241:: with SMTP id p62mr38990420pga.379.1554043326760;
        Sun, 31 Mar 2019 07:42:06 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g67sm12397858pfg.94.2019.03.31.07.42.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 07:42:06 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 4/7] staging: rtlwifi: btcoexist: Compress two lines into one line
Date: Sun, 31 Mar 2019 20:11:31 +0530
Message-Id: <3ca9dc4466f2bccfa7da90ca4092679b1d34b9d6.1554042597.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554042595.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Compresses two lines into one line and remove unnecessary variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
index b519d18..dbb11c2 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -456,7 +456,6 @@ static u32 halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
 	 */
 	struct rtl_priv *rtlpriv = btcoexist->adapter;
 	struct rtl_mac *mac = rtl_mac(rtlpriv);
-	u32 ret_val = 0;
 	u32 port_connected_status = 0, num_of_connected_port = 0;
 
 	if (mac->opmode == NL80211_IFTYPE_STATION &&
@@ -471,9 +470,7 @@ static u32 halbtc_get_wifi_link_status(struct btc_coexist *btcoexist)
 	}
 	/* TODO: P2P Connected Status */
 
-	ret_val = (num_of_connected_port << 16) | port_connected_status;
-
-	return ret_val;
+	return (num_of_connected_port << 16) | port_connected_status;
 }
 
 static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
-- 
2.7.4


