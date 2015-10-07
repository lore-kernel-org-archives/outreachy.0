X-GM-THRID: 6202672545102036992
X-Received: by 10.112.151.9 with SMTP id um9mr514125lbb.19.1444241641280;
        Wed, 07 Oct 2015 11:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls98277lfg.109.gmail; Wed, 07 Oct
 2015 11:14:00 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr540525lbg.2.1444241640378;
        Wed, 07 Oct 2015 11:14:00 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id q6si154422wif.2.2015.10.07.11.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so224888811wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FVv6W70GpJ2Ve4nnP9KP9khOOS/LwAXYqmufhorgbcQ=;
        b=SVjWO+xreSN0zP/RresJnBMAr4q9Jce6GpqBeDWmMEmT53S8xLZbE8NUVto/vHLts6
         7Giajuym9DrrrwY7lpkeWtK0MZBg1FlYIh12LIVLjGL2LRlJ5E0pFMBGNFtPRkIMnz1y
         neIei4533TEDpo2FGkKSsHTFypj1VF0Lnl8bFlIb1b9z0pekRRUgGjPwiExq7dVoTeY7
         4TWX2W6kk289MBuvo4hKvVlcRRoXzp0Vir0C93Kpu6znWJDFv0tczPrjShS3LHteg9Wa
         BLb1ns0KNTDCGsVrppf+Fnf7wbWlM2cY1r/xhh/vLyXL5gDUfnVc3VyPN+njWivKHKUn
         lBXQ==
X-Received: by 10.194.250.40 with SMTP id yz8mr3202567wjc.37.1444241639967;
        Wed, 07 Oct 2015 11:13:59 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.13.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:13:59 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 2/9] staging: iio: adc: properly indent to match open paranthesis
Date: Wed,  7 Oct 2015 21:13:40 +0300
Message-Id: <5db27019c28d1f4d1313654d81e6dc21d562284b.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Indent parameters ansd arguments passed to function calls to match
open paranthesis

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing

 drivers/staging/iio/adc/ad7192.c      |  44 +++++-----
 drivers/staging/iio/adc/ad7280a.c     | 153 +++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7606_core.c |  19 +++--
 drivers/staging/iio/adc/ad7606_par.c  |  10 +--
 drivers/staging/iio/adc/ad7606_spi.c  |   4 +-
 drivers/staging/iio/adc/ad7780.c      |   8 +-
 drivers/staging/iio/adc/ad7816.c      |  48 +++++------
 drivers/staging/iio/adc/lpc32xx_adc.c |  14 ++--
 drivers/staging/iio/adc/mxs-lradc.c   | 136 +++++++++++++++---------------
 drivers/staging/iio/adc/spear_adc.c   |   4 +-
 10 files changed, 220 insertions(+), 220 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index fe56fb6..21d83c5 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -201,7 +201,7 @@ static int ad7192_calibrate_all(struct ad7192_state *st)
 }
 
 static int ad7192_setup(struct ad7192_state *st,
-	const struct ad7192_platform_data *pdata)
+			const struct ad7192_platform_data *pdata)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(st->sd.spi);
 	unsigned long long scale_uv;
@@ -224,7 +224,7 @@ static int ad7192_setup(struct ad7192_state *st,
 
 	if (id != st->devid)
 		dev_warn(&st->sd.spi->dev, "device ID query failed (0x%X)\n",
-			id);
+			 id);
 
 	switch (pdata->clock_source_sel) {
 	case AD7192_CLK_EXT_MCLK1_2:
@@ -307,8 +307,8 @@ out:
 }
 
 static ssize_t ad7192_read_frequency(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				     struct device_attribute *attr,
+				     char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -318,9 +318,9 @@ static ssize_t ad7192_read_frequency(struct device *dev,
 }
 
 static ssize_t ad7192_write_frequency(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				      struct device_attribute *attr,
+				      const char *buf,
+				      size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -360,7 +360,7 @@ static IIO_DEV_ATTR_SAMP_FREQ(S_IWUSR | S_IRUGO,
 		ad7192_write_frequency);
 
 static ssize_t ad7192_show_scale_available(struct device *dev,
-			struct device_attribute *attr, char *buf)
+					   struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -383,8 +383,8 @@ static IIO_DEVICE_ATTR(in_voltage_scale_available, S_IRUGO,
 		       ad7192_show_scale_available, NULL, 0);
 
 static ssize_t ad7192_show_ac_excitation(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+					 struct device_attribute *attr,
+					 char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -393,8 +393,8 @@ static ssize_t ad7192_show_ac_excitation(struct device *dev,
 }
 
 static ssize_t ad7192_show_bridge_switch(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+					 struct device_attribute *attr,
+					 char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -403,9 +403,9 @@ static ssize_t ad7192_show_bridge_switch(struct device *dev,
 }
 
 static ssize_t ad7192_set(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+			  struct device_attribute *attr,
+			  const char *buf,
+			  size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7192_state *st = iio_priv(indio_dev);
@@ -529,10 +529,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 }
 
 static int ad7192_write_raw(struct iio_dev *indio_dev,
-			       struct iio_chan_spec const *chan,
-			       int val,
-			       int val2,
-			       long mask)
+			    struct iio_chan_spec const *chan,
+			    int val,
+			    int val2,
+			    long mask)
 {
 	struct ad7192_state *st = iio_priv(indio_dev);
 	int ret, i;
@@ -556,7 +556,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				if (tmp == st->conf)
 					break;
 				ad_sd_write_reg(&st->sd, AD7192_REG_CONF,
-						 3, st->conf);
+						3, st->conf);
 				ad7192_calibrate_all(st);
 				break;
 			}
@@ -571,8 +571,8 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 }
 
 static int ad7192_write_raw_get_fmt(struct iio_dev *indio_dev,
-			       struct iio_chan_spec const *chan,
-			       long mask)
+				    struct iio_chan_spec const *chan,
+				    long mask)
 {
 	return IIO_VAL_INT_PLUS_NANO;
 }
diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index d98e229..26c9c12 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -224,24 +224,24 @@ static int ad7280_write(struct ad7280_state *st, unsigned devaddr,
 }
 
 static int ad7280_read(struct ad7280_state *st, unsigned devaddr,
-			unsigned addr)
+		       unsigned addr)
 {
 	int ret;
 	unsigned tmp;
 
 	/* turns off the read operation on all parts */
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
-			AD7280A_CTRL_HB_CONV_INPUT_ALL |
-			AD7280A_CTRL_HB_CONV_RES_READ_NO |
-			st->ctrl_hb);
+			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
+			   AD7280A_CTRL_HB_CONV_RES_READ_NO |
+			   st->ctrl_hb);
 	if (ret)
 		return ret;
 
 	/* turns on the read operation on the addressed part */
 	ret = ad7280_write(st, devaddr, AD7280A_CONTROL_HB, 0,
-			AD7280A_CTRL_HB_CONV_INPUT_ALL |
-			AD7280A_CTRL_HB_CONV_RES_READ_ALL |
-			st->ctrl_hb);
+			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
+			   AD7280A_CTRL_HB_CONV_RES_READ_ALL |
+			   st->ctrl_hb);
 	if (ret)
 		return ret;
 
@@ -272,17 +272,17 @@ static int ad7280_read_channel(struct ad7280_state *st, unsigned devaddr,
 		return ret;
 
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
-			AD7280A_CTRL_HB_CONV_INPUT_ALL |
-			AD7280A_CTRL_HB_CONV_RES_READ_NO |
-			st->ctrl_hb);
+			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
+			   AD7280A_CTRL_HB_CONV_RES_READ_NO |
+			   st->ctrl_hb);
 	if (ret)
 		return ret;
 
 	ret = ad7280_write(st, devaddr, AD7280A_CONTROL_HB, 0,
-			AD7280A_CTRL_HB_CONV_INPUT_ALL |
-			AD7280A_CTRL_HB_CONV_RES_READ_ALL |
-			AD7280A_CTRL_HB_CONV_START_CS |
-			st->ctrl_hb);
+			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
+			   AD7280A_CTRL_HB_CONV_RES_READ_ALL |
+			   AD7280A_CTRL_HB_CONV_START_CS |
+			   st->ctrl_hb);
 	if (ret)
 		return ret;
 
@@ -300,7 +300,7 @@ static int ad7280_read_channel(struct ad7280_state *st, unsigned devaddr,
 }
 
 static int ad7280_read_all_channels(struct ad7280_state *st, unsigned cnt,
-			     unsigned *array)
+				    unsigned *array)
 {
 	int i, ret;
 	unsigned tmp, sum = 0;
@@ -311,10 +311,10 @@ static int ad7280_read_all_channels(struct ad7280_state *st, unsigned cnt,
 		return ret;
 
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
-			AD7280A_CTRL_HB_CONV_INPUT_ALL |
-			AD7280A_CTRL_HB_CONV_RES_READ_ALL |
-			AD7280A_CTRL_HB_CONV_START_CS |
-			st->ctrl_hb);
+			   AD7280A_CTRL_HB_CONV_INPUT_ALL |
+			   AD7280A_CTRL_HB_CONV_RES_READ_ALL |
+			   AD7280A_CTRL_HB_CONV_START_CS |
+			   st->ctrl_hb);
 	if (ret)
 		return ret;
 
@@ -342,24 +342,24 @@ static int ad7280_chain_setup(struct ad7280_state *st)
 	int ret;
 
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_LB, 1,
-			AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
-			AD7280A_CTRL_LB_LOCK_DEV_ADDR |
-			AD7280A_CTRL_LB_MUST_SET |
-			AD7280A_CTRL_LB_SWRST |
-			st->ctrl_lb);
+			   AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
+			   AD7280A_CTRL_LB_LOCK_DEV_ADDR |
+			   AD7280A_CTRL_LB_MUST_SET |
+			   AD7280A_CTRL_LB_SWRST |
+			   st->ctrl_lb);
 	if (ret)
 		return ret;
 
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_LB, 1,
-			AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
-			AD7280A_CTRL_LB_LOCK_DEV_ADDR |
-			AD7280A_CTRL_LB_MUST_SET |
-			st->ctrl_lb);
+			   AD7280A_CTRL_LB_DAISY_CHAIN_RB_EN |
+			   AD7280A_CTRL_LB_LOCK_DEV_ADDR |
+			   AD7280A_CTRL_LB_MUST_SET |
+			   st->ctrl_lb);
 	if (ret)
 		return ret;
 
 	ret = ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_READ, 1,
-			AD7280A_CONTROL_LB << 2);
+			   AD7280A_CONTROL_LB << 2);
 	if (ret)
 		return ret;
 
