X-GM-THRID: 6746702482716491776
X-Received: by 2002:a17:90a:bb98:: with SMTP id v24mr20185723pjr.10.1570839081398;
        Fri, 11 Oct 2019 17:11:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7c90:: with SMTP id x138ls2421168pfc.4.gmail; Fri, 11
 Oct 2019 17:11:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq1IZ7lSl0mAlTZyh/UvFvJXbZy3ydJxzM5cv1tQ2NT8XGKowB8C9GrVoczTD5Z0zAUIKj
X-Received: by 2002:a63:6f02:: with SMTP id k2mr20148374pgc.163.1570839080248;
        Fri, 11 Oct 2019 17:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570839080; cv=none;
        d=google.com; s=arc-20160816;
        b=OYK6V8I3A2Uuda28FnifZy/6vPPeCx/hz/t2wO+f15HUXSWh2HM2pd8Mdv+zfB8dyP
         q3yt/eOwIyTtXY5nokj8HYLXXDv2kOYm6dZ11SpaI0P357td4yR9Fo6zkbxuXQ3IKNGt
         tMOCdvqvR8iGAqtXLHhzQdJFySPicytw29x4Qn1u/WfTbejD/np8GxpsZU9+U0amYQ6f
         FXa74Zvu7gtDOPPBKwPfMLLbKjWERIb5ALX9DIILhmBUoG+ebVTHfgMnMIfERdNITL9A
         AQxhPByhRxR1n/0JWWwmVIa/2AyprFx5Az6XtmM5h6pYHdRng+9oXMlakjbMw7/VNpVF
         0LmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=p97fZJB4ZqOPBodMZslDM6IMgVQDno+CSbtf+gc0KpQ=;
        b=xQvdQFsrOcs3BWr5QQKYJ7ZF9OphLI2wQFBnmNX0B9NN0ShD1Ka+V6Ed/kp8ke7336
         tO+9iRM5mUcSshTum/I7ggkuZN9w0eZRGy4FEUFPcTZrMlDgefSnuvFiLqqEsohMo/WQ
         gp6rVYegK/KI3rKDheMr5MgMp9VQbWtZdsmPTQ2p+/EsI+Nc6h22O9i2HMH5rzVcQb85
         3YscYnYa1vovMAoW5fovMitzFSzmDbZg6a3jf8p+rfECR7ZGP9kxfig+mZ+R6WIaQ6A7
         v7Du4OT5QNd/QyI7Xo5RFlXezJs8yxRgI7Jxzq4BT20NhZy0WCZa3Q+DPzm6RmqQVJpF
         WXmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=psWudtGz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o23si125231pjt.2.2019.10.11.17.11.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 17:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=psWudtGz;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i76so6684709pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 17:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=p97fZJB4ZqOPBodMZslDM6IMgVQDno+CSbtf+gc0KpQ=;
        b=psWudtGzBuTs/WHzXrNPRipuPyf2gcumD7Us8TRmjdESoO2k3IAZCsIsfjIlluM+1E
         9/iFRMnLHDXYQkfLcyMZhrnEY3ovPmQKE1qBReflqWM/qQ5ezhhWmh1T8v0CqfYROzhq
         U08Yx9Th/ZLKyqgd875lewEH1hLGymnho479bN+fhHEMr1/BSecN8FRKgh//6ABhjcCY
         a/LPl8qCaHpM+1KBbhR68YdoZ5GOjOmulyYdiyCWeT4H3K/2xm4M5D7ulCvi1ZhOxN8s
         7SM7+OLqcbYJQr+m8Kif0+CXwIFq9uFrMD2MM3E4zN4+6mMWU+Ckio51CNIPGbXUW6tg
         ibrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p97fZJB4ZqOPBodMZslDM6IMgVQDno+CSbtf+gc0KpQ=;
        b=K1NsS1FBG8DcpljiCeGNso82/W5EMi8SbPi6ckIqIw2gbVou8wuDewLUT7gVTimd4h
         bmI4x8RQGw88UVOH9SbTKct2k3xzfbMqZtyC7vbrbyt+xll5rl+2K5w9+GYWrEOb1iTQ
         mm46FTBcBwYcHw7H5IzGcpLJZuX6RBL4R4PVpVKwS5+5SqRh9X5Ujwoe4nNVNAFVC6Th
         Ki0OrEg47cJDL8KHQ/FOaKqg6hRCGC+aMqrA/l4MKZlqLMywwQzOBJoG9hq8nxXxrnYk
         TOZocX3eQJIhE7aWLOtZEW2zAmoqqAE/B002+Av9hO6s4GHUUcZZ5lo4US4rOpfK+eFA
         zNyw==
X-Gm-Message-State: APjAAAVg0QjdDEbeknpyo/PuX8+yeut39sGqKFLutFvH2M3FirPid+vy
	EedUc+LKEpkqbXQxJIPidzmADlqapgs=
X-Received: by 2002:a63:4181:: with SMTP id o123mr1962850pga.301.1570839079628;
        Fri, 11 Oct 2019 17:11:19 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y80sm10493490pfc.30.2019.10.11.17.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 17:11:18 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: 
Date: Fri, 11 Oct 2019 17:10:17 -0700
Message-Id: <20191012001017.3665-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Subject: [PATCH] staging: media: omap4iss: Fix lines ending with "("

Fix lines ending with open left parenthesis "(".
Issue found by checkpatch.

Also fix checkpatch "alignment should match open
parenthesis" issue.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 65 +++++++++++++++++-----------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..9d6676b4618a 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -559,9 +559,11 @@ static int iss_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
 		    ISS_HL_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
+							    OMAP4_ISS_MEM_TOP,
+							    ISS_HL_SYSCONFIG) &
+						ISS_HL_SYSCONFIG_SOFTRESET),
+						1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -583,9 +585,11 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+						ISP5_CTRL) &
+				   ISP5_CTRL_MSTANDBY_WAIT,
+				   1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -595,9 +599,11 @@ static int iss_isp_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
 		    ISP5_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+						  ISP5_SYSCONFIG) &
+				     ISP5_SYSCONFIG_SOFTRESET),
+				     1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
@@ -964,7 +970,9 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info,
+						   NULL);
+
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
@@ -1108,33 +1116,40 @@ static int iss_create_links(struct iss_device *iss)
 	}
 
 	/* Connect the submodules. */
-	ret = media_create_pad_link(
-			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
+
 	if (ret < 0)
 		return ret;
 
-- 
2.17.1


