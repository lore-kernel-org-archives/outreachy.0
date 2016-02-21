X-GM-THRID: 6252872571566424064
X-Received: by 10.50.25.133 with SMTP id c5mr6897548igg.4.1456064612811;
        Sun, 21 Feb 2016 06:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls996805qge.39.gmail; Sun, 21 Feb
 2016 06:23:32 -0800 (PST)
X-Received: by 10.31.153.75 with SMTP id b72mr22350925vke.0.1456064612171;
        Sun, 21 Feb 2016 06:23:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id 79si2618212pft.0.2016.02.21.06.23.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 06:23:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id e127so78096497pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 06:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PQwxQpvmFOEQvNOusWlODnQHBVDsOzoSIpIhA5agCcc=;
        b=UQUAJ21yBj7/lmmiqsQSPvebXMClAyjEPR8wS96DmB7JvNeII1/XFAki4oHDsRS0wb
         ShtPzTLtxyXbnUbkpbtbrfZXZhbWlkjNGSkUKlrtzYxXvH0H71UREAbmOYG1FzzhiY+e
         IUnO4KiJ0WRH6G0ZizYKFN1WP9JM2IbmadWUS4AnZCl5SlUFMwpQA7yjtsTL7FaQia7d
         zfe0KEHMG+S3ZB0W4IPCBvd5daYdzGHPoAKIr3Ddq27+00HQM/RKWcfvH1ftxmqLJfrh
         uOp9F7BBHOb+a479LOEftRV1diF5L9KFQk4JwwBhPSCET7i2x1qEBIX4UPUx5ulD7SEt
         y5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=PQwxQpvmFOEQvNOusWlODnQHBVDsOzoSIpIhA5agCcc=;
        b=Xc39Aqb0xp501YymGcBZALsneJ3+20S1sSknsIKUyxnDA00kJh0ENoJ9jBz+0g0atc
         NopSt50nKZ3+aVPMxDG8e0u3lh9wtWTz+gA0Udqu3woLa+5mx7IK/K+vi82OVt6vJPyu
         IKIF/1bdNai2yHyZrhoixOYWnOxXJNXo6oLsSGwmdDQ89S93CWobv0E0mEPTrhz4djme
         eu/s+92dXtcWg+MkwHwgYELynblY/xuKdtsXHawyqNHLBEWoyLT2gvhCqrtyVd8vIXNJ
         2FORmD0fOikve1pPC1lZZH7G1zRrYBwwUJT/70gFSAFJWtub7s7ibra45vXXa3guo55J
         LWKw==
X-Gm-Message-State: AG10YOQ9r9y8QB43xJglPUFsjtj2G1YF6MIMrUFOdkWKfE9cxzYsD/7DI7FFcqvn+e025Q==
X-Received: by 10.98.66.157 with SMTP id h29mr31647959pfd.91.1456064611955;
        Sun, 21 Feb 2016 06:23:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id q85sm30270142pfq.81.2016.02.21.06.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 06:23:31 -0800 (PST)
Date: Sun, 21 Feb 2016 19:53:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rtl8712: Remove exceptional & on function name
Message-ID: <20160221142327.GA28467@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove exceptional '&' operator in front of a function name.

The Coccinelle semantic patch that is used to make this change is as
follows:

// <smpl>
@r@
identifier f;
@@
f(...) { ... }
@@
identifier r.f;
@@
- &f
+ f
@m@
type T;
identifier f;
@@
T f(...);
@@
identifier m.f;
@@
- &f
+ f
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v3:
        -Modified commit message.
Changes in v2:
        -Modified semantic patch and consequently, this patch to make
         changes for non-static functions also.

 drivers/staging/rtl8712/usb_intf.c | 10 +++++-----
 drivers/staging/rtl8712/usb_ops.c  | 26 +++++++++++++-------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index f1d3d70..c1a0ca49 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -399,11 +399,11 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 	SET_NETDEV_DEV(pnetdev, &pusb_intf->dev);
 	pnetdev->dev.type = &wlan_type;
 	/* step 2. */
-	padapter->dvobj_init = &r8712_usb_dvobj_init;
-	padapter->dvobj_deinit = &r8712_usb_dvobj_deinit;
-	padapter->halpriv.hal_bus_init = &r8712_usb_hal_bus_init;
-	padapter->dvobjpriv.inirp_init = &r8712_usb_inirp_init;
-	padapter->dvobjpriv.inirp_deinit = &r8712_usb_inirp_deinit;
+	padapter->dvobj_init = r8712_usb_dvobj_init;
+	padapter->dvobj_deinit = r8712_usb_dvobj_deinit;
+	padapter->halpriv.hal_bus_init = r8712_usb_hal_bus_init;
+	padapter->dvobjpriv.inirp_init = r8712_usb_inirp_init;
+	padapter->dvobjpriv.inirp_deinit = r8712_usb_inirp_deinit;
 	/* step 3.
 	 * initialize the dvobj_priv
 	 */
diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index 856f257..9172400 100644
--- a/drivers/staging/rtl8712/usb_ops.c
+++ b/drivers/staging/rtl8712/usb_ops.c
@@ -179,22 +179,22 @@ static void usb_intf_hdl_close(u8 *priv)
 
 void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl)
 {
-	pintf_hdl->intf_hdl_init = &usb_intf_hdl_init;
-	pintf_hdl->intf_hdl_unload = &usb_intf_hdl_unload;
-	pintf_hdl->intf_hdl_open = &usb_intf_hdl_open;
-	pintf_hdl->intf_hdl_close = &usb_intf_hdl_close;
+	pintf_hdl->intf_hdl_init = usb_intf_hdl_init;
+	pintf_hdl->intf_hdl_unload = usb_intf_hdl_unload;
+	pintf_hdl->intf_hdl_open = usb_intf_hdl_open;
+	pintf_hdl->intf_hdl_close = usb_intf_hdl_close;
 }
 
 void r8712_usb_set_intf_ops(struct _io_ops	*pops)
 {
 	memset((u8 *)pops, 0, sizeof(struct _io_ops));
-	pops->_read8 = &usb_read8;
-	pops->_read16 = &usb_read16;
-	pops->_read32 = &usb_read32;
-	pops->_read_port = &r8712_usb_read_port;
-	pops->_write8 = &usb_write8;
-	pops->_write16 = &usb_write16;
-	pops->_write32 = &usb_write32;
-	pops->_write_mem = &r8712_usb_write_mem;
-	pops->_write_port = &r8712_usb_write_port;
+	pops->_read8 = usb_read8;
+	pops->_read16 = usb_read16;
+	pops->_read32 = usb_read32;
+	pops->_read_port = r8712_usb_read_port;
+	pops->_write8 = usb_write8;
+	pops->_write16 = usb_write16;
+	pops->_write32 = usb_write32;
+	pops->_write_mem = r8712_usb_write_mem;
+	pops->_write_port = r8712_usb_write_port;
 }
-- 
1.9.1