@@ -379,8 +379,8 @@ static int ad7280_chain_setup(struct ad7280_state *st)
 }
 
 static ssize_t ad7280_show_balance_sw(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+				      struct device_attribute *attr,
+				      char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -392,9 +392,9 @@ static ssize_t ad7280_show_balance_sw(struct device *dev,
 }
 
 static ssize_t ad7280_store_balance_sw(struct device *dev,
-					 struct device_attribute *attr,
-					 const char *buf,
-					 size_t len)
+				       struct device_attribute *attr,
+				       const char *buf,
+				       size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -424,8 +424,8 @@ static ssize_t ad7280_store_balance_sw(struct device *dev,
 }
 
 static ssize_t ad7280_show_balance_timer(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+					 struct device_attribute *attr,
+					 char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -435,7 +435,7 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
 
 	mutex_lock(&indio_dev->mlock);
 	ret = ad7280_read(st, this_attr->address >> 8,
-			this_attr->address & 0xFF);
+			  this_attr->address & 0xFF);
 	mutex_unlock(&indio_dev->mlock);
 
 	if (ret < 0)
@@ -447,9 +447,9 @@ static ssize_t ad7280_show_balance_timer(struct device *dev,
 }
 
 static ssize_t ad7280_store_balance_timer(struct device *dev,
-					 struct device_attribute *attr,
-					 const char *buf,
-					 size_t len)
+					  struct device_attribute *attr,
+					  const char *buf,
+					  size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -492,8 +492,7 @@ static int ad7280_channel_init(struct ad7280_state *st)
 		return -ENOMEM;
 
 	for (dev = 0, cnt = 0; dev <= st->slave_num; dev++)
-		for (ch = AD7280A_CELL_VOLTAGE_1; ch <= AD7280A_AUX_ADC_6; ch++,
-			cnt++) {
+		for (ch = AD7280A_CELL_VOLTAGE_1; ch <= AD7280A_AUX_ADC_6; ch++, cnt++) {
 			if (ch < AD7280A_AUX_ADC_1) {
 				st->channels[cnt].type = IIO_VOLTAGE;
 				st->channels[cnt].differential = 1;
@@ -566,9 +565,9 @@ static int ad7280_attr_init(struct ad7280_state *st)
 				ad7280_store_balance_sw;
 			st->iio_attr[cnt].dev_attr.attr.name =
 				kasprintf(GFP_KERNEL,
-					"in%d-in%d_balance_switch_en",
-					(dev * AD7280A_CELLS_PER_DEV) + ch,
-					(dev * AD7280A_CELLS_PER_DEV) + ch + 1);
+					  "in%d-in%d_balance_switch_en",
+					  (dev * AD7280A_CELLS_PER_DEV) + ch,
+					  (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
 			ad7280_attributes[cnt] =
 				&st->iio_attr[cnt].dev_attr.attr;
 			cnt++;
@@ -583,8 +582,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
 				ad7280_store_balance_timer;
 			st->iio_attr[cnt].dev_attr.attr.name =
 				kasprintf(GFP_KERNEL, "in%d-in%d_balance_timer",
-					(dev * AD7280A_CELLS_PER_DEV) + ch,
-					(dev * AD7280A_CELLS_PER_DEV) + ch + 1);
+					  (dev * AD7280A_CELLS_PER_DEV) + ch,
+					  (dev * AD7280A_CELLS_PER_DEV) + ch + 1);
 			ad7280_attributes[cnt] =
 				&st->iio_attr[cnt].dev_attr.attr;
 		}
@@ -595,8 +594,8 @@ static int ad7280_attr_init(struct ad7280_state *st)
 }
 
 static ssize_t ad7280_read_channel_config(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+					  struct device_attribute *attr,
+					  char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -624,9 +623,9 @@ static ssize_t ad7280_read_channel_config(struct device *dev,
 }
 
 static ssize_t ad7280_write_channel_config(struct device *dev,
-					 struct device_attribute *attr,
-					 const char *buf,
-					 size_t len)
+					   struct device_attribute *attr,
+					   const char *buf,
+					   size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7280_state *st = iio_priv(indio_dev);
@@ -698,39 +697,39 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 			if (((channels[i] >> 11) & 0xFFF) >=
 				st->cell_threshhigh)
 				iio_push_event(indio_dev,
-					IIO_EVENT_CODE(IIO_VOLTAGE,
-						       1,
-						       0,
-						       IIO_EV_DIR_RISING,
-						       IIO_EV_TYPE_THRESH,
-						       0, 0, 0),
-					iio_get_time_ns());
+					       IIO_EVENT_CODE(IIO_VOLTAGE,
+							      1,
+							      0,
+							      IIO_EV_DIR_RISING,
+							      IIO_EV_TYPE_THRESH,
+							      0, 0, 0),
+					       iio_get_time_ns());
 			else if (((channels[i] >> 11) & 0xFFF) <=
 				st->cell_threshlow)
 				iio_push_event(indio_dev,
-					IIO_EVENT_CODE(IIO_VOLTAGE,
-						       1,
-						       0,
-						       IIO_EV_DIR_FALLING,
-						       IIO_EV_TYPE_THRESH,
-						       0, 0, 0),
-					iio_get_time_ns());
+					       IIO_EVENT_CODE(IIO_VOLTAGE,
+							      1,
+							      0,
+							      IIO_EV_DIR_FALLING,
+							      IIO_EV_TYPE_THRESH,
+							      0, 0, 0),
+					       iio_get_time_ns());
 		} else {
 			if (((channels[i] >> 11) & 0xFFF) >= st->aux_threshhigh)
 				iio_push_event(indio_dev,
-					IIO_UNMOD_EVENT_CODE(IIO_TEMP,
-					0,
-					IIO_EV_TYPE_THRESH,
-					IIO_EV_DIR_RISING),
-					iio_get_time_ns());
+					       IIO_UNMOD_EVENT_CODE(IIO_TEMP,
+								    0,
+								    IIO_EV_TYPE_THRESH,
+								    IIO_EV_DIR_RISING),
+					       iio_get_time_ns());
 			else if (((channels[i] >> 11) & 0xFFF) <=
 				st->aux_threshlow)
 				iio_push_event(indio_dev,
-					IIO_UNMOD_EVENT_CODE(IIO_TEMP,
-					0,
-					IIO_EV_TYPE_THRESH,
-					IIO_EV_DIR_FALLING),
-					iio_get_time_ns());
+					       IIO_UNMOD_EVENT_CODE(IIO_TEMP,
+								    0,
+								    IIO_EV_TYPE_THRESH,
+								    IIO_EV_DIR_FALLING),
+					       iio_get_time_ns());
 		}
 	}
 
@@ -955,7 +954,7 @@ static int ad7280_remove(struct spi_device *spi)
 	iio_device_unregister(indio_dev);
 
 	ad7280_write(st, AD7280A_DEVADDR_MASTER, AD7280A_CONTROL_HB, 1,
-			AD7280A_CTRL_HB_PWRDN_SW | st->ctrl_hb);
+		     AD7280A_CTRL_HB_PWRDN_SW | st->ctrl_hb);
 
 	kfree(st->channels);
 	kfree(st->iio_attr);
diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index bf2c801..6dc7413 100644
--- a/drivers/staging/iio/adc/ad7606_core.c
+++ b/drivers/staging/iio/adc/ad7606_core.c
@@ -108,7 +108,7 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 }
 
 static ssize_t ad7606_show_range(struct device *dev,
-			struct device_attribute *attr, char *buf)
+				 struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7606_state *st = iio_priv(indio_dev);
@@ -117,7 +117,7 @@ static ssize_t ad7606_show_range(struct device *dev,
 }
 
 static ssize_t ad7606_store_range(struct device *dev,
-		struct device_attribute *attr, const char *buf, size_t count)
+				  struct device_attribute *attr, const char *buf, size_t count)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7606_state *st = iio_priv(indio_dev);
@@ -145,7 +145,7 @@ static IIO_DEVICE_ATTR(in_voltage_range, S_IRUGO | S_IWUSR,
 static IIO_CONST_ATTR(in_voltage_range_available, "5000 10000");
 
 static ssize_t ad7606_show_oversampling_ratio(struct device *dev,
-			struct device_attribute *attr, char *buf)
+					      struct device_attribute *attr, char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7606_state *st = iio_priv(indio_dev);
@@ -166,7 +166,8 @@ static int ad7606_oversampling_get_index(unsigned val)
 }
 
 static ssize_t ad7606_store_oversampling_ratio(struct device *dev,
-		struct device_attribute *attr, const char *buf, size_t count)
+					       struct device_attribute *attr,
+					       const char *buf, size_t count)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7606_state *st = iio_priv(indio_dev);
@@ -460,9 +461,9 @@ static const struct iio_info ad7606_info_range = {
 };
 
 struct iio_dev *ad7606_probe(struct device *dev, int irq,
-			      void __iomem *base_address,
-			      unsigned id,
-			      const struct ad7606_bus_ops *bops)
+			     void __iomem *base_address,
+			     unsigned id,
+			     const struct ad7606_bus_ops *bops)
 {
 	struct ad7606_platform_data *pdata = dev->platform_data;
 	struct ad7606_state *st;
@@ -529,7 +530,7 @@ struct iio_dev *ad7606_probe(struct device *dev, int irq,
 		dev_warn(st->dev, "failed to RESET: no RESET GPIO specified\n");
 
 	ret = request_irq(irq, ad7606_interrupt,
-		IRQF_TRIGGER_FALLING, st->chip_info->name, indio_dev);
+			  IRQF_TRIGGER_FALLING, st->chip_info->name, indio_dev);
 	if (ret)
 		goto error_free_gpios;
 
@@ -591,7 +592,7 @@ void ad7606_resume(struct iio_dev *indio_dev)
 	if (gpio_is_valid(st->pdata->gpio_stby)) {
 		if (gpio_is_valid(st->pdata->gpio_range))
 			gpio_set_value(st->pdata->gpio_range,
-					st->range == 10000);
+				       st->range == 10000);
 
 		gpio_set_value(st->pdata->gpio_stby, 1);
 		ad7606_reset(st);
diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
index 1d48ae3..fbe8237 100644
--- a/drivers/staging/iio/adc/ad7606_par.c
+++ b/drivers/staging/iio/adc/ad7606_par.c
@@ -16,7 +16,7 @@
 #include "ad7606.h"
 
 static int ad7606_par16_read_block(struct device *dev,
-				 int count, void *buf)
+				   int count, void *buf)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
@@ -32,7 +32,7 @@ static const struct ad7606_bus_ops ad7606_par16_bops = {
 };
 
 static int ad7606_par8_read_block(struct device *dev,
-				 int count, void *buf)
+				  int count, void *buf)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
@@ -69,9 +69,9 @@ static int ad7606_par_probe(struct platform_device *pdev)
 	remap_size = resource_size(res);
 
 	indio_dev = ad7606_probe(&pdev->dev, irq, addr,
-			  platform_get_device_id(pdev)->driver_data,
-			  remap_size > 1 ? &ad7606_par16_bops :
-			  &ad7606_par8_bops);
+				 platform_get_device_id(pdev)->driver_data,
+				 remap_size > 1 ? &ad7606_par16_bops :
+				 &ad7606_par8_bops);
 
 	if (IS_ERR(indio_dev))
 		return PTR_ERR(indio_dev);
diff --git a/drivers/staging/iio/adc/ad7606_spi.c b/drivers/staging/iio/adc/ad7606_spi.c
index 7303983..9c62e94 100644
--- a/drivers/staging/iio/adc/ad7606_spi.c
+++ b/drivers/staging/iio/adc/ad7606_spi.c
@@ -44,8 +44,8 @@ static int ad7606_spi_probe(struct spi_device *spi)
 	struct iio_dev *indio_dev;
 
 	indio_dev = ad7606_probe(&spi->dev, spi->irq, NULL,
-			   spi_get_device_id(spi)->driver_data,
-			   &ad7606_spi_bops);
+				 spi_get_device_id(spi)->driver_data,
+				 &ad7606_spi_bops);
 
 	if (IS_ERR(indio_dev))
 		return PTR_ERR(indio_dev);
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 9f03fe3..501dc9f 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -62,7 +62,7 @@ static struct ad7780_state *ad_sigma_delta_to_ad7780(struct ad_sigma_delta *sd)
 }
 
 static int ad7780_set_mode(struct ad_sigma_delta *sigma_delta,
-	enum ad_sigma_delta_mode mode)
+			   enum ad_sigma_delta_mode mode)
 {
 	struct ad7780_state *st = ad_sigma_delta_to_ad7780(sigma_delta);
 	unsigned val;
@@ -107,13 +107,13 @@ static int ad7780_read_raw(struct iio_dev *indio_dev,
 }
 
 static int ad7780_postprocess_sample(struct ad_sigma_delta *sigma_delta,
-	unsigned int raw_sample)
+				     unsigned int raw_sample)
 {
 	struct ad7780_state *st = ad_sigma_delta_to_ad7780(sigma_delta);
 	const struct ad7780_chip_info *chip_info = st->chip_info;
 
 	if ((raw_sample & AD7780_ERR) ||
-		((raw_sample & chip_info->pattern_mask) != chip_info->pattern))
+	    ((raw_sample & chip_info->pattern_mask) != chip_info->pattern))
 		return -EIO;
 
 	if (raw_sample & AD7780_GAIN)
