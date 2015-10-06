X-GM-THRID: 6202613271340515328
X-Received: by 10.180.72.68 with SMTP id b4mr3705228wiv.2.1444158440578;
        Tue, 06 Oct 2015 12:07:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.199 with SMTP id he7ls1137831wib.16.canary; Tue, 06
 Oct 2015 12:07:20 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr3949117wia.7.1444158440117;
        Tue, 06 Oct 2015 12:07:20 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id bj4si654490wib.1.2015.10.06.12.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 12:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id lk2so173136232wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 12:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1mT9CjBrMIaKPVT8wi+vstT0qYOGVpS1CxrtnbR0o1c=;
        b=WVsNSehrrdhpSpCqv9CSdhae19L6u4Yq6OlsNQ4tS8jf+UCwsTIt3jJ3tXW4hIYlYE
         JZdgUkvARGxtWnwDbp0O/dNE1pIbDTqzWKZj4fp1Bl3ut8KyX/vGlCDkBK/VrsryxVR4
         daN2H2lIycuBK1bQvHnVJNd2BXFPXjCM2pTe/y3MgBSUa0fG5tQXZEZZApNxyWH0AK0O
         RcV+sclTZua8DxjgNOGCkMiAEuVjSWw7S9sVECByhf2YqiTK6i8vqmCd9oMaFjOcyqAb
         z0wyJPf+G8APz52jst7VTe8edz9IQ34ztPngvRbR8YRdrcf9gQvSiqzaHc2x0JjK5/Ed
         r/sw==
X-Received: by 10.180.103.2 with SMTP id fs2mr20310099wib.9.1444158440014;
        Tue, 06 Oct 2015 12:07:20 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ub7sm21002507wib.17.2015.10.06.12.07.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 12:07:19 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192u: Do not DMA on the stack
Date: Tue,  6 Oct 2015 21:07:11 +0200
Message-Id: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation.
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
	-put all changes in one patch instead patchset.
	-replace &data with pdata

 drivers/staging/rtl8192u/r8192U_core.c | 72 +++++++++++++++++++++++++++++-----
 1 file changed, 63 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 28b54ba..cf6f90d 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -259,10 +259,16 @@ void write_nic_byte_E(struct net_device *dev, int indx, u8 data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
+	*pdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
-				 indx | 0xfe00, 0, &data, 1, HZ / 2);
+				 indx | 0xfe00, 0, pdata, 1, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte_E TimeOut! status: %d\n",
@@ -274,10 +280,16 @@ int read_nic_byte_E(struct net_device *dev, int indx, u8 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(u8), GFP_KERNEL);
+
+	if (!pdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
-				 indx | 0xfe00, 0, data, 1, HZ / 2);
+				 indx | 0xfe00, 0, pdata, 1, HZ / 2);
+	*data = *pdata;
+	kfree(pdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -293,11 +305,17 @@ void write_nic_byte(struct net_device *dev, int indx, u8 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
+	*pdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 1, HZ / 2);
+				 pdata, 1, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte TimeOut! status: %d\n", status);
@@ -313,11 +331,17 @@ void write_nic_word(struct net_device *dev, int indx, u16 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
+	*pdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 2, HZ / 2);
+				 pdata, 2, HZ / 2);
+	kfree(pdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_word TimeOut! status: %d\n", status);
@@ -332,11 +356,17 @@ void write_nic_dword(struct net_device *dev, int indx, u32 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u32 *pdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!pdata)
+		return;
+	*pdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 4, HZ / 2);
+				 pdata, 4, HZ / 2);
+	kfree(pdata);
 
 
 	if (status < 0)
@@ -352,11 +382,17 @@ int read_nic_byte(struct net_device *dev, int indx, u8 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *pdata = kzalloc(sizeof(u8), GFP_KERNEL);
+
+	if (!pdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 1, HZ / 2);
+				 pdata, 1, HZ / 2);
+	*data = *pdata;
+	kfree(pdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -373,11 +409,17 @@ int read_nic_word(struct net_device *dev, int indx, u16 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *pdata = kzalloc(sizeof(u16), GFP_KERNEL);
+
+	if (!pdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 2, HZ / 2);
+				 pdata, 2, HZ / 2);
+	*data = *pdata;
+	kfree(pdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -392,10 +434,16 @@ static int read_nic_word_E(struct net_device *dev, int indx, u16 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *pdata = kzalloc(sizeof(u16), GFP_KERNEL);
+
+	if (!pdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
-				 indx | 0xfe00, 0, data, 2, HZ / 2);
+				 indx | 0xfe00, 0, pdata, 2, HZ / 2);
+	*data = *pdata;
+	kfree(pdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -411,11 +459,17 @@ int read_nic_dword(struct net_device *dev, int indx, u32 *data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u32 *pdata = kzalloc(sizeof(u32), GFP_KERNEL);
+
+	if (!pdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 4, HZ / 2);
+				 pdata, 4, HZ / 2);
+	*data = *pdata;
+	kfree(pdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
-- 
1.9.1


