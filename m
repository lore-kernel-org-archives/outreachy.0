X-GM-THRID: 6254801452291588096
X-Received: by 10.66.147.106 with SMTP id tj10mr36741345pab.30.1456309448631;
        Wed, 24 Feb 2016 02:24:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.228 with SMTP id lf4ls1445183obb.39.gmail; Wed, 24 Feb
 2016 02:24:08 -0800 (PST)
X-Received: by 10.182.125.132 with SMTP id mq4mr37081429obb.22.1456309448302;
        Wed, 24 Feb 2016 02:24:08 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id u66si314534pfa.2.2016.02.24.02.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 02:24:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ho8so10834445pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 02:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qw6STBXACy8ijJFfsqoFo1X0gUOYZklz9yKuqrpDElM=;
        b=hRtFlE5z5lVYPxVGICj0EluTUQcxHVzK14aE1llCmuIV6mIvtv7AjQw8dOOpB8TyEv
         ejxgIRuBj6jRKCt5Je8gdmfrFztfXdvdryL7LXzsKFBrGIkot77B0LPVs4zivC3GERUP
         AhTDp6ImP0n+GEO8L/AV7kWdAJxnYuc9IrIvVrIBjRL+ZjOw96cTZmcH2Yh3DVTB0MdO
         4u9fgayRwghC9mlbK2Pk75xvrrN3SNRBvmliQqAdq7Erf3sGXRdSL8FKLYG0rLR6V3T1
         sak/+YWjwCSRvUUYHt8iAp22FDTKssmWFvWvCTOPt+1TO9V4T4f1TvyK5ERFoSrCfaK9
         tjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qw6STBXACy8ijJFfsqoFo1X0gUOYZklz9yKuqrpDElM=;
        b=i84ZI0zynuwGWTWSCqGqRslp77TgoHeoFH/MZ7xYAThU6CcMIB2MuDRbxaDSQvcdT/
         xd1zuh+vn1Vv7C3jkK75p00ltxgT+9JLFvkbhEo7jewzHZeHV/fjbJOclY2mh7ocypP6
         tZy8sq4q9MbYkFste+2bN2NruB9SOAOMGs4TajxfnM4YuFTCGURhOFiMTKI5anJmK/hK
         L6FxSSyjRieRC2hxSIuHP5TlrLujQtMxtZRLViLQ+NTv2XAaLwbsDA9RAUGTlgzU7HAL
         pjVHIMcsqURJlku8D+JY0GG9GaUapRImDJd0PzzCM3GahJbhQfP/4UZruJdnSCgnucFs
         OC+Q==
X-Gm-Message-State: AG10YORagk9xOZYCvfYjMo28ca8orOr3ok4vsdFpwfafC9pmvnEKbqNqVHs8YlF8AQvGeA==
X-Received: by 10.66.255.39 with SMTP id an7mr53434624pad.2.1456309448092;
        Wed, 24 Feb 2016 02:24:08 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.141.103])
        by smtp.gmail.com with ESMTPSA id 144sm3872317pfa.83.2016.02.24.02.24.04
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 02:24:07 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 24 Feb 2016 15:53:58 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Clean up tests if NULL returned on failure
Date: Wed, 24 Feb 2016 15:53:57 +0530
Message-Id: <1456309437-7356-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Some functions like kmalloc/usb_alloc_urb returns Null as their return
value on failure. !x is generally preferred over x==NULL or NULL==x. So 
make use of !x if the value returned on failure by these functions is NULL.
Done using coccinelle:

@@
expression e;
statement S;
@@
e = \(kmalloc\|devm_kzalloc\|kmalloc_array
     \|devm_ioremap\|usb_alloc_urb\|alloc_netdev\)(...);
- if(e==NULL)
+ if(!e)
  S

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c | 4 ++--
 drivers/staging/rtl8723au/os_dep/xmit_linux.c     | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
index e3dc889..71d0549 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
@@ -399,7 +399,7 @@ hal_ReadEFuse_WiFi(struct rtw_adapter *padapter,
 	}
 
 	efuseTbl = kmalloc(EFUSE_MAP_LEN_8723A, GFP_KERNEL);
-	if (efuseTbl == NULL) {
+	if (!efuseTbl) {
 		DBG_8723A("%s: alloc efuseTbl fail!\n", __func__);
 		return;
 	}
@@ -491,7 +491,7 @@ hal_ReadEFuse_BT(struct rtw_adapter *padapter,
 	}
 
 	efuseTbl = kmalloc(EFUSE_BT_MAP_LEN, GFP_KERNEL);
-	if (efuseTbl == NULL) {
+	if (!efuseTbl) {
 		DBG_8723A("%s: efuseTbl malloc fail!\n", __func__);
 		return;
 	}
diff --git a/drivers/staging/rtl8723au/os_dep/xmit_linux.c b/drivers/staging/rtl8723au/os_dep/xmit_linux.c
index 9a14074..64be72a 100644
--- a/drivers/staging/rtl8723au/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723au/os_dep/xmit_linux.c
@@ -37,7 +37,7 @@ int rtw_os_xmit_resource_alloc23a(struct rtw_adapter *padapter,
 
 	for (i = 0; i < 8; i++) {
 		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
-		if (pxmitbuf->pxmit_urb[i] == NULL) {
+		if (!pxmitbuf->pxmit_urb[i]) {
 			DBG_8723A("pxmitbuf->pxmit_urb[i]==NULL");
 			return _FAIL;
 		}
-- 
1.9.1


