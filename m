X-GM-THRID: 6746727664104505344
X-Received: by 2002:a62:e90d:: with SMTP id j13mr24498567pfh.86.1570923128872;
        Sat, 12 Oct 2019 16:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2984:: with SMTP id p126ls2130041pgp.2.gmail; Sat, 12
 Oct 2019 16:32:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwL5gabzUYy6Y38SW8cUNOWefvtbGqnxL64gvQcTyxkM3wncFEcU4R1U2XbFEb2gjpCagC1
X-Received: by 2002:a62:60c6:: with SMTP id u189mr24487346pfb.85.1570923128120;
        Sat, 12 Oct 2019 16:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570923128; cv=none;
        d=google.com; s=arc-20160816;
        b=f6a/A9tuoufUv5RuYzRwG3Nu80VEPfxobqjZRCyoGLFApX+xQtkaCY0WKXbwGLts1y
         rVwISkc5ceCz+mkMyKbEceG+I1rOYvC7HsTAXYbyvpTrog+sz4/oQKxpuEx5ZmEqHwRz
         Ee5iLf25srY9EO0mC73/gw1W47LOASMoxry+e7mYmm6bMJ/gNRS5DXMRfH1vNSjpm879
         8QIfO2XuaCVSnWJgYRh3kYy4P+e/NEJz7ze3xN8IctSwad0ma5XYg2X0dxvbNprEGMZi
         FXIr7/IWTn30+O9Ml5jiwAnv57J9nXxqJqPOLF/EVcHmrrj+nQ14iUB7QYzKtEpO7h3Q
         GRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=qAIpZk7p3ZpU6H+HW5Ln8R0HhstJprdRhNYMB4kYWUs=;
        b=xL2pfJN69drcxoCaZzbsOoRF7EyBWaZQ9uHaaBqguo0RRiX+m5fsdukJoHkyc/3nrk
         oU8yijUkaplJeNvZjR3YEKWsJlsCwSJ2WFZpzLr0X4PlC/O04ux8xCt8slQk4piOGsFP
         WR+liGMlU5ev6fwUHjKZbPKVDHs48eTEwYDR940etBpdh/eRkgDVg0s+GaiCyImNu+rN
         uvtxaAweokP4/fLTKUs5bZMjcnVi9BE7NJX8sFytQj0fgqIs0NQJMhU7qRPSIvBNHHkv
         aq6qxwB0qlFpkIhdJJlOvx0b53KlFb4cV4g18AbBabfXNYFK8TJBgKtVe1cQHJnu/Trb
         jjjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUgwJlCN;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z22si1075575pju.2.2019.10.12.16.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 16:32:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QUgwJlCN;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y72so8212703pfb.12
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 16:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qAIpZk7p3ZpU6H+HW5Ln8R0HhstJprdRhNYMB4kYWUs=;
        b=QUgwJlCNFNAg2fL6y9MTf8WHaA2VrRp0Qjf4R1soZbM1WdqqRMYEuuz1O4melhdTtC
         cKRHpw1e/JOfHyFp954/J8zkm5pcEVBa+A2WFzYxlFc4Z+jr7RIv6CJWpl24sVS3DuZx
         aPD4r/BSmgmrmAzY+SotE4gszaKiWsvWwap2DtZiFxm5Hiwin++vCSX/cX+56MwqDzEc
         0xTS5zP8Vb9vUCbpV8GKnIGTnm34iZW0N0FpdseJHz2eo5LgllF2B1UL1jUvlvYqA7y/
         5VqJKTU/QaJ9JgcPC4NTFfJTW6iP7dwMe7lma1pW4B4nheUJPzK/lbHIKkFsj+xzmjjC
         eSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qAIpZk7p3ZpU6H+HW5Ln8R0HhstJprdRhNYMB4kYWUs=;
        b=Ymj2ykGBjSeYWAokXA1kD5qoqefKsO0LK7mZYimGfFLxGkw/4IPfUqKonSpjysJY4B
         wKJPJpS6jqaFqQ21UWe3u5vchEtISDJKO9AgPmVNW3LIcUmobkbUFI3ueeEN8rw/e00Y
         cF0fG1su1D0bqbpPsfXHmrb9a07cCG62SaF5bQwiBr0m1lKHeluhf/UMvsxRnMdRv0Zt
         bPK6oglLfRq+wtNX3K9FD0+HejbdCb9i06ovwEfm3P4JE37bz4JnzzB8E1DkAV2P5nNr
         MNgh+bkma3U+gHPPq7E1HsCVa/11fNr1/7cW0bQeiZXdUsZPCd9Cimqe4t6YvEHHSY4D
         zXFQ==
