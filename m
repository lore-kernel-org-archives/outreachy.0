X-GM-THRID: 3128292278272
X-Received: by 10.112.138.202 with SMTP id qs10mr1665721lbb.24.1424733571343;
        Mon, 23 Feb 2015 15:19:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.139 with SMTP id dg11ls542105lac.62.gmail; Mon, 23 Feb
 2015 15:19:29 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr1691337lae.7.1424733569901;
        Mon, 23 Feb 2015 15:19:29 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id cl5si797553wib.3.2015.02.23.15.19.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 15:19:29 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id b13so1889874wgh.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 15:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o0yO7BLeWwc8DlxtuGGObWgJd8d8bo9Vx2vh0+1+iJQ=;
        b=e7TH/0Y+LtW6iPG4+XlB3L1t6brHN0fe6m/DFnjUyTjLtwSGgi9D8/021KeF/RrvyL
         uzx1MZyFRtKqdayYhFFaUo85Qimr5xpeDoRDagTqtAOJjnillOM6ztpIHrIuEYMSqhUO
         h8xNUM6WMI33KboJsOwP8CKkEqSbOH7WZfgIU4/R4ZPd/7StLawdjApLS7e6D10kYpEJ
         5GIyIWaeRbnJXZYQypuC3xti66FE/CYaHWU6b93xmwnHRZFsI36LKMkcyHI0gEIFrhKw
         JcA6FDtmeH9Bw3KGZYrF0UCkzhVE60FzGSwHxXDucw+YO+3p5ehlisVknyOjuOXwdtzN
         etQg==
X-Received: by 10.180.97.106 with SMTP id dz10mr24879557wib.33.1424733569828;
        Mon, 23 Feb 2015 15:19:29 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id hg7sm57603249wjb.44.2015.02.23.15.19.23
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 15:19:28 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: iio: Move export_symbol below its function
Date: Tue, 24 Feb 2015 01:18:32 +0200
Message-Id: <1424733512-22585-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: "EXPORT_SYMBOL(foo); should immediately follow its
function/variable"
That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 5b11b42..18bfbf0 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -2069,6 +2069,7 @@ static struct attribute_group adt7516_event_attribute_group = {
 };
 
 #ifdef CONFIG_PM_SLEEP
+EXPORT_SYMBOL_GPL(adt7316_pm_ops);
 static int adt7316_disable(struct device *dev)
 {
 	struct iio_dev *dev_info = dev_get_drvdata(dev);
@@ -2086,7 +2087,6 @@ static int adt7316_enable(struct device *dev)
 }
 
 SIMPLE_DEV_PM_OPS(adt7316_pm_ops, adt7316_disable, adt7316_enable);
-EXPORT_SYMBOL_GPL(adt7316_pm_ops);
 #endif
 
 static const struct iio_info adt7316_info = {
-- 
1.8.3.2


