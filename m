X-GM-THRID: 7207946027008
X-Received: by 10.182.246.198 with SMTP id xy6mr25319218obc.26.1425897846294;
        Mon, 09 Mar 2015 03:44:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.95 with SMTP id l92ls924138iod.83.gmail; Mon, 09 Mar
 2015 03:44:06 -0700 (PDT)
X-Received: by 10.42.64.67 with SMTP id f3mr18937823ici.5.1425897846113;
        Mon, 09 Mar 2015 03:44:06 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ni4si1710612pdb.2.2015.03.09.03.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:44:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so47836280pad.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ct3CFyMBcyv5spuNwb96wutCnnuyR/P+fiBbRGnhHvw=;
        b=zUbf6o4OvmraObOa81fre3dzT5yM7GYrf8s92wQhFKfmtGq+4RwOCoqITJhQCeoBMj
         LjbnRZeLEmuy768rw7iLqCAg5lVvdQugbZqOVRCs1AadpJ/2ZpOWDOboF+t755RoUfgp
         8me4r7LdTKC9kquN0sDZRROj6xMWTzrnLz1juyo81BWqWKxeT+CCCob+MZmqg7zpfWx/
         fLdOTiXD/HIF4SOhcLALFHnyPzAM/nHsd7zSa1f2SVw3ZE7pXE6ne0oeFGO5PuZLTTNO
         v9o9hVDJxiGzPPc0pTgdsTMJnYRAlTmR4VrJpk0CkcFcWbqt9+Ao+3gwtKEKHqxCEzcN
         NmUg==
X-Received: by 10.66.187.237 with SMTP id fv13mr53061947pac.48.1425897845987;
        Mon, 09 Mar 2015 03:44:05 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id w1sm12482563pdp.25.2015.03.09.03.44.03
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:44:05 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 4/5] drivers: staging: iio: meter: Removed unnecessary variable
Date: Mon,  9 Mar 2015 16:11:19 +0530
Message-Id: <1425897680-6179-5-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>

Variable ret is used only to store the return value. Hence ret is
removed and the return statement modified. Coccinelle was used to
detect such removable variables:

@rule1@
identifier ret;
expression e;
@@

-ret =
+return
           e;
-return ret;

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/iio/meter/ade7854-i2c.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854-i2c.c b/drivers/staging/iio/meter/ade7854-i2c.c
index 4e7a382..07cfe28 100644
--- a/drivers/staging/iio/meter/ade7854-i2c.c
+++ b/drivers/staging/iio/meter/ade7854-i2c.c
@@ -205,7 +205,6 @@ out:
 static int ade7854_i2c_probe(struct i2c_client *client,
 			     const struct i2c_device_id *id)
 {
-	int ret;
 	struct ade7854_state *st;
 	struct iio_dev *indio_dev;
 
@@ -225,9 +224,7 @@ static int ade7854_i2c_probe(struct i2c_client *client,
 	st->i2c = client;
 	st->irq = client->irq;
 
-	ret = ade7854_probe(indio_dev, &client->dev);
-
-	return ret;
+	return ade7854_probe(indio_dev, &client->dev);
 }
 
 static int ade7854_i2c_remove(struct i2c_client *client)
-- 
1.7.10.4


