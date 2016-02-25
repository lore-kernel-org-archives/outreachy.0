X-GM-THRID: 6254956437313683456
X-Received: by 10.107.11.222 with SMTP id 91mr2025770iol.7.1456401381323;
        Thu, 25 Feb 2016 03:56:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.100 with SMTP id i91ls351146qgd.66.gmail; Thu, 25 Feb
 2016 03:56:20 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr43509482ywa.9.1456401380844;
        Thu, 25 Feb 2016 03:56:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si1117593pfb.1.2016.02.25.03.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so2698257pfb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hKiSEXmczHgo0M4OUMlfepezOFr7/GxdyprDWXqTKX8=;
        b=eubOrs8emVDdMp0idn+7yRTYMXn4rOrqev93eQlcAJoo/ka2YOcoW3R/jvfh+VNKEp
         hrHGvsNQ3WkmYDeZR+jFpXh9RAdUnLi3U4umaB9Zne4Ti8erpyDyYX47L9MWBSJ1QZQa
         NSpjfSygiQRGDww1925dn9xfpfMnTtUg7bDrgkNzlmBtmzeMM/EhYt/c/6yMGhdxHwQN
         H6N/bw9HLQm+49UChpeo9Y1e8PpO1uOGW9QuTg5oW1SzV0v0kD5H071yfRqikuaM3r8x
         3R8zKAOYmvMVc3Tiz6r0954emi+CwT7Tf70/MAxoAiKbYybvD7lzugWhUml6KDncN1CG
         otTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hKiSEXmczHgo0M4OUMlfepezOFr7/GxdyprDWXqTKX8=;
        b=TCqF4PJUGvlJ1rPriFleqQIshndgAnQ12/Af9G+fLxiao0DNoiA1TYDFBl2c5mqeuF
         rUDjxMuIcuH7ourgxZIRD3sQ2uBT4Q4d+b3bFNfuM6mVXfcId66XRYzyMpahLOlz5eH3
         F8vJOWWfVG3Z58fCj/9QyGeWAyJKX3R7rppVGozNSwXsj6cREhd7aX50CkaNQ6U4ovPR
         nSsvvR1fiA0Rkm9D5vE+lpXi61HS+zs4Na+VB5yJNCfmJSHPvxef4wulY1Qu/LI1zAmo
         oMM/Ye45GKOOrV4kEQ/T885AEyeBsIksFIeTyIHEYOu0Kcr8MQl1SQ9vv5Fc6921sJxm
         vm8A==
X-Gm-Message-State: AG10YOQSY0n0MOJn/iXH2kOT5MN0LUuWY2Nvxg0ruLoFfiMHznaCapaSE+0UJlAfsMZEBw==
X-Received: by 10.98.14.149 with SMTP id 21mr62063201pfo.79.1456401380652;
        Thu, 25 Feb 2016 03:56:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fk9sm11893632pad.9.2016.02.25.03.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:56:20 -0800 (PST)
Date: Thu, 25 Feb 2016 17:26:55 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/8] staging: unisys: visorbus: Remove useless return
 variables
Message-ID: <20160225115655.GA5375@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:
@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-No change

 drivers/staging/unisys/visorbus/visorbus_main.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorbus_main.c b/drivers/staging/unisys/visorbus/visorbus_main.c
index a301385..1542206 100644
--- a/drivers/staging/unisys/visorbus/visorbus_main.c
+++ b/drivers/staging/unisys/visorbus/visorbus_main.c
@@ -701,12 +701,10 @@ DRIVER_ATTR_version(struct device_driver *xdrv, char *buf)
 static int
 register_driver_attributes(struct visor_driver *drv)
 {
-	int rc;
 	struct driver_attribute version =
 	    __ATTR(version, S_IRUGO, DRIVER_ATTR_version, NULL);
 	drv->version_attr = version;
-	rc = driver_create_file(&drv->driver, &drv->version_attr);
-	return rc;
+	return driver_create_file(&drv->driver, &drv->version_attr);
 }

 static void
--
2.1.4


