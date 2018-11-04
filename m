X-GM-THRID: 6619832364297093120
X-Received: by 2002:a17:906:f0f:: with SMTP id z15-v6mr2168189eji.0.1541299830091;
        Sat, 03 Nov 2018 19:50:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:927a:: with SMTP id j55-v6ls56901eda.9.gmail; Sat, 03
 Nov 2018 19:50:29 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dDXYCqrxXp92nt5xANbOGjaUdQlfBJnI05HEfJ8GAKBd0NC1o9BEViA4hJ7bSH1Q2vRYJY
X-Received: by 2002:a50:e78e:: with SMTP id b14-v6mr1585126edn.9.1541299829437;
        Sat, 03 Nov 2018 19:50:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541299829; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsR8enS/aRiIzK+9tIQfDble60xRrAC+9HGN5dvHQwnkLhfwVH1pdEWp8aQfw4bWaW
         FC3r+lvKHYXT4s7rfY3qHnjxMNk0pVBBFA3McnjTPJWtsblnDpJCs2Ur10yc+J5u8lj5
         eu1zi3FBdPS9K2TeT7vogfP8gO2tO31gM8JHOFUzOtbvC7N44ZBQZCG/juCCUG5Z0fBf
         pDM6RCJfeLkYc+PpGkWbpICJMt9jWa+GzoBpUftmYoz9Z05hKrizNstAkVwww5IiZRVs
         SlP+/gCVzfmuJMWdcVEvYuFknloh+g12vKo4Q0nRBeAfMOWRXmojUN7BcnQ64JbsDo7w
         cjJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ESPHlfX6SyFI8/nqXAWZCP4xGKIz4/7Iy8KztNcGIkk=;
        b=sejzXx9LvJbJSEkwhgErZpho/Jd3jIX9x0BcDXbrrdl4O3EKvcuEX8aYzglXY/MVbp
         8Kl3Lbf7eQJg489kh2NCmcCLDVnVPkUolrBEoLajpLD816wuF1Y9PH272HN0Hd4QLkVY
         74iIStt/YTl+yQVr7Lvt6IttqTxDaxKJ+EiHypboPFzazLwrDkMEskFKRdESjXuSiYUo
         jdRO5zQE++pyIyGhxIXl9gOjkYxrPxP2EiLBfVnXKcRA6BLo2h6pwsHjBGZUtF9XTM3V
         Nt+O5FIs6ajgvFFPKmJ7iB6WoFAsmv/Cp8+bQo16/ceDw3xudpmH7+w9s5ab2B3ZJHD5
         1+5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Vm6qZQ7C;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id a35-v6si99073edd.1.2018.11.03.19.50.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 19:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=Vm6qZQ7C;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541299826; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=HnqW5Vyrre3LE+g9eQfp9B57045T7/Wai6KH9n3EhV/cgQ7hFManETdMzdHjxGNGdAu9xHPCOwvoTFWgXo+OcUcJU96ELc25nW+ghJy4MEucuE88tRcDOVjexgK6xyuE85NemZRr0kWviirLhLkkncX3iQ+kHwNfIIPKWdTw7TM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541299826; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=ESPHlfX6SyFI8/nqXAWZCP4xGKIz4/7Iy8KztNcGIkk=; 
	b=X2b0oYOragCw42iCjuPf1tKQWdeUun8LUjUmOllOtUeNXcZ9zDgDfoChfUzq7rYk5SunyWq/HUYvAtsNHjuXhRgadJS99fEijZGP+4Vjrcb80NnS4DNe0KCRJ4McyG/JCzXrdMfr0/yh6lICHtbnQ51EdeNNTozDA1BijYUgSmc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541299826;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=11558; bh=ESPHlfX6SyFI8/nqXAWZCP4xGKIz4/7Iy8KztNcGIkk=;
	b=Vm6qZQ7CXNf6gAiua74wgW/inYsDgcZPZ5zOTL7jAskYJ+VVMUrg2hCgKbD1W2fn
	T/lmX88aY9b2BvBlrQmZdSD7v3/AnaieE9dCcewwLsTpenfgM6ULA2IqXZNmHG05qc5
	DtPVB0ZG8ytL5iQsfZoqTMdTxMsKKGpGDIR0BVfo=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541299826108249.29623310236354; Sun, 4 Nov 2018 03:50:26 +0100 (CET)
