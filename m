X-GM-THRID: 6812648549642141696
X-Received: by 2002:a7b:c213:: with SMTP id x19mr352007wmi.53.1586193359479;
        Mon, 06 Apr 2020 10:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ec10:: with SMTP id x16ls93085wrn.10.gmail; Mon, 06 Apr
 2020 10:15:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypIg20ri07D1ZUXq/C6gtK0jqZWFHIaYe7RoE58Nu4PPYT0FcV42NUbZ8FV7fG0iXQlUecjA
X-Received: by 2002:adf:e948:: with SMTP id m8mr198381wrn.193.1586193358193;
        Mon, 06 Apr 2020 10:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193358; cv=none;
        d=google.com; s=arc-20160816;
        b=iN70DqjxY8IwZKqoveU5Xg/ldk7j3WuXc2RQhBli/4Sh3sv/eGTHdJhKiQHX4XIPoh
         /g6yEIOwWCiezwNcbJO8diLIxeFVnOyFrHUB2B1VSK8alJ8qBnathATishiPqNJS/Cmq
         V9cE8M2NgzFAcLsOYKYmX2cX7Xb9JP17G0lay0VxJ/+00bMy8wyoFrvj95HNLMoaDfXL
         WwMFz3R+sYBwvhCbWc51hbINBFMyVPVoeM8tq1DztXtlWagqBgMnrBoOHcOJJWbKanjV
         VM9SqP63UE+ZgDHvRec+K7ZHTba68qeMkEA8iPchyA5hpYV8Xj2dO6XV3nekF4l+StgK
         3htw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zh5SyWJCo+tCxV6bzsoU19CDy1VHDZS0Ed9oG/Hc/z8=;
        b=gMwKLIpnRsYKAhNuH3fR2sDzwUIad9ET84QiGPq0yvWc87l+8B9YnIbMlcqDn79AkX
         f4rOO3XHPr/zsvcxUWShRsZJCTMl27sOLPQA9jo3SPaYzKyVUCLAwZT6VuxXsaX2geeZ
         1EINNWEmcBRKli/tKWf2795PhSU0ySfI4KNcfM8lMgDemWuno+w/ZnntxToCkvuxk9+Q
         zVCE35GH80WMjlcYRsgleTj2Mmr9K6w2NjgI4xL0Z4vtr49TXtGMKf08RXmSESN4tRwP
         +jXpf3sksxtGCHYjT1h7LLjGum95ani7tqHjkoa99cq7+RLiGmWerqsChsKxWy6xWgq1
         g6jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxJE9zi7;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id u25si34133wmm.3.2020.04.06.10.15.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxJE9zi7;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id y20so196255wma.4
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 10:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zh5SyWJCo+tCxV6bzsoU19CDy1VHDZS0Ed9oG/Hc/z8=;
        b=LxJE9zi73VcHyRt1AdtGsrXNEh01u3EkpWo79ZmnQqHfbLrLuO7uuxRR01ZWg0wHmx
         mBD7oDXTVbqgMwQepdDYlMmfGSPNlhwJ2/oLxWm9lHmC8gdI894mUzIYGB2zUpbtSbVR
         0L50KUJoJSCCvILqPwXn98ECy9DEbDS42OrI3qQ8DshLkJLDiK0KGVQA+yUzCjiXX9Du
         kkzcKVHtnEJGp4doWd1BWFjoKAjxkIs+rfUSUoMRAsfZi/gEFGrO2XDUIcMG7hw0PtIA
         trO/DMK6qqdcYkY66cdIPoXp9Qf2Ij+VvZrH//R+ARpKt907pDDfkq6/GwEpYFBjTV4H
         2zHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zh5SyWJCo+tCxV6bzsoU19CDy1VHDZS0Ed9oG/Hc/z8=;
        b=lGhzHgT602rw5SlB+/GTDHlnTb7ltwMU6eEOVFgr++G0cwKkim+lhV6sxffD22CfME
         iMgjKqe2a0Xx2mCiS9A7salgsf0Yc/b4c0iCrNUVaEgTO2TS8MhYc4/5+aNbq86+z964
         NcaeatoOeVnib0exaVhLLKkLwKfQJW8I5UBEbWHen1XQEPSbCcBw0eJCP3U+4d8WiQak
         iyz6VzouD3XzDJknPsGdI3ROlwwaaSt+Yba35e2n6uctRi5mRMo0lej9Zn4Hb0MI2PKq
         glZPevA0Rcu/fcxelciX26WRgbf28r2ja37sr90LNiGm2Vl0Rf3KcMKwzaabqdPR9t2u
         ZVhw==
X-Gm-Message-State: AGi0PuZCL4RPh6sgzSgSgF8jc8bksI0Kv6jagmJgYhZMJjMrSRNxXmpO
	IGmqsnNmbXOcwA/6dire2YU=
