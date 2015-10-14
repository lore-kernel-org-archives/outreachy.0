X-GM-THRID: 6202672545102036992
X-Received: by 10.180.210.71 with SMTP id ms7mr1211320wic.4.1444846710374;
        Wed, 14 Oct 2015 11:18:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.39 with SMTP id cj7ls1214570wib.24.canary; Wed, 14 Oct
 2015 11:18:30 -0700 (PDT)
X-Received: by 10.194.192.71 with SMTP id he7mr1105676wjc.2.1444846710081;
        Wed, 14 Oct 2015 11:18:30 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id m4si369038wib.0.2015.10.14.11.18.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so241513433wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HSJJqcgZa/B9SyojUFkVq0qIdmndOC90vl3Esa6v2tA=;
        b=xjg0JS9aFT0GqdR5cQRHYFjtDUSJy7h4J73W0FhKn4+kUoZdEbmmXmpcMsEiKTM3BT
         K+4m/+wAjRtn6HCQSYa/fKeAYpk9K5dR5RhhAh9v8XTS0PQEJZmOB2qz/6DcbC4stcAK
         E60lKEydf+Fw0WXbJa86S//V7k/vLVef8yOjw2aQt+mILYn+lvhSKaLnwCaBp8xVROtJ
         5mFj2d0PvB+hGP++OHDmO/k9wtTjO7DYDNOxutlRezJOZeOGMy+XyUiqZg5FGH8j0jXl
         mHHtsB3S/Tr3aAW+sxcSg3fZhmAI0acGTIH5KNkltqu0m+91mD26WOY0tuecYxhe8cQB
         p+ZA==
X-Received: by 10.194.59.236 with SMTP id c12mr5752277wjr.23.1444846709926;
        Wed, 14 Oct 2015 11:18:29 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:29 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 1/9] staging: iio: adc: use kernel types u32 and u64
Date: Wed, 14 Oct 2015 21:14:12 +0300
Message-Id: <07227314a59d28452e0ffb45923b525ea398f00c.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Convert uint32_t to u32 and uint64_t to u64 in order to
follow the kernel best practice

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - nothing


 drivers/staging/iio/adc/mxs-lradc.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index 3f7715c..d88d85b 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -108,12 +108,12 @@ static const char * const mx28_lradc_irq_names[] = {
 struct mxs_lradc_of_config {
 	const int		irq_count;
 	const char * const	*irq_name;
-	const uint32_t		*vref_mv;
+	const u32		*vref_mv;
 };
 
 #define VREF_MV_BASE 1850
 
-static const uint32_t mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
+static const u32 mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
 	VREF_MV_BASE,		/* CH0 */
 	VREF_MV_BASE,		/* CH1 */
 	VREF_MV_BASE,		/* CH2 */
@@ -132,7 +132,7 @@ static const uint32_t mx23_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
 	VREF_MV_BASE * 4,	/* CH15 VDD5V */
 };
 
-static const uint32_t mx28_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
+static const u32 mx28_vref_mv[LRADC_MAX_TOTAL_CHANS] = {
 	VREF_MV_BASE,		/* CH0 */
 	VREF_MV_BASE,		/* CH1 */
 	VREF_MV_BASE,		/* CH2 */
@@ -198,14 +198,14 @@ struct mxs_lradc {
 
 	struct clk		*clk;
 
-	uint32_t		*buffer;
+	u32			*buffer;
 	struct iio_trigger	*trig;
 
 	struct mutex		lock;
 
 	struct completion	completion;
 
-	const uint32_t		*vref_mv;
+	const u32		*vref_mv;
 	struct mxs_lradc_scale	scale_avail[LRADC_MAX_TOTAL_CHANS][2];
 	unsigned long		is_divided;
 
@@ -1138,8 +1138,8 @@ static irqreturn_t mxs_lradc_handle_irq(int irq, void *data)
 	struct iio_dev *iio = data;
 	struct mxs_lradc *lradc = iio_priv(iio);
 	unsigned long reg = readl(lradc->base + LRADC_CTRL1);
-	uint32_t clr_irq = mxs_lradc_irq_mask(lradc);
-	const uint32_t ts_irq_mask =
+	u32 clr_irq = mxs_lradc_irq_mask(lradc);
+	const u32 ts_irq_mask =
 		LRADC_CTRL1_TOUCH_DETECT_IRQ |
 		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
 		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2);
@@ -1175,7 +1175,7 @@ static irqreturn_t mxs_lradc_trigger_handler(int irq, void *p)
 	struct iio_poll_func *pf = p;
 	struct iio_dev *iio = pf->indio_dev;
 	struct mxs_lradc *lradc = iio_priv(iio);
-	const uint32_t chan_value = LRADC_CH_ACCUMULATE |
+	const u32 chan_value = LRADC_CH_ACCUMULATE |
 		((LRADC_DELAY_TIMER_LOOP - 1) << LRADC_CH_NUM_SAMPLES_OFFSET);
 	unsigned int i, j = 0;
 
@@ -1198,7 +1198,7 @@ static int mxs_lradc_configure_trigger(struct iio_trigger *trig, bool state)
 {
 	struct iio_dev *iio = iio_trigger_get_drvdata(trig);
 	struct mxs_lradc *lradc = iio_priv(iio);
-	const uint32_t st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;
+	const u32 st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;
 
 	mxs_lradc_reg_wrt(lradc, LRADC_DELAY_KICK, LRADC_DELAY(0) + st);
 
@@ -1248,10 +1248,10 @@ static int mxs_lradc_buffer_preenable(struct iio_dev *iio)
 	struct mxs_lradc *lradc = iio_priv(iio);
 	int ret = 0, chan, ofs = 0;
 	unsigned long enable = 0;
-	uint32_t ctrl4_set = 0;
-	uint32_t ctrl4_clr = 0;
-	uint32_t ctrl1_irq = 0;
-	const uint32_t chan_value = LRADC_CH_ACCUMULATE |
+	u32 ctrl4_set = 0;
+	u32 ctrl4_clr = 0;
+	u32 ctrl1_irq = 0;
+	const u32 chan_value = LRADC_CH_ACCUMULATE |
 		((LRADC_DELAY_TIMER_LOOP - 1) << LRADC_CH_NUM_SAMPLES_OFFSET);
 	const int len = bitmap_weight(iio->active_scan_mask,
 			LRADC_MAX_TOTAL_CHANS);
@@ -1456,7 +1456,7 @@ static const struct iio_chan_spec mx28_lradc_chan_spec[] = {
 static int mxs_lradc_hw_init(struct mxs_lradc *lradc)
 {
 	/* The ADC always uses DELAY CHANNEL 0. */
-	const uint32_t adc_cfg =
+	const u32 adc_cfg =
 		(1 << (LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0)) |
 		(LRADC_DELAY_TIMER_PER << LRADC_DELAY_DELAY_OFFSET);
 
@@ -1583,7 +1583,7 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 	struct resource *iores;
 	int ret = 0, touch_ret;
 	int i, s;
-	uint64_t scale_uv;
+	u64 scale_uv;
 
 	/* Allocate the IIO device. */
 	iio = devm_iio_device_alloc(dev, sizeof(*lradc));
-- 
2.1.4


