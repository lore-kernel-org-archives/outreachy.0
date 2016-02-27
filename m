X-GM-THRID: 6255949616211034112
X-Received: by 10.66.63.68 with SMTP id e4mr4991257pas.40.1456576778808;
        Sat, 27 Feb 2016 04:39:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.148.68 with SMTP id w65ls1055497iod.20.gmail; Sat, 27 Feb
 2016 04:39:38 -0800 (PST)
X-Received: by 10.98.65.5 with SMTP id o5mr5083712pfa.10.1456576778475;
        Sat, 27 Feb 2016 04:39:38 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si2557829pab.0.2016.02.27.04.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:39:38 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so5898830pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wb+iBmVr5ILwQAyPrc8bFletQ/+7Rbdg8SO3KfuBYuc=;
        b=Bg38gm5UFgYuZBIXGHY2Hi3bvkECzKi6b20XfPN6YH45PySj3bZxbfQ++E+3nGAxYx
         QqcMdEUru2viomMwOma4kwQ9BoF3q/m0vryTUW1QAcFXd54/ivYwzdNqdAQZcNh38zyN
         tCSQFM2OwARSGCn735orw5zSmPnYX+xT6VhcMZDWN6Rf8jwUGl6dUwz3sOseIlRygixx
         usrRNvJwv/zOZAFnGHwstpc35sRDZdrNjB6JYwGkdoVPNwvfUWr2p+UmGcvrkSkhzGha
         KXAYVk9m2rzDQMrF0K86YXibLtZJHpcZ8V2E/8OBhwJFFUwVjUJy5PRsPmY60fGSKqLu
         YPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wb+iBmVr5ILwQAyPrc8bFletQ/+7Rbdg8SO3KfuBYuc=;
        b=V7mWp4HZBr2ubEbAepI6XEjL4QOXBCoqyXFhZZ4pNwOeLSRzh6MwKEanwoxGGbozAb
         WfCLd4r2PS4jKd7gPMd3TyApy1TEm1EaeSJqpfG4wR/hwzg8ExqQ0KUlSjOcKu51gA1J
         6vo0YMsI9BJsDcLMlpwFqU0y/Q8sT6KXlJDXLQ7T9Yl5lrzHqcv3BlBoYwTgAo74VFcz
         9uo22cx51WgWHun9akZodaZt03R1cT8CRBC/FCu/H+Dvvam2ZJPqNMffBwiAcmEek6+s
         B0MUpkqKgiTlvBq74fBqcnQ0NBTrhWoQ2rnA/mJkRb226LCS3OG9aNVYMJ6t2SU3OL1r
         LX1Q==
X-Gm-Message-State: AD7BkJJZc2HghAHOk23r3nFhdZE4jaWMmifT0aDbE5utgDsYOK8b91bWIs4vZi3c9mSUKA==
X-Received: by 10.66.249.70 with SMTP id ys6mr9124137pac.5.1456576778303;
        Sat, 27 Feb 2016 04:39:38 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.192])
        by smtp.gmail.com with ESMTPSA id dg12sm26022631pac.47.2016.02.27.04.39.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:39:37 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 1/4] staging: [media] mn88472: simplify NULL tests
Date: Sat, 27 Feb 2016 20:39:22 +0800
Message-Id: <1456576765-29100-2-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>
References: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>

Replace direct comparisons to NULL i.e. 'x == NULL' with '!x' for
consistency. Coccinelle semantic patch used:

@@
identifier func;
expression x;
statement Z;
@@

x = func(...);

if (
(
+	!
	x
-	== NULL
|
+	!
-	NULL ==
	x
)
   ) Z

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/media/mn88472/mn88472.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/mn88472/mn88472.c b/drivers/staging/media/mn88472/mn88472.c
index c2f2a63..7ea749c 100644
--- a/drivers/staging/media/mn88472/mn88472.c
+++ b/drivers/staging/media/mn88472/mn88472.c
@@ -456,7 +456,7 @@ static int mn88472_probe(struct i2c_client *client,
 	}
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (dev == NULL) {
+	if (!dev) {
 		ret = -ENOMEM;
 		goto err;
 	}
@@ -483,7 +483,7 @@ static int mn88472_probe(struct i2c_client *client,
 	 * 0x1a and 0x1c, in order to get own I2C client for each register page.
 	 */
 	dev->client[1] = i2c_new_dummy(client->adapter, 0x1a);
-	if (dev->client[1] == NULL) {
+	if (!dev->client[1]) {
 		ret = -ENODEV;
 		dev_err(&client->dev, "I2C registration failed\n");
 		if (ret)
@@ -497,7 +497,7 @@ static int mn88472_probe(struct i2c_client *client,
 	i2c_set_clientdata(dev->client[1], dev);
 
 	dev->client[2] = i2c_new_dummy(client->adapter, 0x1c);
-	if (dev->client[2] == NULL) {
+	if (!dev->client[2]) {
 		ret = -ENODEV;
 		dev_err(&client->dev, "2nd I2C registration failed\n");
 		if (ret)
-- 
1.9.1


