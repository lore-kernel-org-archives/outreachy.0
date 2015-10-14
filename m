X-GM-THRID: 6205588981452636160
X-Received: by 10.112.202.165 with SMTP id kj5mr1169657lbc.5.1444851276063;
        Wed, 14 Oct 2015 12:34:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.143 with SMTP id w137ls69101lfd.105.gmail; Wed, 14 Oct
 2015 12:34:34 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1162524lbc.23.1444851274298;
        Wed, 14 Oct 2015 12:34:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bh7si940934wib.1.2015.10.14.12.34.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:34:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id q8so96607058wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZFBEy7H8EzqJiK6887aWCo3wqUrzQMtQX8A2B7Lcvh0=;
        b=RjapRHVEKXJ6DTw1k2Ys0YkF29eAvbFp5AzJj8bEBWWPBBaHvqmsfQserMLlMV/7zy
         aLW2AX4fnlqnUrEVcW1gTcQ9DstBY1xfxhGuuSYdax1dMRJ837kJ2zjmET/s4rr23wlX
         HMjOPcKZEYtJOpLhnqBQWPwCEHoCNNiyCHlfqscrrbF9LyQ7xccPL45elaqXgc70/nTd
         iELJEGCz4XoUXVr68UToF26LmMrQyYYXsELvgYCv3Bg80ERKIdQ0gp5NoMka0gwPX1My
         WHMJ3bWnzkICvLcukX2IFtD5lZGDcRBSh/Me+HYQBw8VWQYcZRG3g33sAvNYfCJwsrs/
         yTBg==
X-Received: by 10.194.63.5 with SMTP id c5mr5831925wjs.127.1444851274150;
        Wed, 14 Oct 2015 12:34:34 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id ka10sm11869434wjc.30.2015.10.14.12.34.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:34:33 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: iio: cdc: simplify return flow
Date: Wed, 14 Oct 2015 22:34:27 +0300
Message-Id: <1444851267-4576-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

Simplify return flow ad7150_write_event_params in order to reduce code length.
Since i2c_smbus_write_word_data only returns a negative value or 0 the change is safe.

This patch fixes the following coccicheck warning:

drivers/staging/iio/cdc/ad7150.c:182:2-5: WARNING: end returns can be simpified if negative or 0 value

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index ff83394..636a7ee 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -179,12 +179,9 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
 		/* Note completely different from the adaptive versions */
 	case IIO_EV_TYPE_THRESH:
 		value = chip->threshold[rising][chan];
-		ret = i2c_smbus_write_word_data(chip->client,
+		return i2c_smbus_write_word_data(chip->client,
 						ad7150_addresses[chan][3],
 						swab16(value));
-		if (ret < 0)
-			return ret;
-		return 0;
 	case IIO_EV_TYPE_MAG_ADAPTIVE:
 		sens = chip->mag_sensitivity[rising][chan];
 		timeout = chip->mag_timeout[rising][chan];
-- 
2.1.4


