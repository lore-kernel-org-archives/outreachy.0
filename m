X-GM-THRID: 6254956279141236736
X-Received: by 10.140.157.69 with SMTP id d66mr13795861qhd.13.1456401222670;
        Thu, 25 Feb 2016 03:53:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.68 with SMTP id c65ls423043ioc.89.gmail; Thu, 25 Feb
 2016 03:53:42 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr40721456pfd.0.1456401222382;
        Thu, 25 Feb 2016 03:53:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ff2si1226151pad.2.2016.02.25.03.53.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:53:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id c10so2704848pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ePBrmA3gi+Kz9nqfXkW3L1TlEB++yE7yEoX+YY1GjXw=;
        b=uGjuv+PZo7CQPk4+JclVwbqRkJytgXpnQzW8Z7AeOdFDuvMSQPi2QPi6ldfLpMnahH
         My38eviu7XTPvAlIbdstsSA9VmcEA9wlE//GceM2oCm7ijDPzoFSTTBruZ8PNKKSV4sr
         TowZhxC18LVhGtmC1lglYcqHRpuTj5xBL3LxvTE8HgZqElyLfFhHKpqIONTS5VYCSdIz
         25f7NhqrlLPo/hiqBK3jqSUk8ZjmO1K+ZEvmMPVlR47LO/iVjF4AdxFp6wjxm0S61P99
         Shi7Ti9mlX7mqNA5uCNUlIGmgt/3zwZ+zpQxpMcqMKc0No1N3n5MT9HfUbRYv9m3Q6wl
         LdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ePBrmA3gi+Kz9nqfXkW3L1TlEB++yE7yEoX+YY1GjXw=;
        b=MFdT/3NDaQuvnDZer+SXDQayrcXiJKUtlrMo987Yvu0SnwgG2AULuad23xpy6KYI/o
         fTid8RMTjs7Z5F4t4m5ENyMS6II1/EOzTaWGHigUH863+Ol8p8BFZ7Pf2U4LXRCHP4Yy
         UCdb7qqaECKsJMwCqMKUyezwWHNZrEU+KPk2ZcFOUCBEy9Toc2YmzD2oHjijGmK78+l/
         Ko18z2tZYPsZK1ix9//BlUhdee4NE/kZP+SYt+XfiVRBZTGpgj0GbHJ4ah/j1x41qoUh
         aENfz/kThg1hGGWPPVO/Mt8qYjwR+ejJBHnoFh/T5FETVtfpfugslOHBzArPdsN5XGFW
         EIdQ==
X-Gm-Message-State: AG10YORxPm0yohHJOAlIvniwRZnofgfLh4X2hHXCU1SzTW7bZysRgiRUReZbcvzLO8I5GQ==
X-Received: by 10.98.86.13 with SMTP id k13mr51135907pfb.28.1456401222239;
        Thu, 25 Feb 2016 03:53:42 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fl9sm11839485pab.30.2016.02.25.03.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:53:41 -0800 (PST)
Date: Thu, 25 Feb 2016 17:24:17 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/8] staging: android: ion: hisilicon: Remove useless
 return variables
Message-ID: <20160225115417.GA5287@Karyakshetra>
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

 drivers/staging/android/ion/hisilicon/hi6220_ion.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
index e3c07b2..fe9f0fd 100644
--- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
+++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
@@ -214,10 +214,7 @@ static struct platform_driver hi6220_ion_driver = {

 static int __init hi6220_ion_init(void)
 {
-	int ret;
-
-	ret = platform_driver_register(&hi6220_ion_driver);
-	return ret;
+	return platform_driver_register(&hi6220_ion_driver);
 }

 subsys_initcall(hi6220_ion_init);
--
2.1.4


