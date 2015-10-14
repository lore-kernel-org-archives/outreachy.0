X-GM-THRID: 6202672545102036992
X-Received: by 10.194.83.169 with SMTP id r9mr1104678wjy.6.1444846736845;
        Wed, 14 Oct 2015 11:18:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.69 with SMTP id o5ls994643wib.10.canary; Wed, 14 Oct
 2015 11:18:56 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr1103900wjd.4.1444846736519;
        Wed, 14 Oct 2015 11:18:56 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si366469wib.2.2015.10.14.11.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ll6so9205881wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=AqhqmY1Eb0HFgRNYQD5j/TbsWUwhMxL5niJqxJhmUzc=;
        b=iohdUCovo0d+BDwNKjGEm2TP40pPVO3vQQk1z0BoGJUqjUvuABYzVQCq4xHvLlRv95
         /Q+XZTYxOOaTash9v/HCUA9m4qwcbJaYx+8Y6F0Fz2d3HqbBwngnIHpJdo/D/TzZ8kTM
         jDABqrvg3nv6jrB9e/zLi+E19k1IEhaDUFPkCWxX7zC3iZWbk0oe+b/CU7aRVOplBAcQ
         vQb6zok7T10m+zg5kK1xTq563dfFH0kOK/tVdPIHURWb9wqKVX2R3soaUf5+7l9oVleS
         K35NoXO/+7ALce3+Eyy7QpNG/hZCch6udM6MBZUgePn/0bv7B5sWb2bAJfPxhie6d5Ac
         vRmw==
X-Received: by 10.180.188.47 with SMTP id fx15mr28601072wic.41.1444846736431;
        Wed, 14 Oct 2015 11:18:56 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id p4sm20285140wia.15.2015.10.14.11.18.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 11:18:55 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v4 6/9] staging: iio: adc: add blank line after declarations
Date: Wed, 14 Oct 2015 21:14:17 +0300
Message-Id: <8536cc1301474789695e23a74e16aa31d2d62e7e.1444845354.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>

Insert a blank line after declarations

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
    - nothing
Changes in v3:
    - nothing
Changes in v4:
    - nothing


 drivers/staging/iio/adc/ad7606_par.c | 1 +
 drivers/staging/iio/adc/ad7606_spi.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
index 3537a78..adc370e 100644
--- a/drivers/staging/iio/adc/ad7606_par.c
+++ b/drivers/staging/iio/adc/ad7606_par.c
@@ -113,6 +113,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
 	.suspend = ad7606_par_suspend,
 	.resume  = ad7606_par_resume,
 };
+
 #define AD7606_PAR_PM_OPS (&ad7606_pm_ops)
 
 #else
diff --git a/drivers/staging/iio/adc/ad7606_spi.c b/drivers/staging/iio/adc/ad7606_spi.c
index 9c62e94..b88f882 100644
--- a/drivers/staging/iio/adc/ad7606_spi.c
+++ b/drivers/staging/iio/adc/ad7606_spi.c
@@ -85,6 +85,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
 	.suspend = ad7606_spi_suspend,
 	.resume  = ad7606_spi_resume,
 };
+
 #define AD7606_SPI_PM_OPS (&ad7606_pm_ops)
 
 #else
-- 
2.1.4


