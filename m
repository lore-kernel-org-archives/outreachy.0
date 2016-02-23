X-GM-THRID: 6254513741412433920
X-Received: by 10.140.153.23 with SMTP id 23mr5261392qhz.18.1456242480723;
        Tue, 23 Feb 2016 07:48:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.234 with SMTP id d103ls1265180ioj.74.gmail; Tue, 23
 Feb 2016 07:48:00 -0800 (PST)
X-Received: by 10.66.148.69 with SMTP id tq5mr32804946pab.28.1456242480354;
        Tue, 23 Feb 2016 07:48:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 12si3875724pfb.1.2016.02.23.07.48.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:48:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id x65so114188955pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dzGUnwQPRDfccwEFMucmVA4DkDZU+UQMveZB2RrxftE=;
        b=hWYMOOGU0wFnW2zTnRTu6amyQ7zAw91xD5X3pmR3i8hunRc12SduUyhgup07XM+hT2
         CNq6+Dl8PAEPN7JAZfBtKmO3h8LIILqXEGOgyTHy6k58M4xXspdbeZqsSjvm/Lr/e/Vd
         MD5H70H3pu3XW6fDaP0uaoMVNHemlsP9KKNuHWDXNYHJEsQqH7cdKfomzFmTUzTlxV26
         hn4xEPV5VE3/WFrQTm4rmD7Tny1/Xc4T+aCq6h3r6dkangxM1QDroX86wE/YBN3CUVgI
         kXp8NiSkT/l5pEfubyQaijLgQwqhpklOvvVXBqApBUOWMmvLzwGhInvb477ukZXL7DnT
         31SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dzGUnwQPRDfccwEFMucmVA4DkDZU+UQMveZB2RrxftE=;
        b=lrqNpmY+IPhnx592B0hcERkN+MMt/snYhDBiJgHeXspWbGM2dMYu8H672lpybOtbtL
         Xubj7gnU6DO36fb2MblcYGyVbULb2qxU2TYrZYrZJGkUl/6tbzdOgonjvoCmlyZSd3cT
         +D+cbecqDDabKb5NvG+XE5jkbtus/+oPzkJIcVhdKY+NSu5rTscy300VGQZ08wcMLzHV
         Ro9C9I1JrHSL5TJSxsfWNomUingc6z1wKGjDv7zGqIxNT5DjxJ3eQta7/v40eBsSpDvM
         tLIsMWz3WS72Zo/DBJvqGd9pQf66egwIB8YbQ7Y9a/8USJYSx+5PP6L2oBD4VQjkRe0O
         fGNA==
X-Gm-Message-State: AG10YOTvA36BB6vOM1hKmv8d3aconq6VYUPvJGm8KTDrce5QSsoXD+Lqlkso79jrG2Z/Lw==
X-Received: by 10.98.13.154 with SMTP id 26mr47163395pfn.164.1456242480255;
        Tue, 23 Feb 2016 07:48:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id i23sm45072288pfj.68.2016.02.23.07.47.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:47:59 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:17:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 1/5] Staging: rtl8723au: Use min macro instead of ternary operator
Date: Tue, 23 Feb 2016 21:17:16 +0530
Message-Id: <2336030a2f8fc10b2738a90a69686e56452b3e48.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.

 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 6868392..cf0daa1 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -542,7 +542,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min(16, key_len)));
 
 				/* set mic key */
 				memcpy(psecuritypriv->
@@ -564,7 +564,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min(16, key_len)));
 			} else {
 				DBG_8723A("%s, set group_key, none\n",
 					  __func__);
@@ -602,7 +602,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 		if (set_tx == 1) {
 			/* pairwise key */
 			memcpy(psta->dot118021x_UncstKey.skey,
-			       keyparms->key, (key_len > 16 ? 16 : key_len));
+			       keyparms->key, (min(16, key_len)));
 
 			if (keyparms->cipher == WLAN_CIPHER_SUITE_WEP40 ||
 			    keyparms->cipher == WLAN_CIPHER_SUITE_WEP104) {
@@ -660,7 +660,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min(16, key_len)));
 
 				/* set mic key */
 				memcpy(psecuritypriv->
@@ -678,7 +678,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min(16, key_len)));
 			} else {
 				psecuritypriv->dot118021XGrpPrivacy = 0;
 			}
@@ -788,7 +788,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, u8 key_index,
 
 					memcpy(psta->dot118021x_UncstKey.skey,
 					       keyparms->key,
-					       (key_len > 16 ? 16 : key_len));
+					       (min(16, key_len)));
 
 					if (keyparms->cipher ==
 					    WLAN_CIPHER_SUITE_TKIP) {
@@ -811,7 +811,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, u8 key_index,
 					memcpy(padapter->securitypriv.
 					       dot118021XGrpKey[key_index].skey,
 					       keyparms->key,
-					       (key_len > 16 ? 16 : key_len));
+					       (min(16, key_len)));
 					memcpy(padapter->securitypriv.
 					       dot118021XGrptxmickey[key_index].
 					       skey, &keyparms->key[16], 8);
-- 
1.9.1


