X-GM-THRID: 6202672545102036992
X-Received: by 10.112.55.69 with SMTP id q5mr2945209lbp.24.1444420310370;
        Fri, 09 Oct 2015 12:51:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.165.199 with SMTP id o190ls394389lfe.60.gmail; Fri, 09 Oct
 2015 12:51:49 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr2999160lbb.7.1444420309794;
        Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id ch7si11308wib.2.2015.10.09.12.51.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id ge5so82296259wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PwGYOcPAseg0gjSaaDRaAI0aaos/ud2/NcZCRLc0mb8=;
        b=mjorOWcR51mN9ocem+YKiU/Dgp+J2LNcHmspSujl1uNMKKRECZ8WO0dGeXloCntqax
         uaCxA28QkFOoYKa5Mgh0Vots2XkZgw61ZAmshBh6XN8KsR0jLSfoE4dKhw2+sdyg8uy/
         n0ajDGw0rN2Eik7Gc00s81h3bijS1rIU90/AE/MRjv2oTdo8c+UuktORZy+a8gRTRyA6
         5FTi63F17Cn5NEs+X2Vm8BJQ1Ks9wQ5opR3ysEDK9pdV2Ssat9Ffx+hT3AfNH0xsA/S+
         gzgNrSc0V6wvPv6K4DFI0cuQOp61DHZ81BFUAKZ1g6Qh4PjdWPmr6B0s2TCyGglL8cUh
         EIfw==
X-Received: by 10.181.8.72 with SMTP id di8mr1093323wid.62.1444420309693;
        Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:49 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 8/9] staging: iio: adc: remove the use of CamelCase
Date: Fri,  9 Oct 2015 22:51:07 +0300
Message-Id: <1b5753d919ace483b427bd42476f97519b039adb.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Remove the use of CamelCase to follow the kernel naming conventions

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - remove change added by mistake in v1
Changes in v3:
    - nothing

 drivers/staging/iio/adc/ad7192.c      | 10 +++++-----
 drivers/staging/iio/adc/ad7192.h      |  2 +-
 drivers/staging/iio/adc/ad7280a.c     | 14 +++++++-------
 drivers/staging/iio/adc/lpc32xx_adc.c |  6 +++---
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 5f2b5a6..c9a706a 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -124,7 +124,7 @@
 #define AD7192_GPOCON_P1DAT	BIT(1) /* P1 state */
 #define AD7192_GPOCON_P0DAT	BIT(0) /* P0 state */
 
-#define AD7192_INT_FREQ_MHz	4915200
+#define AD7192_INT_FREQ_MHZ	4915200
 
 /* NOTE:
  * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
@@ -228,14 +228,14 @@ static int ad7192_setup(struct ad7192_state *st,
 	switch (pdata->clock_source_sel) {
 	case AD7192_CLK_EXT_MCLK1_2:
 	case AD7192_CLK_EXT_MCLK2:
-		st->mclk = AD7192_INT_FREQ_MHz;
+		st->mclk = AD7192_INT_FREQ_MHZ;
 		break;
 	case AD7192_CLK_INT:
 	case AD7192_CLK_INT_CO:
-		if (pdata->ext_clk_Hz)
-			st->mclk = pdata->ext_clk_Hz;
+		if (pdata->ext_clk_hz)
+			st->mclk = pdata->ext_clk_hz;
 		else
-			st->mclk = AD7192_INT_FREQ_MHz;
+			st->mclk = AD7192_INT_FREQ_MHZ;
 			break;
 	default:
 		ret = -EINVAL;
diff --git a/drivers/staging/iio/adc/ad7192.h b/drivers/staging/iio/adc/ad7192.h
index a0a5b61..7433a43 100644
--- a/drivers/staging/iio/adc/ad7192.h
+++ b/drivers/staging/iio/adc/ad7192.h
@@ -34,7 +34,7 @@
 struct ad7192_platform_data {
 	u16		vref_mv;
 	u8		clock_source_sel;
-	u32		ext_clk_Hz;
+	u32		ext_clk_hz;
 	bool		refin2_en;
 	bool		rej60_en;
 	bool		sinc3_en;
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2be3475..f9f3670 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -89,7 +89,7 @@
 
 #define AD7280A_ALL_CELLS				(0xAD << 16)
 
-#define AD7280A_MAX_SPI_CLK_Hz		700000 /* < 1MHz */
+#define AD7280A_MAX_SPI_CLK_HZ		700000 /* < 1MHz */
 #define AD7280A_MAX_CHAIN		8
 #define AD7280A_CELLS_PER_DEV		6
 #define AD7280A_BITS			12
