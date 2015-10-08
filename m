X-GM-THRID: 6202613271340515328
X-Received: by 10.112.54.197 with SMTP id l5mr1514275lbp.21.1444317730896;
        Thu, 08 Oct 2015 08:22:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.195 with SMTP id r3ls172269wik.47.gmail; Thu, 08 Oct
 2015 08:22:10 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr1566830wjd.2.1444317730279;
        Thu, 08 Oct 2015 08:22:10 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id bh7si101612wib.1.2015.10.08.08.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 08:22:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id gb1so29847106wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 08:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BvRMA5KRouaXvorSZ22auCznRQnmWBM6TokOmHDHlYI=;
        b=LrtNUx6w2EcN1332U6cqRZP4i7W/neQ7VGkLr0SOHXSQr0RF3vb8RdH94kOvFmnhIj
         lJwxeadOQhYHPS/RYuGbhfzC8golbkAD1+rcPzX7COso0ABkyKihBmu6B4p3GGoHGvel
         C3OKR2kkf55y/loJvhVu9PI/6I8lQMs6MKaXbIElB7PAUQCUrq4RAKKpniMcSmyD8/cp
         hmMXADfTCxAp1okVDOPI3ee9NuBzP6kqxbPtH+hOD1tef7BMzXubuYo8WOc4laKuBUdG
         ZhfDNYk61/tNQ1C8aGiztTkr7GYVajd1QGBd1ZHFmuJ0FUSGRFYnoVUtcPl8nahtqOiy
         PIwQ==
X-Received: by 10.181.27.138 with SMTP id jg10mr5048569wid.29.1444317730175;
        Thu, 08 Oct 2015 08:22:10 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ht5sm7672310wib.10.2015.10.08.08.22.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 08:22:09 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: rtl8192u: Do not DMA on the stack
Date: Thu,  8 Oct 2015 17:21:49 +0200
Message-Id: <1444317709-3454-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix error "doing DMA on the stack" by using kzalloc for buffer
allocation.
Issue found by smatch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
---
Changes in v3:
	-rename pdata to usbdata.

Changes in v2:
        -put all changes in one patch instead patchset.
        -replace &data with pdata

 drivers/staging/rtl8192u/r8192U_core.c | 72 +++++++++++++++++++++++++++++-----
 1 file changed, 63 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 28b54ba..0bae93b 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -259,10 +259,16 @@ void write_nic_byte_E(struct net_device *dev, int indx, u8 data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *usbdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!usbdata)
+		return;
+	*usbdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
-				 indx | 0xfe00, 0, &data, 1, HZ / 2);
+				 indx | 0xfe00, 0, usbdata, 1, HZ / 2);
+	kfree(usbdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte_E TimeOut! status: %d\n",
@@ -274,10 +280,16 @@ int read_nic_byte_E(struct net_device *dev, int indx, u8 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *usbdata = kzalloc(sizeof(u8), GFP_KERNEL);
+
+	if (!usbdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
-				 indx | 0xfe00, 0, data, 1, HZ / 2);
+				 indx | 0xfe00, 0, usbdata, 1, HZ / 2);
+	*data = *usbdata;
+	kfree(usbdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -293,11 +305,17 @@ void write_nic_byte(struct net_device *dev, int indx, u8 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *usbdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!usbdata)
+		return;
+	*usbdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 1, HZ / 2);
+				 usbdata, 1, HZ / 2);
+	kfree(usbdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_byte TimeOut! status: %d\n", status);
@@ -313,11 +331,17 @@ void write_nic_word(struct net_device *dev, int indx, u16 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *usbdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!usbdata)
+		return;
+	*usbdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 2, HZ / 2);
+				 usbdata, 2, HZ / 2);
+	kfree(usbdata);
 
 	if (status < 0)
 		netdev_err(dev, "write_nic_word TimeOut! status: %d\n", status);
@@ -332,11 +356,17 @@ void write_nic_dword(struct net_device *dev, int indx, u32 data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u32 *usbdata = kzalloc(sizeof(data), GFP_KERNEL);
+
+	if (!usbdata)
+		return;
+	*usbdata = data;
 
 	status = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
 				 RTL8187_REQ_SET_REGS, RTL8187_REQT_WRITE,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 &data, 4, HZ / 2);
+				 usbdata, 4, HZ / 2);
+	kfree(usbdata);
 
 
 	if (status < 0)
@@ -352,11 +382,17 @@ int read_nic_byte(struct net_device *dev, int indx, u8 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u8 *usbdata = kzalloc(sizeof(u8), GFP_KERNEL);
+
+	if (!usbdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 1, HZ / 2);
+				 usbdata, 1, HZ / 2);
+	*data = *usbdata;
+	kfree(usbdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -373,11 +409,17 @@ int read_nic_word(struct net_device *dev, int indx, u16 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *usbdata = kzalloc(sizeof(u16), GFP_KERNEL);
+
+	if (!usbdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 2, HZ / 2);
+				 usbdata, 2, HZ / 2);
+	*data = *usbdata;
+	kfree(usbdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -392,10 +434,16 @@ static int read_nic_word_E(struct net_device *dev, int indx, u16 *data)
 	int status;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u16 *usbdata = kzalloc(sizeof(u16), GFP_KERNEL);
+
+	if (!usbdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
-				 indx | 0xfe00, 0, data, 2, HZ / 2);
+				 indx | 0xfe00, 0, usbdata, 2, HZ / 2);
+	*data = *usbdata;
+	kfree(usbdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
@@ -411,11 +459,17 @@ int read_nic_dword(struct net_device *dev, int indx, u32 *data)
 
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct usb_device *udev = priv->udev;
+	u32 *usbdata = kzalloc(sizeof(u32), GFP_KERNEL);
+
+	if (!usbdata)
+		return -ENOMEM;
 
 	status = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 				 RTL8187_REQ_GET_REGS, RTL8187_REQT_READ,
 				 (indx & 0xff) | 0xff00, (indx >> 8) & 0x0f,
-				 data, 4, HZ / 2);
+				 usbdata, 4, HZ / 2);
+	*data = *usbdata;
+	kfree(usbdata);
 
 	if (status < 0) {
 		netdev_err(dev, "%s failure status: %d\n", __func__, status);
-- 
1.9.1


