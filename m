X-GM-THRID: 9985601830912
X-Received: by 10.66.218.163 with SMTP id ph3mr14865536pac.46.1427375745481;
        Thu, 26 Mar 2015 06:15:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.96 with SMTP id j93ls703930iod.61.gmail; Thu, 26 Mar
 2015 06:15:44 -0700 (PDT)
X-Received: by 10.42.49.136 with SMTP id w8mr36763961icf.2.1427375744787;
        Thu, 26 Mar 2015 06:15:44 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iw3si677664pbd.1.2015.03.26.06.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 06:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id xg6so62823026pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 06:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=5m9JpZg0bHvrR9wyiw13mRDeJc8Iq2eNpTXZHxDp7w4=;
        b=VF3E4PAFgB7KlDxpPOGUVzH+m0BUmluZaL0Q9RWCJieHcvYZQGvx2MKZDFk0qdQSxz
         9v1l6ls4H2I3KI+rJpXIQ+C82xRQVJkMa8XFnBNjxJuSXPpk8IBayU5GQg7MI6e+/y7d
         TuPECoZAaXmoA/J8sObwqShEW2N/j5qNy9gcqgX2rFNlOK5pMo7QWb0bd216kUYfYXWP
         vr3y6GDLjVCWQR0gs+KFQBq2Cydg6fVzj7utFjcgWUPfZjw8SsGYV4ttvZtCVmx4t9wb
         rsdv7vR426I2DuHCFzO+UmvpiLw86CyjvxoIcIj3LSO+pUUIJ1jP76pEZdJHRqnsjwuN
         5Aiw==
X-Received: by 10.68.180.3 with SMTP id dk3mr26356321pbc.103.1427375744664;
        Thu, 26 Mar 2015 06:15:44 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id x3sm5648688pdo.0.2015.03.26.06.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 06:15:43 -0700 (PDT)
Date: Thu, 26 Mar 2015 18:43:25 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8192u: Remove extern and add static
Message-ID: <20150326131325.GA9171@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

These functions are accessed only in this file and
so are declared as static.
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index f609656..cbcdcf2 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1731,7 +1731,7 @@ static void rtl8192_usb_deleteendpoints(struct net_device *dev)
 	}
 }
 #else
-void rtl8192_usb_deleteendpoints(struct net_device *dev)
+static void rtl8192_usb_deleteendpoints(struct net_device *dev)
 {
 	int i;
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -1763,7 +1763,7 @@ void rtl8192_usb_deleteendpoints(struct net_device *dev)
 }
 #endif
 
-extern void rtl8192_update_ratr_table(struct net_device *dev);
+static void rtl8192_update_ratr_table(struct net_device *dev);
 static void rtl8192_link_change(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -1968,7 +1968,7 @@ static int rtl8192_handle_assoc_response(struct net_device *dev,
 }
 
 
-void rtl8192_update_ratr_table(struct net_device *dev)
+static void rtl8192_update_ratr_table(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	struct ieee80211_device *ieee = priv->ieee80211;
-- 
1.9.1