@@ -840,8 +840,8 @@ static int ad7280_probe(struct spi_device *spi)
 	const struct ad7280_platform_data *pdata = spi->dev.platform_data;
 	struct ad7280_state *st;
 	int ret;
-	const unsigned short tACQ_ns[4] = {465, 1010, 1460, 1890};
-	const unsigned short nAVG[4] = {1, 2, 4, 8};
+	const unsigned short tacq_ns[4] = {465, 1010, 1460, 1890};
+	const unsigned short navg[4] = {1, 2, 4, 8};
 	struct iio_dev *indio_dev;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
@@ -857,7 +857,7 @@ static int ad7280_probe(struct spi_device *spi)
 
 	ad7280_crc8_build_table(st->crc_tab);
 
-	st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_Hz;
+	st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_HZ;
 	st->spi->mode = SPI_MODE_1;
 	spi_setup(st->spi);
 
@@ -884,9 +884,9 @@ static int ad7280_probe(struct spi_device *spi)
 	 */
 
 	st->readback_delay_us =
-		((tACQ_ns[pdata->acquisition_time & 0x3] + 695) *
-		(AD7280A_NUM_CH * nAVG[pdata->conversion_averaging & 0x3]))
-		- tACQ_ns[pdata->acquisition_time & 0x3] +
+		((tacq_ns[pdata->acquisition_time & 0x3] + 695) *
+		(AD7280A_NUM_CH * navg[pdata->conversion_averaging & 0x3]))
+		- tacq_ns[pdata->acquisition_time & 0x3] +
 		st->slave_num * 250;
 
 	/* Convert to usecs */
diff --git a/drivers/staging/iio/adc/lpc32xx_adc.c b/drivers/staging/iio/adc/lpc32xx_adc.c
index d11c54b..b411e0b 100644
--- a/drivers/staging/iio/adc/lpc32xx_adc.c
+++ b/drivers/staging/iio/adc/lpc32xx_adc.c
@@ -43,8 +43,8 @@
 #define LPC32XX_ADC_VALUE(x)	((x) + 0x48)
 
 /* Bit definitions for LPC32XX_ADC_SELECT: */
-#define AD_REFm         0x00000200 /* constant, always write this value! */
-#define AD_REFp		0x00000080 /* constant, always write this value! */
+#define AD_REFM         0x00000200 /* constant, always write this value! */
+#define AD_REFP		0x00000080 /* constant, always write this value! */
 #define AD_IN		0x00000010 /* multiple of this is the */
 				   /* channel number: 0, 1, 2 */
 #define AD_INTERNAL	0x00000004 /* constant, always write this value! */
@@ -78,7 +78,7 @@ static int lpc32xx_read_raw(struct iio_dev *indio_dev,
 		mutex_lock(&indio_dev->mlock);
 		clk_enable(info->clk);
 		/* Measurement setup */
-		__raw_writel(AD_INTERNAL | (chan->address) | AD_REFp | AD_REFm,
+		__raw_writel(AD_INTERNAL | (chan->address) | AD_REFP | AD_REFM,
 			     LPC32XX_ADC_SELECT(info->adc_base));
 		/* Trigger conversion */
 		__raw_writel(AD_PDN_CTRL | AD_STROBE,
-- 
2.1.4


