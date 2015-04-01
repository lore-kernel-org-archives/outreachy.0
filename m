X-GM-THRID: 10320556851200
X-Received: by 10.112.242.7 with SMTP id wm7mr9553099lbc.1.1427903482740;
        Wed, 01 Apr 2015 08:51:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.5.7 with SMTP id o7ls97290lao.52.gmail; Wed, 01 Apr 2015
 08:51:22 -0700 (PDT)
X-Received: by 10.112.166.164 with SMTP id zh4mr7032488lbb.20.1427903482022;
        Wed, 01 Apr 2015 08:51:22 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id na10si153427wic.0.2015.04.01.08.51.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id m2so38571662wix.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 08:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LABLilT+ncaaUsfL5icfS0lJkviJMyFbw0O6OVR7bLk=;
        b=eZyS4d/W0m+hpMG3fUUYDGaBTH0//miJ6ZJidEq3Sfm5bEty7ZCT9xZIVopUgd6S8a
         6Vn63oGI5IUVaJhKZuc/eCosjNk0a396P/bD8A41Kp/dfSSI1/qUtFB/QC8C3cYLNX9m
         LV2aRWFTAtPJJgtI95E9wFcl3zjhKYUyHmNQiPpPZTxuxG12/ECyJcRKgeX2fMDSjD+D
         XohNL9er3tGZHnxGn7itfpurZ0Ki68DQez+CgzLiu/DaV7kLnU+g4FspWJDT48iqRuOt
         efYyh6Pa2m3In2Ii1LNJ2yr1Rs1Am6uULTV2O0NBrOJlzheaPfpcCjmH3paSLt8vxm7l
         Yk4Q==
X-Received: by 10.180.24.233 with SMTP id x9mr16697459wif.9.1427903481910;
        Wed, 01 Apr 2015 08:51:21 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ge8sm3243536wjc.32.2015.04.01.08.51.16
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 08:51:20 -0700 (PDT)
Date: Wed, 1 Apr 2015 18:50:17 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH v2] iio: light: ltr501: Powerdown device on error
Message-ID: <ba26e935b4fce83d6463762491960f0e6e13f498.1427903144.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Power down device when an error occurs  in order to avoid wasting
power. Move powerdown function up to be seen by the new call and
align parameters for the ltr501_write_contr() call.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
Changes in v2:
 - align parameters in the ltr501_write_contr() function call
 - update commit message to include this change

 drivers/iio/light/ltr501.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
index 62b7072..78b8783 100644
--- a/drivers/iio/light/ltr501.c
+++ b/drivers/iio/light/ltr501.c
@@ -333,6 +333,13 @@ static int ltr501_init(struct ltr501_data *data)
 		data->ps_contr);
 }
 
+static int ltr501_powerdown(struct ltr501_data *data)
+{
+	return ltr501_write_contr(data->client,
+				  data->als_contr & ~LTR501_CONTR_ACTIVE,
+				  data->ps_contr & ~LTR501_CONTR_ACTIVE);
+}
+
 static int ltr501_probe(struct i2c_client *client,
 			  const struct i2c_device_id *id)
 {
@@ -370,7 +377,7 @@ static int ltr501_probe(struct i2c_client *client,
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 		ltr501_trigger_handler, NULL);
 	if (ret)
-		return ret;
+		goto powerdown_on_error;
 
 	ret = iio_device_register(indio_dev);
 	if (ret)
@@ -380,16 +387,11 @@ static int ltr501_probe(struct i2c_client *client,
 
 error_unreg_buffer:
 	iio_triggered_buffer_cleanup(indio_dev);
+powerdown_on_error:
+	ltr501_powerdown(data);
 	return ret;
 }
 
-static int ltr501_powerdown(struct ltr501_data *data)
-{
-	return ltr501_write_contr(data->client,
-		data->als_contr & ~LTR501_CONTR_ACTIVE,
-		data->ps_contr & ~LTR501_CONTR_ACTIVE);
-}
-
 static int ltr501_remove(struct i2c_client *client)
 {
 	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-- 
1.9.1


