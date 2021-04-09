X-GM-THRID: 6949230853681577984
X-Received: by 2002:aca:1702:: with SMTP id j2mr11005052oii.165.1617993892898;
        Fri, 09 Apr 2021 11:44:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:ead1:: with SMTP id s17ls590219ooh.9.gmail; Fri, 09 Apr
 2021 11:44:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyl73oOmLw9s/cpu12+VsOt5kFe+0hrOEgpwx/equF40lUzw3NYHhYeSrh9HDBNtYsOANmA
X-Received: by 2002:a4a:de56:: with SMTP id z22mr12926351oot.14.1617993892167;
        Fri, 09 Apr 2021 11:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617993892; cv=none;
        d=google.com; s=arc-20160816;
        b=iOaAQDh51q/GdI/xcUArqC/Rs9ewvIuEnfmiyrMsT8VLI6VrtllEZCnXrekqsZVniL
         Gd1Sec5SgrFw2UyHNTBwOvyRMs/JMHz+zbrr/7g8rIHo95zlIq+sXUstkc6xaVl2kqGi
         G4IrLJcDJrZw8jxNLx7fqo3qfnEEE7Rspe3sfxaVFQM21c0nuIEjsFJb7U9WdHDg9shF
         xyiW0Ss1T0fvV/PeOw21r6ojA6BYLKDvrH1pBBCY2eP6eOx/7i6zCVaAIGSarDzaQODt
         1hbhIVAGyzeeI3ZgsvLOV8lOpjivrThNF+9RM4oTtF1ieTDvx0iT1bplgwOMlwVFb4tb
         su9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=X8Uig22OPkeFSGGdTrGTGcCnsRVT/HXYW0IkegBciCs=;
        b=xpGz/aJrRfaCnx7Gn1kdKzTIGzlQvsK+WwgHFLXSbl1bPfG8ddiPhj9cY9hxAsIbLS
         iToKdfyitVTQzOv9zrXKn/ZYaaBnCkTp7hWFk6WxEGEyux53F9JAWyAVdByQAXBrYUTw
         BWNT5m0ZW1B/p3SYHe452qGS24ty4RjLzO/tQuUB68sf3rGGoCSdDpxr6bUrnJ8sPyuq
         5DNuIgq/hPAG+bPHK28AGadDNk5gR8vNw8cvYVmOT+LfJUJH9Fg7sw0VcBkw7cN+sbTt
         oknZaEezfpAHgTFsl30mH0Ehm/gH1mKy6AUE9ioeVeuo2SMoB7wDW+Xj4ZuKUHDGjku0
         a+8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALPB7EVy;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id b17si289301ooq.2.2021.04.09.11.44.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 11:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALPB7EVy;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52c.google.com with SMTP id b17so4584958pgh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 11:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=X8Uig22OPkeFSGGdTrGTGcCnsRVT/HXYW0IkegBciCs=;
        b=ALPB7EVylo6GmagTTG/ZyNEZ8ULk2DNEv2j0MwcAW1EmPU5uKuO3/lKh+PB9dS9BOU
         UZhj0GBbAh/mDtX3Ac4l++w3Swm9IoogdUhDQeHHmxjd6Gz1xryb52+VTWPO3Rkd0dRu
         uY+REDKlSlf6JRgx1N94iOHhDkzdkCPr4dNQtBJGnZ9jf9aDGvvy6y7RHkz8sKXNwnox
         7AbQHi7Dw5EuDzQ5RyRu8h8KMGARduqkICEZheGSTG13mZb7Rilnz3mTKLGUvV55yuys
         9DhZk6j2RDDqC/qtyn/dSIAIkKg1+SsRbtS1qRZs0owUBDNeqt+Gswo8fNlxA9FpzLPg
         xx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=X8Uig22OPkeFSGGdTrGTGcCnsRVT/HXYW0IkegBciCs=;
        b=DO1xVAmwd8YnkXcIVkx+j69ER7CMFOyZ+xrVDl3nyh3nENdM4js75j5j3WujHsmeXY
         jCt46vA9zTjI/wzYLBZmBiz7ci+S46I8aLReVAdfDaJeACOqJOD5ksfBD8cI9Lzd6L52
         LTjLJPeB5F8jzN/vPd6KNTMOuaC4vMk8iCeMYk5bw14kU1d8tvl39rMT6EG8O+M6Vag7
         rP+kNSnda9ol/4xpUz5YnksAevi8SxJ1ejCzOldTJkQYfaVDzgGj93koBKD7kASqVEXH
         LdxtkaEqkaLN/14rW06U0icVOLAhRGkbKtTDVed+hvexYHscrPdD/CgVfz1GLu3Na7/6
         xPIg==
