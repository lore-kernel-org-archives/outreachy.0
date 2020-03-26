X-GM-THRID: 6808625193830842368
X-Received: by 2002:a2e:87da:: with SMTP id v26mr6174458ljj.63.1585256586271;
        Thu, 26 Mar 2020 14:03:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls1377495lfg.6.gmail; Thu, 26
 Mar 2020 14:03:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsVx3jWTyd2Zvgusn5hVZSyv9zEhayxmziUm2QvCe3UOpRwtfHHnVzYwd00dYSg7MVKBrwm
X-Received: by 2002:ac2:551a:: with SMTP id j26mr6843128lfk.145.1585256584474;
        Thu, 26 Mar 2020 14:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585256584; cv=none;
        d=google.com; s=arc-20160816;
        b=Ek6ly/CWVmOjboRdlBI9l6b/FrP4by57VxofLj5oMxoHMcvHrqSS8UXoyLxBg16X4v
         6brvi67he92KHUaxljMJZfTdWctMR6fhthoy3RrQ0TL+/OybLYDhJHecHbgmiBnSFCqj
         ZgFqNYljVSDa4P9A04C/j3dfrEAgdZxbT1JFAd9aZjW53x2m+vXtSfki6r37jSHf1V8c
         DlJJAwU2HyprDpeEAJpG3bnqGHwLt0lQY1W5r6Zi0WNlBFnLcGZq1xRzvJAFpLE0nXdx
         +/nPTfVaTZDvW5zxjoVmjvWIMrbgL9s3XwIh6BLrbLzXT55Q2FdKQnBOCSrBEf21ZTDe
         LvJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ns5HHn4/IDnfuVrOjIAg575jNqpX7diBJ38k6YPFQlA=;
        b=Pd2BFghHrAXT2VpuSR6FuBdO/X1mLEdofFvV2UGKl+I9j86XY2wwDvBc/yKsShreqy
         BgG12SRqywDH0BFde8efLEJPsjL0Lpa5OpaVFjNPf09jX4PpOXbw2TQGwDYzHLjG0hLX
         v1wedlXtwbidNGlcm4x1VMg065j4uIeIZU/uq/tnm7fvb+ibVqGiWUM4keBAV4H7Adet
         J8Vj+n3NrkHu9sRjgjfUtrsDHuGtnElzndi6j0ybH1rS3hbuYoFRgODyp+9Vtp+ZRzO5
         7fzELbMotqkPy5holv7fxj5hFKeEUEE9aJR+VtdC7h5wYPX0MbgM7jg4VlklYJyYXzyx
         9f4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XJIIoB81;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id s17si239159ljm.5.2020.03.26.14.03.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 14:03:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XJIIoB81;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id c187so8664737wme.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 14:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ns5HHn4/IDnfuVrOjIAg575jNqpX7diBJ38k6YPFQlA=;
        b=XJIIoB81GtasBfwinU1FRcJozixz8LYddqLBn/uD5lcmflihcLSPsrJgeyMD1RTkOn
         Ag5ORT9Gy9LQ6Jmt5OtkB5ReFAtipz7Ipl5VVOyuP5AsloieZV3zhDwAq8BzanmYDDyE
         UW30KwoO6cfsnhOf8JR+YUqKgbb+LMaakZf7XE+7LEK/of0x320IgyGxpzP4ECmW6SW0
         xLWWsoDNNvgiPyC1HVMbZrODy2Lpq12dKC9PGhGF/MU9BMN4HjSbwkO2OgTol/FKM1JH
         y5aeDkxTyWIfWKaMurGx51QJzA97h13HHEe5+rKEIE9x212tqdVzcX52x++XGLhKk8rG
         WEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ns5HHn4/IDnfuVrOjIAg575jNqpX7diBJ38k6YPFQlA=;
        b=JCmCPBwnQANbXALNlcJ3f0ibpd8Tg8uO4K/HhX7gsn+2RbhQTtPu+sIWZBQlEV9XbN
         4KXNBuswfzAz/SA7dUeBrjzffKtFTaVY6Mi3mjoQ7x2+h8D8CnUfdSBfadTVoCWVmzTF
         roKAPpJuahWohmja2u0/PopRUISXyvawWkWiF5vGwJU19Ej+UthoJTbfiNkU2tA50wvq
         xgrM6LfxoqFCshQwsu9/3Mc0b+4pu8YjJ6v2aAIo3dO08Zkzgi9fL+UxV/ccE8qzBUxv
         KZC/cNvB6XcOKn9VxmRPWmlZLz5W9k4z+U9C2M4D9skyAatjH5EGkOU5Nm1p/54qjU5H
         bk1A==
