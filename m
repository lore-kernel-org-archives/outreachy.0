X-GM-THRID: 6812648549642141696
X-Received: by 2002:adf:e948:: with SMTP id m8mr197880wrn.193.1586193351154;
        Mon, 06 Apr 2020 10:15:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls108092wrw.3.gmail; Mon, 06 Apr
 2020 10:15:49 -0700 (PDT)
X-Google-Smtp-Source: APiQypIOGGcKiPjRLzC1MQ+F6C7tSuuaquIWKmlicp6vrw3HQwIbZaS5k6BJH7/3be8xbfFGkQUD
X-Received: by 2002:adf:dfc6:: with SMTP id q6mr188328wrn.325.1586193349464;
        Mon, 06 Apr 2020 10:15:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193349; cv=none;
        d=google.com; s=arc-20160816;
        b=Am2Bw46ibCAICn5kMd0EY4D6VXdqRoMIWl+355rBdglfUU4Ywhet8ft1OjzEcIZJIb
         2XdObfOObLz/ghLNbLrnFT2iWwIMUrbQwgkMFLTj9f78ZUfynxqlHyPHgRJAtBAl9I4x
         g8k984ErVR1bHYdegtQur6sj/X4wLyfMSRKZOQLbYKVCYnWXiDGsDIlGY5XNc9egStXb
         yQCjSMi+EAEzpoZPUx8yprK9DsIpS5vn0tRiRa5iBqb0Sx1lVQBxsIbCWJKiqC6WVGCW
         4EWQV03kgQdCu3/dN/+P1zMtBumK0j1OT5IXMKGkUI5/Bcpec18aNEIlXazcESU5d1Ot
         PRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vNDoCz7HhAdtqvVAz3EIpZyQOhUVzDMER0c46USWeMo=;
        b=xsRnhsr4iicIXbyZWP13UVZmS0TeH+WeGxJWBobrazEF1hpNvqFMQDM2Lh8xDTbWW9
         3wNNGU/yt8nGf80bDqyGxdHiwTVp7hw9o1iayHyTR814vGzxtxoAVGVSzZhZEFzW05Xu
         m9f6rdsS/cgU8Dc99ddHVnw+1SqEg4OBP4ilrwArOpqK8nWoMtCA7BKFanWVVVDfFfmL
         UJ/sk07EHXuY6961Ll3kSwwwvE8PLK7hDP8Rf6UeIJDhpntTXZDtyBiAi1y7G0uERzBU
         yuO1J4wdqldEkrjFJgrWqcRy33SG/uioXq9mzSVsXAkaCIRVHvezBlwIIR1tFSA20fyl
         veaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvgACbrm;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v12si25267wrp.5.2020.04.06.10.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:15:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvgACbrm;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id d77so187500wmd.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 10:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vNDoCz7HhAdtqvVAz3EIpZyQOhUVzDMER0c46USWeMo=;
        b=bvgACbrm2qQu1hNUJR4wpe8EPslUiux9nD0U72lwkGvLLLQqJZhRKzvt6QSSgzHTPy
         7OYsqQxAIj9nXnuQ6bL8lVxijUUrpNz+V3vmO/UG1O3VVWNJwq4Nxgn8RJ+MCjcpQJCj
         cL/1ypLkxhkO7Gu0Uy/+GZzDlB5UPiGfmBURZSEihjPs0hpPkFb4p+vI1D82SZ2l3aQf
         prwUQMF5L8p6M2Iw2l00xPgb8EH5YImI5ZPwflA95Y5mZAMZpZcnr1C80oPKxVge7xTX
         PUQ+oB+GFrW1jI9Nwm+92aFx5c4tzXcTQz1goh3iN8z91mXeE2Xcl9RwJZ+UM2YsezXS
         1Tjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vNDoCz7HhAdtqvVAz3EIpZyQOhUVzDMER0c46USWeMo=;
        b=fVDC9a6+zNc3WNAjHPk4RakD/G/6mMoVK8VmCiq2BbHc/VezKwPuNOI8TBV2JdsDAG
         DoBdqZpyrqpBHC4CwaNO1G7z6xv8koQyukoa7qh4sJQsAiTMzqsQXV+flLMl1qp3h9/g
         /MDqkwV+N0rsDGc9iTnb06EmqhbWtQmY+IKB98QV5alHOqhbVQ78NP0Z0eeiAtzcvLdC
         BYmsCwM0GIPlduqdCYxI6CeIvi0J9AP2aFTX9AvRAahUVeya6moZSzzpB6yYVOI+fiSy
         jhVHIUaqrOODDYzHHyK+UxzScz9vxXRkF0PutPUiJIGJATpv6hy+Vrvtk+GUeyHxKXLa
         UPqQ==