@@ -208,7 +208,7 @@ static int ad7780_probe(struct spi_device *spi)
 	if (pdata && gpio_is_valid(pdata->gpio_pdrst)) {
 
 		ret = devm_gpio_request_one(&spi->dev, pdata->gpio_pdrst,
-					GPIOF_OUT_INIT_LOW, "AD7780 /PDRST");
+					    GPIOF_OUT_INIT_LOW, "AD7780 /PDRST");
 		if (ret) {
 			dev_err(&spi->dev, "failed to request GPIO PDRST\n");
 			goto error_disable_reg;
diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 48b1c37..4e954d2 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -110,8 +110,8 @@ static int ad7816_spi_write(struct ad7816_chip_info *chip, u8 data)
 }
 
 static ssize_t ad7816_show_mode(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				struct device_attribute *attr,
+				char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -122,9 +122,9 @@ static ssize_t ad7816_show_mode(struct device *dev,
 }
 
 static ssize_t ad7816_store_mode(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				 struct device_attribute *attr,
+				 const char *buf,
+				 size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -146,8 +146,8 @@ static IIO_DEVICE_ATTR(mode, S_IRUGO | S_IWUSR,
 		0);
 
 static ssize_t ad7816_show_available_modes(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+					   struct device_attribute *attr,
+					   char *buf)
 {
 	return sprintf(buf, "full\npower-save\n");
 }
@@ -156,8 +156,8 @@ static IIO_DEVICE_ATTR(available_modes, S_IRUGO, ad7816_show_available_modes,
 			NULL, 0);
 
 static ssize_t ad7816_show_channel(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				   struct device_attribute *attr,
+				   char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -166,9 +166,9 @@ static ssize_t ad7816_show_channel(struct device *dev,
 }
 
 static ssize_t ad7816_store_channel(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				    struct device_attribute *attr,
+				    const char *buf,
+				    size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -205,8 +205,8 @@ static IIO_DEVICE_ATTR(channel, S_IRUGO | S_IWUSR,
 
 
 static ssize_t ad7816_show_value(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+				 struct device_attribute *attr,
+				 char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -260,8 +260,8 @@ static irqreturn_t ad7816_event_handler(int irq, void *private)
 }
 
 static ssize_t ad7816_show_oti(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+			       struct device_attribute *attr,
+			       char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -280,9 +280,9 @@ static ssize_t ad7816_show_oti(struct device *dev,
 }
 
 static inline ssize_t ad7816_set_oti(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf,
-		size_t len)
+				     struct device_attribute *attr,
+				     const char *buf,
+				     size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad7816_chip_info *chip = iio_priv(indio_dev);
@@ -299,7 +299,7 @@ static inline ssize_t ad7816_set_oti(struct device *dev,
 		return -EINVAL;
 	} else if (chip->channel_id == 0) {
 		if (ret || value < AD7816_BOUND_VALUE_MIN ||
-			value > AD7816_BOUND_VALUE_MAX)
+		    value > AD7816_BOUND_VALUE_MAX)
 			return -EINVAL;
 
 		data = (u8)(value - AD7816_BOUND_VALUE_MIN +
@@ -371,7 +371,7 @@ static int ad7816_probe(struct spi_device *spi_dev)
 	chip->busy_pin = pins[2];
 
 	ret = devm_gpio_request(&spi_dev->dev, chip->rdwr_pin,
-					spi_get_device_id(spi_dev)->name);
+				spi_get_device_id(spi_dev)->name);
 	if (ret) {
 		dev_err(&spi_dev->dev, "Fail to request rdwr gpio PIN %d.\n",
 			chip->rdwr_pin);
@@ -379,7 +379,7 @@ static int ad7816_probe(struct spi_device *spi_dev)
 	}
 	gpio_direction_input(chip->rdwr_pin);
 	ret = devm_gpio_request(&spi_dev->dev, chip->convert_pin,
-					spi_get_device_id(spi_dev)->name);
+				spi_get_device_id(spi_dev)->name);
 	if (ret) {
 		dev_err(&spi_dev->dev, "Fail to request convert gpio PIN %d.\n",
 			chip->convert_pin);
@@ -387,7 +387,7 @@ static int ad7816_probe(struct spi_device *spi_dev)
 	}
 	gpio_direction_input(chip->convert_pin);
 	ret = devm_gpio_request(&spi_dev->dev, chip->busy_pin,
-					spi_get_device_id(spi_dev)->name);
+				spi_get_device_id(spi_dev)->name);
 	if (ret) {
 		dev_err(&spi_dev->dev, "Fail to request busy gpio PIN %d.\n",
 			chip->busy_pin);
@@ -417,7 +417,7 @@ static int ad7816_probe(struct spi_device *spi_dev)
 		return ret;
 
 	dev_info(&spi_dev->dev, "%s temperature sensor and ADC registered.\n",
-			 indio_dev->name);
+		 indio_dev->name);
 
 	return 0;
 }
diff --git a/drivers/staging/iio/adc/lpc32xx_adc.c b/drivers/staging/iio/adc/lpc32xx_adc.c
index bcf4ebb..d11c54b 100644
--- a/drivers/staging/iio/adc/lpc32xx_adc.c
+++ b/drivers/staging/iio/adc/lpc32xx_adc.c
@@ -67,10 +67,10 @@ struct lpc32xx_adc_info {
 };
 
 static int lpc32xx_read_raw(struct iio_dev *indio_dev,
-				struct iio_chan_spec const *chan,
-				int *val,
-				int *val2,
-				long mask)
+			    struct iio_chan_spec const *chan,
+			    int *val,
+			    int *val2,
+			    long mask)
 {
 	struct lpc32xx_adc_info *info = iio_priv(indio_dev);
 
@@ -79,10 +79,10 @@ static int lpc32xx_read_raw(struct iio_dev *indio_dev,
 		clk_enable(info->clk);
 		/* Measurement setup */
 		__raw_writel(AD_INTERNAL | (chan->address) | AD_REFp | AD_REFm,
-			LPC32XX_ADC_SELECT(info->adc_base));
+			     LPC32XX_ADC_SELECT(info->adc_base));
 		/* Trigger conversion */
 		__raw_writel(AD_PDN_CTRL | AD_STROBE,
-			LPC32XX_ADC_CTRL(info->adc_base));
+			     LPC32XX_ADC_CTRL(info->adc_base));
 		wait_for_completion(&info->completion); /* set by ISR */
 		clk_disable(info->clk);
 		*val = info->value;
@@ -166,7 +166,7 @@ static int lpc32xx_adc_probe(struct platform_device *pdev)
 	}
 
 	retval = devm_request_irq(&pdev->dev, irq, lpc32xx_adc_isr, 0,
-								MOD_NAME, info);
+				  MOD_NAME, info);
 	if (retval < 0) {
 		dev_err(&pdev->dev, "failed requesting interrupt\n");
 		return retval;
diff --git a/drivers/staging/iio/adc/mxs-lradc.c b/drivers/staging/iio/adc/mxs-lradc.c
index d88d85b..208f928 100644
--- a/drivers/staging/iio/adc/mxs-lradc.c
+++ b/drivers/staging/iio/adc/mxs-lradc.c
@@ -425,7 +425,7 @@ static void mxs_lradc_map_channel(struct mxs_lradc *lradc, unsigned vch,
 				  unsigned ch)
 {
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL4_LRADCSELECT_MASK(vch),
-				LRADC_CTRL4);
+			    LRADC_CTRL4);
 	mxs_lradc_reg_set(lradc, LRADC_CTRL4_LRADCSELECT(vch, ch), LRADC_CTRL4);
 }
 
