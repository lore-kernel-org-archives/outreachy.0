X-GM-THRID: 9605342035968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7d3cad435928ba1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.166 with SMTP id dx6mr12354363lbc.17.1427048900367;
        Sun, 22 Mar 2015 11:28:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls609436laa.24.gmail; Sun, 22 Mar
 2015 11:28:19 -0700 (PDT)
X-Received: by 10.152.20.41 with SMTP id k9mr2809345lae.10.1427048899977;
        Sun, 22 Mar 2015 11:28:19 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id cl5si305468wib.3.2015.03.22.11.28.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id p1so121087016weg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qviw9axrW9ZKIfoO+7iWVRt3ydWDmu+5IJEOJY9VaAs=;
        b=QXDNx4DI9X5/HXu4RNXb0HQcFoHzRG9TjErlvDG22NK5gf+j++aVo6urt4To8f0vff
         fgxKov1hitjLajxmXHQGJfqlWgFE1pdoDkOOcfqDCjVvjuu1eb/ZkwGej+aWVDuLAv32
         ho7yfB21Y6d9yiZTl0CvNqy2M46gjIUTeBhL9+p78jTzvT2f/tJZryODw5id8YZAHP4k
         11NfgyTTnWaWFZNuixDD3t04IE6Cjx84YMSjQUTlch8ofdc+n3C6z1TPFQSDP5s9+s6K
         BJWEi5WwkiISYzX8mbXV6lnnEkBIdfu/wZAZSzXb8yB/HScKUrm7WgC0RkyCCMLNeBQr
         6HSg==
X-Received: by 10.180.102.73 with SMTP id fm9mr13426910wib.12.1427048899888;
        Sun, 22 Mar 2015 11:28:19 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.88])
        by mx.google.com with ESMTPSA id ew13sm7604189wid.1.2015.03.22.11.28.18
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:28:19 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id AF46AC1FBB; Sun, 22 Mar 2015 21:28:15 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 2/2] Staging: iio: use the BIT macro in adc
Date: Sun, 22 Mar 2015 21:28:14 +0300
Message-Id: <1427048894-7159-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace bit shifting on 0,1,2, and 3 with the BIT(x) macro.
Issue addressed by checkpatcg.pl.

This was done with the help of Coccinelle:

@r1@
constant int g;
@@

(
0<<g
|
1<<g
|
2<<g
|
3<<g
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
 drivers/staging/iio/adc/ad7192.c    | 64 ++++++++++++++++++------------------
 drivers/staging/iio/adc/ad7280a.c   | 58 ++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7780.c    | 18 +++++-----
 drivers/staging/iio/adc/ad7816.c    |  2 +-
 drivers/staging/iio/adc/mxs-lradc.c | 65 +++++++++++++++++++------------------
 drivers/staging/iio/adc/spear_adc.c |  6 ++--
 6 files changed, 107 insertions(+), 106 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 6f8ce6c..3a79e3f 100644
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
 
@@ -516,7 +516,7 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 		}
 	case IIO_CHAN_INFO_OFFSET:
 		if (!unipolar)
-			*val = -(1 << (chan->scan_type.realbits - 1));
+			*val = -BIT(chan->scan_type.realbits - 1);
 		else
 			*val = 0;
 		/* Kelvin to Celsius */
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index e7d45ee..b096d10 100644
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
+#define AD7280A_CTRL_LB_MUST_SET			BIT(4)
+#define AD7280A_CTRL_LB_THERMISTOR_EN			BIT(3)
+#define AD7280A_CTRL_LB_LOCK_DEV_ADDR			BIT(2)
+#define AD7280A_CTRL_LB_INC_DEV_ADDR			BIT(1)
+#define AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN		BIT(0)
 
-#define AD7280A_ALERT_GEN_STATIC_HIGH			(1 << 6)
-#define AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN		(3 << 6)
+#define AD7280A_ALERT_GEN_STATIC_HIGH			BIT(6)
+#define AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN		(BIT(7) | BIT(6))
 
 #define AD7280A_ALL_CELLS				(0xAD << 16)
 
@@ -117,7 +117,7 @@
  */
 #define POLYNOM		0x2F
 #define POLYNOM_ORDER	8
