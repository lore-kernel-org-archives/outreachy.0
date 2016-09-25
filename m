X-GM-THRID: 6334268889476628480
X-Received: by 10.157.36.133 with SMTP id z5mr4019110ota.89.1474811902994;
        Sun, 25 Sep 2016 06:58:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.155 with SMTP id d27ls8187658ioj.21.gmail; Sun, 25 Sep
 2016 06:58:18 -0700 (PDT)
X-Received: by 10.36.131.71 with SMTP id d68mr3104041ite.32.1474811898687;
        Sun, 25 Sep 2016 06:58:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si3507104pab.2.2016.09.25.06.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 06:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q2so7756299pfj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 06:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xPMjMmRI0q1Y14QUHWF0xtyIXYf4tzdL3Yso7goxHG0=;
        b=xCapIH1YO9CtgcnzdCkXHsfKCy5MgWFcMixag+ziiPCpApbhniriyRryKZPdh1Fx9l
         Z8PYniiwvxcSua7edoNgno/VfK7py53/8yKb8kdWKm5HwAlpGwgoiZG/MJ/eQPAVGiuv
         3vxwrcChWy2mSB4F6KAKL+v0aK0yUBX6UZTC01Fzwn53rDaOcvMR17+GE8wm1D39Pz11
         AU5cVyYmgcZCZjv156IbIq3ZCAKV7qmyG8d2lCpVskg9aXaJA7rlT3762HoFTagxHzPt
         t5BUNM5QWt0peHz7P2pyFHtpFAG+0Oak775id25wGvVgcha6vJLS29x5GWyKFNbZ6+qz
         6Zeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xPMjMmRI0q1Y14QUHWF0xtyIXYf4tzdL3Yso7goxHG0=;
        b=M5l37KTwsA2YTGH1rRevQlv+SOiKAlV/lVkOlbmsr6IS9Dq5HYUaRX/t5WbAGvXnpX
         ma5XP+7Yo4kw/+WwiD7UqYSH/Ie+JstQTvYEiOREFEgOJ6qvYIxRQh0ZskxTT2YkmuBK
         wIEWxBjpPif4c4UeK8I02sEDq3X2zF+O8uqfGSRnm5GU7Vf7b3B8eOHl/x/Ms79YRGrG
         h0vsHnFeoXYCAaVgEhIqPeSyE3h7ot/9m2CBNSmeg9I9zVCWebXiMK+qpsHeUqyQ5Re0
         gWyC2tS57z2a3GNiG1P1EtlDMlAlBtItVwCn9FppqiivoFNjsnsG9zAHj7DghacsTBQL
         dt5g==
X-Gm-Message-State: AE9vXwNEkPctSf5SMcAiqEAZlIIBgjhoE3deZGCSeB7ni+FNcREbnf8pX5MTQLKRVjrd0Q==
X-Received: by 10.98.50.1 with SMTP id y1mr26484214pfy.62.1474811898463;
        Sun, 25 Sep 2016 06:58:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from localhost.localdomain ([182.77.95.122])
        by smtp.gmail.com with ESMTPSA id i62sm24119094pfe.70.2016.09.25.06.58.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 06:58:17 -0700 (PDT)
Date: Sun, 25 Sep 2016 18:33:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] drivers: iio: magnetometer: Fix sparse endianness
 warnings cast to restricted __be16
Message-ID: <20160925130317.GA9192@localhost.localdomain>
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
Changes in v2:
* Changing fval[8] to fval[3].
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
+	__le16 fval[3];
 
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