X-Gm-Message-State: AOAM532mfacvuCLh+QVfnotIMsIUdK5Nm1vWGHauMV/7TIIjKYilaq+Q
	166nqliJMF5b08fzh+PmRVHPUQS0k0QyMwiK
X-Received: by 2002:a63:5807:: with SMTP id m7mr14379245pgb.73.1617993891409;
        Fri, 09 Apr 2021 11:44:51 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s6sm2797646pfw.96.2021.04.09.11.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 11:44:51 -0700 (PDT)
Date: Sat, 10 Apr 2021 00:14:44 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v2 2/2] staging: media: zoran: remove and add comments; align
 code
Message-ID: <YHCgnP6Jr6TbjwUy@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Removed comments from the same line and added them to new line above the
blocks, aligned everything properly by using tabs to make code neater
and improve readability.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/zoran/zr36057.h | 293 ++++++++++++++------------
 1 file changed, 162 insertions(+), 131 deletions(-)

diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
index 93075459f910..198d344a8879 100644
--- a/drivers/staging/media/zoran/zr36057.h
+++ b/drivers/staging/media/zoran/zr36057.h
@@ -12,145 +12,176 @@
 
 /* Zoran ZR36057 registers */
 
-#define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
-#define ZR36057_VFEHCR_HS_POL             BIT(30)
-#define ZR36057_VFEHCR_H_START           10
+/* Video Front End, Horizontal Configuration Register */
+#define ZR36057_VFEHCR			0x000
+#define ZR36057_VFEHCR_HS_POL			BIT(30)
+#define ZR36057_VFEHCR_H_START		10
 #define ZR36057_VFEHCR_H_END		0
 #define ZR36057_VFEHCR_HMASK		0x3ff
 
-#define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
-#define ZR36057_VFEVCR_VS_POL             BIT(30)
-#define ZR36057_VFEVCR_V_START           10
+/* Video Front End, Vertical Configuration Register */
+#define ZR36057_VFEVCR			0x004
+#define ZR36057_VFEVCR_VS_POL			BIT(30)
+#define ZR36057_VFEVCR_V_START		10
 #define ZR36057_VFEVCR_V_END		0
 #define ZR36057_VFEVCR_VMASK		0x3ff
 