@@ -440,8 +440,8 @@ static void mxs_lradc_setup_ts_channel(struct mxs_lradc *lradc, unsigned ch)
 	 * otherwise, the IRQs will not fire."
 	 */
 	mxs_lradc_reg_wrt(lradc, LRADC_CH_ACCUMULATE |
-			LRADC_CH_NUM_SAMPLES(lradc->over_sample_cnt - 1),
-			LRADC_CH(ch));
+			  LRADC_CH_NUM_SAMPLES(lradc->over_sample_cnt - 1),
+			  LRADC_CH(ch));
 
 	/* from the datasheet:
 	 * "Software must clear this register in preparation for a
@@ -458,10 +458,10 @@ static void mxs_lradc_setup_ts_channel(struct mxs_lradc *lradc, unsigned ch)
 	 * the LRADC will not trigger the delay group."
 	 */
 	mxs_lradc_reg_wrt(lradc, LRADC_DELAY_TRIGGER(1 << ch) |
-		LRADC_DELAY_TRIGGER_DELAYS(0) |
-		LRADC_DELAY_LOOP(lradc->over_sample_cnt - 1) |
-		LRADC_DELAY_DELAY(lradc->over_sample_delay - 1),
-			LRADC_DELAY(3));
+			  LRADC_DELAY_TRIGGER_DELAYS(0) |
+			  LRADC_DELAY_LOOP(lradc->over_sample_cnt - 1) |
+			  LRADC_DELAY_DELAY(lradc->over_sample_delay - 1),
+			  LRADC_DELAY(3));
 
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL1_LRADC_IRQ(ch), LRADC_CTRL1);
 
@@ -472,11 +472,11 @@ static void mxs_lradc_setup_ts_channel(struct mxs_lradc *lradc, unsigned ch)
 	 * and automatically.
 	 */
 	mxs_lradc_reg_wrt(lradc,
-		LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
-		LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
-		LRADC_DELAY_KICK |
-		LRADC_DELAY_DELAY(lradc->settling_delay),
-			LRADC_DELAY(2));
+			  LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
+			  LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
+			  LRADC_DELAY_KICK |
+			  LRADC_DELAY_DELAY(lradc->settling_delay),
+			  LRADC_DELAY(2));
 }
 
 /*
@@ -486,7 +486,7 @@ static void mxs_lradc_setup_ts_channel(struct mxs_lradc *lradc, unsigned ch)
  * hardware report one interrupt if both conversions are done
  */
 static void mxs_lradc_setup_ts_pressure(struct mxs_lradc *lradc, unsigned ch1,
-							unsigned ch2)
+					unsigned ch2)
 {
 	u32 reg;
 
@@ -512,11 +512,11 @@ static void mxs_lradc_setup_ts_pressure(struct mxs_lradc *lradc, unsigned ch1,
 
 	/* prepare the delay/loop unit according to the oversampling count */
 	mxs_lradc_reg_wrt(lradc, LRADC_DELAY_TRIGGER(1 << ch1) |
-		LRADC_DELAY_TRIGGER(1 << ch2) | /* start both channels */
-		LRADC_DELAY_TRIGGER_DELAYS(0) |
-		LRADC_DELAY_LOOP(lradc->over_sample_cnt - 1) |
-		LRADC_DELAY_DELAY(lradc->over_sample_delay - 1),
-					LRADC_DELAY(3));
+			  LRADC_DELAY_TRIGGER(1 << ch2) | /* start both channels */
+			  LRADC_DELAY_TRIGGER_DELAYS(0) |
+			  LRADC_DELAY_LOOP(lradc->over_sample_cnt - 1) |
+			  LRADC_DELAY_DELAY(lradc->over_sample_delay - 1),
+			  LRADC_DELAY(3));
 
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL1_LRADC_IRQ(ch2), LRADC_CTRL1);
 
