X-GM-THRID: 10068144685056
X-Received: by 10.68.197.165 with SMTP id iv5mr17543461pbc.3.1427398294358;
        Thu, 26 Mar 2015 12:31:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.48 with SMTP id nt16ls607589obb.9.gmail; Thu, 26 Mar
 2015 12:31:34 -0700 (PDT)
X-Received: by 10.182.111.168 with SMTP id ij8mr18047172obb.2.1427398294112;
        Thu, 26 Mar 2015 12:31:34 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id pj7si791397pbb.2.2015.03.26.12.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id cz9so71968500pdb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Kdyj56aOMc+0hBSLoo89msLytZoYMaaxg/Wve75flG0=;
        b=PF9yjxWej2mZAcJCt5dXlv3aXS+bWT/dHdLBsu9LKUE8Ky/zb1NpNqUCvN+81YeQbz
         Iiq6xvBVCcsv+H7ww0fGXBdXKUg+Ig+pMeX5mC4poUDCMsuNSLfj4Bx+OVm2WT2q6koH
         FkM71dFA9uTZy3fLZnNZ2d3a2URl4NGHPoVZUyS+GV57DqTyiE0b/bAeiC/p2QRmnFbC
         PxuxYxLe+P2AF8gz3MCZmX8Yi++RheMwOw3T3m+L4Jel/Jpc0GbsfZtvsHtsN7kwMfTU
         gy5kBL+kyLQQAOp2RewJXK6zsqR/k8D6JE31ICw772oaO9kxGZjIzEKld4E98tJNZgvN
         r5RA==
X-Received: by 10.68.245.165 with SMTP id xp5mr28987968pbc.145.1427398294003;
        Thu, 26 Mar 2015 12:31:34 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id iw1sm6383520pbd.8.2015.03.26.12.31.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
Date: Fri, 27 Mar 2015 00:59:19 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8192u: Remove extern and add static
Message-ID: <848f4ec0238f31522dac7dc409d4a49df6afda05.1427397436.git.vatikaharlalka@gmail.com>
References: <cover.1427397436.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427397436.git.vatikaharlalka@gmail.com>
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


