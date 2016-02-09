X-GM-THRID: 6249319551203278848
X-Received: by 10.66.197.130 with SMTP id iu2mr32797368pac.15.1455033093511;
        Tue, 09 Feb 2016 07:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.158 with SMTP id 30ls2173505iop.100.gmail; Tue, 09 Feb
 2016 07:51:33 -0800 (PST)
X-Received: by 10.66.159.104 with SMTP id xb8mr32839275pab.38.1455033093169;
        Tue, 09 Feb 2016 07:51:33 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id y131si2128541ywc.0.2016.02.09.07.51.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:51:33 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22f.google.com with SMTP id s68so71501270qkh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ztLEFp2SlcD2LPfXg7a8ZvEaDIMkvPR10djVCVNvGqM=;
        b=fiAUNSPAEti7/ohHplHx0k0YOLMED9gvBgKTftYlybjDxfwN8dMzP3IG1nApvy9emM
         erljkwNbl1DcgZU559rK5bkyQY3FjMK8mne5gLhQZtzaSz/XnXDrqtXLo5im5L2MNItM
         5GoStHJactYIg5DD9RffyNbr0ychPjvHq2oHwBgQlR2bH02sPvIpJaDifBFEOMskJUYN
         8qtKK9Fie/b86tJWW/pY/VXk+cci6mydwBS7511nMuVqVmnTafSNA1af4bGxz0onEbqz
         X498GdPbVn8eEPf+b/5dW8HPjueUouBIFHXNyRbm7DqPmTUymYSRXnDsXfDv2EcxQpvI
         jRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ztLEFp2SlcD2LPfXg7a8ZvEaDIMkvPR10djVCVNvGqM=;
        b=kQGmdLf5iZxksCSVg0SRs20C+8u20444CK1zgD96aQ9d/zaWbmsDKHr+CMAVK9+rGq
         CXcneGbUi/wqFq1Fz02lcmoRR83NVSnJuBNAijZhUuj21cvEQ+GFhjGeLAuLLRj0+P0k
         Elr5i0kyaVXQCTWP8uvqWLz4zs3bE3YW2ZGiJTH9Fe67Va0oqH3VbUsOBwJh9s3vExxL
         imlVqfg1J4EshLx6rINhGC0I7ReVUq8MyiCSWN4Ao2fDcFQaU90pFhAhlgtotxo+ATM5
         359YDzwudwturwaijvSudxXtcn06v5HrLFvM9xi+WAOVZDSEuhlhn4OMuWRk9teP9u3H
         rarA==
X-Gm-Message-State: AG10YOTdQ02bb1jUQpShIV6RUQEx6r/tWrGfKnlaQHU0Hx9u8fo9RwN+8lZCtpM9Sgx3Zw==
X-Received: by 10.55.42.94 with SMTP id q91mr20943258qkh.0.1455033092965;
        Tue, 09 Feb 2016 07:51:32 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id y133sm15900830qhc.11.2016.02.09.07.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:51:32 -0800 (PST)
Date: Tue, 9 Feb 2016 15:50:56 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Remove unneeded pointer casts in function
 arguments
Message-ID: <20160209205055.GA8154@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove pointer casts in function arguments as they are not required.
This patch removes all such casts found in the driver iio by the
following coccinelle patch.
@@
type t;
expression e;
identifier f;
@@

  f(...,
- (t *)
  e,
  ...)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/accel/adis16240_core.c      |  2 +-
 drivers/staging/iio/accel/lis3l02dq_core.c      |  4 ++--
 drivers/staging/iio/accel/sca3000_core.c        |  2 +-
 drivers/staging/iio/impedance-analyzer/ad5933.c | 12 ++++++------
 drivers/staging/iio/light/tsl2583.c             |  4 ++--
 drivers/staging/iio/light/tsl2x7x_core.c        |  8 ++++----
 drivers/staging/iio/meter/ade7854-spi.c         |  4 ++--
 drivers/staging/iio/resolver/ad2s1210.c         |  4 ++--
 8 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
