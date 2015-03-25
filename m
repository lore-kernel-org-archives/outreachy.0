X-GM-THRID: 9605342035968
X-Received: by 10.112.73.33 with SMTP id i1mr2609996lbv.0.1427325818418;
        Wed, 25 Mar 2015 16:23:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.68 with SMTP id p4ls320395wix.6.gmail; Wed, 25 Mar 2015
 16:23:38 -0700 (PDT)
X-Received: by 10.180.218.2 with SMTP id pc2mr962705wic.0.1427325817799;
        Wed, 25 Mar 2015 16:23:37 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id o3si1035119wib.2.2015.03.25.16.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 16:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id g7so4378101wib.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 16:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1mLYN7mCqlFquSOHLtxOe1dDGHlz8x9Pv7W+hwEY5Ac=;
        b=cW6qsN722hdgXigiUogRazIFg6mO8f2tvgugDu30htrZVO7flZKFMnVgCyOVcaMcMB
         xuV9zrIY7l1bHNt42QGsI3g5sr+NzIUJc7cfLC3LM6tSGKncSnPf6cPnPrcH0m6mdgjG
         J5m7UK82hVIKlbmvyhMCiYpPukH8WL1sUtd5N9oSwDeuFZ4CZlfsaLvLQdWRFcqAhdoD
         MHOkurtPcztx8s46axARPal+Vl01LmbPX/x4qvRJPvKU/RApjq4Tgc1cpVBjqAUhaNLz
         feZSfuMYoST2nUx+CQVxWbd4aMBcuxqYWle114ZuvX9TMff60ulBaT0NdSl1CfMrsh4w
         BSww==
X-Received: by 10.180.208.33 with SMTP id mb1mr42537329wic.69.1427325817667;
        Wed, 25 Mar 2015 16:23:37 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id o10sm18984656wiy.18.2015.03.25.16.23.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 16:23:36 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id AA233C1FFD; Thu, 26 Mar 2015 02:23:32 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3] Staging: iio: use the BIT macro in adc
Date: Thu, 26 Mar 2015 02:23:29 +0300
Message-Id: <1427325809-18859-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427211295-26140-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427211295-26140-1-git-send-email-hamohammed.sa@gmail.com>

This patch replaces bit shifting on:
0,1,2, and 3 with the BIT(x) macro.
Issue addressed by checkpatcg.pl.
This was done with the help of Coccinelle:

@r1@
identifier x;
constant int g;
@@

(
0<<\(x\|g\)
|
1<<\(x\|g\)
|
2<<\(x\|g\)
|
3<<\(x\|g\)
)

@script:python b@
g2 <<r1.g;
y;
@@
coccinelle.y = int(g2) + 1

