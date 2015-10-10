X-GM-THRID: 6203986156822986752
X-Received: by 10.182.196.71 with SMTP id ik7mr16592679obc.36.1444495745323;
        Sat, 10 Oct 2015 09:49:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.148 with SMTP id x20ls1849514qgx.34.gmail; Sat, 10 Oct
 2015 09:49:04 -0700 (PDT)
X-Received: by 10.31.7.70 with SMTP id 67mr16244724vkh.2.1444495744775;
        Sat, 10 Oct 2015 09:49:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id w5si768429pbt.1.2015.10.10.09.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 09:49:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id lk4so115004981pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 09:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=MeoRUtdhhs34+ei1yxQCo6/y52hIuYUYAsC9nn4FlhQ=;
        b=oZ/QbtaMmVclW5NZ6QMqjHEOsCZezPQvZhbpFF7yMOTCKfE7ZLYZrbyi90HH6yv5iq
         0L4bp8Vbb32MwiN46yG1JWhmoXkJ0ggLSrtfZi7RgicRnqEwCKrBGPizc+Wd9i/DgYkI
         Ha9vTvexqhKagVuJ6nHhvW5z00i8mihHaylozUmHJ+g/F6lPaLiPMoKkPTnY7IvfArF9
         qChKqYLszQFeB9aGse6SuXIxQiqH7TXG4XVhvoX1ODYfWbnMGmkmGyw835V+zegfz7XA
         z1hOqqID5Q3KomvB0WATy2MKkJMJvUisUCnH/w93a8gSJjkVT5rnJSMqPQoVO3RWOY+K
         oBQg==
X-Received: by 10.66.236.129 with SMTP id uu1mr23474446pac.34.1444495744630;
        Sat, 10 Oct 2015 09:49:04 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id kv9sm9127996pab.39.2015.10.10.09.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 09:49:04 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/3] Staging: rtl8192u: ieee80211: ieee80211_wx: Remove commented printk messages
Date: Sat, 10 Oct 2015 22:18:47 +0530
Message-Id: <1444495728-9945-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com>
References: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5619417E.001E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented out printk messages since they are not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change
Changes in v2-
 Fixed subject line. 

 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
index ae1b3cf..208be5f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
@@ -522,7 +522,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 	struct ieee80211_security sec = {
 		.flags = 0,
 	};
-	//printk("======>encoding flag:%x,ext flag:%x, ext alg:%d\n", encoding->flags,ext->ext_flags, ext->alg);
 	idx = encoding->flags & IW_ENCODE_INDEX;
 	if (idx) {
 		if (idx < 1 || idx > WEP_KEYS)
@@ -538,7 +537,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		group_key = 1;
 	} else {
 		/* some Cisco APs use idx>0 for unicast in dynamic WEP */
-		//printk("not group key, flags:%x, ext->alg:%d\n", ext->ext_flags, ext->alg);
 		if (idx != 0 && ext->alg != IW_ENCODE_ALG_WEP)
 			return -EINVAL;
 		if (ieee->iw_mode == IW_MODE_INFRA)
@@ -567,7 +565,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 			sec.level = SEC_LEVEL_0;
 			sec.flags |= SEC_LEVEL;
 		}
-		//printk("disabled: flag:%x\n", encoding->flags);
 		goto done;
 	}
 
@@ -638,7 +635,6 @@ int ieee80211_wx_set_encode_ext(struct ieee80211_device *ieee,
 		goto done;
 	}
  //skip_host_crypt:
-	//printk("skip_host_crypt:ext_flags:%x\n", ext->ext_flags);
 	if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
 		ieee->tx_keyidx = idx;
 		sec.active_key = idx;
@@ -760,7 +756,6 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
 	switch (data->flags & IW_AUTH_INDEX) {
 	case IW_AUTH_WPA_VERSION:
 	     /*need to support wpa2 here*/
-		//printk("wpa version:%x\n", data->value);
 		break;
 	case IW_AUTH_CIPHER_PAIRWISE:
 	case IW_AUTH_CIPHER_GROUP:
@@ -791,16 +786,13 @@ int ieee80211_wx_set_auth(struct ieee80211_device *ieee,
 		else if(data->value & IW_AUTH_ALG_LEAP){
 			ieee->open_wep = 1;
 			ieee->auth_mode = 2;
-			//printk("hahahaa:LEAP\n");
 		}
 		else
 			return -EINVAL;
-		//printk("open_wep:%d\n", ieee->open_wep);
 		break;
 
 	case IW_AUTH_WPA_ENABLED:
 		ieee->wpa_enabled = (data->value)?1:0;
-		//printk("enalbe wpa:%d\n", ieee->wpa_enabled);
 		break;
 
 	case IW_AUTH_RX_UNENCRYPTED_EAPOL:
-- 
2.1.4


