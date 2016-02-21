X-GM-THRID: 6252872571566424064
X-Received: by 10.13.238.130 with SMTP id x124mr21935795ywe.53.1456036098504;
        Sat, 20 Feb 2016 22:28:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.68 with SMTP id p4ls17618obi.29.gmail; Sat, 20 Feb 2016
 22:28:18 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr21042131obc.5.1456036098176;
        Sat, 20 Feb 2016 22:28:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ff2si2691173pad.2.2016.02.20.22.28.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 22:28:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fy10so73178366pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 22:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AboRVtVy9ntd/TdPKNoUc6OrOUKP57MetkxFAmBfzlw=;
        b=zdNDzjh9ychfE8EgjR/B2sDWear0F+kyYHNxiIXlK4pjoZWTtZuxba6pp12sX8zlsL
         W9Io5zb+VGA8QBsoUPovwRkUqUcjmdLRjLUJwz+Wdhuo5DrDnszBrHfiKysXUySL8Yrh
         AWHrzvTNdrk+TwcDwo8Iq0vD/354EcSQVSY453MXNy3CGfeHJY9aUn3mVjCeprwWz9xz
         eK5uD2NO81FGAjRdbkFHSxeBBbyF4OH46ODk7lyxvCFYx2GvTDlvccczjTWCx4vThDHo
         Vunch5rjKOhcwT160xFgbMLeluHDxqFKXPqUAsvvttOckTy6nAa7SdMWQO2utZtQZxVy
         RcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=AboRVtVy9ntd/TdPKNoUc6OrOUKP57MetkxFAmBfzlw=;
        b=kii6mlx3cbKW0j+J5vQnHkUvFePh9uu4FCAw0ocBldIr2CQARfzuX89+zO8DZ54CuY
         laoOL0JQFi9yi8yezaEtE+lZ4NnbW4/86R3jlNWI7U1yMztmLtb5MGqIck9U+hEhhN87
         GvPpL4nu6CVqxdLqEq43te6QwepyLf/yAVqfZF4R2DSiZCmLGyrQ+yvfs1v50q5hoeKR
         KR0OnniKkDC9CXXFPk5/x0dkP5p1Z+Uf0xdynY55aAv4CltNm9JQ9nUhiLrMUgB6CZ7O
         ejt6jggoScnD/igWsn737xI257OF1nOqfRgm07Oz99DOjCqSEjoB3zYFJKPvDhIUA4mz
         bGhQ==
X-Gm-Message-State: AG10YOSvjAdg8xe5fR0w3CHdp2jU3PjBh/Z4Z7nrvwZfBaGmOwLmU6MD8+1yX61RKYz+kw==
X-Received: by 10.66.251.65 with SMTP id zi1mr29571069pac.133.1456036097951;
        Sat, 20 Feb 2016 22:28:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id r87sm28086234pfa.61.2016.02.20.22.28.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 22:28:17 -0800 (PST)
Date: Sun, 21 Feb 2016 11:58:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Remove exceptional & on function name
Message-ID: <20160221062813.GA18950@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

In these files, function names are otherwise used as pointers without &.

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
Changes in v2:
        -Modified semantic patch and consequently, this patch to make changes 
         for non-static functions also.

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


