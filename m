X-GM-THRID: 10320556851200
X-Received: by 10.194.53.225 with SMTP id e1mr10832437wjp.4.1427886172140;
        Wed, 01 Apr 2015 04:02:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.135 with SMTP id 7ls60880lam.8.gmail; Wed, 01 Apr 2015
 04:02:51 -0700 (PDT)
X-Received: by 10.112.138.233 with SMTP id qt9mr3260477lbb.2.1427886171482;
        Wed, 01 Apr 2015 04:02:51 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id i8si101504wif.1.2015.04.01.04.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id m2so33010854wix.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8QKsulr3erAk45fEkuNbk6n/qid6xnXEVFOXaNger8A=;
        b=LiwgMqI6tYjR0jf7/D7HEbFCikTI10N6Er1M9lUdvtvMh3y+C1rk1yv9TKXY/R1b/v
         sr9Q6OhHYdn2zdLVeWfE1XxKqw32wP57C9FhLJBC1wszjdw73hpqDAfCYFvv1jzCC9HK
         VFF0t5OEM/gauKf39TR73LmBxI8gqsgX4V4gIYC7RwwPS3XnXWU6pgn1Enhq4MBDQBAe
         DF5be+KW+TCMzj2Sh0XUVbU4OWVp0rWgJh7JR/11xoNvAaeq2+zdLmhVpXbJ7yrUyXwG
         BDPX89xkt4seBCzLuP3Fn7xlD43KopojxNX2NOi7POHRJr2QI4cG2gTQWKuGlzgP/Ef3
         lUcA==
X-Received: by 10.180.9.47 with SMTP id w15mr14249216wia.13.1427886171399;
        Wed, 01 Apr 2015 04:02:51 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ea11sm2620089wic.24.2015.04.01.04.02.50
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 04:02:50 -0700 (PDT)
Date: Wed, 1 Apr 2015 14:01:51 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	daniel.baluta@gmail.com
Subject: [PATCH 2/2] iio: light: ltr501: Powerdown device on error
Message-ID: <1abedb2004323a23e8dd120abf761f3488c8e9f6.1427797741.git.cristina.opriceana@gmail.com>
References: <cover.1427797741.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427797741.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Power down device when an error occurs  in order to avoid wasting
power. Also move powerdown function up to be seen by the new call.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/iio/light/ltr501.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
index 62b7072..29ca4b8 100644
--- a/drivers/iio/light/ltr501.c
+++ b/drivers/iio/light/ltr501.c
@@ -333,6 +333,13 @@ static int ltr501_init(struct ltr501_data *data)
 		data->ps_contr);
 }
 
+static int ltr501_powerdown(struct ltr501_data *data)
+{
+	return ltr501_write_contr(data->client,
+		data->als_contr & ~LTR501_CONTR_ACTIVE,
+		data->ps_contr & ~LTR501_CONTR_ACTIVE);
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


