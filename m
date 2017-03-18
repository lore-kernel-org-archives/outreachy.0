X-GM-THRID: 6395900241087823872
X-Received: by 10.46.92.73 with SMTP id q70mr1053902ljb.15.1489862095720;
        Sat, 18 Mar 2017 11:34:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.32.143 with SMTP id g137ls351183lfg.25.gmail; Sat, 18 Mar
 2017 11:34:55 -0700 (PDT)
X-Received: by 10.25.26.80 with SMTP id a77mr2533758lfa.18.1489862095254;
        Sat, 18 Mar 2017 11:34:55 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id x188si116052wmx.0.2017.03.18.11.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u108so13222304wrb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wtNhpbwvjlKu0Osvs8Y3HgTap2VuLFnfqETFWE7EILw=;
        b=X/HTNTmXaMehP8n3S9ZtK9svzaGqNmu2lzWLV6xu9Vndz62gvogSuuXrA3Q5hq/Z9+
         PnJqyzBpbWW0ngYNB8SC4u1Q0Ofttr9qsjWprk0R0EAVci3xKS9UDBLfK3b0CLAu3tM/
         U4AX7WWtL6Ix2GWX5OvJhS24Nx9Dcy/nXFV4ESWbkVhHB5FYqh8hRGGqTURCpZ6IQlob
         7uov3+X1GPngUOc1/oZvegkQZmWZmrkizi+JNKgq0Rr4yClJpVnPniTUwC9N7PpGWL0I
         ztw53av+tkiB1R7aNUF0zOgWIPXeHNP5r7zr4gserhGudqjfwaEKtc7JS+k7Fy6BS2T4
         awZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wtNhpbwvjlKu0Osvs8Y3HgTap2VuLFnfqETFWE7EILw=;
        b=qbKlz950mdymuG0l/zrN2gCgcnsvIr2R5pG1BE/Ldx9/eaShB1nfAzNdD85kSpwo42
         mXVrzd4M5ajRzkrbr1yZ2tlWpOSHwLHaDQlltG5rI+1kFCf/lDvGs+zmJ6URUJPZZyd3
         7zt/pOygxSXiRkGx6rpFr1PWnE5fn72AhAKZ4VIij/aY5zZ2qNfqDwiAoHJw5UoZL32S
         q2DsNkbEAYcVlWhiBGZ1nVovLxHbLNkaMk6ML4WrYF6RkxRfCqwV4FAfwHYAn9H9WBuO
         LGQpFIq2RqYjvjvWrt6AJk/hSlGl053WC6p43OFEjM7ZXzb6eIxHlqrgYHtjUD6M6YlG
         rm2w==
X-Gm-Message-State: AFeK/H09AvfrHT1c/R9MekCPX/UY6qSxQ93w1UJye8aogRlTuCeKqX56gueuICk4nnlrCA==
X-Received: by 10.223.151.5 with SMTP id r5mr20018341wrb.97.1489862095062;
        Sat, 18 Mar 2017 11:34:55 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id m188sm7096137wma.27.2017.03.18.11.34.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:34:54 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 1/4] staging: rtl8712: Invert if statements to reduce indentation level
Date: Sat, 18 Mar 2017 20:34:49 +0200
Message-Id: <142c1948c43a8c97cfd691e881f9f360d7600e34.1489861352.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489861352.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1489861352.git.narcisaanamaria12@gmail.com>

Invert if statements to be able to return immediately in case of error,
and to avoid additional else branch, and then continue with the rest
of the function without excessive indentation.

This was found using the following Coccinelle script:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
S
else { return -E; }

@disable neg_if@
expression e,E;
statement S;
identifier l;
@@

*if (e)
S
else { rc = -E; goto l;  }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 39 ++++++++++++---------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 0322795..60c97f7 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -378,13 +378,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	if (param_len != (u32)((u8 *) param->u.crypt.key - (u8 *)param) +
 			 param->u.crypt.key_len)
 		return -EINVAL;
-	if (is_broadcast_ether_addr(param->sta_addr)) {
-		if (param->u.crypt.idx >= WEP_KEYS) {
-			/* for large key indices, set the default (0) */
-			param->u.crypt.idx = 0;
-		}
-	} else {
+	if (!is_broadcast_ether_addr(param->sta_addr))
 		return -EINVAL;
+
+	if (param->u.crypt.idx >= WEP_KEYS) {
+		/* for large key indices, set the default (0) */
+		param->u.crypt.idx = 0;
 	}
 	if (strcmp(param->u.crypt.alg, "WEP") == 0) {
 		netdev_info(dev, "r8712u: %s: crypt.alg = WEP\n", __func__);
@@ -396,23 +395,19 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		wep_key_len = param->u.crypt.key_len;
 		if (wep_key_idx >= WEP_KEYS)
 			wep_key_idx = 0;
-		if (wep_key_len > 0) {
-			wep_key_len = wep_key_len <= 5 ? 5 : 13;
-			pwep = kzalloc(sizeof(*pwep), GFP_ATOMIC);
-			if (!pwep)
-				return -ENOMEM;
-			pwep->KeyLength = wep_key_len;
-			pwep->Length = wep_key_len +
-				 FIELD_OFFSET(struct NDIS_802_11_WEP,
-				 KeyMaterial);
-			if (wep_key_len == 13) {
-				padapter->securitypriv.PrivacyAlgrthm =
-					 _WEP104_;
-				padapter->securitypriv.XGrpPrivacy =
-					 _WEP104_;
-			}
-		} else {
+		if (wep_key_len <= 0)
 			return -EINVAL;
+
+		wep_key_len = wep_key_len <= 5 ? 5 : 13;
+		pwep = kzalloc(sizeof(*pwep), GFP_ATOMIC);
+		if (!pwep)
+			return -ENOMEM;
+		pwep->KeyLength = wep_key_len;
+		pwep->Length = wep_key_len +
+			FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
+		if (wep_key_len == 13) {
+			padapter->securitypriv.PrivacyAlgrthm = _WEP104_;
+			padapter->securitypriv.XGrpPrivacy = _WEP104_;
 		}
 		pwep->KeyIndex = wep_key_idx;
 		pwep->KeyIndex |= 0x80000000;
-- 
1.9.1