Date: Sun, 4 Nov 2018 02:50:24 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: zoran: replace masking with  BIT macro
Message-ID: <20181104025024.GA25231@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace bit masking with the more preferable BIT macro.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/zoran/zoran.h   |  8 +--
 drivers/staging/media/zoran/zr36057.h | 92 +++++++++++++--------------
 drivers/staging/media/zoran/zr36060.h | 86 ++++++++++++-------------
 3 files changed, 93 insertions(+), 93 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 9bb3c21aa275..03384c94b322 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -142,10 +142,10 @@ struct zoran_format {
 	__u32 vfespfr;
 };
 /* flags */
-#define ZORAN_FORMAT_COMPRESSED 1<<0
-#define ZORAN_FORMAT_OVERLAY    1<<1
-#define ZORAN_FORMAT_CAPTURE	1<<2
-#define ZORAN_FORMAT_PLAYBACK	1<<3
+#define ZORAN_FORMAT_COMPRESSED BIT(0)
+#define ZORAN_FORMAT_OVERLAY    BIT(1)
+#define ZORAN_FORMAT_CAPTURE	BIT(2)
+#define ZORAN_FORMAT_PLAYBACK	BIT(3)
 
 /* overlay-settings */
 struct zoran_overlay_settings {
diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
index c8acb21dcb5c..1b72ae6555ff 100644
--- a/drivers/staging/media/zoran/zr36057.h
+++ b/drivers/staging/media/zoran/zr36057.h
@@ -21,32 +21,32 @@
 /* Zoran ZR36057 registers */
 
 #define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
-#define ZR36057_VFEHCR_HSPol            (1<<30)
+#define ZR36057_VFEHCR_HSPol            (BIT(30))
 #define ZR36057_VFEHCR_HStart           10
 #define ZR36057_VFEHCR_HEnd		0
 #define ZR36057_VFEHCR_Hmask		0x3ff
 
 #define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
-#define ZR36057_VFEVCR_VSPol            (1<<30)
+#define ZR36057_VFEVCR_VSPol            (BIT(30))
 #define ZR36057_VFEVCR_VStart           10
 #define ZR36057_VFEVCR_VEnd		0
 #define ZR36057_VFEVCR_Vmask		0x3ff
 
 #define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
-#define ZR36057_VFESPFR_ExtFl           (1<<26)
-#define ZR36057_VFESPFR_TopField        (1<<25)
-#define ZR36057_VFESPFR_VCLKPol         (1<<24)
+#define ZR36057_VFESPFR_ExtFl           (BIT(26))
+#define ZR36057_VFESPFR_TopField        (BIT(25))
+#define ZR36057_VFESPFR_VCLKPol         (BIT(24))
 #define ZR36057_VFESPFR_HFilter         21
 #define ZR36057_VFESPFR_HorDcm          14
 #define ZR36057_VFESPFR_VerDcm          8
 #define ZR36057_VFESPFR_DispMode        6
 #define ZR36057_VFESPFR_YUV422          (0<<3)
-#define ZR36057_VFESPFR_RGB888          (1<<3)
+#define ZR36057_VFESPFR_RGB888          (BIT(3))
 #define ZR36057_VFESPFR_RGB565          (2<<3)
 #define ZR36057_VFESPFR_RGB555          (3<<3)
-#define ZR36057_VFESPFR_ErrDif          (1<<2)
-#define ZR36057_VFESPFR_Pack24          (1<<1)
-#define ZR36057_VFESPFR_LittleEndian    (1<<0)
+#define ZR36057_VFESPFR_ErrDif          (BIT(2))
+#define ZR36057_VFESPFR_Pack24          (BIT(1))
+#define ZR36057_VFESPFR_LittleEndian    (BIT(0))
 
 #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
 
@@ -54,14 +54,14 @@
 
 #define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
 #define ZR36057_VSSFGR_DispStride       16
-#define ZR36057_VSSFGR_VidOvf           (1<<8)
-#define ZR36057_VSSFGR_SnapShot         (1<<1)
-#define ZR36057_VSSFGR_FrameGrab        (1<<0)
+#define ZR36057_VSSFGR_VidOvf           (BIT(8))
+#define ZR36057_VSSFGR_SnapShot         (BIT(1))
+#define ZR36057_VSSFGR_FrameGrab        (BIT(0))
 
 #define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
-#define ZR36057_VDCR_VidEn              (1<<31)
+#define ZR36057_VDCR_VidEn              (BIT(31))
 #define ZR36057_VDCR_MinPix             24
-#define ZR36057_VDCR_Triton             (1<<24)
+#define ZR36057_VDCR_Triton             (BIT(24))
 #define ZR36057_VDCR_VidWinHt           12
 #define ZR36057_VDCR_VidWinWid          0
 
@@ -70,60 +70,60 @@
 #define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
 
 #define ZR36057_OCR             0x024	/* Overlay Control Register */
-#define ZR36057_OCR_OvlEnable           (1 << 15)
+#define ZR36057_OCR_OvlEnable           (BIT(15))
 #define ZR36057_OCR_MaskStride          0
 
 #define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
-#define ZR36057_SPGPPCR_SoftReset	(1<<24)
+#define ZR36057_SPGPPCR_SoftReset	(BIT(24))
 
 #define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
 
 #define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
 
 #define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
-#define ZR36057_MCTCR_CodTime           (1 << 30)
-#define ZR36057_MCTCR_CEmpty            (1 << 29)
-#define ZR36057_MCTCR_CFlush            (1 << 28)
+#define ZR36057_MCTCR_CodTime           (BIT(30))
+#define ZR36057_MCTCR_CEmpty            (BIT(29))
+#define ZR36057_MCTCR_CFlush            (BIT(28))
 #define ZR36057_MCTCR_CodGuestID	20
 #define ZR36057_MCTCR_CodGuestReg	16
 
 #define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
 
 #define ZR36057_ISR             0x03c	/* Interrupt Status Register */
-#define ZR36057_ISR_GIRQ1               (1<<30)
-#define ZR36057_ISR_GIRQ0               (1<<29)
-#define ZR36057_ISR_CodRepIRQ           (1<<28)
-#define ZR36057_ISR_JPEGRepIRQ          (1<<27)
+#define ZR36057_ISR_GIRQ1               (BIT(30))
+#define ZR36057_ISR_GIRQ0               (BIT(29))
+#define ZR36057_ISR_CodRepIRQ           (BIT(28))
+#define ZR36057_ISR_JPEGRepIRQ          (BIT(27))
 
 #define ZR36057_ICR             0x040	/* Interrupt Control Register */
-#define ZR36057_ICR_GIRQ1               (1<<30)
-#define ZR36057_ICR_GIRQ0               (1<<29)
-#define ZR36057_ICR_CodRepIRQ           (1<<28)
-#define ZR36057_ICR_JPEGRepIRQ          (1<<27)
-#define ZR36057_ICR_IntPinEn            (1<<24)
+#define ZR36057_ICR_GIRQ1               (BIT(30))
+#define ZR36057_ICR_GIRQ0               (BIT(29))
+#define ZR36057_ICR_CodRepIRQ           (BIT(28))
+#define ZR36057_ICR_JPEGRepIRQ          (BIT(27))
+#define ZR36057_ICR_IntPinEn            (BIT(24))
 
 #define ZR36057_I2CBR           0x044	/* I2C Bus Register */
-#define ZR36057_I2CBR_SDA		(1<<1)
-#define ZR36057_I2CBR_SCL		(1<<0)
+#define ZR36057_I2CBR_SDA		(BIT(1))
+#define ZR36057_I2CBR_SCL		(BIT(0))
 
 #define ZR36057_JMC             0x100	/* JPEG Mode and Control */
-#define ZR36057_JMC_JPG                 (1 << 31)
+#define ZR36057_JMC_JPG                 (BIT(31))
 #define ZR36057_JMC_JPGExpMode          (0 << 29)
-#define ZR36057_JMC_JPGCmpMode          (1 << 29)
+#define ZR36057_JMC_JPGCmpMode          (BIT(29))
 #define ZR36057_JMC_MJPGExpMode         (2 << 29)
 #define ZR36057_JMC_MJPGCmpMode         (3 << 29)
-#define ZR36057_JMC_RTBUSY_FB           (1 << 6)
-#define ZR36057_JMC_Go_en               (1 << 5)
-#define ZR36057_JMC_SyncMstr            (1 << 4)
-#define ZR36057_JMC_Fld_per_buff        (1 << 3)
-#define ZR36057_JMC_VFIFO_FB            (1 << 2)
-#define ZR36057_JMC_CFIFO_FB            (1 << 1)
-#define ZR36057_JMC_Stll_LitEndian      (1 << 0)
+#define ZR36057_JMC_RTBUSY_FB           (BIT(6))
+#define ZR36057_JMC_Go_en               (BIT(5))
+#define ZR36057_JMC_SyncMstr            (BIT(4))
+#define ZR36057_JMC_Fld_per_buff        (BIT(3))
+#define ZR36057_JMC_VFIFO_FB            (BIT(2))
+#define ZR36057_JMC_CFIFO_FB            (BIT(1))
+#define ZR36057_JMC_Stll_LitEndian      (BIT(0))
 
 #define ZR36057_JPC             0x104	/* JPEG Process Control */
-#define ZR36057_JPC_P_Reset             (1 << 7)
-#define ZR36057_JPC_CodTrnsEn           (1 << 5)
-#define ZR36057_JPC_Active              (1 << 0)
+#define ZR36057_JPC_P_Reset             (BIT(7))
+#define ZR36057_JPC_CodTrnsEn           (BIT(5))
+#define ZR36057_JPC_Active              (BIT(0))
 
 #define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
 #define ZR36057_VSP_VsyncSize           16
@@ -142,7 +142,7 @@
 #define ZR36057_FVAP_PAY                0
 
 #define ZR36057_FPP             0x118	/* Field Process Parameters */
-#define ZR36057_FPP_Odd_Even            (1 << 0)
+#define ZR36057_FPP_Odd_Even            (BIT(0))
 
 #define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
 
@@ -155,9 +155,9 @@
 #define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
 
 #define ZR36057_POR             0x200	/* Post Office Register */
-#define ZR36057_POR_POPen               (1<<25)
-#define ZR36057_POR_POTime              (1<<24)
-#define ZR36057_POR_PODir               (1<<23)
+#define ZR36057_POR_POPen               (BIT(25))
+#define ZR36057_POR_POTime              (BIT(24))
+#define ZR36057_POR_PODir               (BIT(23))
 
 #define ZR36057_STR             0x300	/* "Still" Transfer Register */
 
diff --git a/drivers/staging/media/zoran/zr36060.h b/drivers/staging/media/zoran/zr36060.h
index 82911757ba78..b56f7b08b9ed 100644
--- a/drivers/staging/media/zoran/zr36060.h
+++ b/drivers/staging/media/zoran/zr36060.h
@@ -139,78 +139,78 @@ struct zr36060 {
 
 /* ZR36060 LOAD register bits */
 
-#define ZR060_LOAD_Load			(1 << 7)
-#define ZR060_LOAD_SyncRst		(1 << 0)
+#define ZR060_LOAD_Load			(BIT(7))
+#define ZR060_LOAD_SyncRst		(BIT(0))
 
 /* ZR36060 Code FIFO Status register bits */
 
-#define ZR060_CFSR_Busy			(1 << 7)
-#define ZR060_CFSR_CBusy		(1 << 2)
+#define ZR060_CFSR_Busy			(BIT(7))
+#define ZR060_CFSR_CBusy		(BIT(2))
 #define ZR060_CFSR_CFIFO		(3 << 0)
 
 /* ZR36060 Code Interface register */
 
-#define ZR060_CIR_Code16		(1 << 7)
-#define ZR060_CIR_Endian		(1 << 6)
-#define ZR060_CIR_CFIS			(1 << 2)
-#define ZR060_CIR_CodeMstr		(1 << 0)
+#define ZR060_CIR_Code16		(BIT(7))
+#define ZR060_CIR_Endian		(BIT(6))
+#define ZR060_CIR_CFIS			(BIT(2))
+#define ZR060_CIR_CodeMstr		(BIT(0))
 
 /* ZR36060 Codec Mode register */
 
-#define ZR060_CMR_Comp			(1 << 7)
-#define ZR060_CMR_ATP			(1 << 6)
-#define ZR060_CMR_Pass2			(1 << 5)
-#define ZR060_CMR_TLM			(1 << 4)
-#define ZR060_CMR_BRB			(1 << 2)
-#define ZR060_CMR_FSF			(1 << 1)
+#define ZR060_CMR_Comp			(BIT(7))
+#define ZR060_CMR_ATP			(BIT(6))
+#define ZR060_CMR_Pass2			(BIT(5))
+#define ZR060_CMR_TLM			(BIT(4))
+#define ZR060_CMR_BRB			(BIT(2))
+#define ZR060_CMR_FSF			(BIT(1))
 
 /* ZR36060 Markers Enable register */
 
-#define ZR060_MER_App			(1 << 7)
-#define ZR060_MER_Com			(1 << 6)
-#define ZR060_MER_DRI			(1 << 5)
-#define ZR060_MER_DQT			(1 << 4)
-#define ZR060_MER_DHT			(1 << 3)
+#define ZR060_MER_App			(BIT(7))
+#define ZR060_MER_Com			(BIT(6))
+#define ZR060_MER_DRI			(BIT(5))
+#define ZR060_MER_DQT			(BIT(4))
+#define ZR060_MER_DHT			(BIT(3))
 
 /* ZR36060 Interrupt Mask register */
 
-#define ZR060_IMR_EOAV			(1 << 3)
-#define ZR060_IMR_EOI			(1 << 2)
-#define ZR060_IMR_End			(1 << 1)
-#define ZR060_IMR_DataErr		(1 << 0)
+#define ZR060_IMR_EOAV			(BIT(3))
+#define ZR060_IMR_EOI			(BIT(2))
+#define ZR060_IMR_End			(BIT(1))
+#define ZR060_IMR_DataErr		(BIT(0))
 
 /* ZR36060 Interrupt Status register */
 
 #define ZR060_ISR_ProCnt		(3 << 6)
-#define ZR060_ISR_EOAV			(1 << 3)
-#define ZR060_ISR_EOI			(1 << 2)
-#define ZR060_ISR_End			(1 << 1)
-#define ZR060_ISR_DataErr		(1 << 0)
+#define ZR060_ISR_EOAV			(BIT(3))
+#define ZR060_ISR_EOI			(BIT(2))
+#define ZR060_ISR_End			(BIT(1))
+#define ZR060_ISR_DataErr		(BIT(0))
 
 /* ZR36060 Video Control register */
 
-#define ZR060_VCR_Video8		(1 << 7)
-#define ZR060_VCR_Range			(1 << 6)
-#define ZR060_VCR_FIDet			(1 << 3)
-#define ZR060_VCR_FIVedge		(1 << 2)
-#define ZR060_VCR_FIExt			(1 << 1)
-#define ZR060_VCR_SyncMstr		(1 << 0)
+#define ZR060_VCR_Video8		(BIT(7))
+#define ZR060_VCR_Range			(BIT(6))
+#define ZR060_VCR_FIDet			(BIT(3))
+#define ZR060_VCR_FIVedge		(BIT(2))
+#define ZR060_VCR_FIExt			(BIT(1))
+#define ZR060_VCR_SyncMstr		(BIT(0))
 
 /* ZR36060 Video Polarity register */
 
-#define ZR060_VPR_VCLKPol		(1 << 7)
-#define ZR060_VPR_PValPol		(1 << 6)
-#define ZR060_VPR_PoePol		(1 << 5)
-#define ZR060_VPR_SImgPol		(1 << 4)
-#define ZR060_VPR_BLPol			(1 << 3)
-#define ZR060_VPR_FIPol			(1 << 2)
-#define ZR060_VPR_HSPol			(1 << 1)
-#define ZR060_VPR_VSPol			(1 << 0)
+#define ZR060_VPR_VCLKPol		(BIT(7))
+#define ZR060_VPR_PValPol		(BIT(6))
+#define ZR060_VPR_PoePol		(BIT(5))
+#define ZR060_VPR_SImgPol		(BIT(4))
+#define ZR060_VPR_BLPol			(BIT(3))
+#define ZR060_VPR_FIPol			(BIT(2))
+#define ZR060_VPR_HSPol			(BIT(1))
+#define ZR060_VPR_VSPol			(BIT(0))
 
 /* ZR36060 Scaling register */
 
-#define ZR060_SR_VScale			(1 << 2)
-#define ZR060_SR_HScale2		(1 << 0)
+#define ZR060_SR_VScale			(BIT(2))
+#define ZR060_SR_HScale2		(BIT(0))
 #define ZR060_SR_HScale4		(2 << 0)
 
 #endif				/*fndef ZR36060_H */
-- 
2.19.1



