X-GM-THRID: 9130553114624
X-Received: by 10.180.11.34 with SMTP id n2mr2057654wib.2.1426792116607;
        Thu, 19 Mar 2015 12:08:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.72 with SMTP id lm8ls350162lac.3.gmail; Thu, 19 Mar
 2015 12:08:36 -0700 (PDT)
X-Received: by 10.112.180.74 with SMTP id dm10mr4731213lbc.11.1426792116142;
        Thu, 19 Mar 2015 12:08:36 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id o3si465255wib.2.2015.03.19.12.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 12:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id g7so14764712wib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 12:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lV//7sMLqnM98MBOatF+CqRTEDH+apjbUYZK3pWhYEQ=;
        b=HJS9e4iVSccz0yf2QE5wxNJYYNwMfluxr0leCCeKuc7erVD8XV/+1h/s7nX4RUGPdZ
         exRElbjiXM+7zRAjg4xCgHptnM5Lq56OXVc/D0gjf4h+9VkCskJbRBN9YQ29OH5ORFBQ
         taa5pQdyNnBYUjYM4c3jErJMnX16vXKlTecJZFjIKFkQpNuyyW3C7Dy6RKvzZlIIASjL
         D3kJUSVXLP9ivMEwSl4jQ79UI4Xnv6wPNFeRl9o/N+1eRC9yg5a4uhc8lEefSNaXmmXV
         8PiXb0EhT0sXl3tyFBRrSZrvh5oHS/Yxmcdq9wDnyZrq6Lny71/JktTQVxDUdVYLxUxT
         CfZQ==
X-Received: by 10.194.121.68 with SMTP id li4mr155685203wjb.138.1426792116060;
        Thu, 19 Mar 2015 12:08:36 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id 14sm3140721wjv.29.2015.03.19.12.08.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 12:08:35 -0700 (PDT)
Date: Thu, 19 Mar 2015 21:07:51 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] Staging: iio: Remove line over 80 characters
Message-ID: <136b68d4cb8c7e59d52616c58ba0f8ae8e645c99.1426790662.git.cristina.opriceana@gmail.com>
References: <cover.1426790662.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426790662.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Rename variable in order to fix the 80 characters per line warning.
Found by checkpatch.pl

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/magnetometer/hmc5843_i2c.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843_i2c.c b/drivers/staging/iio/magnetometer/hmc5843_i2c.c
index 8d090b4..6b4c742 100644
--- a/drivers/staging/iio/magnetometer/hmc5843_i2c.c
+++ b/drivers/staging/iio/magnetometer/hmc5843_i2c.c
@@ -56,11 +56,11 @@ static struct regmap_config hmc5843_i2c_regmap_config = {
 		.cache_type = REGCACHE_RBTREE,
 };
 
-static int hmc5843_i2c_probe(struct i2c_client *client,
+static int hmc5843_i2c_probe(struct i2c_client *cli,
 			     const struct i2c_device_id *id)
 {
-	return hmc5843_common_probe(&client->dev,
-			devm_regmap_init_i2c(client, &hmc5843_i2c_regmap_config),
+	return hmc5843_common_probe(&cli->dev,
+			devm_regmap_init_i2c(cli, &hmc5843_i2c_regmap_config),
 			id->driver_data);
 }
 
-- 
1.9.1


