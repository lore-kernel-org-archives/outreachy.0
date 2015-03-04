X-GM-THRID: 6557663232000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7a08b91082310616
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.23.226 with SMTP id v62mr4087364yhv.25.1425469566053;
        Wed, 04 Mar 2015 03:46:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.162 with SMTP id rx2ls218986obb.60.gmail; Wed, 04 Mar
 2015 03:46:05 -0800 (PST)
X-Received: by 10.182.224.169 with SMTP id rd9mr3933369obc.41.1425469565882;
        Wed, 04 Mar 2015 03:46:05 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id hs7si483470pad.1.2015.03.04.03.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:46:05 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so8941631pad.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WE8SQcJfHXEkoL9+TK5WbxJICW1/TaZfVLCo++iD8xI=;
        b=t4RdaqtodLN54yPZs8Gf7aayJtUgGc2JNISTQ2hgqAQ7traSKr1quLJ+kL53yf8dOa
         OFlA/Q5R4XKPuYoz6irGgk/vqr79ffDYCpO86iUing8WEk80HIZEyvemtsAxTz3yzFCL
         khnHyndcZUzOch86pfLz1ycjcRv6z7ro+KqCfTffchktdSdDRnWXkzf2lJUTbeOQ9fZK
         Wr/mh05vwaVp/r94zLHf7Cdz9DOOIzLyAVUM1ofwOnCT5ipCCvWUIsqVAKYHDjowyc56
         MMLpc7AABvICcGfCyBHgp+R8oqafwUpNpkoYy51R8rkxk2I64OVyNBeJcO4tb5HZQqDO
         zYLA==
X-Received: by 10.66.246.107 with SMTP id xv11mr5940800pac.79.1425469565765;
        Wed, 04 Mar 2015 03:46:05 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.46.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:46:05 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 5/6] Staging: rtl8188eu: Remove redundant local variable
Date: Wed,  4 Mar 2015 17:14:01 +0530
Message-Id: <1425469442-32412-6-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch removes a redundant variable "val" and adds
inline return statements. It also adds a default case
to the switch statement which returns 0 to keep the logic
intact.

This issue is identified by the following coccinelle script.
@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 41 +++++++++-----------------
 1 file changed, 14 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index d5ebd52..9939448 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -136,47 +136,34 @@ u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen
 
 static unsigned char ratetbl_val_2wifirate(unsigned char rate)
 {
-	unsigned char val = 0;
-
 	switch (rate & 0x7f) {
 	case 0:
-		val = IEEE80211_CCK_RATE_1MB;
-		break;
+		return IEEE80211_CCK_RATE_1MB;
 	case 1:
-		val = IEEE80211_CCK_RATE_2MB;
-		break;
+		return IEEE80211_CCK_RATE_2MB;
 	case 2:
-		val = IEEE80211_CCK_RATE_5MB;
-		break;
+		return IEEE80211_CCK_RATE_5MB;
 	case 3:
-		val = IEEE80211_CCK_RATE_11MB;
-		break;
+		return IEEE80211_CCK_RATE_11MB;
 	case 4:
-		val = IEEE80211_OFDM_RATE_6MB;
-		break;
+		return IEEE80211_OFDM_RATE_6MB;
 	case 5:
-		val = IEEE80211_OFDM_RATE_9MB;
-		break;
+		return IEEE80211_OFDM_RATE_9MB;
 	case 6:
-		val = IEEE80211_OFDM_RATE_12MB;
-		break;
+		return IEEE80211_OFDM_RATE_12MB;
 	case 7:
-		val = IEEE80211_OFDM_RATE_18MB;
-		break;
+		return IEEE80211_OFDM_RATE_18MB;
 	case 8:
-		val = IEEE80211_OFDM_RATE_24MB;
-		break;
+		return IEEE80211_OFDM_RATE_24MB;
 	case 9:
-		val = IEEE80211_OFDM_RATE_36MB;
-		break;
+		return IEEE80211_OFDM_RATE_36MB;
 	case 10:
-		val = IEEE80211_OFDM_RATE_48MB;
-		break;
+		return IEEE80211_OFDM_RATE_48MB;
 	case 11:
-		val = IEEE80211_OFDM_RATE_54MB;
-		break;
+		return IEEE80211_OFDM_RATE_54MB;
+	default:
+		return 0;
 	}
-	return val;
 }
 
 static int is_basicrate(struct adapter *padapter, unsigned char rate)
-- 
1.9.1