index 1b5b685..5864bff 100644
--- a/drivers/staging/iio/accel/adis16240_core.c
+++ b/drivers/staging/iio/accel/adis16240_core.c
@@ -39,7 +39,7 @@ static ssize_t adis16240_spi_read_signed(struct device *dev,
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 
 	ret = adis_read_reg_16(st,
-			       this_attr->address, (u16 *)&val);
+			       this_attr->address, &val);
 	if (ret)
 		return ret;
 
diff --git a/drivers/staging/iio/accel/lis3l02dq_core.c b/drivers/staging/iio/accel/lis3l02dq_core.c
index 7939ae6..8d75f1f 100644
--- a/drivers/staging/iio/accel/lis3l02dq_core.c
+++ b/drivers/staging/iio/accel/lis3l02dq_core.c
@@ -288,7 +288,7 @@ static int lis3l02dq_read_raw(struct iio_dev *indio_dev,
 
 	case IIO_CHAN_INFO_CALIBBIAS:
 		reg = lis3l02dq_axis_map[LIS3L02DQ_BIAS][chan->address];
-		ret = lis3l02dq_spi_read_reg_8(indio_dev, reg, (u8 *)&stemp);
+		ret = lis3l02dq_spi_read_reg_8(indio_dev, reg, &stemp);
 		/* to match with what previous code does */
 		*val = stemp;
 		return IIO_VAL_INT;
@@ -307,7 +307,7 @@ static ssize_t lis3l02dq_read_frequency(struct device *dev,
 
 	ret = lis3l02dq_spi_read_reg_8(indio_dev,
 				       LIS3L02DQ_REG_CTRL_1_ADDR,
-				       (u8 *)&t);
+				       &t);
 	if (ret)
 		return ret;
 	t &= LIS3L02DQ_DEC_MASK;
diff --git a/drivers/staging/iio/accel/sca3000_core.c b/drivers/staging/iio/accel/sca3000_core.c
index 02e930c..a28c82a 100644
--- a/drivers/staging/iio/accel/sca3000_core.c
+++ b/drivers/staging/iio/accel/sca3000_core.c
@@ -468,7 +468,7 @@ static int sca3000_read_raw(struct iio_dev *indio_dev,
 				mutex_unlock(&st->lock);
 				return ret;
 			}
-			*val = (be16_to_cpup((__be16 *)st->rx) >> 3) & 0x1FFF;
+			*val = (be16_to_cpup(st->rx) >> 3) & 0x1FFF;
 			*val = ((*val) << (sizeof(*val) * 8 - 13)) >>
 				(sizeof(*val) * 8 - 13);
 		} else {
diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 10c43dda..c888919 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -261,14 +261,14 @@ static int ad5933_setup(struct ad5933_state *st)
 	dat = cpu_to_be16(st->settling_cycles);
 
 	ret = ad5933_i2c_write(st->client,
-			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+			AD5933_REG_SETTLING_CYCLES, 2, &dat);
 	if (ret < 0)
 		return ret;
 
 	st->freq_points = 100;
 	dat = cpu_to_be16(st->freq_points);
 
-	return ad5933_i2c_write(st->client, AD5933_REG_INC_NUM, 2, (u8 *)&dat);
+	return ad5933_i2c_write(st->client, AD5933_REG_INC_NUM, 2, &dat);
 }
 
 static void ad5933_calc_out_ranges(struct ad5933_state *st)
@@ -443,7 +443,7 @@ static ssize_t ad5933_store(struct device *dev,
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+				AD5933_REG_SETTLING_CYCLES, 2, &dat);
 		break;
 	case AD5933_FREQ_POINTS:
 		val = clamp(val, (u16)0, (u16)511);
@@ -451,7 +451,7 @@ static ssize_t ad5933_store(struct device *dev,
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client, AD5933_REG_INC_NUM, 2,
-				       (u8 *)&dat);
+				       &dat);
 		break;
 	default:
 		ret = -EINVAL;
@@ -538,7 +538,7 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 
 		ret = ad5933_i2c_read(st->client,
 				AD5933_REG_TEMP_DATA, 2,
-				(u8 *)&dat);
+				&dat);
 		if (ret < 0)
 			goto out;
 		mutex_unlock(&indio_dev->mlock);