X-Gm-Message-State: APjAAAVO66sjmKWFMtpDEhOL3Y0Cebex7PEpJkxOPHgt+LFlXr8IAu2B
	l8Cjhn1dkcWr5SkttsBcE/A9zjt4W+s=
X-Received: by 2002:a17:90a:8003:: with SMTP id b3mr26600432pjn.43.1570923127590;
        Sat, 12 Oct 2019 16:32:07 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 2sm17449819pfa.43.2019.10.12.16.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 16:32:07 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: media: omap4iss: Fix lines ending with open parenthesis
Date: Sat, 12 Oct 2019 16:31:48 -0700
Message-Id: <20191012233148.2891-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix lines ending with open parenthesis. Issue
found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v2:
 - Include similar changes in iss.c file.
 - Create local variables for iss_reg_read
   function calls for better code formatting.
---
 drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
 drivers/staging/media/omap4iss/iss_csi2.c | 14 +++---
 2 files changed, 41 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..7028738b2552 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -555,13 +555,14 @@ static int iss_pipeline_is_last(struct media_entity *me)
 static int iss_reset(struct iss_device *iss)
 {
 	unsigned int timeout;
+	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG);
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
 		    ISS_HL_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+	timeout =
+	iss_poll_condition_timeout(!(reg_config & ISS_HL_SYSCONFIG_SOFTRESET),
+				   1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -575,6 +576,9 @@ static int iss_reset(struct iss_device *iss)
 static int iss_isp_reset(struct iss_device *iss)
 {
 	unsigned int timeout;
+	u32 reg_ctrl = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL);
+	u32 reg_config = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1,
+				      ISP5_SYSCONFIG);
 
 	/* Fist, ensure that the ISP is IDLE (no transactions happening) */
 	iss_reg_update(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
@@ -583,9 +587,9 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(reg_ctrl & ISP5_CTRL_MSTANDBY_WAIT,
+				   1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -595,9 +599,9 @@ static int iss_isp_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
 		    ISP5_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+	timeout =
+	iss_poll_condition_timeout(!(reg_config & ISP5_SYSCONFIG_SOFTRESET),
+				   1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
@@ -964,7 +968,8 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info,
+						   NULL);
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
@@ -1108,33 +1113,36 @@ static int iss_create_links(struct iss_device *iss)
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
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SOURCE_VP,
+				    &iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
-			&iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->ipipe.subdev.entity,
+				    IPIPE_PAD_SOURCE_VP,
+				    &iss->resizer.subdev.entity,
+				    RESIZER_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/staging/media/omap4iss/iss_csi2.c b/drivers/staging/media/omap4iss/iss_csi2.c
index a6dc2d2b1228..4ba6f8a3c77d 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -485,6 +485,8 @@ static void csi2_irq_status_set(struct iss_csi2_device *csi2, int enable)
 int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 {
 	unsigned int timeout;
+	u32 reg_status = iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS);
+	u32 reg_reg1 = iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1);
 
 	if (!csi2->available)
 		return -ENODEV;
@@ -495,9 +497,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
 		    CSI2_SYSCONFIG_SOFT_RESET);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
-		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
+	timeout =
+	iss_poll_condition_timeout(reg_status & CSI2_SYSSTATUS_RESET_DONE,
+				   500, 100, 200);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
 		return -EBUSY;
@@ -506,9 +508,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
 		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
-		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
+	timeout =
+	iss_poll_condition_timeout(reg_reg1 & REGISTER1_RESET_DONE_CTRLCLK,
+				   10000, 100, 500);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
 		return -EBUSY;
-- 
2.17.1