X-Gm-Message-State: ANhLgQ3SF4Tzw8f/dWEK2vvinWEB7WyDMVEmQylOdweH5hG7IAKEmz/q
	ssC8tV+gBaT3+GyDgEOsSGY=
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr1884328wmb.124.1585256583768;
        Thu, 26 Mar 2020 14:03:03 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.129.248])
        by smtp.gmail.com with ESMTPSA id t10sm5223578wrx.38.2020.03.26.14.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 14:03:03 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH] Staging: media: omap4iss: Use BIT() macro.
Date: Thu, 26 Mar 2020 17:02:47 -0400
Message-Id: <20200326210247.4746-1-jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use BIT() across the driver, since bit masking
is better be done using the BIT macro.
Change is done using this coccinelle script:

@bit@
@@
BIT(...)

@depends on bit@
expression E;
constant c;
@@

(
-1 << E
+BIT(E)
|
-1 << c
+BIT(c)
)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c        |  4 +-
 drivers/staging/media/omap4iss/iss.h        | 22 +++---
 drivers/staging/media/omap4iss/iss_csiphy.c |  6 +-
 drivers/staging/media/omap4iss/iss_regs.h   | 78 ++++++++++-----------
 drivers/staging/media/omap4iss/iss_video.h  | 16 ++---
 5 files changed, 63 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 6fb60b58447a..baa1fa5d5c00 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -243,7 +243,7 @@ static void iss_isr_dbg(struct iss_device *iss, u32 irqstatus)
 	dev_dbg(iss->dev, "ISS IRQ: ");

 	for (i = 0; i < ARRAY_SIZE(name); i++) {
-		if ((1 << i) & irqstatus)
+		if ((BIT(i)) & irqstatus)
 			pr_cont("%s ", name[i]);
 	}
 	pr_cont("\n");
@@ -290,7 +290,7 @@ static void iss_isp_isr_dbg(struct iss_device *iss, u32 irqstatus)
 	dev_dbg(iss->dev, "ISP IRQ: ");

 	for (i = 0; i < ARRAY_SIZE(name); i++) {
-		if ((1 << i) & irqstatus)
+		if ((BIT(i)) & irqstatus)
 			pr_cont("%s ", name[i]);
 	}
 	pr_cont("\n");
diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
index b88f9529683c..0c8a790c0ac7 100644
--- a/drivers/staging/media/omap4iss/iss.h
+++ b/drivers/staging/media/omap4iss/iss.h
@@ -50,20 +50,20 @@ enum iss_mem_resources {
 };

 enum iss_subclk_resource {
-	OMAP4_ISS_SUBCLK_SIMCOP		= (1 << 0),
-	OMAP4_ISS_SUBCLK_ISP		= (1 << 1),
-	OMAP4_ISS_SUBCLK_CSI2_A		= (1 << 2),
-	OMAP4_ISS_SUBCLK_CSI2_B		= (1 << 3),
-	OMAP4_ISS_SUBCLK_CCP2		= (1 << 4),
+	OMAP4_ISS_SUBCLK_SIMCOP		= (BIT(0)),
+	OMAP4_ISS_SUBCLK_ISP		= (BIT(1)),
+	OMAP4_ISS_SUBCLK_CSI2_A		= (BIT(2)),
+	OMAP4_ISS_SUBCLK_CSI2_B		= (BIT(3)),
+	OMAP4_ISS_SUBCLK_CCP2		= (BIT(4)),
 };

 enum iss_isp_subclk_resource {
-	OMAP4_ISS_ISP_SUBCLK_BL		= (1 << 0),
-	OMAP4_ISS_ISP_SUBCLK_ISIF	= (1 << 1),
-	OMAP4_ISS_ISP_SUBCLK_H3A	= (1 << 2),
-	OMAP4_ISS_ISP_SUBCLK_RSZ	= (1 << 3),
-	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (1 << 4),
-	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (1 << 5),
+	OMAP4_ISS_ISP_SUBCLK_BL		= (BIT(0)),
+	OMAP4_ISS_ISP_SUBCLK_ISIF	= (BIT(1)),
+	OMAP4_ISS_ISP_SUBCLK_H3A	= (BIT(2)),
+	OMAP4_ISS_ISP_SUBCLK_RSZ	= (BIT(3)),
+	OMAP4_ISS_ISP_SUBCLK_IPIPE	= (BIT(4)),
+	OMAP4_ISS_ISP_SUBCLK_IPIPEIF	= (BIT(5)),
 };

 /*
diff --git a/drivers/staging/media/omap4iss/iss_csiphy.c b/drivers/staging/media/omap4iss/iss_csiphy.c
index 96f2ce045138..1bdd4ecd900d 100644
--- a/drivers/staging/media/omap4iss/iss_csiphy.c
+++ b/drivers/staging/media/omap4iss/iss_csiphy.c
@@ -179,10 +179,10 @@ int omap4iss_csiphy_config(struct iss_device *iss,
 		    lanes->data[i].pos > (csi2->phy->max_data_lanes + 1))
 			return -EINVAL;

-		if (used_lanes & (1 << lanes->data[i].pos))
+		if (used_lanes & (BIT(lanes->data[i].pos)))
 			return -EINVAL;

-		used_lanes |= 1 << lanes->data[i].pos;
+		used_lanes |= BIT(lanes->data[i].pos);
 		csi2->phy->used_data_lanes++;
 	}

@@ -190,7 +190,7 @@ int omap4iss_csiphy_config(struct iss_device *iss,
 	    lanes->clk.pos > (csi2->phy->max_data_lanes + 1))
 		return -EINVAL;

-	if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
+	if (lanes->clk.pos == 0 || used_lanes & (BIT(lanes->clk.pos)))
 		return -EINVAL;

 	csi2_ddrclk_khz = pipe->external_rate / 1000
diff --git a/drivers/staging/media/omap4iss/iss_regs.h b/drivers/staging/media/omap4iss/iss_regs.h
index 09a7375c89ac..7adc944e1a5d 100644
--- a/drivers/staging/media/omap4iss/iss_regs.h
+++ b/drivers/staging/media/omap4iss/iss_regs.h
@@ -38,7 +38,7 @@
 #define ISS_CTRL_CLK_DIV_MASK				(3 << 4)
 #define ISS_CTRL_INPUT_SEL_MASK				(3 << 2)
 #define ISS_CTRL_INPUT_SEL_CSI2A			(0 << 2)
-#define ISS_CTRL_INPUT_SEL_CSI2B			(1 << 2)
+#define ISS_CTRL_INPUT_SEL_CSI2B			(BIT(2))
 #define ISS_CTRL_SYNC_DETECT_VS_RAISING			(3 << 0)

 #define ISS_CLKCTRL					0x84
@@ -93,10 +93,10 @@
 #define CSI2_SYSCONFIG					0x10
 #define CSI2_SYSCONFIG_MSTANDBY_MODE_MASK		(3 << 12)
 #define CSI2_SYSCONFIG_MSTANDBY_MODE_FORCE		(0 << 12)
-#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(1 << 12)
+#define CSI2_SYSCONFIG_MSTANDBY_MODE_NO			(BIT(12))
 #define CSI2_SYSCONFIG_MSTANDBY_MODE_SMART		(2 << 12)
-#define CSI2_SYSCONFIG_SOFT_RESET			(1 << 1)
-#define CSI2_SYSCONFIG_AUTO_IDLE			(1 << 0)
+#define CSI2_SYSCONFIG_SOFT_RESET			(BIT(1))
+#define CSI2_SYSCONFIG_AUTO_IDLE			(BIT(0))

 #define CSI2_SYSSTATUS					0x14
 #define CSI2_SYSSTATUS_RESET_DONE			BIT(0)
@@ -119,37 +119,37 @@
 #define CSI2_CTRL_MFLAG_LEVH_SHIFT			20
 #define CSI2_CTRL_MFLAG_LEVL_MASK			(7 << 17)
 #define CSI2_CTRL_MFLAG_LEVL_SHIFT			17
-#define CSI2_CTRL_BURST_SIZE_EXPAND			(1 << 16)
-#define CSI2_CTRL_VP_CLK_EN				(1 << 15)
-#define CSI2_CTRL_NON_POSTED_WRITE			(1 << 13)
-#define CSI2_CTRL_VP_ONLY_EN				(1 << 11)
+#define CSI2_CTRL_BURST_SIZE_EXPAND			(BIT(16))
+#define CSI2_CTRL_VP_CLK_EN				(BIT(15))
+#define CSI2_CTRL_NON_POSTED_WRITE			(BIT(13))
+#define CSI2_CTRL_VP_ONLY_EN				(BIT(11))
 #define CSI2_CTRL_VP_OUT_CTRL_MASK			(3 << 8)
 #define CSI2_CTRL_VP_OUT_CTRL_SHIFT			8
-#define CSI2_CTRL_DBG_EN				(1 << 7)
+#define CSI2_CTRL_DBG_EN				(BIT(7))
 #define CSI2_CTRL_BURST_SIZE_MASK			(3 << 5)
-#define CSI2_CTRL_ENDIANNESS				(1 << 4)
-#define CSI2_CTRL_FRAME					(1 << 3)
-#define CSI2_CTRL_ECC_EN				(1 << 2)
-#define CSI2_CTRL_IF_EN					(1 << 0)
+#define CSI2_CTRL_ENDIANNESS				(BIT(4))
+#define CSI2_CTRL_FRAME					(BIT(3))
+#define CSI2_CTRL_ECC_EN				(BIT(2))
+#define CSI2_CTRL_IF_EN					(BIT(0))

 #define CSI2_DBG_H					0x44

 #define CSI2_COMPLEXIO_CFG				0x50
-#define CSI2_COMPLEXIO_CFG_RESET_CTRL			(1 << 30)
-#define CSI2_COMPLEXIO_CFG_RESET_DONE			(1 << 29)
+#define CSI2_COMPLEXIO_CFG_RESET_CTRL			(BIT(30))
+#define CSI2_COMPLEXIO_CFG_RESET_DONE			(BIT(29))
 #define CSI2_COMPLEXIO_CFG_PWD_CMD_MASK			(3 << 27)
 #define CSI2_COMPLEXIO_CFG_PWD_CMD_OFF			(0 << 27)
-#define CSI2_COMPLEXIO_CFG_PWD_CMD_ON			(1 << 27)
+#define CSI2_COMPLEXIO_CFG_PWD_CMD_ON			(BIT(27))
 #define CSI2_COMPLEXIO_CFG_PWD_CMD_ULP			(2 << 27)
 #define CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK		(3 << 25)
 #define CSI2_COMPLEXIO_CFG_PWD_STATUS_OFF		(0 << 25)
-#define CSI2_COMPLEXIO_CFG_PWD_STATUS_ON		(1 << 25)
+#define CSI2_COMPLEXIO_CFG_PWD_STATUS_ON		(BIT(25))
 #define CSI2_COMPLEXIO_CFG_PWD_STATUS_ULP		(2 << 25)
-#define CSI2_COMPLEXIO_CFG_PWR_AUTO			(1 << 24)
-#define CSI2_COMPLEXIO_CFG_DATA_POL(i)			(1 << (((i) * 4) + 3))
+#define CSI2_COMPLEXIO_CFG_PWR_AUTO			(BIT(24))
+#define CSI2_COMPLEXIO_CFG_DATA_POL(i)			(BIT((((i) * 4) + 3)))
 #define CSI2_COMPLEXIO_CFG_DATA_POSITION_MASK(i)	(7 << ((i) * 4))
 #define CSI2_COMPLEXIO_CFG_DATA_POSITION_SHIFT(i)	((i) * 4)
-#define CSI2_COMPLEXIO_CFG_CLOCK_POL			(1 << 3)
+#define CSI2_COMPLEXIO_CFG_CLOCK_POL			(BIT(3))
 #define CSI2_COMPLEXIO_CFG_CLOCK_POSITION_MASK		(7 << 0)
 #define CSI2_COMPLEXIO_CFG_CLOCK_POSITION_SHIFT		0

@@ -218,7 +218,7 @@
 		(0x3 << CSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT)
 #define CSI2_CTX_CTRL2_VIRTUAL_ID_MASK			(3 << 11)
 #define CSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT			11
-#define CSI2_CTX_CTRL2_DPCM_PRED			(1 << 10)
+#define CSI2_CTX_CTRL2_DPCM_PRED			(BIT(10))
 #define CSI2_CTX_CTRL2_FORMAT_MASK			(0x3ff << 0)
 #define CSI2_CTX_CTRL2_FORMAT_SHIFT			0

@@ -259,9 +259,9 @@
 #define ISP5_SYSCONFIG					(0x0010)
 #define ISP5_SYSCONFIG_STANDBYMODE_MASK			(3 << 4)
 #define ISP5_SYSCONFIG_STANDBYMODE_FORCE		(0 << 4)
-#define ISP5_SYSCONFIG_STANDBYMODE_NO			(1 << 4)
+#define ISP5_SYSCONFIG_STANDBYMODE_NO			(BIT(4))
 #define ISP5_SYSCONFIG_STANDBYMODE_SMART		(2 << 4)
-#define ISP5_SYSCONFIG_SOFTRESET			(1 << 1)
+#define ISP5_SYSCONFIG_SOFTRESET			(BIT(1))

 #define ISP5_IRQSTATUS(i)				(0x0028 + (0x10 * (i)))
 #define ISP5_IRQENABLE_SET(i)				(0x002c + (0x10 * (i)))
@@ -315,14 +315,14 @@
 #define ISIF_MODESET					(0x0004)
 #define ISIF_MODESET_INPMOD_MASK			(3 << 12)
 #define ISIF_MODESET_INPMOD_RAW				(0 << 12)
-#define ISIF_MODESET_INPMOD_YCBCR16			(1 << 12)
+#define ISIF_MODESET_INPMOD_YCBCR16			(BIT(12))
 #define ISIF_MODESET_INPMOD_YCBCR8			(2 << 12)
 #define ISIF_MODESET_CCDW_MASK				(7 << 8)
 #define ISIF_MODESET_CCDW_2BIT				(2 << 8)
-#define ISIF_MODESET_CCDMD				(1 << 7)
-#define ISIF_MODESET_SWEN				(1 << 5)
-#define ISIF_MODESET_HDPOL				(1 << 3)
-#define ISIF_MODESET_VDPOL				(1 << 2)
+#define ISIF_MODESET_CCDMD				(BIT(7))
+#define ISIF_MODESET_SWEN				(BIT(5))
+#define ISIF_MODESET_HDPOL				(BIT(3))
+#define ISIF_MODESET_VDPOL				(BIT(2))

 #define ISIF_SPH					(0x0018)
 #define ISIF_SPH_MASK					(0x7fff)
@@ -345,19 +345,19 @@

 #define ISIF_CCOLP					(0x004c)
 #define ISIF_CCOLP_CP0_F0_R				(0 << 6)
-#define ISIF_CCOLP_CP0_F0_GR				(1 << 6)
+#define ISIF_CCOLP_CP0_F0_GR				(BIT(6))
 #define ISIF_CCOLP_CP0_F0_B				(3 << 6)
 #define ISIF_CCOLP_CP0_F0_GB				(2 << 6)
 #define ISIF_CCOLP_CP1_F0_R				(0 << 4)
-#define ISIF_CCOLP_CP1_F0_GR				(1 << 4)
+#define ISIF_CCOLP_CP1_F0_GR				(BIT(4))
 #define ISIF_CCOLP_CP1_F0_B				(3 << 4)
 #define ISIF_CCOLP_CP1_F0_GB				(2 << 4)
 #define ISIF_CCOLP_CP2_F0_R				(0 << 2)
-#define ISIF_CCOLP_CP2_F0_GR				(1 << 2)
+#define ISIF_CCOLP_CP2_F0_GR				(BIT(2))
 #define ISIF_CCOLP_CP2_F0_B				(3 << 2)
 #define ISIF_CCOLP_CP2_F0_GB				(2 << 2)
 #define ISIF_CCOLP_CP3_F0_R				(0 << 0)
-#define ISIF_CCOLP_CP3_F0_GR				(1 << 0)
+#define ISIF_CCOLP_CP3_F0_GR				(BIT(0))
 #define ISIF_CCOLP_CP3_F0_B				(3 << 0)
 #define ISIF_CCOLP_CP3_F0_GB				(2 << 0)

@@ -377,12 +377,12 @@
 #define IPIPEIF_CFG1					(0x0004)
 #define IPIPEIF_CFG1_INPSRC1_MASK			(3 << 14)
 #define IPIPEIF_CFG1_INPSRC1_VPORT_RAW			(0 << 14)
-#define IPIPEIF_CFG1_INPSRC1_SDRAM_RAW			(1 << 14)
+#define IPIPEIF_CFG1_INPSRC1_SDRAM_RAW			(BIT(14))
 #define IPIPEIF_CFG1_INPSRC1_ISIF_DARKFM		(2 << 14)
 #define IPIPEIF_CFG1_INPSRC1_SDRAM_YUV			(3 << 14)
 #define IPIPEIF_CFG1_INPSRC2_MASK			(3 << 2)
 #define IPIPEIF_CFG1_INPSRC2_ISIF			(0 << 2)
-#define IPIPEIF_CFG1_INPSRC2_SDRAM_RAW			(1 << 2)
+#define IPIPEIF_CFG1_INPSRC2_SDRAM_RAW			(BIT(2))
 #define IPIPEIF_CFG1_INPSRC2_ISIF_DARKFM		(2 << 2)
 #define IPIPEIF_CFG1_INPSRC2_SDRAM_YUV			(3 << 2)

@@ -406,25 +406,25 @@

 #define IPIPE_SRC_FMT					(0x0008)
 #define IPIPE_SRC_FMT_RAW2YUV				(0 << 0)
-#define IPIPE_SRC_FMT_RAW2RAW				(1 << 0)
+#define IPIPE_SRC_FMT_RAW2RAW				(BIT(0))
 #define IPIPE_SRC_FMT_RAW2STATS				(2 << 0)
 #define IPIPE_SRC_FMT_YUV2YUV				(3 << 0)

 #define IPIPE_SRC_COL					(0x000c)
 #define IPIPE_SRC_COL_OO_R				(0 << 6)
-#define IPIPE_SRC_COL_OO_GR				(1 << 6)
+#define IPIPE_SRC_COL_OO_GR				(BIT(6))
 #define IPIPE_SRC_COL_OO_B				(3 << 6)
 #define IPIPE_SRC_COL_OO_GB				(2 << 6)
 #define IPIPE_SRC_COL_OE_R				(0 << 4)
-#define IPIPE_SRC_COL_OE_GR				(1 << 4)
+#define IPIPE_SRC_COL_OE_GR				(BIT(4))
 #define IPIPE_SRC_COL_OE_B				(3 << 4)
 #define IPIPE_SRC_COL_OE_GB				(2 << 4)
 #define IPIPE_SRC_COL_EO_R				(0 << 2)
-#define IPIPE_SRC_COL_EO_GR				(1 << 2)
+#define IPIPE_SRC_COL_EO_GR				(BIT(2))
 #define IPIPE_SRC_COL_EO_B				(3 << 2)
 #define IPIPE_SRC_COL_EO_GB				(2 << 2)
 #define IPIPE_SRC_COL_EE_R				(0 << 0)
-#define IPIPE_SRC_COL_EE_GR				(1 << 0)
+#define IPIPE_SRC_COL_EE_GR				(BIT(0))
 #define IPIPE_SRC_COL_EE_B				(3 << 0)
 #define IPIPE_SRC_COL_EE_GB				(2 << 0)

diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
index 8b3dd92021e1..c0d021636224 100644
--- a/drivers/staging/media/omap4iss/iss_video.h
+++ b/drivers/staging/media/omap4iss/iss_video.h
@@ -56,17 +56,17 @@ enum iss_pipeline_state {
 	/* The stream has been started on the input video node. */
 	ISS_PIPELINE_STREAM_INPUT = 1,
 	/* The stream has been started on the output video node. */
