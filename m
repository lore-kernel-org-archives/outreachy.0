X-GM-THRID: 7925745582080
X-Received: by 10.180.211.199 with SMTP id ne7mr3265927wic.5.1426180276556;
        Thu, 12 Mar 2015 10:11:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls348629lab.2.gmail; Thu, 12 Mar
 2015 10:11:16 -0700 (PDT)
X-Received: by 10.152.6.41 with SMTP id x9mr6536331lax.10.1426180276048;
        Thu, 12 Mar 2015 10:11:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id cl5si584443wib.3.2015.03.12.10.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 10:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id em10so22152101wid.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 10:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BUqLzO0qmSGv+TasMEFacVoRpaVHCg1Q01KOz/w2WQA=;
        b=dT/eORxIlAOvQ+2WoLuC21J6Fsc+1PrNyp8S/3Z01+xFTqYvr6nN17iW84YiNAuiiZ
         G2y7KS689Hsq0h2bL+RFD9VIIhAFqKBrXqhjcANramiGaDzdn+swDgadzjjFmKeDpz0X
         c2jHVIfnoGfnL1K5B/cnZdrjFUrn8Ys+mwDoszaH0xaFOUzlEhepbT2qWFCc950OJRpU
         plmQcFhczKhyJFlytk5kGFMuGnodjbhjqb2vqid19Ha+jOX/WPQKUw/c9vNIHIuePCEL
         42PyLQaa4llFb0s6iPNVUvrN8a4Yr4d3CdghhY5lBAC1Grpgji0rYMkt9oJZsKUqjPEf
         A1pA==
X-Received: by 10.180.221.232 with SMTP id qh8mr87934249wic.19.1426180275969;
        Thu, 12 Mar 2015 10:11:15 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id fo9sm30254864wib.16.2015.03.12.10.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 12 Mar 2015 10:11:15 -0700 (PDT)
Date: Thu, 12 Mar 2015 19:10:31 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: Simplify return logic
Message-ID: <20150312171031.GA3558@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the conditional return of the ade77*_probe functions
based on the return values of iio_device_register as the latter
returns 0 or ret, the same as the checked values.

Warning found by coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 6 +-----
 drivers/staging/iio/meter/ade7754.c | 6 +-----
 drivers/staging/iio/meter/ade7759.c | 6 +-----
 3 files changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 78e8f56..30d8adf 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -517,11 +517,7 @@ static int ade7753_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		return ret;
-
-	return 0;
+	return iio_device_register(indio_dev);
 }
 
 /* fixme, confirm ordering in this function */
diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 81f6731..d21f935 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -540,11 +540,7 @@ static int ade7754_probe(struct spi_device *spi)
 	ret = ade7754_initial_setup(indio_dev);
 	if (ret)
 		return ret;
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		return ret;
-
-	return 0;
+	return iio_device_register(indio_dev);
 }
 
 /* fixme, confirm ordering in this function */
diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 694e0ce..418aa9e 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -462,11 +462,7 @@ static int ade7759_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		return ret;
-
-	return 0;
+	return iio_device_register(indio_dev);
 }
 
 /* fixme, confirm ordering in this function */
-- 
1.9.1