-#define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
-#define ZR36057_VFESPFR_EXT_FL            BIT(26)
-#define ZR36057_VFESPFR_TOP_FIELD         BIT(25)
-#define ZR36057_VFESPFR_VCLK_POL          BIT(24)
-#define ZR36057_VFESPFR_H_FILTER         21
-#define ZR36057_VFESPFR_HOR_DCM          14
-#define ZR36057_VFESPFR_VER_DCM          8
-#define ZR36057_VFESPFR_DISP_MODE        6
-#define ZR36057_VFESPFR_YUV422          (0 << 3)
-#define ZR36057_VFESPFR_RGB888          BIT(3)
-#define ZR36057_VFESPFR_RGB565          (2 << 3)
-#define ZR36057_VFESPFR_RGB555          (3 << 3)
-#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
-#define ZR36057_VFESPFR_PACK24          BIT(1)
-#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
-
-#define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
-
-#define ZR36057_VDBR            0x010	/* Video Display "Bottom" Register */
-
-#define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
-#define ZR36057_VSSFGR_DISP_STRIDE       16
-#define ZR36057_VSSFGR_VID_OVF            BIT(8)
-#define ZR36057_VSSFGR_SNAP_SHOT          BIT(1)
-#define ZR36057_VSSFGR_FRAME_GRAB         BIT(0)
-
-#define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
-#define ZR36057_VDCR_VID_EN               BIT(31)
-#define ZR36057_VDCR_MIN_PIX             24
-#define ZR36057_VDCR_TRITON              BIT(24)
-#define ZR36057_VDCR_VID_WIN_HT           12
-#define ZR36057_VDCR_VID_WIN_WID          0
-
-#define ZR36057_MMTR            0x01c	/* Masking Map "Top" Register */
-
-#define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
-
-#define ZR36057_OCR             0x024	/* Overlay Control Register */
-#define ZR36057_OCR_OVL_ENABLE            BIT(15)
-#define ZR36057_OCR_MASK_STRIDE          0
-
-#define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
-#define ZR36057_SPGPPCR_SOFT_RESET	 BIT(24)
-
-#define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
-
-#define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
-
-#define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
-#define ZR36057_MCTCR_COD_TIME            BIT(30)
-#define ZR36057_MCTCR_C_EMPTY             BIT(29)
-#define ZR36057_MCTCR_C_FLUSH             BIT(28)
+/* Video Front End, Scaler and Pixel Format Register */
+#define ZR36057_VFESPFR			0x008
+#define ZR36057_VFESPFR_EXT_FL			BIT(26)
+#define ZR36057_VFESPFR_TOP_FIELD		BIT(25)
+#define ZR36057_VFESPFR_VCLK_POL		BIT(24)
+#define ZR36057_VFESPFR_H_FILTER	21
+#define ZR36057_VFESPFR_HOR_DCM		14
+#define ZR36057_VFESPFR_VER_DCM		8
+#define ZR36057_VFESPFR_DISP_MODE	6
+#define ZR36057_VFESPFR_YUV422			(0 << 3)
+#define ZR36057_VFESPFR_RGB888			BIT(3)
+#define ZR36057_VFESPFR_RGB565			(2 << 3)
+#define ZR36057_VFESPFR_RGB555			(3 << 3)
+#define ZR36057_VFESPFR_ERR_DIF			BIT(2)
+#define ZR36057_VFESPFR_PACK24			BIT(1)
+#define ZR36057_VFESPFR_LITTLE_ENDIAN		BIT(0)
+
+/* Video Display "Top" Register */
+#define ZR36057_VDTR			0x00c
+
+/* Video Display "Bottom" Register */
+#define ZR36057_VDBR			0x010
+
+/* Video Stride, Status, and Frame Grab Register */
+#define ZR36057_VSSFGR			0x014
+#define ZR36057_VSSFGR_DISP_STRIDE	16
+#define ZR36057_VSSFGR_VID_OVF			BIT(8)
+#define ZR36057_VSSFGR_SNAP_SHOT		BIT(1)
+#define ZR36057_VSSFGR_FRAME_GRAB		BIT(0)
+
+/* Video Display Configuration Register */
+#define ZR36057_VDCR			0x018
+#define ZR36057_VDCR_VID_EN			BIT(31)
+#define ZR36057_VDCR_MIN_PIX		24
+#define ZR36057_VDCR_TRITON			BIT(24)
+#define ZR36057_VDCR_VID_WIN_HT		12
+#define ZR36057_VDCR_VID_WIN_WID	0
+
+/* Masking Map "Top" Register */
+#define ZR36057_MMTR			0x01c
+
+/* Masking Map "Bottom" Register */
+#define ZR36057_MMBR			0x020
+
+/* Overlay Control Register */
+#define ZR36057_OCR			0x024
+#define ZR36057_OCR_OVL_ENABLE			BIT(15)
+#define ZR36057_OCR_MASK_STRIDE		0
+
+/* System, PCI, and General Purpose Pins Control Register */
+#define ZR36057_SPGPPCR			0x028
+#define ZR36057_SPGPPCR_SOFT_RESET		BIT(24)
+
+/* General Purpose Pins and GuestBus Control Register (1) */
+#define ZR36057_GPPGCR1			0x02c
+
+/* MPEG Code Source Address Register */
+#define ZR36057_MCSAR			0x030
+
+/* MPEG Code Transfer Control Register */
+#define ZR36057_MCTCR			0x034
+#define ZR36057_MCTCR_COD_TIME			BIT(30)
+#define ZR36057_MCTCR_C_EMPTY			BIT(29)
+#define ZR36057_MCTCR_C_FLUSH			BIT(28)
 #define ZR36057_MCTCR_COD_GUEST_ID	20
 #define ZR36057_MCTCR_COD_GUEST_REG	16
 