X-Gm-Message-State: AGi0PuY/Y8IyOCMQQ9audbucLNTD0NBd83Pm/vrduhcunmgslSnr/Wb7
	3Aqw9aIuXsAaxVeihK/WBvk=
X-Received: by 2002:a1c:7f8b:: with SMTP id a133mr380480wmd.136.1586193348972;
        Mon, 06 Apr 2020 10:15:48 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id p10sm26921845wrm.6.2020.04.06.10.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 10:15:48 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 1/3] staging: media: Clean dev_err() message
Date: Mon,  6 Apr 2020 13:15:33 -0400
Message-Id: <20200406171535.7275-2-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406171535.7275-1-jane.pnx9@gmail.com>
References: <20200406171535.7275-1-jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dev_err() already provides information about
the associated device, there is no need to
include __func__ in the message, so remove it
with the %s format string to be consistent.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/media/imx/imx-media-utils.c   |  2 +-
 drivers/staging/media/meson/vdec/esparser.c   |  2 +-
 drivers/staging/media/soc_camera/soc_ov5642.c |  9 +++----
 .../staging/media/usbvision/usbvision-core.c  | 27 +++++++++----------
 .../staging/media/usbvision/usbvision-video.c | 27 +++++++++----------
 5 files changed, 29 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index fae981698c49..8816ac1595bd 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -700,7 +700,7 @@ int imx_media_alloc_dma_buf(struct device *dev,
 	buf->virt = dma_alloc_coherent(dev, buf->len, &buf->phys,
 				       GFP_DMA | GFP_KERNEL);
 	if (!buf->virt) {
-		dev_err(dev, "%s: failed\n", __func__);
+		dev_err(dev, "failed\n");
 		return -ENOMEM;
 	}

diff --git a/drivers/staging/media/meson/vdec/esparser.c b/drivers/staging/media/meson/vdec/esparser.c
index db7022707ff8..ab31d280039d 100644
--- a/drivers/staging/media/meson/vdec/esparser.c
+++ b/drivers/staging/media/meson/vdec/esparser.c
@@ -173,7 +173,7 @@ static int vp9_update_header(struct amvdec_core *core, struct vb2_buffer *buf)
 			memset(fdata + 16 + framesize, 0,
 			       (old_header - fdata + 16 + framesize));
 		} else if (old_header < fdata + 16 + framesize) {
-			dev_err(core->dev, "%s: data overwritten\n", __func__);
+			dev_err(core->dev, "data overwritten\n");
 		}
 		old_header = fdata;
 	}
diff --git a/drivers/staging/media/soc_camera/soc_ov5642.c b/drivers/staging/media/soc_camera/soc_ov5642.c
index 39ae24dca65f..3c58bc009e42 100644
--- a/drivers/staging/media/soc_camera/soc_ov5642.c
+++ b/drivers/staging/media/soc_camera/soc_ov5642.c
@@ -643,15 +643,13 @@ static int reg_read(struct i2c_client *client, u16 reg, u8 *val)

 	ret = i2c_master_send(client, data, 2);
 	if (ret < 2) {
-		dev_err(&client->dev, "%s: i2c read error, reg: %x\n",
-			__func__, reg);
+		dev_err(&client->dev, "i2c read error, reg: %x\n", reg);
 		return ret < 0 ? ret : -EIO;
 	}

 	ret = i2c_master_recv(client, val, 1);
 	if (ret < 1) {
-		dev_err(&client->dev, "%s: i2c read error, reg: %x\n",
-				__func__, reg);
+		dev_err(&client->dev, "i2c read error, reg: %x\n", reg);
 		return ret < 0 ? ret : -EIO;
 	}
 	return 0;
