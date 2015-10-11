X-GM-THRID: 6203986156822986752
X-Received: by 10.182.250.233 with SMTP id zf9mr18627006obc.7.1444540307243;
        Sat, 10 Oct 2015 22:11:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.138 with SMTP id 10ls94715iol.10.gmail; Sat, 10 Oct
 2015 22:11:47 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr17648049pac.43.1444540307034;
        Sat, 10 Oct 2015 22:11:47 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si997579pac.2.2015.10.10.22.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 22:11:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy16so123632735pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 22:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=b5ZKnjU3UYfA63pOnbHUMdpWhwSK4taPvfHqmGrZpTU=;
        b=Frr05P/ZloowCrZE2dw7IbHwi/twwdpDYVnZXqd2xJxl8WoBgqpqJ+ClzgqKIuXUf+
         MZlCigrDbZoYJzOjqukQ09+1GxPBeO2PMg1+97hcbXJMDlvvZojrjSr1aGyXQwVjMubd
         AvNjqYkn+6Lp8ZmiHP66yPp0hwBQShOgyiMDzk4XuBq06Q6UCOrON/P7sH9KzYy5DVd+
         dstn+yljRUjNkIfOGcxDR5GY2JjlTy5HQibZp/b7fmOIqEOFJ58TsM+i9wSAdHZQKUtT
         mhJM0HQf1SCK+n7wm0jm9R5CkQxLosMEp5S6DO6Jy+ayfz4wvg+SydWnxLq7JgVwgb05
         BBBg==
X-Received: by 10.66.190.6 with SMTP id gm6mr26191116pac.27.1444540306947;
        Sat, 10 Oct 2015 22:11:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id k10sm10940309pbq.78.2015.10.10.22.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 22:11:45 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 2/3] Staging: rtl8192u: ieee80211: ieee80211_wx: Remove commented printk messages
Date: Sun, 11 Oct 2015 10:41:22 +0530
Message-Id: <1444540283-9605-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5619EF90.011C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented out printk messages since they are not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v4-
 No change
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


