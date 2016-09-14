X-GM-THRID: 6329987466337976320
X-Received: by 10.36.2.142 with SMTP id 136mr3232500itu.8.1473815056841;
        Tue, 13 Sep 2016 18:04:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.133 with SMTP id g127ls12080ioe.53.gmail; Tue, 13 Sep
 2016 18:04:15 -0700 (PDT)
X-Received: by 10.66.152.201 with SMTP id va9mr3051769pab.18.1473815055843;
        Tue, 13 Sep 2016 18:04:15 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c20si360346pfc.1.2016.09.13.18.04.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 18:04:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x244.google.com with SMTP id g202so286705pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 18:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FgGj4RJuYeGREhAXI4cIuhX/A69tC7scPBOfa2jNf5w=;
        b=i+6OzvlSbZv06Xhuos2HPzkpAqX+myGbWR19jqVnmelCeQfhIQkghVyDX+5qd9bD+j
         Cq+yLyQE2TlQAHUP69oHaPppnlBPyF67bv6CYoQhZCbbLLQy0llXN6e8WPh6iFF9WDqF
         d3S3mA+eCYaar8+gAx2tcU+7or1BtK+0Kt+Oqyn9+DgSLYoO6Nh5QPlYrSV35MGN9n5X
         QaunR6p8S1VJwOQYdNdK+1FjSJy76hnhSKZU/C6LAz36hLMtJXf0wd+iYb9JFTx2d7JA
         stapznz05zTgiDMz4W+HpZ6EwAEhKFfwYWnlxkkYv+aVPyJ1lx18QWkmRntTruG4PAo2
         xf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FgGj4RJuYeGREhAXI4cIuhX/A69tC7scPBOfa2jNf5w=;
        b=Ou4KL1+TeC8FwmfLpvN3E+EGfePsMgv4q/mzDPvX+ys31Y7zCYJJZkzw6WZ1emw3Xz
         8dRicolI+SRWXnuYHRI+9M8QlGOlzyJfXkscuVHK/FgDMnhUkXuLpGsLVANXIpGe7n6d
         zR1ijBN34gObhcw+KymXYWb+4yK8cJnJLiZjukjYmGJgBnn5NCOajRbAQDzRKJmQMBXD
         MDgxZYQlTL6gW9mjHntqkyFsEVxtEYF903RlNDzPy8MvaH97AjJx5AJBh3azjXTf8QXB
         zbQ5jKxhiaImoyhVuY2eUqsgBzS+natys4Rn+rlFRc0MH+NBCI0SlAFW2Azi2ZNKQ/dr
         vDzw==
X-Gm-Message-State: AE9vXwORWopez2ZaYVBZ05mCe3q2mVjNt7BNiI0NdbuKeoNoPZ7M91TvkUm5eiDZ1/txPq10
X-Received: by 10.98.20.22 with SMTP id 22mr6368142pfu.11.1473815055617;
        Tue, 13 Sep 2016 18:04:15 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id 138sm9455638pfx.41.2016.09.13.18.04.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 18:04:14 -0700 (PDT)
Date: Tue, 13 Sep 2016 18:04:14 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de, michael.hennerich@analog.com, jic23@kernel.org
Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open
 parenthesis
Message-ID: <20160914010414.GA441@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

knaack.h@gmx.de, pmeerw@pmeerw.net 
Bcc: 
Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
Reply-To: 

Issue found by checkpatch: "Alignment should match open parenthesis"

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 34 ++++++++++++-------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 24c348d..2307b4d 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -157,7 +157,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
 };
 
 static int ad5933_i2c_write(struct i2c_client *client,
-			      u8 reg, u8 len, u8 *data)
+			    u8 reg, u8 len, u8 *data)
 {
 	int ret;
 
@@ -172,7 +172,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
 }
 
 static int ad5933_i2c_read(struct i2c_client *client,
-			      u8 reg, u8 len, u8 *data)
+			   u8 reg, u8 len, u8 *data)
 {
 	int ret;
 
@@ -269,7 +269,7 @@ static int ad5933_setup(struct ad5933_state *st)
 	dat = cpu_to_be16(st->settling_cycles);
 
 	ret = ad5933_i2c_write(st->client,
-			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+			       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
 	if (ret < 0)
 		return ret;
 
@@ -294,8 +294,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
  */
 
 static ssize_t ad5933_show_frequency(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+				     struct device_attribute *attr,
+				     char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -322,9 +322,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
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
@@ -357,8 +357,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
 			AD5933_REG_FREQ_INC);
 
 static ssize_t ad5933_show(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
+			   struct device_attribute *attr,
+			   char *buf)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ad5933_state *st = iio_priv(indio_dev);
@@ -399,9 +399,9 @@ static ssize_t ad5933_show(struct device *dev,
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
@@ -451,7 +451,7 @@ static ssize_t ad5933_store(struct device *dev,
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
+				       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
 		break;
 	case AD5933_FREQ_POINTS:
 		val = clamp(val, (u16)0, (u16)511);
@@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
 			goto out;
 
 		ret = ad5933_i2c_read(st->client,
-				AD5933_REG_TEMP_DATA, 2,
-				(u8 *)&dat);
+				      AD5933_REG_TEMP_DATA, 2,
+				      (u8 *)&dat);
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