@c@
constant int r1.g;
identifier b.y;
@@
(
-(1 << g)
+BIT(g)
|
-(0 << g)
+ 0
|
-(2 << g)
+BIT(y)
|
-(3 << g)
+(BIT(y)| BIT(g))
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v3: redo against updated staging tree
v2: addressed compiler warnings due to prev change by undoing the change that triggered them 
 drivers/staging/iio/adc/ad7192.c    | 62 ++++++++++++++++++-------------------
 drivers/staging/iio/adc/ad7280a.c   | 56 ++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7780.c    | 16 +++++-----
 drivers/staging/iio/adc/mxs-lradc.c | 46 +++++++++++++--------------
 drivers/staging/iio/adc/spear_adc.c |  6 ++--
 5 files changed, 93 insertions(+), 93 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 6f8ce6c..fe56fb6 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -41,32 +41,32 @@
 				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
-#define AD7192_COMM_WEN		(1 << 7) /* Write Enable */
-#define AD7192_COMM_WRITE	(0 << 6) /* Write Operation */
-#define AD7192_COMM_READ	(1 << 6) /* Read Operation */
+#define AD7192_COMM_WEN		BIT(7) /* Write Enable */
+#define AD7192_COMM_WRITE	0 /* Write Operation */
+#define AD7192_COMM_READ	BIT(6) /* Read Operation */
 #define AD7192_COMM_ADDR(x)	(((x) & 0x7) << 3) /* Register Address */
-#define AD7192_COMM_CREAD	(1 << 2) /* Continuous Read of Data Register */
+#define AD7192_COMM_CREAD	BIT(2) /* Continuous Read of Data Register */
 
 /* Status Register Bit Designations (AD7192_REG_STAT) */
-#define AD7192_STAT_RDY		(1 << 7) /* Ready */
-#define AD7192_STAT_ERR		(1 << 6) /* Error (Overrange, Underrange) */
-#define AD7192_STAT_NOREF	(1 << 5) /* Error no external reference */
-#define AD7192_STAT_PARITY	(1 << 4) /* Parity */
-#define AD7192_STAT_CH3		(1 << 2) /* Channel 3 */
-#define AD7192_STAT_CH2		(1 << 1) /* Channel 2 */
-#define AD7192_STAT_CH1		(1 << 0) /* Channel 1 */
+#define AD7192_STAT_RDY		BIT(7) /* Ready */
+#define AD7192_STAT_ERR		BIT(6) /* Error (Overrange, Underrange) */
+#define AD7192_STAT_NOREF	BIT(5) /* Error no external reference */
+#define AD7192_STAT_PARITY	BIT(4) /* Parity */
+#define AD7192_STAT_CH3		BIT(2) /* Channel 3 */
+#define AD7192_STAT_CH2		BIT(1) /* Channel 2 */
+#define AD7192_STAT_CH1		BIT(0) /* Channel 1 */
 
 /* Mode Register Bit Designations (AD7192_REG_MODE) */
 #define AD7192_MODE_SEL(x)	(((x) & 0x7) << 21) /* Operation Mode Select */
 #define AD7192_MODE_SEL_MASK	(0x7 << 21) /* Operation Mode Select Mask */
-#define AD7192_MODE_DAT_STA	(1 << 20) /* Status Register transmission */
+#define AD7192_MODE_DAT_STA	BIT(20) /* Status Register transmission */
 #define AD7192_MODE_CLKSRC(x)	(((x) & 0x3) << 18) /* Clock Source Select */
-#define AD7192_MODE_SINC3	(1 << 15) /* SINC3 Filter Select */
-#define AD7192_MODE_ACX		(1 << 14) /* AC excitation enable(AD7195 only)*/
-#define AD7192_MODE_ENPAR	(1 << 13) /* Parity Enable */
-#define AD7192_MODE_CLKDIV	(1 << 12) /* Clock divide by 2 (AD7190/2 only)*/
-#define AD7192_MODE_SCYCLE	(1 << 11) /* Single cycle conversion */
-#define AD7192_MODE_REJ60	(1 << 10) /* 50/60Hz notch filter */
+#define AD7192_MODE_SINC3	BIT(15) /* SINC3 Filter Select */
+#define AD7192_MODE_ACX		BIT(14) /* AC excitation enable(AD7195 only)*/
+#define AD7192_MODE_ENPAR	BIT(13) /* Parity Enable */
+#define AD7192_MODE_CLKDIV	BIT(12) /* Clock divide by 2 (AD7190/2 only)*/
+#define AD7192_MODE_SCYCLE	BIT(11) /* Single cycle conversion */
+#define AD7192_MODE_REJ60	BIT(10) /* 50/60Hz notch filter */
 #define AD7192_MODE_RATE(x)	((x) & 0x3FF) /* Filter Update Rate Select */
 
 /* Mode Register: AD7192_MODE_SEL options */
@@ -91,14 +91,14 @@
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
-#define AD7192_CONF_CHOP	(1 << 23) /* CHOP enable */
-#define AD7192_CONF_REFSEL	(1 << 20) /* REFIN1/REFIN2 Reference Select */
+#define AD7192_CONF_CHOP	BIT(23) /* CHOP enable */
+#define AD7192_CONF_REFSEL	BIT(20) /* REFIN1/REFIN2 Reference Select */
 #define AD7192_CONF_CHAN(x)	(((1 << (x)) & 0xFF) << 8) /* Channel select */
 #define AD7192_CONF_CHAN_MASK	(0xFF << 8) /* Channel select mask */
-#define AD7192_CONF_BURN	(1 << 7) /* Burnout current enable */
-#define AD7192_CONF_REFDET	(1 << 6) /* Reference detect enable */
-#define AD7192_CONF_BUF		(1 << 4) /* Buffered Mode Enable */
-#define AD7192_CONF_UNIPOLAR	(1 << 3) /* Unipolar/Bipolar Enable */
+#define AD7192_CONF_BURN	BIT(7) /* Burnout current enable */
+#define AD7192_CONF_REFDET	BIT(6) /* Reference detect enable */
+#define AD7192_CONF_BUF		BIT(4) /* Buffered Mode Enable */
+#define AD7192_CONF_UNIPOLAR	BIT(3) /* Unipolar/Bipolar Enable */
 #define AD7192_CONF_GAIN(x)	((x) & 0x7) /* Gain Select */
 
 #define AD7192_CH_AIN1P_AIN2M	0 /* AIN1(+) - AIN2(-) */
@@ -117,13 +117,13 @@
 #define AD7192_ID_MASK		0x0F
 
 /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
-#define AD7192_GPOCON_BPDSW	(1 << 6) /* Bridge power-down switch enable */
-#define AD7192_GPOCON_GP32EN	(1 << 5) /* Digital Output P3 and P2 enable */
-#define AD7192_GPOCON_GP10EN	(1 << 4) /* Digital Output P1 and P0 enable */
-#define AD7192_GPOCON_P3DAT	(1 << 3) /* P3 state */
-#define AD7192_GPOCON_P2DAT	(1 << 2) /* P2 state */
-#define AD7192_GPOCON_P1DAT	(1 << 1) /* P1 state */
-#define AD7192_GPOCON_P0DAT	(1 << 0) /* P0 state */
+#define AD7192_GPOCON_BPDSW	BIT(6) /* Bridge power-down switch enable */
+#define AD7192_GPOCON_GP32EN	BIT(5) /* Digital Output P3 and P2 enable */
+#define AD7192_GPOCON_GP10EN	BIT(4) /* Digital Output P1 and P0 enable */
+#define AD7192_GPOCON_P3DAT	BIT(3) /* P3 state */
+#define AD7192_GPOCON_P2DAT	BIT(2) /* P2 state */
+#define AD7192_GPOCON_P1DAT	BIT(1) /* P1 state */
+#define AD7192_GPOCON_P0DAT	BIT(0) /* P0 state */
 
 #define AD7192_INT_FREQ_MHz	4915200
 
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index e7d45ee..d98e229 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -55,37 +55,37 @@
 #define AD7280A_CNVST_CONTROL		0x1D /* D7 to D0, Read/write */
 
 /* Bits and Masks */
-#define AD7280A_CTRL_HB_CONV_INPUT_ALL			(0 << 6)
-#define AD7280A_CTRL_HB_CONV_INPUT_6CELL_AUX1_3_4	(1 << 6)
-#define AD7280A_CTRL_HB_CONV_INPUT_6CELL		(2 << 6)
-#define AD7280A_CTRL_HB_CONV_INPUT_SELF_TEST		(3 << 6)
-#define AD7280A_CTRL_HB_CONV_RES_READ_ALL		(0 << 4)
-#define AD7280A_CTRL_HB_CONV_RES_READ_6CELL_AUX1_3_4	(1 << 4)
-#define AD7280A_CTRL_HB_CONV_RES_READ_6CELL		(2 << 4)
-#define AD7280A_CTRL_HB_CONV_RES_READ_NO		(3 << 4)
-#define AD7280A_CTRL_HB_CONV_START_CNVST		(0 << 3)
-#define AD7280A_CTRL_HB_CONV_START_CS			(1 << 3)
-#define AD7280A_CTRL_HB_CONV_AVG_DIS			(0 << 1)
-#define AD7280A_CTRL_HB_CONV_AVG_2			(1 << 1)
-#define AD7280A_CTRL_HB_CONV_AVG_4			(2 << 1)
-#define AD7280A_CTRL_HB_CONV_AVG_8			(3 << 1)
+#define AD7280A_CTRL_HB_CONV_INPUT_ALL			0
+#define AD7280A_CTRL_HB_CONV_INPUT_6CELL_AUX1_3_4	BIT(6)
+#define AD7280A_CTRL_HB_CONV_INPUT_6CELL		BIT(7)
+#define AD7280A_CTRL_HB_CONV_INPUT_SELF_TEST		(BIT(7) | BIT(6))
+#define AD7280A_CTRL_HB_CONV_RES_READ_ALL		0
+#define AD7280A_CTRL_HB_CONV_RES_READ_6CELL_AUX1_3_4	BIT(4)
+#define AD7280A_CTRL_HB_CONV_RES_READ_6CELL		BIT(5)
+#define AD7280A_CTRL_HB_CONV_RES_READ_NO		(BIT(5) | BIT(4))
+#define AD7280A_CTRL_HB_CONV_START_CNVST		0
+#define AD7280A_CTRL_HB_CONV_START_CS			BIT(3)
+#define AD7280A_CTRL_HB_CONV_AVG_DIS			0
+#define AD7280A_CTRL_HB_CONV_AVG_2			BIT(1)
+#define AD7280A_CTRL_HB_CONV_AVG_4			BIT(2)
+#define AD7280A_CTRL_HB_CONV_AVG_8			(BIT(2) | BIT(1))
 #define AD7280A_CTRL_HB_CONV_AVG(x)			((x) << 1)
-#define AD7280A_CTRL_HB_PWRDN_SW			(1 << 0)
+#define AD7280A_CTRL_HB_PWRDN_SW			BIT(0)
 
-#define AD7280A_CTRL_LB_SWRST				(1 << 7)
-#define AD7280A_CTRL_LB_ACQ_TIME_400ns			(0 << 5)
-#define AD7280A_CTRL_LB_ACQ_TIME_800ns			(1 << 5)
-#define AD7280A_CTRL_LB_ACQ_TIME_1200ns			(2 << 5)
-#define AD7280A_CTRL_LB_ACQ_TIME_1600ns			(3 << 5)
+#define AD7280A_CTRL_LB_SWRST				BIT(7)
+#define AD7280A_CTRL_LB_ACQ_TIME_400ns			0
+#define AD7280A_CTRL_LB_ACQ_TIME_800ns			BIT(5)
+#define AD7280A_CTRL_LB_ACQ_TIME_1200ns			BIT(6)
+#define AD7280A_CTRL_LB_ACQ_TIME_1600ns			(BIT(6) | BIT(5))
 #define AD7280A_CTRL_LB_ACQ_TIME(x)			((x) << 5)
-#define AD7280A_CTRL_LB_MUST_SET			(1 << 4)
-#define AD7280A_CTRL_LB_THERMISTOR_EN			(1 << 3)
-#define AD7280A_CTRL_LB_LOCK_DEV_ADDR			(1 << 2)
-#define AD7280A_CTRL_LB_INC_DEV_ADDR			(1 << 1)
-#define AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN		(1 << 0)
-
-#define AD7280A_ALERT_GEN_STATIC_HIGH			(1 << 6)
-#define AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN		(3 << 6)
+#define AD7280A_CTRL_LB_MUST_SET			BIT(4)
+#define AD7280A_CTRL_LB_THERMISTOR_EN			BIT(3)
+#define AD7280A_CTRL_LB_LOCK_DEV_ADDR			BIT(2)
+#define AD7280A_CTRL_LB_INC_DEV_ADDR			BIT(1)
+#define AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN		BIT(0)
+
+#define AD7280A_ALERT_GEN_STATIC_HIGH			BIT(6)
+#define AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN		(BIT(7) | BIT(6))
 
 #define AD7280A_ALL_CELLS				(0xAD << 16)
 
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 273add3..66a157b 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -24,14 +24,14 @@
 
 #include "ad7780.h"
 
-#define AD7780_RDY	(1 << 7)
-#define AD7780_FILTER	(1 << 6)
-#define AD7780_ERR	(1 << 5)
-#define AD7780_ID1	(1 << 4)
-#define AD7780_ID0	(1 << 3)
-#define AD7780_GAIN	(1 << 2)
-#define AD7780_PAT1	(1 << 1)
-#define AD7780_PAT0	(1 << 0)
+#define AD7780_RDY	BIT(7)
+#define AD7780_FILTER	BIT(6)
+#define AD7780_ERR	BIT(5)
+#define AD7780_ID1	BIT(4)
+#define AD7780_ID0	BIT(3)
+#define AD7780_GAIN	BIT(2)
+#define AD7780_PAT1	BIT(1)
+#define AD7780_PAT0	BIT(0)
 
 struct ad7780_chip_info {
 	struct iio_chan_spec	channel;
diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index 17f4ee7..d7c5223 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -243,7 +243,7 @@ struct mxs_lradc {
 	 * be sampled as regular LRADC channels. The driver will refuse any
 	 * attempt to sample these channels.
 	 */
-#define CHAN_MASK_TOUCHBUTTON		(0x3 << 0)
+#define CHAN_MASK_TOUCHBUTTON		(BIT(1) | BIT(0))
 #define CHAN_MASK_TOUCHSCREEN_4WIRE	(0xf << 2)
 #define CHAN_MASK_TOUCHSCREEN_5WIRE	(0x1f << 2)
 	enum mxs_lradc_ts	use_touchscreen;
@@ -268,20 +268,20 @@ struct mxs_lradc {
 };
 
 #define	LRADC_CTRL0				0x00
-# define LRADC_CTRL0_MX28_TOUCH_DETECT_ENABLE	(1 << 23)
-# define LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE	(1 << 22)
-# define LRADC_CTRL0_MX28_YNNSW	/* YM */	(1 << 21)
-# define LRADC_CTRL0_MX28_YPNSW	/* YP */	(1 << 20)
-# define LRADC_CTRL0_MX28_YPPSW	/* YP */	(1 << 19)
-# define LRADC_CTRL0_MX28_XNNSW	/* XM */	(1 << 18)
-# define LRADC_CTRL0_MX28_XNPSW	/* XM */	(1 << 17)
-# define LRADC_CTRL0_MX28_XPPSW	/* XP */	(1 << 16)
-
-# define LRADC_CTRL0_MX23_TOUCH_DETECT_ENABLE	(1 << 20)
-# define LRADC_CTRL0_MX23_YM			(1 << 19)
-# define LRADC_CTRL0_MX23_XM			(1 << 18)
-# define LRADC_CTRL0_MX23_YP			(1 << 17)
-# define LRADC_CTRL0_MX23_XP			(1 << 16)
+# define LRADC_CTRL0_MX28_TOUCH_DETECT_ENABLE	BIT(23)
+# define LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE	BIT(22)
+# define LRADC_CTRL0_MX28_YNNSW	/* YM */	BIT(21)
+# define LRADC_CTRL0_MX28_YPNSW	/* YP */	BIT(20)
+# define LRADC_CTRL0_MX28_YPPSW	/* YP */	BIT(19)
+# define LRADC_CTRL0_MX28_XNNSW	/* XM */	BIT(18)
+# define LRADC_CTRL0_MX28_XNPSW	/* XM */	BIT(17)
+# define LRADC_CTRL0_MX28_XPPSW	/* XP */	BIT(16)
+
+# define LRADC_CTRL0_MX23_TOUCH_DETECT_ENABLE	BIT(20)
+# define LRADC_CTRL0_MX23_YM			BIT(19)
+# define LRADC_CTRL0_MX23_XM			BIT(18)
+# define LRADC_CTRL0_MX23_YP			BIT(17)
+# define LRADC_CTRL0_MX23_XP			BIT(16)
 
 # define LRADC_CTRL0_MX28_PLATE_MASK \
 		(LRADC_CTRL0_MX28_TOUCH_DETECT_ENABLE | \
@@ -295,12 +295,12 @@ struct mxs_lradc {
 		LRADC_CTRL0_MX23_YP | LRADC_CTRL0_MX23_XP)
 
 #define	LRADC_CTRL1				0x10
-#define	LRADC_CTRL1_TOUCH_DETECT_IRQ_EN		(1 << 24)
+#define	LRADC_CTRL1_TOUCH_DETECT_IRQ_EN		BIT(24)
 #define	LRADC_CTRL1_LRADC_IRQ_EN(n)		(1 << ((n) + 16))
 #define	LRADC_CTRL1_MX28_LRADC_IRQ_EN_MASK	(0x1fff << 16)
 #define	LRADC_CTRL1_MX23_LRADC_IRQ_EN_MASK	(0x01ff << 16)
 #define	LRADC_CTRL1_LRADC_IRQ_EN_OFFSET		16
-#define	LRADC_CTRL1_TOUCH_DETECT_IRQ		(1 << 8)
+#define	LRADC_CTRL1_TOUCH_DETECT_IRQ		BIT(8)
 #define	LRADC_CTRL1_LRADC_IRQ(n)		(1 << (n))
 #define	LRADC_CTRL1_MX28_LRADC_IRQ_MASK		0x1fff
 #define	LRADC_CTRL1_MX23_LRADC_IRQ_MASK		0x01ff
@@ -308,13 +308,13 @@ struct mxs_lradc {
 
 #define	LRADC_CTRL2				0x20
 #define	LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET	24
-#define	LRADC_CTRL2_TEMPSENSE_PWD		(1 << 15)
+#define	LRADC_CTRL2_TEMPSENSE_PWD		BIT(15)
 
 #define	LRADC_STATUS				0x40
-#define	LRADC_STATUS_TOUCH_DETECT_RAW		(1 << 0)
+#define	LRADC_STATUS_TOUCH_DETECT_RAW		BIT(0)
 
 #define	LRADC_CH(n)				(0x50 + (0x10 * (n)))
-#define	LRADC_CH_ACCUMULATE			(1 << 29)
+#define	LRADC_CH_ACCUMULATE			BIT(29)
 #define	LRADC_CH_NUM_SAMPLES_MASK		(0x1f << 24)
 #define	LRADC_CH_NUM_SAMPLES_OFFSET		24
 #define	LRADC_CH_NUM_SAMPLES(x) \
@@ -477,7 +477,7 @@ static void mxs_lradc_setup_ts_channel(struct mxs_lradc *lradc, unsigned ch)
 	 */
 	mxs_lradc_reg_wrt(lradc,
 		LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
-		LRADC_DELAY_TRIGGER_DELAYS(1 << 3) | /* trigger DELAY unit#3 */
+		LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
 		LRADC_DELAY_KICK |
 		LRADC_DELAY_DELAY(lradc->settling_delay),
 			LRADC_DELAY(2));
@@ -532,7 +532,7 @@ static void mxs_lradc_setup_ts_pressure(struct mxs_lradc *lradc, unsigned ch1,
 	 */
 	mxs_lradc_reg_wrt(lradc,
 		LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
-		LRADC_DELAY_TRIGGER_DELAYS(1 << 3) | /* trigger DELAY unit#3 */
+		LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
 		LRADC_DELAY_KICK |
 		LRADC_DELAY_DELAY(lradc->settling_delay), LRADC_DELAY(2));
 }
@@ -850,7 +850,7 @@ static int mxs_lradc_read_single(struct iio_dev *iio_dev, int chan, int *val)
 
 	/* Enable the IRQ and start sampling the channel. */
 	mxs_lradc_reg_set(lradc, LRADC_CTRL1_LRADC_IRQ_EN(0), LRADC_CTRL1);
-	mxs_lradc_reg_set(lradc, 1 << 0, LRADC_CTRL0);
+	mxs_lradc_reg_set(lradc, BIT(0), LRADC_CTRL0);
 
 	/* Wait for completion on the channel, 1 second max. */
 	ret = wait_for_completion_killable_timeout(&lradc->completion, HZ);
diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index 8ad7169..c538237 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -29,11 +29,11 @@
 #define SPEAR_ADC_CLK_HIGH(x)		(((x) & 0xf) << 4)
 
 /* Bit definitions for SPEAR_ADC_STATUS */
-#define SPEAR_ADC_STATUS_START_CONVERSION	(1 << 0)
+#define SPEAR_ADC_STATUS_START_CONVERSION	BIT(0)
 #define SPEAR_ADC_STATUS_CHANNEL_NUM(x)		((x) << 1)
-#define SPEAR_ADC_STATUS_ADC_ENABLE		(1 << 4)
+#define SPEAR_ADC_STATUS_ADC_ENABLE		BIT(4)
 #define SPEAR_ADC_STATUS_AVG_SAMPLE(x)		((x) << 5)
-#define SPEAR_ADC_STATUS_VREF_INTERNAL		(1 << 9)
+#define SPEAR_ADC_STATUS_VREF_INTERNAL		BIT(9)
 
 #define SPEAR_ADC_DATA_MASK		0x03ff
 #define SPEAR_ADC_DATA_BITS		10
-- 
1.9.1


