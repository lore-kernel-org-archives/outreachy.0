X-GM-THRID: 6395900241087823872
X-Received: by 10.46.80.18 with SMTP id e18mr4319725ljb.10.1490136771417;
        Tue, 21 Mar 2017 15:52:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls42149ljt.24.gmail; Tue, 21 Mar 2017
 15:52:50 -0700 (PDT)
X-Received: by 10.46.69.133 with SMTP id s127mr2281036lja.17.1490136770811;
        Tue, 21 Mar 2017 15:52:50 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id n128si1175708wmf.2.2017.03.21.15.52.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so5734402wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wtNhpbwvjlKu0Osvs8Y3HgTap2VuLFnfqETFWE7EILw=;
        b=OzrkXfkFtKUEKW/S/71U4H4xm2jVu83zZeScxMqHVtl1slG9DqCtWTPeOh1nEKpFbt
         qivM6isPx2oTEbypV4m+Gxy8WnD4axjWpdy+Zk+jL5VdAWoIhMv4YztpIaSePC221sg7
         JBGSQppA9ESDxIGABwJelnwiJ8QZ01xEPur+bBosI1uN/9mkUqNiE0ufuVYt6klb2zXp
         XIF3grUBsW+1AMSnBnnZE4oe8Nh1DeVxL9/J6N2hINSLFEL3MGUN3HPsSpq2ysxIto30
         OOD7pP0WW9uE/XG1eY8cuSLCHeOFhbGvDdPPzr8vfS2eyGJbU/zlWosnSGgeQq/+LqqM
         aaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wtNhpbwvjlKu0Osvs8Y3HgTap2VuLFnfqETFWE7EILw=;
        b=bMlQcZjGVAfoUYoLaqLFBADNvsZzQ4qyDd+rRQ5pAngDNCg87usl4E1DPHMTaG7K0i
         JyA93fckTYJ5Fwx0Y8HBUuXLoLJYFlP3MIbZ7AVzGBreUXROnnoZq8xOecqT4Qrhmxu6
         yMGlq8F+OUJ3DpKc9jqKSXDp06wNJr1oyH49h9l3Haj0VQpGSJ0hJtcXRCyOEztBlzND
         Rd7c36P5qjoB9nOfAgBCbSYJ3/Ju06pTCg6Ky2RrUG5mbAqhjKGL4P4ic2AJLuyk4fa7
         xEyThk777O1Pemg5e4yTm3P1GP5Ve8UbAqMXbNbD1hPBhVqz4dNrgMkHVj1EtCXvW/ua
         5uxw==
X-Gm-Message-State: AFeK/H3UJp6CMNOY4paE/zzY/YJjEd1xZpIG3tqcPWWjBkCe61iiEiSMlEGRRF3MIt6R8A==
X-Received: by 10.28.212.85 with SMTP id l82mr4734106wmg.45.1490136770584;
        Tue, 21 Mar 2017 15:52:50 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id p185sm19330291wme.20.2017.03.21.15.52.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 15:52:49 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 1/4] staging: rtl8712: Invert if statements to reduce indentation level
Date: Wed, 22 Mar 2017 00:52:40 +0200
Message-Id: <b99325e134f3e3aebf040ab618b93d29e53002aa.1490136448.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490136448.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1490136448.git.narcisaanamaria12@gmail.com>

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


