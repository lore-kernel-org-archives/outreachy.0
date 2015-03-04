X-GM-THRID: 6598140362752
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,230d94accd1f422f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.61.197 with SMTP id w45mr4416893yhc.54.1425475456594;
        Wed, 04 Mar 2015 05:24:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.85 with SMTP id 79ls661466qgi.9.gmail; Wed, 04 Mar 2015
 05:24:16 -0800 (PST)
X-Received: by 10.52.5.169 with SMTP id t9mr4482747vdt.7.1425475456455;
        Wed, 04 Mar 2015 05:24:16 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id xj4si484840pbc.2.2015.03.04.05.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 05:24:16 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so33466835pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 05:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yi6dC9xjaS6veInYZE/0IJZgl5p8hY6te+8RzYy/Dm4=;
        b=KN86QcDKRto5spizd6qLIOYViGqjRy2TyauDNGmCrGO43Uhyt1P+bW52f9ReDXuE8Q
         dIUADjNCksaxPsJDVobde1BalPzEWQzjUHpW543bpiklpE8PjUYDyTdAqHrT0FlhPQeE
         nze2ALBbNvqgIO49LdXvK1B+sSIyoFLvkyBqokWA+W4IXswUPGdMNyv4YazrJlR5Ldlf
         twsQpe3Imgd2Rj8hesPw+7y72YYyhf0PkG1oywOlx63M8Hod9RGwjGLwpWSGlYOtD2M6
         QoRgFu/uWliExm8v2BZc992C9H+uxQnzrwQCH8A26CEY8YIoUpDd5CQJ9Bk3yfeB/11z
         7xUg==
X-Received: by 10.67.3.73 with SMTP id bu9mr6707683pad.23.1425475456304;
        Wed, 04 Mar 2015 05:24:16 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.168])
        by mx.google.com with ESMTPSA id n5sm4105227pdh.27.2015.03.04.05.24.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 05:24:15 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2 1/5] Staging: rtl8188eu: Remove useless local variable
Date: Wed,  4 Mar 2015 18:53:01 +0530
Message-Id: <1425475385-2360-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>
References: <1425475385-2360-1-git-send-email-somyaanand214@gmail.com>

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


