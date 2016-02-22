X-GM-THRID: 6254064858167246848
X-Received: by 10.50.23.113 with SMTP id l17mr6585488igf.13.1456137984833;
        Mon, 22 Feb 2016 02:46:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.157 with SMTP id 29ls218959iop.77.gmail; Mon, 22 Feb
 2016 02:46:24 -0800 (PST)
X-Received: by 10.66.218.8 with SMTP id pc8mr22939024pac.45.1456137984490;
        Mon, 22 Feb 2016 02:46:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id u66si3395933pfa.2.2016.02.22.02.46.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:46:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so90867243pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Kv2YOwE8V5BeRi+zBKDimBGgA2HVX6rZdKx6nlJ57uM=;
        b=iOjUUel7hYPECqIgpnHihYXSyfdZfVKuZhq3Mfr1Ehtzhdu+FeTbWDvhx3hzthMipq
         0NW766ZaJZdw1HIDAnqQZ5esvv66t4pFw/JpFPwbPVLcR5Xm2HzlSbajvkg/EJyJaM6n
         ZqLyXwltWWMOSIA9ntRNNgm8UXeu3w/Uhc1W3yt+5QOsWs7RD8YsS2fk2RWAZw4CrW3b
         vceFWbfU8Y1o1Q3P8ydXH6VvXKZhUuaf0u7TkTHqcqR1dwkpUDD3nhW/TC4AzPwUrj/1
         Hxku7Zxcw2x8rdG/j4i1TVWFDpFtZRwi8OfBIgPW5rJI+4hb0gXXPdkCZdUlFZPwrTOU
         IaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Kv2YOwE8V5BeRi+zBKDimBGgA2HVX6rZdKx6nlJ57uM=;
        b=XeSHuMzWiTVkntuwVJOmY4aU0tWSNvI3FB3E5VpCz+HPe3HgVmrMSHNJ/WN/OVaWWn
         ThY2/AsrWTok/xCdIGwt+3uLro7M1Lv9M5fF6UnTe0bweHo52BFslwxFERVE9xc+tBJ0
         rnBZLvlHhb2F5qbeczczIlcos97yAphtuWu6onHXRKG1hsNFPYPYxHTwdppMRJ7iwBdn
         ExTdd80Guu+rWUWsVJ+jV8lIbzXnv+FBD8zO8PNkPtyYZTaFGCGG546juJdN7e8pzD9m
         pjjlbwq8312PUO5jtUITExQlQcYNPnUNZiDbEtTXD0y0i1gVjcSn1u+fFX+qp5j3hswE
         HDUg==
X-Gm-Message-State: AG10YORT9Fc76OJkSuAr/En804gPsjW5Jmx11Du7RKOzYON9RWP+EYv5OStTl1fFDmUuFA==
X-Received: by 10.98.14.149 with SMTP id 21mr36999106pfo.79.1456137984395;
        Mon, 22 Feb 2016 02:46:24 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id x1sm35865932pfi.42.2016.02.22.02.45.53
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:46:23 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:15:47 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>,
	Bhumika Goyal <bhumirks@gmai.com>
Subject: [PATCH 1/5] Staging: rtl8723au: Use macro min_t instead of ternary operator
Date: Mon, 22 Feb 2016 16:15:30 +0530
Message-Id: <d69d79346b49def1a6cbfdef7fde95ca31f13bf0.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min_t as it shorter and
thus increases code readability. Macro min_t return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmai.com>
---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 6868392..c9baeef 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -542,7 +542,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min_t(int, 16, key_len)));
 
 				/* set mic key */
 				memcpy(psecuritypriv->
@@ -564,7 +564,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min_t(int, 16, key_len)));
 			} else {
 				DBG_8723A("%s, set group_key, none\n",
 					  __func__);
@@ -602,7 +602,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 		if (set_tx == 1) {
 			/* pairwise key */
 			memcpy(psta->dot118021x_UncstKey.skey,
-			       keyparms->key, (key_len > 16 ? 16 : key_len));
+			       keyparms->key, (min_t(int, 16, key_len)));
 
 			if (keyparms->cipher == WLAN_CIPHER_SUITE_WEP40 ||
 			    keyparms->cipher == WLAN_CIPHER_SUITE_WEP104) {
@@ -660,7 +660,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min_t(int, 16, key_len)));
 
 				/* set mic key */
 				memcpy(psecuritypriv->
@@ -678,7 +678,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, u8 key_index,
 				memcpy(psecuritypriv->
 				       dot118021XGrpKey[key_index].skey,
 				       keyparms->key,
-				       (key_len > 16 ? 16 : key_len));
+				       (min_t(int, 16, key_len)));
 			} else {
 				psecuritypriv->dot118021XGrpPrivacy = 0;
 			}
@@ -788,7 +788,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, u8 key_index,
 
 					memcpy(psta->dot118021x_UncstKey.skey,
 					       keyparms->key,
-					       (key_len > 16 ? 16 : key_len));
+					       (min_t(int, 16, key_len)));
 
 					if (keyparms->cipher ==
 					    WLAN_CIPHER_SUITE_TKIP) {
@@ -811,7 +811,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, u8 key_index,
 					memcpy(padapter->securitypriv.
 					       dot118021XGrpKey[key_index].skey,
 					       keyparms->key,
-					       (key_len > 16 ? 16 : key_len));
+					       (min_t(int, 16, key_len)));
 					memcpy(padapter->securitypriv.
 					       dot118021XGrptxmickey[key_index].
 					       skey, &keyparms->key[16], 8);
-- 
1.9.1


