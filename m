X-GM-THRID: 6674542859228545024
X-Received: by 2002:a24:3d8e:: with SMTP id n136mr5265594itn.3.1554038129933;
        Sun, 31 Mar 2019 06:15:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls2540656ioc.3.gmail; Sun, 31 Mar
 2019 06:15:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLxejEohDAcrsamhvTvEkSHtqN8mhe9AUX9lj+6whOgIxCDUF0xhz/yEjXhRzuRUT9Mj0P
X-Received: by 2002:a5d:954c:: with SMTP id a12mr8628609ios.31.1554038129325;
        Sun, 31 Mar 2019 06:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554038129; cv=none;
        d=google.com; s=arc-20160816;
        b=Fv9RofZ1LK1xqnh3yG5bqBmsdP2kIvy02+eu3j1qOCYEeO3tXverVYWp8l4x63DPRr
         0RM+t8G3JRY2R8rGr5j0iZwW8PAvpMJNVLq5gZvFISQIR2pQhCMKD7cXWnFEBIsi3NJN
         fAZ6PexFRyvUmH6hYvia4chz/j6qRYh/foZ93/CbFtTWx6me8jvZdZAw3EyUeiTH7GM/
         8Y9UM2gBl1x9OD9mz3uABhQyjMQ4jKSxDnZo2091ckw1xXs77ZNRnlZMCyKkU11mr49r
         yb+duDmZckyFrOXaBwvM8SNwCpfwuJmTu5UJqzL2RA61SJUGkNl7ejd7D1y4dAoDTzYK
         J+Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=u00aglWs4DyJrnpWlD9ThElPbss4odKIz0QmocPT8Om6genmwcIYt0bK1eTJFDbaA3
         Fqz1pySVk6eIMzzovn9OWdR+xIFRcOJZU0oLtWFJHA0744wSmrzzyhp6+3gRM8jcchLI
         Nsd3TUkrG4X5/itGw+V9+E84zJ+0L4F05LMnyIJV13ZYV2nHtOZuu55B10zyawHBR7ga
         7PamdgtlMFFjs/Z/n7qpP0i4yL+jlHCd0cFOQghbJ+W1iFXhOtKfb9rZ3j7D4Qh9aNcb
         Qy6MWH6jb+Nl5jVJmUzyyYP/wrbejR7v0xnX7aUujYm2WZ5iWqVlIb0y0Fggv2K1R8BD
         U4hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWSWJHf2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 65si965443itx.1.2019.03.31.06.15.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 06:15:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWSWJHf2;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id y6so3140417pll.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 06:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=mWSWJHf2h5XvrqdjTApyHDMwD5lP2UGjm9Fk1T8HHTKJ0plnidDMmMfiunJ3RXm+ZC
         w0VrDv0/l2u2ddvQ1LOASwij5fECSGYl6A/buqBT7C5EZ0GUSg1S9i2ewd06fD1C5vkX
         BzQY8A5b2vbQZp8ojU0IMyxiSlvrYyhqfEGoO/9ngjW0XRritAK+CXJbZQLIBv3LCDhz
         dFqazd39wjpO/ItuSpp8iqnugENTfRoo/dc84E59w3C4Dg7O/kymRhIWiAqUOKpF613W
         J6Jb40KfdtzdFeB6iwXKMkOe8RRv/0iNja+DDwxTOPV7Tvy2LxVNUJ55bdEEWJs87i/p
         7tgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nnT55jH7YKSVZJ8Uuf8oPHtpa0yqo1n+Zj0ZTw0E0i4=;
        b=Wh4HvIJXpxuWNSOhZQy6DKwku7VQq32FvLB63+Giuk1M/3TUEcAGIrq1NmXb9531UU
         H3KjH4Ln2cWNUYEYOM6iGAB/q13lwM1QCmQrIvzrgWsrNQjCIjUduF28wJ3KUe44cqCb
         Z7CC4OFW5DuCPZzxJv9sQhNZqcmlPUHpLJdSJkGZd71bhEirdDor5za4DajzfBk1hvVs
         p0ZNqZypgvonsUDnmkgECwyRgqkIEmoRtzQynmTT53HkGGlicZ/h16MNuZDq60unhypf
         fehSEOMGbjajvFl/02d34X2WeVU1I5ZJYsELO1nuZB7+6/jJh6ImcTQocf2ypimWPmAS
         l8kg==
X-Gm-Message-State: APjAAAWZkhip9e33CM6z7IvfExWYieJ+PcXxB18woIwtl2PzyR8FqaIK
	gaBRtH2cnxE5k48vr90+ABoQZVUz
X-Received: by 2002:a17:902:e912:: with SMTP id cs18mr59594148plb.130.1554038128763;
        Sun, 31 Mar 2019 06:15:28 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id v6sm10085946pgv.92.2019.03.31.06.15.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 06:15:28 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/7] staging: rtlwifi: btcoexist: Compress two lines into one line
Date: Sun, 31 Mar 2019 18:44:50 +0530
Message-Id: <3ca9dc4466f2bccfa7da90ca4092679b1d34b9d6.1554037161.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554037161.git.payal.s.kshirsagar.98@gmail.com>

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


