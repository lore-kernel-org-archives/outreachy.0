X-GM-THRID: 6201888067640360960
X-Received: by 10.194.156.193 with SMTP id wg1mr4553713wjb.3.1443989668981;
        Sun, 04 Oct 2015 13:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.88.67 with SMTP id m64ls367972lfb.103.gmail; Sun, 04 Oct
 2015 13:14:28 -0700 (PDT)
X-Received: by 10.112.190.65 with SMTP id go1mr4624495lbc.9.1443989668315;
        Sun, 04 Oct 2015 13:14:28 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c1si237627wiv.3.2015.10.04.13.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so89034575wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 13:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Yp3/f+aS1ft4o/hEVMItFXA9ridNWD6HPnkGXDC2ly0=;
        b=zk643RZ5aNayCzwnruTLewoHDxMUxsLG3d0w5oK7Q8Sfdhx7IXzDVoaz+br8hptQvF
         m9dAowoBsN4Uayt+Md/qyZVMFkiMraumAkFWaUTSfq8/88ucVQpf53ViAqyB1X0Fx8qx
         Xn9ZJ+JhGb2JJMgxJsILDnD5pPoYiMEZmCYM/Xc1/A6ogCsUgju7MgmeqkeRMP+Mx602
         KJMDXuz94zrAaU7ci9xfriHf/NfJ+rVaeMdZ6A45aLTi23RLtE1bZEZQ+1lPb6Hxje49
         OaF188ilzqekayWiCC/hvAnSCtdi1CO2MJLmgwIbeZebNu7FR2SHEfqkgBqUL+dITId9
         jfRQ==
X-Received: by 10.194.235.6 with SMTP id ui6mr31584085wjc.92.1443989668210;
        Sun, 04 Oct 2015 13:14:28 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id i10sm23144371wjz.41.2015.10.04.13.14.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 13:14:27 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/4] Staging: rtl8192u: Do not DMA on the stack in write_nic_byte()
Date: Sun,  4 Oct 2015 22:14:21 +0200
Message-Id: <d07d6cff589542279c3ba8fec0076a8ca68ff8a7.1443989364.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1443989364.git.ksenija.stanojevic@gmail.com>
References: <cover.1443989364.git.ksenija.stanojevic@gmail.com>

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation.
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 287e2ce..94e3610 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -298,11 +298,16 @@ void write_nic_byte(struct net_device *dev, int indx, u8 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
 				 &data, 1, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte TimeOut! status: %d\n", status);
-- 
1.9.1