@@ -664,8 +662,7 @@ static int reg_write(struct i2c_client *client, u16 reg, u8 val)

 	ret = i2c_master_send(client, data, 3);
 	if (ret < 3) {
-		dev_err(&client->dev, "%s: i2c write error, reg: %x\n",
-			__func__, reg);
+		dev_err(&client->dev, "i2c write error, reg: %x\n", reg);
 		return ret < 0 ? ret : -EIO;
 	}

diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
index f05a5c84dc18..b84a77f7739a 100644
--- a/drivers/staging/media/usbvision/usbvision-core.c
+++ b/drivers/staging/media/usbvision/usbvision-core.c
@@ -351,8 +351,8 @@ int usbvision_scratch_alloc(struct usb_usbvision *usbvision)
 	scratch_reset(usbvision);
 	if (usbvision->scratch == NULL) {
 		dev_err(&usbvision->dev->dev,
-			"%s: unable to allocate %d bytes for scratch\n",
-				__func__, scratch_buf_size);
+			"unable to allocate %d bytes for scratch\n",
+			scratch_buf_size);
 		return -ENOMEM;
 	}
 	return 0;
@@ -376,8 +376,8 @@ int usbvision_decompress_alloc(struct usb_usbvision *usbvision)
 	usbvision->intra_frame_buffer = vmalloc_32(IFB_size);
 	if (usbvision->intra_frame_buffer == NULL) {
 		dev_err(&usbvision->dev->dev,
-			"%s: unable to allocate %d for compr. frame buffer\n",
-				__func__, IFB_size);
+			"unable to allocate %d for compr. frame buffer\n",
+			IFB_size);
 		return -ENOMEM;
 	}
 	return 0;
@@ -1324,8 +1324,7 @@ static void usbvision_isoc_irq(struct urb *urb)

 	if (err_code) {
 		dev_err(&usbvision->dev->dev,
-			"%s: usb_submit_urb failed: error %d\n",
-				__func__, err_code);
+			"usb_submit_urb failed: error %d\n", err_code);
 	}

 	return;
@@ -1356,8 +1355,7 @@ int usbvision_read_reg(struct usb_usbvision *usbvision, unsigned char reg)
 				0, (__u16) reg, buffer, 1, HZ);

 	if (err_code < 0) {
-		dev_err(&usbvision->dev->dev,
-			"%s: failed: error %d\n", __func__, err_code);
+		dev_err(&usbvision->dev->dev, "failed: error %d\n", err_code);
 		return err_code;
 	}
 	return buffer[0];
@@ -1387,8 +1385,7 @@ int usbvision_write_reg(struct usb_usbvision *usbvision, unsigned char reg,
 				usbvision->ctrl_urb_buffer, 1, HZ);

 	if (err_code < 0) {
-		dev_err(&usbvision->dev->dev,
-			"%s: failed: error %d\n", __func__, err_code);
+		dev_err(&usbvision->dev->dev, "failed: error %d\n", err_code);
 	}
 	return err_code;
 }
@@ -1698,8 +1695,8 @@ int usbvision_set_output(struct usb_usbvision *usbvision, int width,
 				 0, (__u16) USBVISION_LXSIZE_O, value, 4, HZ);

 		if (err_code < 0) {
-			dev_err(&usbvision->dev->dev,
-				"%s failed: error %d\n", __func__, err_code);
+			dev_err(&usbvision->dev->dev, "failed: error %d\n",
+				err_code);
 			return err_code;
 		}
 		usbvision->curwidth = usbvision->stretch_width * usb_width;
@@ -2084,7 +2081,7 @@ static int usbvision_set_dram_settings(struct usb_usbvision *usbvision)
 			     (__u16) USBVISION_DRM_PRM1, value, 8, HZ);

 	if (rc < 0) {
-		dev_err(&usbvision->dev->dev, "%s: ERROR=%d\n", __func__, rc);
+		dev_err(&usbvision->dev->dev, "ERROR=%d\n", rc);
 		return rc;
 	}

@@ -2369,8 +2366,8 @@ void usbvision_stop_isoc(struct usb_usbvision *usbvision)
 					    usbvision->iface_alt);
 		if (err_code < 0) {
 			dev_err(&usbvision->dev->dev,
-				"%s: usb_set_interface() failed: error %d\n",
-					__func__, err_code);
+				"usb_set_interface() failed: error %d\n",
+				err_code);
 			usbvision->last_error = err_code;
 		}
 		reg_value = (16-usbvision_read_reg(usbvision, USBVISION_ALTER_REG)) & 0x0F;
