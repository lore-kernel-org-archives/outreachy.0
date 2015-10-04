X-GM-THRID: 6201888067640360960
X-Received: by 10.194.156.193 with SMTP id wg1mr4553826wjb.3.1443989686143;
        Sun, 04 Oct 2015 13:14:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls399494lfs.29.gmail; Sun, 04 Oct
 2015 13:14:45 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr4472718lbb.12.1443989685489;
        Sun, 04 Oct 2015 13:14:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id c7si240288wiy.3.2015.10.04.13.14.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 13:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id lk2so89292755wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 13:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3qeVV7ZVvJP3/eSPEERtJJZlrHYuYht5EDVyxjxwdEc=;
        b=FL7u4+ftqbL8L0kbYXrTp3ARhLxOlQZ3vISU0SaRzcoODSDCH3/BVqKuzJVWKftm+H
         nbttTXtKmQmD8Y7V39lOAuKNPjFUgF2xUvGl24SydAGs5IAO0/F7SFJ9rhOzYcfeQLlP
         wdcggl2Lig8ItT8LEssLLr1P5W7A+skQQxDAEDJ1SSVn1inviwIPqsVlS0igaJMFqHTU
         j+sKMrc+T9M4lXeDvxJHA8ntL2gaJDjk/u3VrsFQLM+Y1xcwgHbsCFDulAhWXt/BauKh
         fORDZALt8UaSqlCU/7GfFc3bFeZood7BRKSdvtNrd4bl14sf/N0s2lCoegKzSrtxgAi1
         t12g==
X-Received: by 10.194.134.98 with SMTP id pj2mr30855539wjb.30.1443989685387;
        Sun, 04 Oct 2015 13:14:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ub7sm10891314wib.17.2015.10.04.13.14.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 13:14:44 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/4] Staging: rtl8192u: Do not DMA on the stack in write_nic_word()
Date: Sun,  4 Oct 2015 22:14:39 +0200
Message-Id: <7a7d7ac9d8b55029b01181f1562557661cfde1a3.1443989364.git.ksenija.stanojevic@gmail.com>
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
index 94e3610..6d0127f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -323,11 +323,16 @@ void write_nic_word(struct net_device *dev, int indx, u16 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
 				 &data, 2, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_word TimeOut! status: %d\n", status);
-- 
1.9.1


