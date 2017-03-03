X-GM-THRID: 6393347982886961152
X-Received: by 10.99.177.78 with SMTP id g14mr1555233pgp.67.1488567333617;
        Fri, 03 Mar 2017 10:55:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls8738368oth.13.gmail; Fri, 03 Mar
 2017 10:55:33 -0800 (PST)
X-Received: by 10.200.0.140 with SMTP id c12mr1233255qtg.1.1488567333273;
        Fri, 03 Mar 2017 10:55:33 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si206125pfz.1.2017.03.03.10.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x66so10571636pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XbIBKXcvf55fspexVin9OBLwyn2PGE/yFr+Zo6khgEw=;
        b=PoF7tAJdlP4Zb0HapiTXb1z9Xgc9slg00imhXS6Bv2swqGsB+qc3yGc/WIwQdCvg4S
         6feuOrGF+8vRCC1T6cGBlCqv11avWcwN1lDnsx/hM8YX9up1qfOyOEnHEa+uoBF3LR//
         CoIvBaaf5zQCefm95jPeFB1yBt+ro4MeXa0raWIf3jTDJUjovuEkFEbx+FcGcarWgjwQ
         PJ7JMKaf105pa6/rquDueOPhiedufcoQ66JUzzXDDrbXnr1n5uGIT/hnlWHmwMtXg5Zb
         TppxyuOJw9hx24wxPcZ+eLwg2CpIFbb7MZmgXOEjE8psM/f09/gkLet078JHZgKxq3S5
         uxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XbIBKXcvf55fspexVin9OBLwyn2PGE/yFr+Zo6khgEw=;
        b=NL6uOooddzDMFYooOPq9DQKIz5cynt+YvIwheDq1C1fO9Z7rj7oTtujndQSY0d8fBo
         dKXOD2Es3G7CdcsG0vLvFcAwGeAbMWxwQX284WPLCiDU7TtXnAKWQ0bA4lTDa6IDWXxr
         IalI1gEFdvpFvWO5AaV015EU48X8k076d7+9WZ2vijYBwJyFxg08F2p+KF7huXBb7PNy
         SQoQPNIJNJ/JIwwwoEDn33zxKd+UuseWFI1CWAwla6r6z86ydOsVkpHZY6n+mmLODSAy
         MPPco6gPxz/7nwfAyOWFZaCYqdoWLouhkt02xv6PyYCSOI5xZZP0XErEGgLNGEoIoUiG
         acng==
X-Gm-Message-State: AMke39nWN22lcobHlu+hbqE4Zw4kVUYL3YHRRBxLbpwpponIrxdjU2QLv8wMle48/ZB/UA==
X-Received: by 10.99.45.2 with SMTP id t2mr5224249pgt.209.1488567332996;
        Fri, 03 Mar 2017 10:55:32 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id j62sm24927351pgc.54.2017.03.03.10.55.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 10:55:32 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8192e: Clean up tests if NULL returned on failure
Date: Sat,  4 Mar 2017 00:25:19 +0530
Message-Id: <1488567319-25989-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>
References: <1488567319-25989-1-git-send-email-singhalsimran0@gmail.com>

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
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_wep.c  | 2 +-
 drivers/staging/rtl8192e/rtllib_softmac.c    | 2 +-
 drivers/staging/rtl8192e/rtllib_wx.c         | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf0..ed2e06f 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -63,7 +63,7 @@ static void *rtllib_ccmp_init(int key_idx)
 	struct rtllib_ccmp_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
index ae103b0..580b57a 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_tkip.c
@@ -63,7 +63,7 @@ static void *rtllib_tkip_init(int key_idx)
 	struct rtllib_tkip_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 	priv->tx_tfm_arc4 = crypto_alloc_skcipher("ecb(arc4)", 0,
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_wep.c b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
index b3343a5..f5a1bc5 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_wep.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
@@ -37,7 +37,7 @@ static void *prism2_wep_init(int keyidx)
 	struct prism2_wep_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = keyidx;
 
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index eeda17d..4bdc3ba 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -3328,7 +3328,7 @@ static int rtllib_wpa_set_encryption(struct rtllib_device *ieee,
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index b1500ee..9f3824a 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -373,7 +373,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		/* take WEP into use */
 		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
 				    GFP_KERNEL);
-		if (new_crypt == NULL)
+		if (!new_crypt)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
 		if (!new_crypt->ops) {
@@ -618,7 +618,7 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 		lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);
 
 		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
-		if (new_crypt == NULL) {
+		if (!new_crypt) {
 			ret = -ENOMEM;
 			goto done;
 		}
-- 
2.7.4


