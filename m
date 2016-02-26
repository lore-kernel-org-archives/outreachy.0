X-GM-THRID: 6254513741412433920
X-Received: by 10.107.184.195 with SMTP id i186mr6171672iof.24.1456481097352;
        Fri, 26 Feb 2016 02:04:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls1062918qge.15.gmail; Fri, 26 Feb
 2016 02:04:56 -0800 (PST)
X-Received: by 10.129.146.73 with SMTP id j70mr424080ywg.25.1456481096839;
        Fri, 26 Feb 2016 02:04:56 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id yd9si1780780pab.1.2016.02.26.02.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so4449818pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QU62xJ2rR3VsVAO3oX7AuGVMjALGtUEZHypuhxUnFsI=;
        b=OIAb+FP4VfgBRXRQy6+B8Q4AoSikcyGJ/ujJf5W59TY09nfeQmUJKCCwOVustn9eri
         t/0HcfP+BBmFCv0ABEFCy04C9eHSPp8F980eES3M5wEpCk+OEsdiCEaMgeT+Ba3kb7mx
         s1fRtVmtlxcEir567r8UFuQjJvnkuj/tIITvs8M3UuO4s7rVdRbwRJm89rtAcqVapBKe
         02G6IS75fPLvI2Mr3FZwwRmY40UhnZROcy4q5dvjdBcv+eQgqfWNwzUmd87bcHDJLo4c
         /xiW1Wf4rhk8KsNkbYEqXWi6ydZ2OpaQMfgFeQyRyNFqEPPMgeHU88d7DJdAW4Gjb7zZ
         Hl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QU62xJ2rR3VsVAO3oX7AuGVMjALGtUEZHypuhxUnFsI=;
        b=SBMabs2S+XJSb5MuQv05djU7+YRpbC4DuolHW0rsCIQugIfGY41NnVjT+h9osfwKRM
         2lp5x03at7i4MKWxGR0ElKZFazJpQNM2+C6UokLkOagL7N3rFwjH+gbSQGAbPW9u1QXr
         UdpOPUyCRYxmWlFDHW8UJOaZfRZ3eR6zlU/AZ4nmtB1SZR6Mhc9+/KcisLb4QVYLCIQX
         B93Uw5jQhxco18UVvO5eypKlEWSGlrczR0M7z0YO7QOcCQhlUOjsLIY1aqbevYSC9TMg
         +InsKSXBxnqV5Csk3jIMaHlEIDZf7QX3DxSjvkw+zGTx+uVhkxexuZC28OE05s2yh+dV
         MmRg==
X-Gm-Message-State: AD7BkJKASQvmEJw4FAuSOi8K/YpfPUD72eMJ87VRDqZ4aTdpw0V+4t5Z9c6pygo4imU53Q==
X-Received: by 10.98.9.219 with SMTP id 88mr907096pfj.0.1456481096652;
        Fri, 26 Feb 2016 02:04:56 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id dg1sm18157943pad.18.2016.02.26.02.04.51
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:04:56 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:34:46 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 1/5] Staging: rtl8723au: Use min macro instead of ternary operator
Date: Fri, 26 Feb 2016 15:34:30 +0530
Message-Id: <1456481074-9898-2-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
 <1456481074-9898-1-git-send-email-bhumirks@gmail.com>

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
Changes in v3:
* No change.
 
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