@@ -527,14 +527,14 @@ static void mxs_lradc_setup_ts_pressure(struct mxs_lradc *lradc, unsigned ch1,
 	 * and automatically.
 	 */
 	mxs_lradc_reg_wrt(lradc,
-		LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
-		LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
-		LRADC_DELAY_KICK |
-		LRADC_DELAY_DELAY(lradc->settling_delay), LRADC_DELAY(2));
+			  LRADC_DELAY_TRIGGER(0) | /* don't trigger ADC */
+			  LRADC_DELAY_TRIGGER_DELAYS(BIT(3)) | /* trigger DELAY unit#3 */
+			  LRADC_DELAY_KICK |
+			  LRADC_DELAY_DELAY(lradc->settling_delay), LRADC_DELAY(2));
 }
 
 static unsigned mxs_lradc_read_raw_channel(struct mxs_lradc *lradc,
-							unsigned channel)
+					   unsigned channel)
 {
 	u32 reg;
 	unsigned num_samples, val;
@@ -550,7 +550,7 @@ static unsigned mxs_lradc_read_raw_channel(struct mxs_lradc *lradc,
 }
 
 static unsigned mxs_lradc_read_ts_pressure(struct mxs_lradc *lradc,
-						unsigned ch1, unsigned ch2)
+					   unsigned ch1, unsigned ch2)
 {
 	u32 reg, mask;
 	unsigned pressure, m1, m2;
@@ -607,7 +607,7 @@ static void mxs_lradc_setup_touch_detection(struct mxs_lradc *lradc)
 	 */
 	mxs_lradc_reg_clear(lradc, mxs_lradc_plate_mask(lradc), LRADC_CTRL0);
 	mxs_lradc_reg_set(lradc, mxs_lradc_touch_detect_bit(lradc),
-				LRADC_CTRL0);
+			  LRADC_CTRL0);
 }
 
 /*
@@ -675,7 +675,7 @@ static void mxs_lradc_prepare_pressure(struct mxs_lradc *lradc)
 	mxs_lradc_map_channel(lradc, TOUCHSCREEN_VCHANNEL1, TS_CH_YM);
 	mxs_lradc_map_channel(lradc, TOUCHSCREEN_VCHANNEL2, TS_CH_XP);
 	mxs_lradc_setup_ts_pressure(lradc, TOUCHSCREEN_VCHANNEL2,
-						TOUCHSCREEN_VCHANNEL1);
+				    TOUCHSCREEN_VCHANNEL1);
 }
 
 static void mxs_lradc_enable_touch_detection(struct mxs_lradc *lradc)
@@ -684,16 +684,16 @@ static void mxs_lradc_enable_touch_detection(struct mxs_lradc *lradc)
 
 	lradc->cur_plate = LRADC_TOUCH;
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ |
-				LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, LRADC_CTRL1);
+			    LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, LRADC_CTRL1);
 	mxs_lradc_reg_set(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, LRADC_CTRL1);
 }
 
 static void mxs_lradc_start_touch_event(struct mxs_lradc *lradc)
 {
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ_EN,
-				LRADC_CTRL1);
+			    LRADC_CTRL1);
 	mxs_lradc_reg_set(lradc,
-		LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1), LRADC_CTRL1);
+			  LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1), LRADC_CTRL1);
 	/*
 	 * start with the Y-pos, because it uses nearly the same plate
 	 * settings like the touch detection
@@ -720,12 +720,12 @@ static void mxs_lradc_complete_touch_event(struct mxs_lradc *lradc)
 	 */
 	mxs_lradc_reg_wrt(lradc, 0, LRADC_CH(TOUCHSCREEN_VCHANNEL1));
 	mxs_lradc_reg_clear(lradc,
-		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
-		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2), LRADC_CTRL1);
+			    LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1) |
+			    LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL2), LRADC_CTRL1);
 	mxs_lradc_reg_wrt(lradc,
-		LRADC_DELAY_TRIGGER(1 << TOUCHSCREEN_VCHANNEL1) |
-		LRADC_DELAY_KICK | LRADC_DELAY_DELAY(10), /* waste 5 ms */
-			LRADC_DELAY(2));
+			  LRADC_DELAY_TRIGGER(1 << TOUCHSCREEN_VCHANNEL1) |
+			  LRADC_DELAY_KICK | LRADC_DELAY_DELAY(10), /* waste 5 ms */
+			  LRADC_DELAY(2));
 }
 
 /*
@@ -758,8 +758,8 @@ static void mxs_lradc_finish_touch_event(struct mxs_lradc *lradc, bool valid)
 	mxs_lradc_reg_wrt(lradc, 0, LRADC_DELAY(2));
 	mxs_lradc_reg_wrt(lradc, 0, LRADC_DELAY(3));
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ |
-		LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1) |
-		LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1), LRADC_CTRL1);
+			    LRADC_CTRL1_LRADC_IRQ_EN(TOUCHSCREEN_VCHANNEL1) |
+			    LRADC_CTRL1_LRADC_IRQ(TOUCHSCREEN_VCHANNEL1), LRADC_CTRL1);
 	mxs_lradc_reg_set(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, LRADC_CTRL1);
 }
 
@@ -771,25 +771,25 @@ static void mxs_lradc_handle_touch(struct mxs_lradc *lradc)
 		if (mxs_lradc_check_touch_event(lradc))
 			mxs_lradc_start_touch_event(lradc);
 		mxs_lradc_reg_clear(lradc, LRADC_CTRL1_TOUCH_DETECT_IRQ,
-					LRADC_CTRL1);
+				    LRADC_CTRL1);
 		return;
 
 	case LRADC_SAMPLE_Y:
 		lradc->ts_y_pos = mxs_lradc_read_raw_channel(lradc,
-							TOUCHSCREEN_VCHANNEL1);
+							     TOUCHSCREEN_VCHANNEL1);
 		mxs_lradc_prepare_x_pos(lradc);
 		return;
 
 	case LRADC_SAMPLE_X:
 		lradc->ts_x_pos = mxs_lradc_read_raw_channel(lradc,
-							TOUCHSCREEN_VCHANNEL1);
+							     TOUCHSCREEN_VCHANNEL1);
 		mxs_lradc_prepare_pressure(lradc);
 		return;
 
 	case LRADC_SAMPLE_PRESSURE:
 		lradc->ts_pressure = mxs_lradc_read_ts_pressure(lradc,
-							TOUCHSCREEN_VCHANNEL2,
-							TOUCHSCREEN_VCHANNEL1);
+								TOUCHSCREEN_VCHANNEL2,
+								TOUCHSCREEN_VCHANNEL1);
 		mxs_lradc_complete_touch_event(lradc);
 		return;
 
@@ -826,20 +826,20 @@ static int mxs_lradc_read_single(struct iio_dev *iio_dev, int chan, int *val)
 	 */
 	if (lradc->soc == IMX28_LRADC)
 		mxs_lradc_reg_clear(lradc, LRADC_CTRL1_LRADC_IRQ_EN(0),
-			LRADC_CTRL1);
+				    LRADC_CTRL1);
 	mxs_lradc_reg_clear(lradc, 0x1, LRADC_CTRL0);
 
 	/* Enable / disable the divider per requirement */
 	if (test_bit(chan, &lradc->is_divided))
 		mxs_lradc_reg_set(lradc, 1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
-			LRADC_CTRL2);
+				  LRADC_CTRL2);
 	else
 		mxs_lradc_reg_clear(lradc,
-			1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET, LRADC_CTRL2);
+				    1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET, LRADC_CTRL2);
 
 	/* Clean the slot's previous content, then set new one. */
 	mxs_lradc_reg_clear(lradc, LRADC_CTRL4_LRADCSELECT_MASK(0),
-			LRADC_CTRL4);
+			    LRADC_CTRL4);
 	mxs_lradc_reg_set(lradc, chan, LRADC_CTRL4);
 
 	mxs_lradc_reg_wrt(lradc, 0, LRADC_CH(0));
