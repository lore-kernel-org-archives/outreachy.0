X-GM-THRID: 6746727664104505344
X-Received: by 2002:a0d:c084:: with SMTP id b126mr11531905ywd.105.1571032392581;
        Sun, 13 Oct 2019 22:53:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:6ac3:: with SMTP id f186ls1818537ywc.8.gmail; Sun, 13
 Oct 2019 22:53:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUPPNC7uUndY5SbC3O5Y0ydlPZWqVjUKTM+2gEYPakBHKbhXSYHtMSh5oJXGeZQZz9DQup
X-Received: by 2002:a81:b343:: with SMTP id r64mr11673652ywh.96.1571032391376;
        Sun, 13 Oct 2019 22:53:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571032391; cv=none;
        d=google.com; s=arc-20160816;
        b=Zqzf88QUYt9Y7Mkv4bl77GR7j/QpmazmcW9VALHJnSIpZRcOJoa8TiBW2IsQbn3FLK
         YIlwtT5yIjk7nDUFS4WGZ4WyMtaxvMnklo0nkHyZUdRKo4dz9Gb9bMbpOrG+jX/IG/LA
         PLQYpp0GPFcbEYT+WeZy+XSlgKUMsESJcLMrYRDWqLuhBexG8xv6zwBvnE1Vsv4zHSke
         aLPCfw/BQnD+j43ayeDFMbcRo/jNQrf5S0BYKd9qzSYAI4CsRSq64fX2Jd4KdwvlYsxr
         7hY5bZE1FALzDEBRXBzNMbPNKy2uIV8tesWm5+mhJfxEPsZIyr53ze/HwoXVAZ1mcIoZ
         +jrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fM7zICoD3yWEPhlSTmV3CS673C6pprreYAivKzxBFOM=;
        b=bbqJP6T25bT6COot+4+pSpZlHR0bwbLuBGhBj46gHhP1duPny8iUFqAtdaD/a+PEBL
         eENtnZh299zwvjWaaWewkoNV+ERalnSS3SKlGrLR48GJ5R+QjCS/mAyceK4aWqNvVrMf
         lgrvlKYce5Izj66a3lfZK/YrMIda3QB1HigHLhdy58rvj345XT0aXTsEEgVu0rgmzLj/
         ZhNDjX6UxxCIE2byjerE9Y+Emj1Sn63b3QC6/a6ZONzlMAej03kV1hq0b3kaRwtjqbDJ
         3Wepse8sctatf3HMpMvoW5k+XHiIHcec57G/noqmtGLQjqP5JpMbfU7WTk7YZsgLzCsj
         60aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKf8fwyt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t73si1893465ybi.4.2019.10.13.22.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 22:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKf8fwyt;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id p30so9429350pgl.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 22:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fM7zICoD3yWEPhlSTmV3CS673C6pprreYAivKzxBFOM=;
        b=TKf8fwytV374VV8eohPT+Akyt/JKWbsCdrutwzadywNnRllwXgVd51VAVGPa45eb+9
         WYZ2tuCBWylmW9PqsK/Q8Sp2/dk9WpahZ6Z8kJf/IRle3utspX2X9BXOuD5lr+ODBuYU
         8PpIGpKfDj0jOX+h2v7XrsZrePVqCo9h7yeZuEd+9lyNugPgJn49saLl/xN3Us6AcN75
         u0do3b+wyHI/+vjwCTUTo5no89M5ykhUAtAlBWupDBSfcFb70mWW5BQJ3PlKlB8MKFY3
         OMojGXZeWt7+bbgqSMdz/REyBlXrIxIUxjD1xb/mTHYG53q+gLHMQP0bywYh37EmGe+u
         qEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fM7zICoD3yWEPhlSTmV3CS673C6pprreYAivKzxBFOM=;
        b=OQ2g1bGplU9CX5Yfu91KWglowjdWl8Nul8l6p+Q7CHWqCepiuFSgJSdzXs0eGkqeW5
         JVtGL43EJDHp+ryJZmnS7/W3sCLTFlW5ZuEmMZ1ai84/DfQM/PJ8p5QVdWgTvBNCZ5Es
         lbfK2Yilfu2paLb74fkwaOmESBqptnJ+sjxxy7fuEHgKXr9gCsEB44e+5Ko3oWFDfEXd
         5hALhd5H9g6tseDQUUHF2UCHb9rLdQEcH3f60NzS9Z5GUjidP5ui2eYwl/Q44qVLSUgl
         4ZIFapv8fdO4cyxfgqlKhbQ/4+l1+y1VHiBg0kpyp4wU6+2pGSraoBznzOT3Cl5or3Rx
         8Wwg==
