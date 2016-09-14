X-GM-THRID: 6329987466337976320
X-Received: by 10.107.164.205 with SMTP id d74mr3181917ioj.8.1473873514646;
        Wed, 14 Sep 2016 10:18:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.168 with SMTP id f37ls1558492otf.38.gmail; Wed, 14 Sep
 2016 10:18:31 -0700 (PDT)
X-Received: by 10.157.46.36 with SMTP id q33mr2854485otb.40.1473873511143;
        Wed, 14 Sep 2016 10:18:31 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si1376599pab.2.2016.09.14.10.18.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:18:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c03::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c03::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pa0-x244.google.com with SMTP id pp5so996474pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 10:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=e2re/NIf7PEgYftmiz3j67H3IALAXe5/1Beou7dwAJU=;
        b=T29iZRSVxJ6W3wHLWj5+PThCuIJOsoddNaRyVmc+Y+t1mkP7q0y3E6kGlnTBiS7d+H
         b2AJpwfUyxnMsL3KNkf4bDLtOq7M3cYlQleki8tBc5J80ZGf70pjV1iMhfQRbLseazGR
         R2snzHbQwchK1Empow7HDUAtMWNcD1EEPrKRffULgi6UfLwU2P8OqAx/184/1eR6QyAV
         i9HV9KpgkXYocSzaKsu6r1b05Se9GAMZ4vkyYrPERl/P2atiYJfohHN+M1N7AffxjV8P
         /GfW45nmDn225F23PZN5q1lHvKGTpEIxyYSVDsEpIX77G/9LaimvBIL14vFi99p1IMnG
         knjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=e2re/NIf7PEgYftmiz3j67H3IALAXe5/1Beou7dwAJU=;
        b=lseM+KZAeWnOsknwE6XN8RwuJlXyFddDNhJ238c1846N9MwpZlMbT7cpdmvoM36Vkt
         Jdt6cW0WcD07yqVg16imsoC/MwAvsPA8Cg+KLz02SSylWESye/+by1OZIBhc3vKS9dLg
         CLRRpW/+JyQpp2CI2voqRiHpeHwqCEpjKF1TlUGWfYPFms4ren1bIoPbWZbk4MH0p1Fn
         IGh4OsVffwj6/c+teqTxC6swkWnAPYstPwWkbnzR8o8RI2yUZ6fNosOxqNDFDNiXh5+E
         9buko7CGmzhWtIcu1NOUD/gdWMsUg0bHWq3AZrZrOco7CK5OpscgxkqgSl5LF2p2ySzx
         FhRw==
X-Gm-Message-State: AE9vXwNouuhleU5fI0veR8kqC7GQyCeXr+UD0ekYAMv1vGXhF8JOcXEzHcXr+PmgCI2KmCAb
X-Received: by 10.66.172.228 with SMTP id bf4mr6386514pac.137.1473873510843;
        Wed, 14 Sep 2016 10:18:30 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id q14sm20368075pfg.63.2016.09.14.10.18.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 10:18:30 -0700 (PDT)
Date: Wed, 14 Sep 2016 10:18:28 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	"Hennerich, Michael" <michael.hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH v2] staging: iio: ad5933: align arguments on new line with
 open parenthesis
Message-ID: <20160914171828.GA3062@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch: "Alignment should match open parenthesis."
Multiple lines are also reduced to a single line where possible.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
Changes in v2:
	-Bring broken argument lists to one line where 
	 80 characters or less is possible

	-Fix error in v1 in which alignment caused 2 lines 
	 to be over 80 characters by breaking up line 

 drivers/staging/iio/impedance-analyzer/ad5933.c | 38 ++++++++++++-------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 24c348d..5eecf1c 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -156,8 +156,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
 	},
 };
 
-static int ad5933_i2c_write(struct i2c_client *client,
-			      u8 reg, u8 len, u8 *data)
+static int ad5933_i2c_write(struct i2c_client *client, u8 reg, u8 len, u8 *data)
 {
 	int ret;
 
@@ -171,8 +170,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
 	return 0;
 }
 
-static int ad5933_i2c_read(struct i2c_client *client,
-			      u8 reg, u8 len, u8 *data)
+static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len, u8 *data)
 {
 	int ret;
 
@@ -269,7 +267,8 @@ static int ad5933_setup(struct ad5933_state *st)
 	dat = cpu_to_be16(st->settling_cycles);
 
 	ret = ad5933_i2c_write(st->client,
-			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+			       AD5933_REG_SETTLING_CYCLES,
+			       2, (u8 *)&dat);
 	if (ret < 0)
 		return ret;
 
@@ -294,8 +293,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
  */
 
 static ssize_t ad5933_show_frequency(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+				     struct device_attribute *attr,
+				     char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -322,9 +321,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 }
 
 static ssize_t ad5933_store_frequency(struct device *dev,
-					 struct device_attribute *attr,
-					 const char *buf,
-					 size_t len)
+				      struct device_attribute *attr,
+				      const char *buf,
+				      size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -357,8 +356,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
 			AD5933_REG_FREQ_INC);
 
 static ssize_t ad5933_show(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+			   struct device_attribute *attr,
+			   char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -399,9 +398,9 @@ static ssize_t ad5933_show(struct device *dev,
 }
 
 static ssize_t ad5933_store(struct device *dev,
-					 struct device_attribute *attr,
-					 const char *buf,
-					 size_t len)
+			    struct device_attribute *attr,
+			    const char *buf,
+			    size_t len)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -451,7 +450,8 @@ static ssize_t ad5933_store(struct device *dev,
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+				       AD5933_REG_SETTLING_CYCLES,
+				       2, (u8 *)&dat);
 		break;
 	case AD5933_FREQ_POINTS:
 		val = clamp(val, (u16)0, (u16)511);
@@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 			goto out;
 
 		ret = ad5933_i2c_read(st->client,
-				AD5933_REG_TEMP_DATA, 2,
-				(u8 *)&dat);
+				      AD5933_REG_TEMP_DATA,
+				      2, (u8 *)&dat);
 		if (ret < 0)
 			goto out;
 		mutex_unlock(&indio_dev->mlock);
@@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct *work)
 }
 
 static int ad5933_probe(struct i2c_client *client,
-				   const struct i2c_device_id *id)
+			const struct i2c_device_id *id)
 {
 	int ret, voltage_uv = 0;
 	struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
-- 
2.7.4