@@ -885,8 +885,8 @@ static int mxs_lradc_read_temp(struct iio_dev *iio_dev, int *val)
 }
 
 static int mxs_lradc_read_raw(struct iio_dev *iio_dev,
-			const struct iio_chan_spec *chan,
-			int *val, int *val2, long m)
+			      const struct iio_chan_spec *chan,
+			      int *val, int *val2, long m)
 {
 	struct mxs_lradc *lradc = iio_priv(iio_dev);
 
@@ -980,9 +980,9 @@ static int mxs_lradc_write_raw_get_fmt(struct iio_dev *iio_dev,
 }
 
 static ssize_t mxs_lradc_show_scale_available_ch(struct device *dev,
-		struct device_attribute *attr,
-		char *buf,
-		int ch)
+						 struct device_attribute *attr,
+						 char *buf,
+						 int ch)
 {
 	struct iio_dev *iio = dev_to_iio_dev(dev);
 	struct mxs_lradc *lradc = iio_priv(iio);
@@ -999,8 +999,8 @@ static ssize_t mxs_lradc_show_scale_available_ch(struct device *dev,
 }
 
 static ssize_t mxs_lradc_show_scale_available(struct device *dev,
-		struct device_attribute *attr,
-		char *buf)
+					      struct device_attribute *attr,
+					      char *buf)
 {
 	struct iio_dev_attr *iio_attr = to_iio_dev_attr(attr);
 
@@ -1275,8 +1275,8 @@ static int mxs_lradc_buffer_preenable(struct iio_dev *iio)
 
 	if (lradc->soc == IMX28_LRADC)
 		mxs_lradc_reg_clear(lradc,
-			lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
-			LRADC_CTRL1);
+				    lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
+				    LRADC_CTRL1);
 	mxs_lradc_reg_clear(lradc, lradc->buffer_vchans, LRADC_CTRL0);
 
 	for_each_set_bit(chan, iio->active_scan_mask, LRADC_MAX_TOTAL_CHANS) {
@@ -1289,12 +1289,12 @@ static int mxs_lradc_buffer_preenable(struct iio_dev *iio)
 	}
 
 	mxs_lradc_reg_clear(lradc, LRADC_DELAY_TRIGGER_LRADCS_MASK |
-					LRADC_DELAY_KICK, LRADC_DELAY(0));
+			    LRADC_DELAY_KICK, LRADC_DELAY(0));
 	mxs_lradc_reg_clear(lradc, ctrl4_clr, LRADC_CTRL4);
 	mxs_lradc_reg_set(lradc, ctrl4_set, LRADC_CTRL4);
 	mxs_lradc_reg_set(lradc, ctrl1_irq, LRADC_CTRL1);
 	mxs_lradc_reg_set(lradc, enable << LRADC_DELAY_TRIGGER_LRADCS_OFFSET,
-					LRADC_DELAY(0));
+			  LRADC_DELAY(0));
 
 	return 0;
 
@@ -1308,13 +1308,13 @@ static int mxs_lradc_buffer_postdisable(struct iio_dev *iio)
 	struct mxs_lradc *lradc = iio_priv(iio);
 
 	mxs_lradc_reg_clear(lradc, LRADC_DELAY_TRIGGER_LRADCS_MASK |
-					LRADC_DELAY_KICK, LRADC_DELAY(0));
+			    LRADC_DELAY_KICK, LRADC_DELAY(0));
 
 	mxs_lradc_reg_clear(lradc, lradc->buffer_vchans, LRADC_CTRL0);
 	if (lradc->soc == IMX28_LRADC)
 		mxs_lradc_reg_clear(lradc,
-			lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
-			LRADC_CTRL1);
+				    lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
+				    LRADC_CTRL1);
 
 	kfree(lradc->buffer);
 	mutex_unlock(&lradc->lock);
@@ -1323,7 +1323,7 @@ static int mxs_lradc_buffer_postdisable(struct iio_dev *iio)
 }
 
 static bool mxs_lradc_validate_scan_mask(struct iio_dev *iio,
-					const unsigned long *mask)
+					 const unsigned long *mask)
 {
 	struct mxs_lradc *lradc = iio_priv(iio);
 	const int map_chans = bitmap_weight(mask, LRADC_MAX_TOTAL_CHANS);
@@ -1476,11 +1476,11 @@ static int mxs_lradc_hw_init(struct mxs_lradc *lradc)
 	/* Configure the touchscreen type */
 	if (lradc->soc == IMX28_LRADC) {
 		mxs_lradc_reg_clear(lradc, LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE,
-							LRADC_CTRL0);
+				    LRADC_CTRL0);
 
 	if (lradc->use_touchscreen == MXS_LRADC_TOUCHSCREEN_5WIRE)
 		mxs_lradc_reg_set(lradc, LRADC_CTRL0_MX28_TOUCH_SCREEN_TYPE,
-				LRADC_CTRL0);
+				  LRADC_CTRL0);
 	}
 
 	/* Start internal temperature sensing. */
@@ -1507,13 +1507,13 @@ static const struct of_device_id mxs_lradc_dt_ids[] = {
 MODULE_DEVICE_TABLE(of, mxs_lradc_dt_ids);
 
 static int mxs_lradc_probe_touchscreen(struct mxs_lradc *lradc,
-						struct device_node *lradc_node)
+				       struct device_node *lradc_node)
 {
 	int ret;
 	u32 ts_wires = 0, adapt;
 
 	ret = of_property_read_u32(lradc_node, "fsl,lradc-touchscreen-wires",
-				&ts_wires);
+				   &ts_wires);
 	if (ret)
 		return -ENODEV; /* touchscreen feature disabled */
 
@@ -1629,8 +1629,8 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 		}
 
 		ret = devm_request_irq(dev, lradc->irq[i],
-					mxs_lradc_handle_irq, 0,
-					of_cfg->irq_name[i], iio);
+				       mxs_lradc_handle_irq, 0,
+				       of_cfg->irq_name[i], iio);
 		if (ret)
 			goto err_clk;
 	}
@@ -1657,8 +1657,8 @@ static int mxs_lradc_probe(struct platform_device *pdev)
 	}
 
 	ret = iio_triggered_buffer_setup(iio, &iio_pollfunc_store_time,
-				&mxs_lradc_trigger_handler,
-				&mxs_lradc_buffer_ops);
+					 &mxs_lradc_trigger_handler,
+					 &mxs_lradc_buffer_ops);
 	if (ret)
 		goto err_clk;
 
diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index c538237..712cae0 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -191,8 +191,8 @@ static int spear_adc_write_raw(struct iio_dev *indio_dev,
 	mutex_lock(&indio_dev->mlock);
 
 	if ((val < SPEAR_ADC_CLK_MIN) ||
-		(val > SPEAR_ADC_CLK_MAX) ||
-		(val2 != 0)) {
+	    (val > SPEAR_ADC_CLK_MAX) ||
+	    (val2 != 0)) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.1.4