X-Received: by 2002:a7b:c401:: with SMTP id k1mr61379wmi.152.1586193357749;
        Mon, 06 Apr 2020 10:15:57 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id p10sm26921845wrm.6.2020.04.06.10.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 10:15:57 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 3/3] staging: media: Use dev_*() family
Date: Mon,  6 Apr 2020 13:15:35 -0400
Message-Id: <20200406171535.7275-4-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406171535.7275-1-jane.pnx9@gmail.com>
References: <20200406171535.7275-1-jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dev_*() family provide information specific to
the associated device, use them instead of
printk(KERN_LEVEL ...) to be consistent.

This patch fixes Checkpatch.pl WARNINGS:
Prefer [subsystem eg: netdev]_info([subsystem]dev, ...
then dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...

Prefer [subsystem eg: netdev]_err([subsystem]dev, ...
then dev_err(dev, ... then pr_err(... to printk(KERN_ERR ...

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 .../staging/media/usbvision/usbvision-core.c  | 36 +++++++++++--------
 .../staging/media/usbvision/usbvision-i2c.c   |  5 ++-
 .../staging/media/usbvision/usbvision-video.c | 14 ++++----
 3 files changed, 32 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/usbvision/usbvision-core.c b/drivers/staging/media/usbvision/usbvision-core.c
index 284bda783c2b..9373e8472247 100644
--- a/drivers/staging/media/usbvision/usbvision-core.c
+++ b/drivers/staging/media/usbvision/usbvision-core.c
@@ -1621,8 +1621,9 @@ static int usbvision_set_video_format(struct usb_usbvision *usbvision, int forma
 	if ((format != ISOC_MODE_YUV422)
 	    && (format != ISOC_MODE_YUV420)
 	    && (format != ISOC_MODE_COMPRESS)) {
-		printk(KERN_ERR "usbvision: unknown video format %02x, using default YUV420",
-		       format);
+		dev_err(&usbvision->dev->dev,
+			"usbvision: unknown video format %02x, using default YUV420",
+			format);
 		format = ISOC_MODE_YUV420;
 	}
 	value[0] = 0x0A;  /* TODO: See the effect of the filter */
@@ -1634,8 +1635,9 @@ static int usbvision_set_video_format(struct usb_usbvision *usbvision, int forma
 			     (__u16) USBVISION_FILT_CONT, value, 2, HZ);

 	if (rc < 0) {
-		printk(KERN_ERR "%s: ERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
-		       proc, rc);
+		dev_err(&usbvision->dev->dev,
+			"%s: ERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
+			proc, rc);
 	}
 	usbvision->isoc_mode = format;
 	return rc;
@@ -1868,8 +1870,9 @@ static int usbvision_set_compress_params(struct usb_usbvision *usbvision)
 			     (__u16) USBVISION_INTRA_CYC, value, 5, HZ);

 	if (rc < 0) {
-		printk(KERN_ERR "%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
-		       proc, rc);
+		dev_err(&usbvision->dev->dev,
+			"%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
+			proc, rc);
 		return rc;
 	}

@@ -1899,8 +1902,9 @@ static int usbvision_set_compress_params(struct usb_usbvision *usbvision)
 			     (__u16) USBVISION_PCM_THR1, value, 6, HZ);

 	if (rc < 0) {
-		printk(KERN_ERR "%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
-		       proc, rc);
+		dev_err(&usbvision->dev->dev,
+			"%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
+			proc, rc);
 	}
 	return rc;
 }
@@ -1938,8 +1942,9 @@ int usbvision_set_input(struct usb_usbvision *usbvision)

 	rc = usbvision_write_reg(usbvision, USBVISION_VIN_REG1, value[0]);
 	if (rc < 0) {
-		printk(KERN_ERR "%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
-		       proc, rc);
+		dev_err(&usbvision->dev->dev,
+			"%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
+			proc, rc);
 		return rc;
 	}

@@ -2004,8 +2009,9 @@ int usbvision_set_input(struct usb_usbvision *usbvision)
 			     USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT, 0,
 			     (__u16) USBVISION_LXSIZE_I, value, 8, HZ);
 	if (rc < 0) {
-		printk(KERN_ERR "%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
-		       proc, rc);
+		dev_err(&usbvision->dev->dev,
+			"%sERROR=%d. USBVISION stopped - reconnect or reload driver.\n",
+			proc, rc);
 		return rc;
 	}

@@ -2178,7 +2184,8 @@ int usbvision_restart_isoc(struct usb_usbvision *usbvision)
 int usbvision_audio_off(struct usb_usbvision *usbvision)
 {
 	if (usbvision_write_reg(usbvision, USBVISION_IOPIN_REG, USBVISION_AUDIO_MUTE) < 0) {
-		printk(KERN_ERR "usbvision_audio_off: can't write reg\n");
+		dev_err(&usbvision->dev->dev,
+			"usbvision_audio_off: can't write reg\n");
 		return -1;
 	}
 	usbvision->audio_mute = 0;
@@ -2190,7 +2197,8 @@ int usbvision_set_audio(struct usb_usbvision *usbvision, int audio_channel)
 {
 	if (!usbvision->audio_mute) {
 		if (usbvision_write_reg(usbvision, USBVISION_IOPIN_REG, audio_channel) < 0) {
-			printk(KERN_ERR "usbvision_set_audio: can't write iopin register for audio switching\n");
+			dev_err(&usbvision->dev->dev,
+				"can't write iopin register for audio switching\n");
 			return -1;
 		}
 	}
diff --git a/drivers/staging/media/usbvision/usbvision-i2c.c b/drivers/staging/media/usbvision/usbvision-i2c.c
index 3bba93293463..4f6672766ae4 100644
--- a/drivers/staging/media/usbvision/usbvision-i2c.c
+++ b/drivers/staging/media/usbvision/usbvision-i2c.c
@@ -187,7 +187,7 @@ int usbvision_i2c_register(struct usb_usbvision *usbvision)
 	i2c_set_adapdata(&usbvision->i2c_adap, &usbvision->v4l2_dev);

 	if (usbvision_write_reg(usbvision, USBVISION_SER_MODE, USBVISION_IIC_LRNACK) < 0) {
-		printk(KERN_ERR "usbvision_i2c_register: can't write reg\n");
+		dev_err(&usbvision->dev->dev, "can't write reg\n");
 		return -EBUSY;
 	}

@@ -314,8 +314,7 @@ usbvision_i2c_read_max4(struct usb_usbvision *usbvision, unsigned char addr,
 		buf[0] = usbvision_read_reg(usbvision, USBVISION_SER_DAT1);
 		break;
 	default:
-		printk(KERN_ERR
-		       "usbvision_i2c_read_max4: buffer length > 4\n");
+		dev_err(&usbvision->dev->dev, "buffer length > 4\n");
 	}

 	if (i2c_debug & DBG_I2C) {
diff --git a/drivers/staging/media/usbvision/usbvision-video.c b/drivers/staging/media/usbvision/usbvision-video.c
index edf34497aae7..28614ab56f8f 100644
--- a/drivers/staging/media/usbvision/usbvision-video.c
+++ b/drivers/staging/media/usbvision/usbvision-video.c
@@ -1270,8 +1270,9 @@ static int usbvision_register_video(struct usb_usbvision *usbvision)

 	if (video_register_device(&usbvision->vdev, VFL_TYPE_VIDEO, video_nr) < 0)
 		goto err_exit;
-	printk(KERN_INFO "USBVision[%d]: registered USBVision Video device %s [v4l2]\n",
-	       usbvision->nr, video_device_node_name(&usbvision->vdev));
+	dev_info(&usbvision->dev->dev,
+		 "USBVision[%d]: registered USBVision Video device %s [v4l2]\n",
+		 usbvision->nr, video_device_node_name(&usbvision->vdev));

 	/* Radio Device: */
 	if (usbvision_device_data[usbvision->dev_model].radio) {
@@ -1281,8 +1282,9 @@ static int usbvision_register_video(struct usb_usbvision *usbvision)
 		usbvision->rdev.device_caps = V4L2_CAP_RADIO | V4L2_CAP_TUNER;
 		if (video_register_device(&usbvision->rdev, VFL_TYPE_RADIO, radio_nr) < 0)
 			goto err_exit;
-		printk(KERN_INFO "USBVision[%d]: registered USBVision Radio device %s [v4l2]\n",
-		       usbvision->nr, video_device_node_name(&usbvision->rdev));
+		dev_info(&usbvision->dev->dev,
+			 "USBVision[%d]: registered USBVision Radio device %s [v4l2]\n",
+			 usbvision->nr, video_device_node_name(&usbvision->rdev));
 	}
 	/* all done */
 	return 0;
@@ -1426,8 +1428,8 @@ static int usbvision_probe(struct usb_interface *intf,
 		ret = -ENODEV;
 		goto err_usb;
 	}
-	printk(KERN_INFO "%s: %s found\n", __func__,
-				usbvision_device_data[model].model_string);
+	dev_info(&intf->dev, "%s found\n",
+		 usbvision_device_data[model].model_string);

 	if (usbvision_device_data[model].interface >= 0)
 		interface = &dev->actconfig->interface[usbvision_device_data[model].interface]->altsetting[0];
---
2.20.1