-#define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
-
-#define ZR36057_ISR             0x03c	/* Interrupt Status Register */
-#define ZR36057_ISR_GIRQ1                BIT(30)
-#define ZR36057_ISR_GIRQ0                BIT(29)
-#define ZR36057_ISR_COD_REP_IRQ            BIT(28)
-#define ZR36057_ISR_JPEG_REP_IRQ           BIT(27)
-
-#define ZR36057_ICR             0x040	/* Interrupt Control Register */
-#define ZR36057_ICR_GIRQ1                BIT(30)
-#define ZR36057_ICR_GIRQ0                BIT(29)
-#define ZR36057_ICR_COD_REP_IRQ            BIT(28)
-#define ZR36057_ICR_JPEG_REP_IRQ           BIT(27)
-#define ZR36057_ICR_INT_PIN_EN             BIT(24)
-
-#define ZR36057_I2CBR           0x044	/* I2C Bus Register */
-#define ZR36057_I2CBR_SDA		 BIT(1)
-#define ZR36057_I2CBR_SCL		 BIT(0)
-
-#define ZR36057_JMC             0x100	/* JPEG Mode and Control */
-#define ZR36057_JMC_JPG                  BIT(31)
-#define ZR36057_JMC_JPG_EXP_MODE          (0 << 29)
-#define ZR36057_JMC_JPG_CMP_MODE           BIT(29)
-#define ZR36057_JMC_MJPG_EXP_MODE         (2 << 29)
-#define ZR36057_JMC_MJPG_CMP_MODE         (3 << 29)
-#define ZR36057_JMC_RTBUSY_FB            BIT(6)
-#define ZR36057_JMC_GO_EN                BIT(5)
-#define ZR36057_JMC_SYNC_MSTR             BIT(4)
-#define ZR36057_JMC_FLD_PER_BUFF         BIT(3)
-#define ZR36057_JMC_VFIFO_FB             BIT(2)
-#define ZR36057_JMC_CFIFO_FB             BIT(1)
-#define ZR36057_JMC_STLL_LIT_ENDIAN       BIT(0)
-
-#define ZR36057_JPC             0x104	/* JPEG Process Control */
-#define ZR36057_JPC_P_RESET              BIT(7)
-#define ZR36057_JPC_COD_TRNS_EN            BIT(5)
-#define ZR36057_JPC_ACTIVE               BIT(0)
-
-#define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
-#define ZR36057_VSP_VSYNC_SIZE           16
-#define ZR36057_VSP_FRM_TOT              0
-
-#define ZR36057_HSP             0x10c	/* Horizontal Sync Parameters */
-#define ZR36057_HSP_HSYNC_START          16
-#define ZR36057_HSP_LINE_TOT             0
-
-#define ZR36057_FHAP            0x110	/* Field Horizontal Active Portion */
-#define ZR36057_FHAP_NAX                16
-#define ZR36057_FHAP_PAX                0
-
-#define ZR36057_FVAP            0x114	/* Field Vertical Active Portion */
-#define ZR36057_FVAP_NAY                16
-#define ZR36057_FVAP_PAY                0
-
-#define ZR36057_FPP             0x118	/* Field Process Parameters */
-#define ZR36057_FPP_ODD_EVEN             BIT(0)
-
-#define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
-
-#define ZR36057_JCFT            0x120	/* JPEG Code FIFO Threshold */
-
-#define ZR36057_JCGI            0x124	/* JPEG Codec Guest ID */
-#define ZR36057_JCGI_JPE_GUEST_ID         4
-#define ZR36057_JCGI_JPE_GUEST_REG        0
-
-#define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
-
-#define ZR36057_POR             0x200	/* Post Office Register */
-#define ZR36057_POR_PO_PEN                BIT(25)
-#define ZR36057_POR_PO_TIME               BIT(24)
-#define ZR36057_POR_PO_DIR                BIT(23)
-
-#define ZR36057_STR             0x300	/* "Still" Transfer Register */
+/* MPEG Code Memory Pointer Register */
+#define ZR36057_MCMPR			0x038
+
+/* Interrupt Status Register */
+#define ZR36057_ISR			0x03c
+#define ZR36057_ISR_GIRQ1			BIT(30)
+#define ZR36057_ISR_GIRQ0			BIT(29)
+#define ZR36057_ISR_COD_REP_IRQ			BIT(28)
+#define ZR36057_ISR_JPEG_REP_IRQ		BIT(27)
+
+/* Interrupt Control Register */
+#define ZR36057_ICR			0x040
+#define ZR36057_ICR_GIRQ1			BIT(30)
+#define ZR36057_ICR_GIRQ0			BIT(29)
+#define ZR36057_ICR_COD_REP_IRQ			BIT(28)
+#define ZR36057_ICR_JPEG_REP_IRQ		BIT(27)
+#define ZR36057_ICR_INT_PIN_EN			BIT(24)
+
+/* I2C Bus Register */
+#define ZR36057_I2CBR			0x044
+#define ZR36057_I2CBR_SDA			BIT(1)
+#define ZR36057_I2CBR_SCL			BIT(0)
+
+/* JPEG Mode and Control */
+#define ZR36057_JMC			0x100
+#define ZR36057_JMC_JPG				BIT(31)
+#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
+#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
+#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
+#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
+#define ZR36057_JMC_RTBUSY_FB			BIT(6)
+#define ZR36057_JMC_GO_EN			BIT(5)
+#define ZR36057_JMC_SYNC_MSTR			BIT(4)
+#define ZR36057_JMC_FLD_PER_BUFF		BIT(3)
+#define ZR36057_JMC_VFIFO_FB			BIT(2)
+#define ZR36057_JMC_CFIFO_FB			BIT(1)
+#define ZR36057_JMC_STLL_LIT_ENDIAN		BIT(0)
+
+/* JPEG Process Control */
+#define ZR36057_JPC			0x104
+#define ZR36057_JPC_P_RESET			BIT(7)
+#define ZR36057_JPC_COD_TRNS_EN			BIT(5)
+#define ZR36057_JPC_ACTIVE			BIT(0)
+
+/* Vertical Sync Parameters */
+#define ZR36057_VSP			0x108
+#define ZR36057_VSP_VSYNC_SIZE		16
+#define ZR36057_VSP_FRM_TOT		0
+
+/* Horizontal Sync Parameters */
+#define ZR36057_HSP			0x10c
+#define ZR36057_HSP_HSYNC_START		16
+#define ZR36057_HSP_LINE_TOT		0
+
+/* Field Horizontal Active Portion */
+#define ZR36057_FHAP			0x110
+#define ZR36057_FHAP_NAX		16
+#define ZR36057_FHAP_PAX		0
+
+/* Field Vertical Active Portion */
+#define ZR36057_FVAP			0x114
+#define ZR36057_FVAP_NAY		16
+#define ZR36057_FVAP_PAY		0
+
+/* Field Process Parameters */
+#define ZR36057_FPP			0x118
+#define ZR36057_FPP_ODD_EVEN			BIT(0)
+
+/* JPEG Code Base Address */
+#define ZR36057_JCBA			0x11c
+
+/* JPEG Code FIFO Threshold */
+#define ZR36057_JCFT			0x120
+
+/* JPEG Codec Guest ID */
+#define ZR36057_JCGI			0x124
+#define ZR36057_JCGI_JPE_GUEST_ID	4
+#define ZR36057_JCGI_JPE_GUEST_REG	0
+
+/* GuestBus Control Register (2) */
+#define ZR36057_GCR2			0x12c
+
+/* Post Office Register */
+#define ZR36057_POR			0x200
+#define ZR36057_POR_PO_PEN			BIT(25)
+#define ZR36057_POR_PO_TIME			BIT(24)
+#define ZR36057_POR_PO_DIR			BIT(23)
+
+/* "Still" Transfer Register */
+#define ZR36057_STR			0x300
 
 #endif
-- 
2.30.2