diff --git a/drivers/staging/media/usbvision/usbvision-video.c b/drivers/staging/media/usbvision/usbvision-video.c
index 3ea25fdcf767..edf34497aae7 100644
--- a/drivers/staging/media/usbvision/usbvision-video.c
+++ b/drivers/staging/media/usbvision/usbvision-video.c
@@ -278,7 +278,7 @@ static void usbvision_create_sysfs(struct video_device *vdev)
 			return;
 	} while (0);

-	dev_err(&vdev->dev, "%s error: %d\n", __func__, res);
+	dev_err(&vdev->dev, "error: %d\n", res);
 }

 static void usbvision_remove_sysfs(struct video_device *vdev)
@@ -427,8 +427,7 @@ static int vidioc_g_register(struct file *file, void *priv,
 	err_code = usbvision_read_reg(usbvision, reg->reg&0xff);
 	if (err_code < 0) {
 		dev_err(&usbvision->vdev.dev,
-			"%s: VIDIOC_DBG_G_REGISTER failed: error %d\n",
-				__func__, err_code);
+			"VIDIOC_DBG_G_REGISTER failed: error %d\n", err_code);
 		return err_code;
 	}
 	reg->val = err_code;
@@ -446,8 +445,7 @@ static int vidioc_s_register(struct file *file, void *priv,
 	err_code = usbvision_write_reg(usbvision, reg->reg & 0xff, reg->val);
 	if (err_code < 0) {
 		dev_err(&usbvision->vdev.dev,
-			"%s: VIDIOC_DBG_S_REGISTER failed: error %d\n",
-				__func__, err_code);
+			"VIDIOC_DBG_S_REGISTER failed: error %d\n", err_code);
 		return err_code;
 	}
 	return 0;
@@ -1080,8 +1078,7 @@ static int usbvision_radio_open(struct file *file)
 		goto out;
 	if (usbvision->user) {
 		dev_err(&usbvision->rdev.dev,
-			"%s: Someone tried to open an already opened USBVision Radio!\n",
-				__func__);
+			"Someone tried to open an already opened USBVision Radio!\n");
 		err_code = -EBUSY;
 	} else {
 		/* Alternate interface 1 is is the biggest frame size */
@@ -1223,7 +1220,7 @@ static void usbvision_vdev_init(struct usb_usbvision *usbvision,

 	if (!usb_dev) {
 		dev_err(&usbvision->dev->dev,
-			"%s: usbvision->dev is not set\n", __func__);
+			"usbvision->dev is not set\n");
 		return;
 	}

@@ -1452,23 +1449,23 @@ static int usbvision_probe(struct usb_interface *intf,
 	endpoint = &interface->endpoint[1].desc;

 	if (!usb_endpoint_xfer_isoc(endpoint)) {
-		dev_err(&intf->dev, "%s: interface %d. has non-ISO endpoint!\n",
-		    __func__, ifnum);
-		dev_err(&intf->dev, "%s: Endpoint attributes %d",
-		    __func__, endpoint->bmAttributes);
+		dev_err(&intf->dev, "interface %d. has non-ISO endpoint!\n",
+			ifnum);
+		dev_err(&intf->dev, "Endpoint attributes %d",
+			endpoint->bmAttributes);
 		ret = -ENODEV;
 		goto err_usb;
 	}
 	if (usb_endpoint_dir_out(endpoint)) {
-		dev_err(&intf->dev, "%s: interface %d. has ISO OUT endpoint!\n",
-		    __func__, ifnum);
+		dev_err(&intf->dev, "interface %d. has ISO OUT endpoint!\n",
+			ifnum);
 		ret = -ENODEV;
 		goto err_usb;
 	}

 	usbvision = usbvision_alloc(dev, intf);
 	if (!usbvision) {
-		dev_err(&intf->dev, "%s: couldn't allocate USBVision struct\n", __func__);
+		dev_err(&intf->dev, "couldn't allocate USBVision struct\n");
 		ret = -ENOMEM;
 		goto err_usb;
 	}
---
2.20.1

