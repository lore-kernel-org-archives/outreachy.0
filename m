X-GM-THRID: 6746727664104505344
X-Received: by 2002:a17:902:bd4b:: with SMTP id b11mr10263584plx.257.1571627662571;
        Sun, 20 Oct 2019 20:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6904:: with SMTP id j4ls3258794plk.9.gmail; Sun, 20
 Oct 2019 20:14:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSyoU4fWppC/2KP/ZniRZjxeihRznf/GjKaCQHisChQG8NLWyYFBlGcfTc3uy+76BKLvUq
X-Received: by 2002:a17:902:ff14:: with SMTP id f20mr12414078plj.216.1571627661535;
        Sun, 20 Oct 2019 20:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571627661; cv=none;
        d=google.com; s=arc-20160816;
        b=CJ5Rt9BBs3ThKGeBkkDHByZ5nhieJAOKuCfwj0FGwmF2rvVuvzURhluIVmUrszvyRa
         hfhuEoCytzbg7w3r1TYj0Cekq0PJKRTEfEZSgOUziAsch3JM/wc7/W1ZlTlZaRMiLrRn
         WSmIbsg69w1ds0gRAEfLwB+0JyqvuoIaoY5r9dCcEKwpyLphgVe+9uWS1eDkdiWyTNNd
         9ZFkTbESyL2uaqNmRlLFiwDx/JYShg3NF75kMCatJVVW1+vANlqJRYg6BYaT1BXN+QwR
         9fdImg2JUKR3XpLu0DfQdtS2xGHhxT8euOnMcuAQep7I3kPsM4uDQbEQeZOtTzPzsC9u
         J0nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lyeKt6bbKRKECPowuVTXwtadvT/9U39qbZhz0x18BLM=;
        b=lkyc7nufvkaTn5Yk/Hi/pVVu4MlFaqQiYs4881Xm2sDWlkOhySxuNKJh1YS1lv/mXM
         0VPErewni7X4qAgYcrmyIJZL6AuGfX9ESmvG/Ds7bBWLSBN3B+c1FSQ/PzPZ/st8D0/o
         Ddeynm1/e1m4NuJAnylGCFIX/obQRVJ8DILRfKaWlc2P+7rq4Jl+EsiorqR0YzfWqkBz
         UCzaJtpXbPxwNaUkm6MHLEKe2ZZr5j8IAvEGJURWxlZAAb/W8QnWkOtJ4DOWm33HYEVy
         y4IBEP9Y8bybwVR3FQR34sWjeZxMRXSO2EWQ/m0yOKx6l6UQliystoJP7LxHgVJK3iJ4
         1KxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tAnZND9e;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x22si144245pgx.2.2019.10.20.20.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 20:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tAnZND9e;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id c3so5912357plo.2
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Oct 2019 20:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lyeKt6bbKRKECPowuVTXwtadvT/9U39qbZhz0x18BLM=;
        b=tAnZND9e8BebRZYg3WLrXYVtFhGKgw00pkk1XXdCfImT/7m9s0yfpM4zIwpI3/vqx5
         uv0OonAd/jh/wD73rt4BLqj/ZfW8uTK0lo3k+WdyG7w1LoEDwvZ5bw7Ycos3lg1yrnVu
         qrAOEd03V1YXIXVcGESYky5xxwNWK8Rs1VLfuthL4JVg2XopXWf09JrUyPjnD6gWxv9L
         O/40FX7pj7UKuMpBViNItk7QE+den3713V3jOeoknKFGQP0R3mqSf+ln6stIVC5XDypQ
         mMqccEFj79HFOwAwpdsamkvNQ6dSEte9/UYrJKItxPDr1nkAaW20fA3sk/2WVuOBTRzg
         Sd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lyeKt6bbKRKECPowuVTXwtadvT/9U39qbZhz0x18BLM=;
        b=nk7HtVkPVA5Nh6KC2ND5Kps5Y0AqYN5YMnDnvuFoKp9LeX6TBkXO7mrt+HlwZzRFB/
         2wJW9+lXjU1gXpqVIl/ZWr8/F5B/nSGW4MooQE6kgNxewn+k+e+p/kSnsWgaBxt7urbN
         JmcUxMZKpKJSUReA8SfHNDaYEstYZrDyhzt7o9wAg8GS5wIZGDWLULVbv9ZCWQfaXk8x
         e3KIVBSMZE46x4ovJ+yoatSzfipBLcbbNzSwm3VaDn0kkF0346p8QTdW5u9VNKbVWbmo
         Ene9L2XFjxZ926DAUyDQ7CYEULGgcCz4yUSEoox3Wh/f6DJijTv+v6HyMK8HAyK137rI
         HrhQ==
