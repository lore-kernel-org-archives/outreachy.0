X-GM-THRID: 6202672545102036992
X-Received: by 10.112.184.170 with SMTP id ev10mr1141367lbc.4.1444846742377;
        Wed, 14 Oct 2015 11:19:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.165 with SMTP id s5ls1234939wia.44.canary; Wed, 14 Oct
 2015 11:19:01 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1099494wjb.5.1444846741856;
        Wed, 14 Oct 2015 11:19:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id c7si955418wiy.3.2015.10.14.11.19.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q8so94019656wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=V3esdcNZVtR/CroxRtYzDx+JglvZcMKy0tOk3tJtQc8=;
        b=LQTzPIDHqS2CqF+ZJe5ZPrCRKUfrJJW7iuTXv7l0R0orV+eVSFCQFf9xQgG6JLSxsS
         PoL9XqkBAqcZvLGEDQhdae5cEOdcQ6rwJwuWc30ACaAP8cZgi8W4FHcn6kudFaunwakc
         i6JCLjHT3z7kF3uAgQ8dK6AlqZrYkmeeADmywiPWEXtkscWRaokA5KbGjz5dkPaJljKs
         3cZ48E7bDa0ni6/IA6JH7zpOmTou3E1UM4HaNRZr6c51dhMRzLQsry1WhzfCvPInWKMy
         5ODdChWgST4XIdrHpMTeG9ZyyFKet3mHPH6pFmI8cKDwvQz6hFnqKAU+fMODx7NVTaWT
         NSkw==
X-Received: by 10.180.11.37 with SMTP id n5mr5860319wib.20.1444846741757;
        Wed, 14 Oct 2015 11:19:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.19.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:19:01 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 8/9] staging: iio: adc: remove the use of CamelCase
Date: Wed, 14 Oct 2015 21:14:19 +0300
Message-Id: <d3276213a23191fd2c018c6d9b0bdbcc4710d5c2.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Remove the use of CamelCase to follow the kernel naming conventions

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - remove change added by mistake in v1
Changes in v3:
    - nothing
Changes in v4:
    - invert some changes in order to improve readability
    (some of them are just abbreviation: ACQ, AVG)

 drivers/staging/iio/adc/ad7192.c  | 10 +++++-----
 drivers/staging/iio/adc/ad7192.h  |  2 +-
 drivers/staging/iio/adc/ad7280a.c |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f3d793c..bb76096 100644
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
index d37e8a4..45df714 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -89,7 +89,7 @@
 
 #define AD7280A_ALL_CELLS				(0xAD << 16)
 
-#define AD7280A_MAX_SPI_CLK_Hz		700000 /* < 1MHz */
+#define AD7280A_MAX_SPI_CLK_HZ		700000 /* < 1MHz */
 #define AD7280A_MAX_CHAIN		8
 #define AD7280A_CELLS_PER_DEV		6
 #define AD7280A_BITS			12
@@ -853,7 +853,7 @@ static int ad7280_probe(struct spi_device *spi)
 
 	ad7280_crc8_build_table(st->crc_tab);
 
-	st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_Hz;
+	st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_HZ;
 	st->spi->mode = SPI_MODE_1;
 	spi_setup(st->spi);
 
-- 
2.1.4


