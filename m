X-GM-THRID: 6395900241087823872
X-Received: by 10.46.78.9 with SMTP id c9mr3283651ljb.20.1489161582344;
        Fri, 10 Mar 2017 07:59:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls1087889ljd.21.gmail; Fri, 10 Mar
 2017 07:59:41 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr3649777ljd.26.1489161581808;
        Fri, 10 Mar 2017 07:59:41 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p144si156842wme.2.2017.03.10.07.59.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:41 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so2977052wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=V8hGJkcwgXPD+JqtocanAFfH0LxAVXfN++wZ/5TdoxQ=;
        b=sWC15i9ky/3UDFZ/jgrT2v+LW2XqyntXtKeV0sUQdEGMK08VrCfcs9O3bkJrOZrwaF
         tCvwO/1YwehxYISJbazpXr952abM83xIUQjrWvkiVYQMGDM2m3/qlnZ0WOqYYKiLctou
         CDdBT8c0y74dDgUFIhJaBNcKcdJ70pC6cXZT/s0hukgqNSfojC/ihoE1d67/mji4t20S
         SpnUn1GrgSjIt9vt5goikEzB7YGRPnaqZBf1bpcT2b8WeGzjhmwE53APk2CyC2VeDIRd
         z5uvsSS+wcIAzPhYykVfo5/J4dgEhJojZCeuDrwjrIy2OHRx6Jrbo3l5viHGx19bV5kE
         xYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=V8hGJkcwgXPD+JqtocanAFfH0LxAVXfN++wZ/5TdoxQ=;
        b=R22lk/OirW72CMqOfHBAkUczjxgrVe89VMC5U8Joxvg7F3NT/m24dcam2DSVAIqzOv
         vAGTvpgWFI9oPMtNBqIV6ADJI5BaqxRfzXauOlms4IVkQhJxnh55RVjCiR9pO1GDaPPm
         nZR0GSj79YQzCG9HiQ9/88fxXKMQQY4fBDQsWSj+IoGOeNV6VTmTPOE/swy7tvT8oX2/
         sCOq1dEraYaGv7ouw9yoA4aszLv2C+ef5RGCOmp+ZIsVa5MVSwlj7ttjbDFUKNV3yuxY
         v3Sv9CDLtt3ts8GR4szyySwtFuIlVdXjVJvYgwbyoI9K19Y5xHrhdy49CePLV4LUlqJR
         0u5g==
X-Gm-Message-State: AFeK/H2cXQC0+LihBW3kXnuVcjeXefWoTQqvSxR6R225F5hWt+Tb8+l6D9COZtBTg9cN3g==
X-Received: by 10.28.218.71 with SMTP id r68mr3278120wmg.59.1489161581577;
        Fri, 10 Mar 2017 07:59:41 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id x193sm3889924wme.23.2017.03.10.07.59.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:59:41 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/4] staging: rtl8712: Refactor conditionals in wpa_set_encryption
Date: Fri, 10 Mar 2017 17:59:33 +0200
Message-Id: <9f0c0614b6cc60771b82e96cd3973b4eca2c0acb.1489161001.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

Reduce the indentation level in wpa_set_encryption.
This was done using the following Cocinelle script:

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
else { rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 42 +++++++++++++--------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 0322795..aff3628 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -378,14 +378,14 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
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
+
 	if (strcmp(param->u.crypt.alg, "WEP") == 0) {
 		netdev_info(dev, "r8712u: %s: crypt.alg = WEP\n", __func__);
 		padapter->securitypriv.ndisencryptstatus =
@@ -396,24 +396,22 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
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
+			 FIELD_OFFSET(struct NDIS_802_11_WEP,
+			 KeyMaterial);
+		if (wep_key_len == 13) {
+			padapter->securitypriv.PrivacyAlgrthm = _WEP104_;
+			padapter->securitypriv.XGrpPrivacy = _WEP104_;
 		}
+
 		pwep->KeyIndex = wep_key_idx;
 		pwep->KeyIndex |= 0x80000000;
 		memcpy(pwep->KeyMaterial, param->u.crypt.key, pwep->KeyLength);
-- 
1.9.1