X-Gm-Message-State: APjAAAW8TsZnM5yXuwabz4WzxHz+Qy7XxFImXvHBTA7ikcTuqBGRPpTO
	WRIdCrx5dKnT4nL7QZ7wqBE=
X-Received: by 2002:a17:902:b703:: with SMTP id d3mr23243023pls.194.1571627661134;
        Sun, 20 Oct 2019 20:14:21 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id h1sm14348965pfk.124.2019.10.20.20.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2019 20:14:20 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: media: omap4iss: Fix lines ending with open parenthesis
Date: Sun, 20 Oct 2019 20:12:41 -0700
Message-Id: <20191021031241.3207-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix lines ending with open parenthesis. Issue
found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
Changes in v4:
 - Leave parenthsis open and adjust spacing for iss_poll_condition
   call for better readability.

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
 drivers/staging/media/omap4iss/iss.c      | 44 +++++++++++++----------
 drivers/staging/media/omap4iss/iss_csi2.c |  6 ++--
 2 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..ae6d243e56fb 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -561,7 +561,8 @@ static int iss_reset(struct iss_device *iss)
 
 	timeout = iss_poll_condition_timeout(
 		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
-		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
+		  ISS_HL_SYSCONFIG_SOFTRESET),
+		1000, 10, 100);
 	if (timeout) {
 		dev_err(iss->dev, "ISS reset timeout\n");
 		return -ETIMEDOUT;
@@ -585,7 +586,8 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	timeout = iss_poll_condition_timeout(
 		iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
-		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
+		ISP5_CTRL_MSTANDBY_WAIT,
+		1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 standby timeout\n");
 		return -ETIMEDOUT;
@@ -597,7 +599,8 @@ static int iss_isp_reset(struct iss_device *iss)
 
 	timeout = iss_poll_condition_timeout(
 		!(iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
-		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
+		  ISP5_SYSCONFIG_SOFTRESET),
+		1000000, 1000, 1500);
 	if (timeout) {
 		dev_err(iss->dev, "ISP5 reset timeout\n");
 		return -ETIMEDOUT;
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
index a6dc2d2b1228..208524ee6000 100644
--- a/drivers/staging/media/omap4iss/iss_csi2.c
+++ b/drivers/staging/media/omap4iss/iss_csi2.c
@@ -497,7 +497,8 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 
 	timeout = iss_poll_condition_timeout(
 		iss_reg_read(csi2->iss, csi2->regs1, CSI2_SYSSTATUS) &
-		CSI2_SYSSTATUS_RESET_DONE, 500, 100, 200);
+		CSI2_SYSSTATUS_RESET_DONE,
+		500, 100, 200);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: Soft reset timeout!\n");
 		return -EBUSY;
@@ -508,7 +509,8 @@ int omap4iss_csi2_reset(struct iss_csi2_device *csi2)
 
 	timeout = iss_poll_condition_timeout(
 		iss_reg_read(csi2->iss, csi2->phy->phy_regs, REGISTER1) &
-		REGISTER1_RESET_DONE_CTRLCLK, 10000, 100, 500);
+		REGISTER1_RESET_DONE_CTRLCLK,
+		10000, 100, 500);
 	if (timeout) {
 		dev_err(csi2->iss->dev, "CSI2: CSI2_96M_FCLK reset timeout!\n");
 		return -EBUSY;
-- 
2.17.1