X-Gm-Message-State: APjAAAUrbKDZ9UHHQ3vS+loXcB2qfqoB8aNF6h3VFA5QwRUG/JZu+8cm
	Un3iX9SnEhAemoZLhr3WHXBb7qjA8wc=
X-Received: by 2002:a62:685:: with SMTP id 127mr12944984pfg.211.1571032390351;
        Sun, 13 Oct 2019 22:53:10 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id s10sm30809118pgn.9.2019.10.13.22.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 22:53:09 -0700 (PDT)
Date: Sun, 13 Oct 2019 22:53:09 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com, andrea.parri@microsoft.com
Cc: jamal.k.shareef@gmail.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: media: omap4iss: Fix lines ending with open
 parenthesis
Message-ID: <20191014055308.GA1069@jamal-XPS-13-9343>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix lines ending with open parenthesis. Issue
found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v3:
 - Remove created local variables and revert
   back to original function calls because intent
   is to dynamically poll the value.
 - Format code for better readability. This
   introduces new warning for "alignment should
   match open parenthesis" but will be disregarded.

Changes in v2:
 - Include similar changes in iss.c file.
 - Create local variables for iss_reg_read
   function calls for better code formatting.
---
 drivers/staging/media/omap4iss/iss.c      | 58 +++++++++++++----------
 drivers/staging/media/omap4iss/iss_csi2.c | 12 ++---
 2 files changed, 39 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..9112eb89b7c0 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
 		    ISS_HL_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
+					OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
+					ISS_HL_SYSCONFIG_SOFTRESET),
+					1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -583,9 +584,9 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+	timeout = iss_poll_condition_timeout(iss_reg_read(iss,
+				OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
+				ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -595,9 +596,10 @@ static int iss_isp_reset(struct iss_device *iss)
 	iss_reg_set(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
 		    ISP5_SYSCONFIG_SOFTRESET);
 
-	timeout = iss_poll_condition_timeout(
-		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
+					OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG)
+					& ISP5_SYSCONFIG_SOFTRESET),
+					1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
@@ -964,7 +966,8 @@ iss_register_subdev_group(struct iss_device *iss,
 		}
 
 		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
-				board_info->board_info, NULL);
+						   board_info->board_info,
+						   NULL);
 		if (!subdev) {
 			dev_err(iss->dev, "Unable to register subdev %s\n",
 				board_info->board_info->type);
@@ -1108,33 +1111,38 @@ static int iss_create_links(struct iss_device *iss)
 	}
 
 	/* Connect the submodules. */
-	ret = media_create_pad_link(
-			&iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2a.subdev.entity,
+				    CSI2_PAD_SOURCE,
+				    &iss->ipipeif.subdev.entity,
+				    IPIPEIF_PAD_SINK, 0);
 	if (ret < 0)
 		return ret;
 
-	ret = media_create_pad_link(
-			&iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
-			&iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
+	ret = media_create_pad_link(&iss->csi2b.subdev.entity,
+				    CSI2_PAD_SOURCE,
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
index a6dc2d2b1228..cd705df04f6c 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -495,9 +495,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_SYSCONFIG,
 		    CSI2_SYSCONFIG_SOFT_RESET);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
-		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
+	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
+				csi2->regs1, CSI2_SYSSTATUS) &
+				CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
 		return -EBUSY;
@@ -506,9 +506,9 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 	iss_reg_set(csi2->iss, csi2->regs1, CSI2_COMPLEXIO_CFG,
 		    CSI2_COMPLEXIO_CFG_RESET_CTRL);
 
-	timeout = iss_poll_condition_timeout(
-		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
-		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
+	timeout = iss_poll_condition_timeout(iss_reg_read(csi2->iss,
+				csi2->phy->phy_regs, REGISTER1) &
+				REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
 		return -EBUSY;
-- 
2.17.1


