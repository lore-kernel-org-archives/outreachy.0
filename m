X-GM-THRID: 6252872571566424064
X-Received: by 10.66.62.162 with SMTP id z2mr11246740par.11.1455860345246;
        Thu, 18 Feb 2016 21:39:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.213 with SMTP id a204ls68152ioe.99.gmail; Thu, 18 Feb
 2016 21:39:03 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr10815013pfj.4.1455860343633;
        Thu, 18 Feb 2016 21:39:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id u66si1478023pfa.2.2016.02.18.21.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 21:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id yy13so44200002pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 21:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XMj+EeKqfboyTrZ/5zpmK6YeglD086IPkt+ZxVW6rBE=;
        b=BnP8coD3Oa9JmpNfl8rNz1GnBuA643izR0/XfYVSLuwYULtFgwft1ob+u4/JKXac5V
         7VHdIDDAiBEi2hql/Ns1DspUDM62gGZQt8noE1oCFrf6s2YNSPUfvI4se5TW8JDXmPJC
         4E2c+lvJDiJ6WE2DTzBPJyIyQvG6IU6QNNG1D+o0J88JTBsiqigH6hh/52w4oopB/glF
         i/qMaAhc9SdCePLRwvaKZE5lA+IaghnMCKPmluEe9UD5qC7SKWgUfG+0AtFRyjtO1SIS
         dT5Z54KXLxi6Xi4hHhkVTMPbgP7PhDU9RoKmcnne/Ji5uVtBQrznDNhUltj1TNV21rSJ
         d9jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XMj+EeKqfboyTrZ/5zpmK6YeglD086IPkt+ZxVW6rBE=;
        b=A1MLZJvktlJ3HcLgNoRf79AMOGn1HF3Iif3zXvi41IRUuXMPTjpy5Zlxzf6JtwQfaz
         r/nhX8xpGIum1wfuAE6bBsY/O+b11wVcVF9rn3hdJt7Mt8gcKQoPFKzXQzysg4bNnj0Z
         YdTwzg1VNU/pispFWRrPtt/bKXqJTwvRm3pPq7pZ9BdpgHmnlfTr9oDao38iQkH920N3
         GZ6qYmMQ4z8cIhg4e+BpElkqjRrAY/HL0EYRJjq0223yNRLj7WbtqyNPKcLbnYWgUoWr
         znpub2+bTWTg+B2FMC4bEWc6CG/IdUekM2/S29h167rMAtrNYegb1+XTU4shIrMDcs7j
         KHVw==
X-Gm-Message-State: AG10YOQWzh9louV34S4vMMYffukr6UlayoqdaLk/jSbXSEAUes/KQFiqbkWCUfHHgTmyTA==
X-Received: by 10.66.234.104 with SMTP id ud8mr15762900pac.143.1455860343424;
        Thu, 18 Feb 2016 21:39:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id d22sm14339955pfj.32.2016.02.18.21.39.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 21:39:02 -0800 (PST)
Date: Fri, 19 Feb 2016 11:08:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove exceptional & on function name
Message-ID: <20160219053859.GA29087@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

In this file, function names are otherwise used as pointers without &.

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
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/usb_intf.c |  4 ++--
 drivers/staging/rtl8712/usb_ops.c  | 20 ++++++++++----------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index f1d3d70..bb2decd 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -399,8 +399,8 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 	SET_NETDEV_DEV(pnetdev, &pusb_intf->dev);
 	pnetdev->dev.type = &wlan_type;
 	/* step 2. */
-	padapter->dvobj_init = &r8712_usb_dvobj_init;
-	padapter->dvobj_deinit = &r8712_usb_dvobj_deinit;
+	padapter->dvobj_init = r8712_usb_dvobj_init;
+	padapter->dvobj_deinit = r8712_usb_dvobj_deinit;
 	padapter->halpriv.hal_bus_init = &r8712_usb_hal_bus_init;
 	padapter->dvobjpriv.inirp_init = &r8712_usb_inirp_init;
 	padapter->dvobjpriv.inirp_deinit = &r8712_usb_inirp_deinit;
diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index 856f257..cf24007 100644
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
+	pops->_read8 = usb_read8;
+	pops->_read16 = usb_read16;
+	pops->_read32 = usb_read32;
 	pops->_read_port = &r8712_usb_read_port;
-	pops->_write8 = &usb_write8;
-	pops->_write16 = &usb_write16;
-	pops->_write32 = &usb_write32;
+	pops->_write8 = usb_write8;
+	pops->_write16 = usb_write16;
+	pops->_write32 = usb_write32;
 	pops->_write_mem = &r8712_usb_write_mem;
 	pops->_write_port = &r8712_usb_write_port;
 }
-- 
1.9.1


