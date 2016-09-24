X-GM-THRID: 6334012392998961152
X-Received: by 10.237.37.28 with SMTP id v28mr3480690qtc.50.1474752182943;
        Sat, 24 Sep 2016 14:23:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls7300533ioe.45.gmail; Sat, 24 Sep
 2016 14:23:02 -0700 (PDT)
X-Received: by 10.66.177.234 with SMTP id ct10mr3098745pac.83.1474752182020;
        Sat, 24 Sep 2016 14:23:02 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si3365378pfw.1.2016.09.24.14.23.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 14:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so6939266pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 14:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gAeFIPEVUgd8JVmFN37wnn1pMh25CzS20P/T6UNJWQM=;
        b=ouSmgMIwJFbubj28ZSvoEmdSAw4vXedviTU2YUu9/i4+qPvqUOuzNneKrTR4BqBdJR
         mX8lzJoVicQQJSvv4T3P4bUOqGN97Cb5MwYY6HNKal3qxri0xp4oiPBAmb6WcGdzdFDb
         Quyz7QHXOi9WtAS+Iiie5qpaKmTnPse5gRKbYB/8rbuopA0o3h0xGk7nqeWwPtp2fbCb
         gCavUjUV9gLcBFNknQSr2d/+nKhGw083B6m+0KD1OabpFf7OTy1p8XccQgujRxF2JDQP
         WuwJKvwa8ziJRoxHknnsKQDMQDN4+2Hbbc13eaLN3nlU0AtmohjE5DQxPHVz5uavdsCv
         r5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gAeFIPEVUgd8JVmFN37wnn1pMh25CzS20P/T6UNJWQM=;
        b=dkRr7lmeho11OLlC6kIRKNDm4Pzqy1eWYL9kVvG+CECT5aHxEeuu4ZTd8TEnDhpIbq
         FHQVgPseuYoLEV8Vdg2H9RZsXxifhr4j/wP8FRtlICpHF6tuXNXNQklCwxIYerYPVGzU
         EbOA6MAMRCY9MKe4lEIl2nG6YMN3EwFj52UYXH4nBQUGP5uBd2eNjX/rmRvknG6lZ/CA
         /D03AGBxwbOv/xM8UEsr8MKu/L3RzR6leLaM+1JAjCoK+bLZ+lJ1wD5Jabxfx6xPNRQ9
         H9Ylu+Ary6ENLL9K7Eh7nR1CBmDNlpfFHSoxZjDXljIjqZ6ZdBnhiDgnJman8iTeL4qc
         6DkQ==
X-Gm-Message-State: AE9vXwOj4n5VEg8LGSkXCOYWmP0jEjDqhUtNP+N2YvgPWWgniC8CPKkb0/R449ORbgIflA==
X-Received: by 10.98.197.1 with SMTP id j1mr25001494pfg.77.1474752181844;
        Sat, 24 Sep 2016 14:23:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([122.170.128.173])
        by smtp.gmail.com with ESMTPSA id 85sm20423319pfw.92.2016.09.24.14.22.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 14:23:01 -0700 (PDT)
Date: Sun, 25 Sep 2016 02:52:53 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: iio: magnetometer: Fix sparse endianness warnings
 cast to restricted __le16
Message-ID: <20160924212253.GA25982@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the following sparse endianness warnings:

drivers/iio/magnetometer/ak8975.c:716:16: warning: cast to restricted __le16
drivers/iio/magnetometer/ak8975.c:837:19: warning: cast to restricted __le16
drivers/iio/magnetometer/ak8975.c:838:19: warning: cast to restricted __le16
drivers/iio/magnetometer/ak8975.c:839:19: warning: cast to restricted __le16


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

---
 drivers/iio/magnetometer/ak8975.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/magnetometer/ak8975.c b/drivers/iio/magnetometer/ak8975.c
index af8606c..66a85a8 100644
--- a/drivers/iio/magnetometer/ak8975.c
+++ b/drivers/iio/magnetometer/ak8975.c
@@ -690,6 +690,7 @@ static int ak8975_read_axis(struct iio_dev *indio_dev, int index, int *val)
 	struct ak8975_data *data = iio_priv(indio_dev);
 	const struct i2c_client *client = data->client;
 	const struct ak_def *def = data->def;
+	__le16 rval;
 	u16 buff;
 	int ret;
 
@@ -703,7 +704,7 @@ static int ak8975_read_axis(struct iio_dev *indio_dev, int index, int *val)
 
 	ret = i2c_smbus_read_i2c_block_data_or_emulated(
 			client, def->data_regs[index],
-			sizeof(buff), (u8*)&buff);
+			sizeof(rval), (u8*)&rval);
 	if (ret < 0)
 		goto exit;
 
@@ -713,7 +714,7 @@ static int ak8975_read_axis(struct iio_dev *indio_dev, int index, int *val)
 	pm_runtime_put_autosuspend(&data->client->dev);
 
 	/* Swap bytes and convert to valid range. */
-	buff = le16_to_cpu(buff);
+	buff = le16_to_cpu(rval);
 	*val = clamp_t(s16, buff, -def->range, def->range);
 	return IIO_VAL_INT;
 
@@ -813,6 +814,7 @@ static void ak8975_fill_buffer(struct iio_dev *indio_dev)
 	const struct ak_def *def = data->def;
 	int ret;
 	s16 buff[8]; /* 3 x 16 bits axis values + 1 aligned 64 bits timestamp */
+	__le16 fval[8];
 
 	mutex_lock(&data->lock);
 
@@ -826,17 +828,17 @@ static void ak8975_fill_buffer(struct iio_dev *indio_dev)
 	 */
 	ret = i2c_smbus_read_i2c_block_data_or_emulated(client,
 							def->data_regs[0],
-							3 * sizeof(buff[0]),
-							(u8 *)buff);
+							3 * sizeof(fval[0]),
+							(u8 *)fval);
 	if (ret < 0)
 		goto unlock;
 
 	mutex_unlock(&data->lock);
 
 	/* Clamp to valid range. */
-	buff[0] = clamp_t(s16, le16_to_cpu(buff[0]), -def->range, def->range);
-	buff[1] = clamp_t(s16, le16_to_cpu(buff[1]), -def->range, def->range);
-	buff[2] = clamp_t(s16, le16_to_cpu(buff[2]), -def->range, def->range);
+	buff[0] = clamp_t(s16, le16_to_cpu(fval[0]), -def->range, def->range);
+	buff[1] = clamp_t(s16, le16_to_cpu(fval[1]), -def->range, def->range);
+	buff[2] = clamp_t(s16, le16_to_cpu(fval[2]), -def->range, def->range);
 
 	iio_push_to_buffers_with_timestamp(indio_dev, buff,
 					   iio_get_time_ns(indio_dev));
-- 
1.8.3.1


