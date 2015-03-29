X-GM-THRID: 10320556851200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,15c5bfe5b0735a7
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.153.8.171 with SMTP id dl11mr5000714lad.9.1427631908046;
        Sun, 29 Mar 2015 05:25:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.5 with SMTP id ds5ls588284lac.20.gmail; Sun, 29 Mar
 2015 05:25:07 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr6608319lbc.17.1427631907206;
        Sun, 29 Mar 2015 05:25:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id bz6si434280wib.3.2015.03.29.05.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 05:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id gs4so51924413wgb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 05:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Dm+SMpwh6dDCzO4xQCPS9FJHGVpzHE1SmM+bjKAEv9I=;
        b=SyB0qmIFoBnOdnsLERNxelTJ87JxM8n1RebUp2hiKk71EvmsM50Q/axs1023ywEBtw
         XtnbaGpZl0U6U0llFz3KxfFGKumEYQVK3bwCO/Aqi00Tv5cCUNoet6asKGDJzuZbka9s
         r0wtIC2CcqJ++Hp8NGdMShgRmLtG/05tNYCGAoEBYeBvXyivVWM30SMkr44ql62Xt9CM
         R/+40XRuho3NyTG2uUXF1mUedDo41u4INSBtJusRL7rlro0HjLqq2TLn7M8rtfJWvIlD
         4y6PRYqnW8OE7e8Z7jablMHjfA+9tXaHzhYl4c3med076OCIUqYdp8AFrcEMFjsCdb73
         R1uw==
X-Received: by 10.194.176.4 with SMTP id ce4mr54371239wjc.75.1427631907127;
        Sun, 29 Mar 2015 05:25:07 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id w3sm11657063wiz.5.2015.03.29.05.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 05:25:06 -0700 (PDT)
Date: Sun, 29 Mar 2015 15:24:10 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] iio: light: ltr501: Powerdown device on error
Message-ID: <94d7845cb2ca84a635c86cf4a85e57f5bd993ca1.1427630628.git.cristina.opriceana@gmail.com>
References: <cover.1427630628.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427630628.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Power down device when an error occurs  in order to avoid wasting
power. Also move powerdown function up to be seen by the new call.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/iio/light/ltr501.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
index 62b7072..34f41e3 100644
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
@@ -355,7 +362,6 @@ static int ltr501_probe(struct i2c_client *client,
 		return ret;
 	if ((ret >> 4) != 0x8)
 		return -ENODEV;
-
 	indio_dev->dev.parent = &client->dev;
 	indio_dev->info = &ltr501_info;
 	indio_dev->channels = ltr501_channels;
@@ -370,7 +376,7 @@ static int ltr501_probe(struct i2c_client *client,
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 		ltr501_trigger_handler, NULL);
 	if (ret)
-		return ret;
+		goto powerdown_on_error;
 
 	ret = iio_device_register(indio_dev);
 	if (ret)
@@ -380,16 +386,11 @@ static int ltr501_probe(struct i2c_client *client,
 
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