-#define HIGHBIT		(1 << (POLYNOM_ORDER - 1))
+#define HIGHBIT		BIT(POLYNOM_ORDER - 1)
 
 struct ad7280_state {
 	struct spi_device		*spi;
@@ -388,7 +388,7 @@ static ssize_t ad7280_show_balance_sw(struct device *dev,
 
 	return sprintf(buf, "%d\n",
 		       !!(st->cb_mask[this_attr->address >> 8] &
-		       (1 << ((this_attr->address & 0xFF) + 2))));
+		       BIT((this_attr->address & 0xFF) + 2)));
 }
 
 static ssize_t ad7280_store_balance_sw(struct device *dev,
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 273add3..dbcbbbf 100644
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
@@ -99,7 +99,7 @@ static int ad7780_read_raw(struct iio_dev *indio_dev,
 		*val2 = chan->scan_type.realbits - 1;
 		return IIO_VAL_FRACTIONAL_LOG2;
 	case IIO_CHAN_INFO_OFFSET:
-		*val -= (1 << (chan->scan_type.realbits - 1));
+		*val -= BIT(chan->scan_type.realbits - 1);
 		return IIO_VAL_INT;
 	}
 
diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 48b1c37..0b55fe6 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -224,7 +224,7 @@ static ssize_t ad7816_show_value(struct device *dev,
 		value = (s8)((data >> AD7816_TEMP_FLOAT_OFFSET) - 103);
 		data &= AD7816_TEMP_FLOAT_MASK;
 		if (value < 0)
-			data = (1 << AD7816_TEMP_FLOAT_OFFSET) - data;
+			data = BIT(AD7816_TEMP_FLOAT_OFFSET) - data;
 		return sprintf(buf, "%d.%.2d\n", value, data * 25);
 	}
 	return sprintf(buf, "%u\n", data);
diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index 8161743..1fb1b46 100644
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
-#define	LRADC_CTRL1_LRADC_IRQ_EN(n)		(1 << ((n) + 16))
+#define	LRADC_CTRL1_TOUCH_DETECT_IRQ_EN		BIT(24)
+#define	LRADC_CTRL1_LRADC_IRQ_EN(n)		BIT((n) + 16)
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
@@ -328,7 +328,7 @@ struct mxs_lradc {
 #define	LRADC_DELAY_TRIGGER(x) \
 				(((x) << LRADC_DELAY_TRIGGER_LRADCS_OFFSET) & \
 				LRADC_DELAY_TRIGGER_LRADCS_MASK)
-#define	LRADC_DELAY_KICK			(1 << 20)
+#define	LRADC_DELAY_KICK			BIT(20)
 #define	LRADC_DELAY_TRIGGER_DELAYS_MASK		(0xf << 16)
 #define	LRADC_DELAY_TRIGGER_DELAYS_OFFSET	16
 #define	LRADC_DELAY_TRIGGER_DELAYS(x) \
@@ -353,7 +353,7 @@ struct mxs_lradc {
 				LRADC_CTRL4_LRADCSELECT_MASK(n))
 
 #define LRADC_RESOLUTION			12
-#define LRADC_SINGLE_SAMPLE_MASK		((1 << LRADC_RESOLUTION) - 1)
+#define LRADC_SINGLE_SAMPLE_MASK		(BIT(LRADC_RESOLUTION) - 1)
 
 static void mxs_lradc_reg_set(struct mxs_lradc *lradc, u32 val, u32 reg)
 {
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
@@ -572,12 +572,12 @@ static unsigned mxs_lradc_read_ts_pressure(struct mxs_lradc *lradc,
 
 	if (m2 == 0) {
 		dev_warn(lradc->dev, "Cannot calculate pressure\n");
-		return 1 << (LRADC_RESOLUTION - 1);
+		return BIT(LRADC_RESOLUTION - 1);
 	}
 
 	/* simply scale the value from 0 ... max ADC resolution */
 	pressure = m1;
-	pressure *= (1 << LRADC_RESOLUTION);
+	pressure *= BIT(LRADC_RESOLUTION);
 	pressure /= m2;
 
 	dev_dbg(lradc->dev, "Pressure = %u\n", pressure);
@@ -727,7 +727,7 @@ static void mxs_lradc_complete_touch_event(struct mxs_lradc *lradc)
 		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
 		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2), LRADC_CTRL1);
 	mxs_lradc_reg_wrt(lradc,
-		LRADC_DELAY_TRIGGER(1 << TOUCHSCREEN_VCHANNEL1) |
+		LRADC_DELAY_TRIGGER(BIT(TOUCHSCREEN_VCHANNEL1)) |
 		LRADC_DELAY_KICK | LRADC_DELAY_DELAY(10), /* waste 5 ms */
 			LRADC_DELAY(2));
 }
@@ -835,11 +835,12 @@ static int mxs_lradc_read_single(struct iio_dev *iio_dev, int chan, int *val)
 
 	/* Enable / disable the divider per requirement */
 	if (test_bit(chan, &lradc->is_divided))
-		mxs_lradc_reg_set(lradc, 1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
+		mxs_lradc_reg_set(lradc,
+				  BIT(LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET),
 			LRADC_CTRL2);
 	else
 		mxs_lradc_reg_clear(lradc,
-			1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET, LRADC_CTRL2);
+			BIT(LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET), LRADC_CTRL2);
 
 	/* Clean the slot's previous content, then set new one. */
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL4_LRADCSELECT_MASK(0),
@@ -850,7 +851,7 @@ static int mxs_lradc_read_single(struct iio_dev *iio_dev, int chan, int *val)
 
 	/* Enable the IRQ and start sampling the channel. */
 	mxs_lradc_reg_set(lradc, LRADC_CTRL1_LRADC_IRQ_EN(0), LRADC_CTRL1);
-	mxs_lradc_reg_set(lradc, 1 << 0, LRADC_CTRL0);
+	mxs_lradc_reg_set(lradc, BIT(0), LRADC_CTRL0);
 
 	/* Wait for completion on the channel, 1 second max. */
 	ret = wait_for_completion_killable_timeout(&lradc->completion, HZ);
@@ -1423,7 +1424,7 @@ static int mxs_lradc_hw_init(struct mxs_lradc *lradc)
 {
 	/* The ADC always uses DELAY CHANNEL 0. */
 	const uint32_t adc_cfg =
-		(1 << (LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0)) |
+		BIT(LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0) |
 		(LRADC_DELAY_TIMER_PER << LRADC_DELAY_DELAY_OFFSET);
 
 	int ret = stmp_reset_block(lradc->base);
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


