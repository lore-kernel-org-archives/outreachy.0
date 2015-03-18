X-GM-THRID: 8904092155904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,26629a1a7bb6d568,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.123.74 with SMTP id ly10mr46461462pab.16.1426662049416;
        Wed, 18 Mar 2015 00:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.230 with SMTP id 93ls540949qgj.75.gmail; Wed, 18 Mar
 2015 00:00:49 -0700 (PDT)
X-Received: by 10.236.40.112 with SMTP id e76mr81723220yhb.5.1426662049237;
        Wed, 18 Mar 2015 00:00:49 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id l3si2971459pdo.0.2015.03.18.00.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 00:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id op1so34124568pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 00:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PWrxUej11OyqZ0iDBNOLu8voY7oqozsWat5b+tk5aDI=;
        b=DFFG0NVwBGadhCB5N7DZZOwijAHnjRDlD3CdwTlxSbutwDlsbYMPIzAXnWu/t4slxr
         AZbKoJ7KTyMkQWvmphJ01f0p71GGJs0ErHK+5OAjsYnt7fgbTzKNfybcfnzI/z5sLtc7
         NLzakBKULnzDQb2S6Ye07vHYjaUKeMaivq2cgMvaDFmxXDJfFKcXlK6OBgxo0Ldhy8TX
         w1Pr29zdYi9xZmq/0I2Hrsa2cXIR+d17DGe5pGR1zdSrqQAQIIwDrQvZ5Uri5gRHMd9j
         ttIz1jap2REn6GhvNZqpb+iR4K6hml+cws29gOra6aIlLgerU0fTrN/VJwXzT6/IxIUZ
         3Q7Q==
X-Received: by 10.66.164.66 with SMTP id yo2mr158965122pab.59.1426662049004;
        Wed, 18 Mar 2015 00:00:49 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.241.95])
        by mx.google.com with ESMTPSA id d4sm25711989pdm.50.2015.03.18.00.00.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 00:00:48 -0700 (PDT)
Date: Wed, 18 Mar 2015 12:30:44 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Use module_i2c_driver
Message-ID: <20150318070044.GA9306@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_i2c_driver is used for drivers whose init
and exit paths does only register and unregister to i2c
API. So, here remove some boilerplate code by using
module_i2c_driver.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 25ab2e0..f28ffef 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2717,22 +2717,7 @@ static struct i2c_driver bcm2048_i2c_driver = {
 	.id_table	= bcm2048_id,
 };
 
-/*
- *	Module Interface
- */
-static int __init bcm2048_module_init(void)
-{
-	pr_info(BCM2048_DRIVER_DESC "\n");
-
-	return i2c_add_driver(&bcm2048_i2c_driver);
-}
-module_init(bcm2048_module_init);
-
-static void __exit bcm2048_module_exit(void)
-{
-	i2c_del_driver(&bcm2048_i2c_driver);
-}
-module_exit(bcm2048_module_exit);
+module_i2c_driver(bcm2048_i2c_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR(BCM2048_DRIVER_AUTHOR);
-- 
1.9.1


