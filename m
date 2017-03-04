X-GM-THRID: 6393685966647721984
X-Received: by 10.157.43.121 with SMTP id f54mr3353551otd.134.1488646022950;
        Sat, 04 Mar 2017 08:47:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.140 with SMTP id s12ls3606705ioi.15.gmail; Sat, 04 Mar
 2017 08:47:02 -0800 (PST)
X-Received: by 10.99.111.143 with SMTP id k137mr3594056pgc.1.1488646022175;
        Sat, 04 Mar 2017 08:47:02 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si578718pfk.0.2017.03.04.08.47.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:47:02 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so12928702pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=X+IsuvJhaHexNoimZ1lIa5ndZ/YN4613JrJfshrOZ/o=;
        b=jPYGmfTByMLkVB6pqupFqpwLZIwtKwG7vNAfMx+C3vIprgHoREHIwM1ftBqFBDSA3t
         YJpGS5fWKWSEycMR+Lza4zv6HoM0EVPNDGtqdvHwj9LZFSvjg8JXN8vlZTiX098ShHxH
         gFIRVIATt+ag1F3SWaqGwPJQObn0+3sj3LIAuyHb9Ty7e6qLvC5hojKc2nCt9D8rMs5/
         fKXEH9ul+ENovKtcdD3/dvIT3IvrhXXVhAXk0rGULHnFzTFXRetLFUOkcG1+T1XEEJHB
         Wghhoo8/E1Br6uz35ZSyWgfNQ6uYhgYBJEzFZ89V12BCbQDX1KvIHrAQWZs4mXcarGvo
         ekSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=X+IsuvJhaHexNoimZ1lIa5ndZ/YN4613JrJfshrOZ/o=;
        b=Nb3+1opiopvw+MSdIbOXgQqxOYFvgixejSRmbOk1Olvaje3eQ1aAy6zycEXeA+i/KV
         GnzJBQVBXsR92cu3OLDWUC3/vvXwKMO/CU+k/BYX5pKndqcmzJ72gKMTvdNnunW4iDP4
         ickQV76doe5AYmC1eMftcPCX+UmLzP5lgOi92aKiJAHVPwlk6izkMkgRncxTqyBJ18u/
         FLWkrKQLoG2sxbHa+G/5WnVCYOoNWzUU2Z7G78n4AVdTaH4YCBR6fQrey2nyUXPExYsu
         ll8OPyRY32ESUMFFtjSMKdzjkoyOTnJHX5bORt/zhAa6HkJ/bYkuCvC5rAJGwxNVoFuq
         4O7w==
X-Gm-Message-State: AMke39mZ/QRk1/wtHRbhXBmRUlgZjMMXMLMGOq0r2h/eHz33L2/a+HbYF+FRs5j6/C/ELg==
X-Received: by 10.99.177.6 with SMTP id r6mr10032726pgf.61.1488646021964;
        Sat, 04 Mar 2017 08:47:01 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m136sm30382756pga.22.2017.03.04.08.47.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:47:00 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org,
	linux-rpi-kernel@lists.infradead.org,
	outreachy-kernel@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] staging: rtl8192u: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 22:16:53 +0530
Message-Id: <1488646015-7059-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
References: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c  | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c    | 2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c         | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
index 713f1d6..df94021 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c
@@ -67,7 +67,7 @@ static void *ieee80211_tkip_init(int key_idx)
 	struct ieee80211_tkip_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
index 0e8c876..7ba4b07 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
@@ -42,7 +42,7 @@ static void *prism2_wep_init(int keyidx)
 	struct prism2_wep_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		return NULL;
 	priv->key_idx = keyidx;
 
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 1bff0e9..4adab30 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -3025,7 +3025,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index 2481c21..c925e53 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -362,7 +362,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
 		/* take WEP into use */
 		new_crypt = kzalloc(sizeof(struct ieee80211_crypt_data),
 				    GFP_KERNEL);
-		if (new_crypt == NULL)
+		if (!new_crypt)
 			return -ENOMEM;
 		new_crypt->ops = ieee80211_get_crypto_ops("WEP");
 		if (!new_crypt->ops) {
@@ -610,7 +610,7 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
-- 
2.7.4


