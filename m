X-GM-THRID: 6528407961600
X-Received: by 10.50.87.97 with SMTP id w1mr20779917igz.1.1425458369650;
        Wed, 04 Mar 2015 00:39:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.219 with SMTP id f88ls489774ioj.60.gmail; Wed, 04 Mar
 2015 00:39:29 -0800 (PST)
X-Received: by 10.50.2.71 with SMTP id 7mr5676997igs.4.1425458369393;
        Wed, 04 Mar 2015 00:39:29 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id pc4si444467pac.0.2015.03.04.00.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 00:39:29 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so55732848pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 00:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yi6dC9xjaS6veInYZE/0IJZgl5p8hY6te+8RzYy/Dm4=;
        b=DSbHdTYLcnv385vnVXembu/FzfsrCvuhyeSSPNW3aiVkKbWQ29F2SUhvjp2BIKGmWv
         6moqoLed8c5vZBjWDPayJ7DQzFcYbnHiBkaJ3rbyxsO5qSOgnoT0mJvQ2P9SlJ2FYySN
         mt8lhRGrGpk5L9sZIeu4pQwoJvxcWVKu1/WScFhZlszpz7IXpZnk7K5Y1EnapWDyyAq+
         +np19PGWPfsBLFV4KdUg1WR8TBlfxR3dywID11nTZT24stbrICxMYIRTJ+EES7oKNwkP
         zRonbsUoHfOZY+v9/c2wPFTTfqTMpr6bdCdoJJ0LG9O5B59bCnUqQ6d1FsuvaT4BvURd
         sZxA==
X-Received: by 10.68.135.136 with SMTP id ps8mr5018146pbb.130.1425458369275;
        Wed, 04 Mar 2015 00:39:29 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id eb4sm3174792pbc.82.2015.03.04.00.39.24
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 00:39:28 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8188eu: Remove redundant local variable
Date: Wed,  4 Mar 2015 14:10:44 +0530
Message-Id: <1425458446-27117-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes a redundant variable "raid" and adds inline
return statements.

This issue is identified by the following coccinelle script:
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
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index a3ffc69..6917abf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -88,35 +88,25 @@ int cckratesonly_included(unsigned char *rate, int ratelen)
 
 unsigned char networktype_to_raid(unsigned char network_type)
 {
-	unsigned char raid;
-
 	switch (network_type) {
 	case WIRELESS_11B:
-		raid = RATR_INX_WIRELESS_B;
-		break;
+		return RATR_INX_WIRELESS_B;
 	case WIRELESS_11A:
 	case WIRELESS_11G:
-		raid = RATR_INX_WIRELESS_G;
-		break;
+		return RATR_INX_WIRELESS_G;
 	case WIRELESS_11BG:
-		raid = RATR_INX_WIRELESS_GB;
-		break;
+		return RATR_INX_WIRELESS_GB;
 	case WIRELESS_11_24N:
 	case WIRELESS_11_5N:
-		raid = RATR_INX_WIRELESS_N;
-		break;
+		return RATR_INX_WIRELESS_N;
 	case WIRELESS_11A_5N:
 	case WIRELESS_11G_24N:
-		raid = RATR_INX_WIRELESS_NG;
-		break;
+		return  RATR_INX_WIRELESS_NG;
 	case WIRELESS_11BG_24N:
-		raid = RATR_INX_WIRELESS_NGB;
-		break;
+		return RATR_INX_WIRELESS_NGB;
 	default:
-		raid = RATR_INX_WIRELESS_GB;
-		break;
+		return RATR_INX_WIRELESS_GB;
 	}
-	return raid;
 }
 
 u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen)
-- 
1.9.1