-	ISS_PIPELINE_STREAM_OUTPUT = (1 << 1),
+	ISS_PIPELINE_STREAM_OUTPUT = (BIT(1)),
 	/* At least one buffer is queued on the input video node. */
-	ISS_PIPELINE_QUEUE_INPUT = (1 << 2),
+	ISS_PIPELINE_QUEUE_INPUT = (BIT(2)),
 	/* At least one buffer is queued on the output video node. */
-	ISS_PIPELINE_QUEUE_OUTPUT = (1 << 3),
+	ISS_PIPELINE_QUEUE_OUTPUT = (BIT(3)),
 	/* The input entity is idle, ready to be started. */
-	ISS_PIPELINE_IDLE_INPUT = (1 << 4),
+	ISS_PIPELINE_IDLE_INPUT = (BIT(4)),
 	/* The output entity is idle, ready to be started. */
-	ISS_PIPELINE_IDLE_OUTPUT = (1 << 5),
+	ISS_PIPELINE_IDLE_OUTPUT = (BIT(5)),
 	/* The pipeline is currently streaming. */
-	ISS_PIPELINE_STREAM = (1 << 6),
+	ISS_PIPELINE_STREAM = (BIT(6)),
 };

 /*
@@ -120,9 +120,9 @@ struct iss_buffer {

 enum iss_video_dmaqueue_flags {
 	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
-	ISS_VIDEO_DMAQUEUE_UNDERRUN = (1 << 0),
+	ISS_VIDEO_DMAQUEUE_UNDERRUN = (BIT(0)),
 	/* Set when queuing buffer to an empty DMA queue */
-	ISS_VIDEO_DMAQUEUE_QUEUED = (1 << 1),
+	ISS_VIDEO_DMAQUEUE_QUEUED = (BIT(1)),
 };

 #define iss_video_dmaqueue_flags_clr(video)	\
---
2.20.1

