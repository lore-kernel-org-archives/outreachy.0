X-GM-THRID: 9199559901184
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,246c6ab3dae7be81,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.168.105 with SMTP id zv9mr82501991obb.6.1426835876615;
        Fri, 20 Mar 2015 00:17:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.227 with SMTP id i3ls482814igt.38.canary; Fri, 20 Mar
 2015 00:17:56 -0700 (PDT)
X-Received: by 10.42.99.140 with SMTP id w12mr2269880icn.12.1426835876249;
        Fri, 20 Mar 2015 00:17:56 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id pc4si678356pac.0.2015.03.20.00.17.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 00:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id cz9so100558760pdb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 00:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=c0/vQa9Bm0AbyfZjZKP0KbOCNMJlIIN6knP0V4dkMQM=;
        b=GZ4269rB62sElYzMqWT+cEaCyKtzEQ2DNk3P55bQwfIS9/b5KUFuYclBJY1L68+3T6
         mwmYfemzhknsxdRmLLJ8/7BVgl1deLFp4f4Q7TrafeQtuVyt/P+OBetVgKkFxYTc7p1C
         4ZhkggaQkS5L1s6J4ADiyVPeM9k2zAwn56u86fVEF2OHiOQf5NmoCwIEIOQUDeBErsDy
         T90FROzHEs6YUN3YPijg90upksqZshtERmQRy6rFpV2NOPJSHgS3j/q0WWbxfpV6pGSt
         rvDfu7I+zQnXWTAnOw4ClNVy5RTyPBvZZSaADkh8kIE83mmjAQU/j8Z5wcHv4TzAJjkk
         n6zQ==
X-Received: by 10.66.136.48 with SMTP id px16mr148568655pab.89.1426835876123;
        Fri, 20 Mar 2015 00:17:56 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([103.241.45.103])
        by mx.google.com with ESMTPSA id ba12sm6457720pac.23.2015.03.20.00.17.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 00:17:55 -0700 (PDT)
Date: Fri, 20 Mar 2015 12:47:51 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: ste_rmi4: Use SIMPLE_DEV_PM_OPS() macro
Message-ID: <20150320071750.GA8322@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro SIMPLE_DEV_PM_OPS() can be used when same suspend
and resume callbacks are used for suspend to RAM and
hibernation. So, here use SIMPLE_DEV_PM_OPS to make code
shorter and cleaner.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index 6385b33..0f524bb 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -1112,12 +1112,11 @@ static int synaptics_rmi4_resume(struct device *dev)
 	return 0;
 }
 
-static const struct dev_pm_ops synaptics_rmi4_dev_pm_ops = {
-	.suspend = synaptics_rmi4_suspend,
-	.resume  = synaptics_rmi4_resume,
-};
 #endif
 
+static SIMPLE_DEV_PM_OPS(synaptics_rmi4_dev_pm_ops, synaptics_rmi4_suspend,
+			 synaptics_rmi4_resume);
+
 static const struct i2c_device_id synaptics_rmi4_id_table[] = {
 	{ DRIVER_NAME, 0 },
 	{ },
@@ -1128,9 +1127,7 @@ static struct i2c_driver synaptics_rmi4_driver = {
 	.driver = {
 		.name	=	DRIVER_NAME,
 		.owner	=	THIS_MODULE,
-#ifdef CONFIG_PM
 		.pm	=	&synaptics_rmi4_dev_pm_ops,
-#endif
 	},
 	.probe		=	synaptics_rmi4_probe,
 	.remove		=	synaptics_rmi4_remove,
-- 
1.9.1