@@ -666,7 +666,7 @@ static void ad5933_work(struct work_struct *work)
 		ad5933_i2c_read(st->client,
 				test_bit(1, indio_dev->active_scan_mask) ?
 				AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
-				scan_count * 2, (u8 *)buf);
+				scan_count * 2, buf);
 
 		if (scan_count == 2) {
 			val[0] = be16_to_cpu(buf[0]);
diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 3100d96..4f10e57 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -254,8 +254,8 @@ static int taos_get_lux(struct iio_dev *indio_dev)
 	}
 
 	/* extract ALS/lux data */
-	ch0 = le16_to_cpup((const __le16 *)&buf[0]);
-	ch1 = le16_to_cpup((const __le16 *)&buf[2]);
+	ch0 = le16_to_cpup(&buf[0]);
+	ch1 = le16_to_cpup(&buf[2]);
 
 	chip->als_cur_info.als_ch0 = ch0;
 	chip->als_cur_info.als_ch1 = ch1;
diff --git a/drivers/staging/iio/light/tsl2x7x_core.c b/drivers/staging/iio/light/tsl2x7x_core.c
index 2a62718..2838c47 100644
--- a/drivers/staging/iio/light/tsl2x7x_core.c
+++ b/drivers/staging/iio/light/tsl2x7x_core.c
@@ -392,8 +392,8 @@ static int tsl2x7x_get_lux(struct iio_dev *indio_dev)
 	}
 
 	/* extract ALS/lux data */
-	ch0 = le16_to_cpup((const __le16 *)&buf[0]);
-	ch1 = le16_to_cpup((const __le16 *)&buf[2]);
+	ch0 = le16_to_cpup(&buf[0]);
+	ch1 = le16_to_cpup(&buf[2]);
 
 	chip->als_cur_info.als_ch0 = ch0;
 	chip->als_cur_info.als_ch1 = ch1;
@@ -522,7 +522,7 @@ static int tsl2x7x_get_prox(struct iio_dev *indio_dev)
 	}
 
 	chip->prox_data =
-			le16_to_cpup((const __le16 *)&chdata[0]);
+			le16_to_cpup(&chdata[0]);
 
 prox_poll_err:
 
@@ -557,7 +557,7 @@ static void tsl2x7x_defaults(struct tsl2X7X_chip *chip)
 			sizeof(chip->pdata->platform_lux_table));
 	else
 		memcpy(chip->tsl2x7x_device_lux,
-		(struct tsl2x7x_lux *)tsl2x7x_default_lux_table_group[chip->id],
+		tsl2x7x_default_lux_table_group[chip->id],
 				MAX_DEFAULT_TABLE_BYTES);
 }
 
diff --git a/drivers/staging/iio/meter/ade7854-spi.c b/drivers/staging/iio/meter/ade7854-spi.c
index 2413052..67cf18d 100644
--- a/drivers/staging/iio/meter/ade7854-spi.c
+++ b/drivers/staging/iio/meter/ade7854-spi.c
@@ -189,7 +189,7 @@ static int ade7854_spi_read_reg_16(struct device *dev,
 				reg_address);
 		goto error_ret;
 	}
-	*val = be16_to_cpup((const __be16 *)st->rx);
+	*val = be16_to_cpup(st->rx);
 
 error_ret:
 	mutex_unlock(&st->buf_lock);
@@ -265,7 +265,7 @@ static int ade7854_spi_read_reg_32(struct device *dev,
 				reg_address);
 		goto error_ret;
 	}
-	*val = be32_to_cpup((const __be32 *)st->rx);
+	*val = be32_to_cpup(st->rx);
 
 error_ret:
 	mutex_unlock(&st->buf_lock);
diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index d97aa28..1e1f50d 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -497,7 +497,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 
 	switch (chan->type) {
 	case IIO_ANGL:
-		pos = be16_to_cpup((__be16 *) st->rx);
+		pos = be16_to_cpup(st->rx);
 		if (st->hysteresis)
 			pos >>= 16 - st->resolution;
 		*val = pos;
@@ -505,7 +505,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 		break;
 	case IIO_ANGL_VEL:
 		negative = st->rx[0] & 0x80;
-		vel = be16_to_cpup((__be16 *) st->rx);
+		vel = be16_to_cpup(st->rx);
 		vel >>= 16 - st->resolution;
 		if (vel & 0x8000) {
 			negative = (0xffff >> st->resolution) << st->resolution;
-- 
2.5.0


