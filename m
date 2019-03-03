X-GM-THRID: 6663286701018841088
X-Received: by 2002:a17:902:4181:: with SMTP id f1mr4240712pld.123.1551601121314;
        Sun, 03 Mar 2019 00:18:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:5c1:: with SMTP id f59ls6477117plf.1.gmail; Sun, 03
 Mar 2019 00:18:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqx1x2tDORYyZJ0l0chEBln4QlSMLxt3d4t4XBgrZfLSooMGZweHaxMeGHqyZscLRc9RBP/3
X-Received: by 2002:a17:902:20e8:: with SMTP id v37mr4306975plg.138.1551601120564;
        Sun, 03 Mar 2019 00:18:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551601120; cv=none;
        d=google.com; s=arc-20160816;
        b=PK6tB4YpM2Xy371V3jcUQGnMHGk3dx2Sowxa/UxZnlev9VNlak9Vs+HGHJwMaxKtRt
         NxOUKbmwMSDq5GAHCJA8W0Ha9fCWClvzaDUnd+XUCG09Ll8MGdbJ9G33peQ+2aHs5YUw
         9ZvBPaAcSWBz+Zq+75B8FuhHuQcFuJupV5QTzmoJELLLoiQVycxRkwxthBhxjXuEXojA
         U1Nh7oyBlVAs0i3i9Dh/3zT6IHud2t9x5519uWGq/FXtAUGR8HPZ5MTwRI96SnwCaG/c
         EQLPSIwiPuLG4CVxoYAFLR+SHuNiqMGXJ1uE9Y+4nB7BcnvzxVLIJiHOCTIxpmqj+YFv
         M+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=CLTF9k+myfGc7M8+gyEY1veDkQvpgMriJuT+M2Q9UAeSi4EFJjnd2EneYrdU1hMbkD
         VIprJPHCxeeJK9lel+2EnzAWmOrOGFSPBEJ64XfnzJfVt/6JLJSiUGMdqYZr7PXAN0xM
         MjLDgzpQ2f6u1OGFcnuB49QvJO7jOUpnPnN96ymtagBAbhelEOJcm39JoZR70aIEW6ap
         IaphDxBk0e2NgF9wyLEX7FWKbjNXCFXKgbM+xMToiQjtv3cIjzOYGcD2M22HiRapRRYg
         /Bux6PgArmj2gxk1tXL3dACkqNqFzEhc0+tlbxGJl6VFsMYOtY213QGxQtCD7yoy4qFp
         hN8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfFMaVCF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g83si81147pfg.5.2019.03.03.00.18.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:18:40 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfFMaVCF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j3so1034579pgm.11
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=SfFMaVCFNH8omiZgO86ivezEme2wYWsuBf8swG02WKXOfG+B9lLTUfo5BIw2o5pyVL
         uiJRpAinK0UiFA1yg6Pj8AGHS015XMtkEWu6c03ask8+qti6vhX0csfCGpFdbkU52K6A
         Ph/lFiLIg5Qho36cN6nPTTHS5v9nCojjcw5kfDQQiuxhfV18stD2s3LrCDM7aGQfXRUQ
         aCd96zUFdgN/xNOXPsJbCjk6Q7PNkjH/TqCc9GYpwQCBE2BkGRzmwkCzedjKy6RCXXT0
         5k+QCFYOpXZRvMnBBTngwYiNsO+dtyP47IkXxbio+2l0p5Im+rfJ+aT+6cksGGhMs4jl
         J0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4UrR/NzOrA+cWDIIqUxB/W/y/HeCdpPgLUfolIzFCS8=;
        b=H4Eg97LD/efwDI7i/CxvE4NPlQMvOZ25dneA6KKnqz/yfFRLrgqm0yAcMTOyXMR9bs
         F/NIYQexpyCcqjAxDDYtsZV/ES71Hukn/2qhUE1MhL6JFhA0mmEBcSDxLJqrVgJfPRIZ
         3vO+JcgkPtiH/T7xkZaZ/QK52Cmc3OFtkF7aDFev3Zo4BwUn8xyDxljSSGIqVDyiXRZq
         Cowyd7sb7cdw6+sNOm1eUbldCwLNrYB8OJKhx5jFXpJDv2Yp/sKEZEcjZct1BvPzvtAL
         OEnZdWXMr0YriKe/P2ELTSMQuwBPqZafIzg44Yufy2xGXZG5EShaPAms6wL8JgIJasY1
         RaQw==
X-Gm-Message-State: APjAAAW5Mo+V6bQreFKDG+QXvOS3oxhJdm8OhOnPt+9bRenU13CNsL5/
	c/93hwgfWboEj5G9djrGM5Vs+yn865A=
X-Received: by 2002:a63:ce:: with SMTP id 197mr12903963pga.212.1551601120187;
        Sun, 03 Mar 2019 00:18:40 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id o6sm10924580pgo.27.2019.03.03.00.18.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:18:39 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	floarian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 3/3] staging: rtl8712: rename bSuspended to suspended
Date: Sun,  3 Mar 2019 13:48:08 +0530
Message-Id: <20190303081808.83540-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190303081808.83540-1-himadri18.07@gmail.com>
References: <20190303081808.83540-1-himadri18.07@gmail.com>

Fix checkpatch warning: Avoid CamelCase by renaming struct variable
bSuspended to suspended.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change type to bool as the varibale is used as a boolean.
---
 drivers/staging/rtl8712/drv_types.h     | 2 +-
 drivers/staging/rtl8712/usb_intf.c      | 4 ++--
 drivers/staging/rtl8712/usb_ops_linux.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index acee68d3d152..9ae86631fa8b 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -147,7 +147,7 @@ struct _adapter {
 	struct mp_priv  mppriv;
 	bool	driver_stopped;
 	bool	surprise_removed;
-	s32	bSuspended;
+	bool	suspended;
 	u32	IsrContent;
 	u32	ImrContent;
 	u8	EepromAddressSize;
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 674c31155cdd..7478bbd3de78 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -196,7 +196,7 @@ static int r871x_suspend(struct usb_interface *pusb_intf, pm_message_t state)
 	struct _adapter *padapter = netdev_priv(pnetdev);
 
 	netdev_info(pnetdev, "Suspending...\n");
-	padapter->bSuspended = true;
+	padapter->suspended = true;
 	rtl871x_intf_stop(padapter);
 	if (pnetdev->netdev_ops->ndo_stop)
 		pnetdev->netdev_ops->ndo_stop(pnetdev);
@@ -220,7 +220,7 @@ static int r871x_resume(struct usb_interface *pusb_intf)
 	netif_device_attach(pnetdev);
 	if (pnetdev->netdev_ops->ndo_open)
 		pnetdev->netdev_ops->ndo_open(pnetdev);
-	padapter->bSuspended = false;
+	padapter->suspended = false;
 	rtl871x_intf_resume(padapter);
 	return 0;
 }
diff --git a/drivers/staging/rtl8712/usb_ops_linux.c b/drivers/staging/rtl8712/usb_ops_linux.c
index 8df308df35c6..9d290bc2fdb7 100644
--- a/drivers/staging/rtl8712/usb_ops_linux.c
+++ b/drivers/staging/rtl8712/usb_ops_linux.c
@@ -221,7 +221,7 @@ static void r8712_usb_read_port_complete(struct urb *purb)
 			padapter->driver_stopped = true;
 			break;
 		case -ENOENT:
-			if (!padapter->bSuspended) {
+			if (!padapter->suspended) {
 				padapter->driver_stopped = true;
 				break;
 			}
-- 
2.17.1


