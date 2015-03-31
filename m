X-GM-THRID: 10349433585664
X-Received: by 10.153.8.171 with SMTP id dl11mr6439495lad.9.1427796139130;
        Tue, 31 Mar 2015 03:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.5 with SMTP id lg5ls546387lab.106.gmail; Tue, 31 Mar
 2015 03:02:18 -0700 (PDT)
X-Received: by 10.112.181.166 with SMTP id dx6mr8019706lbc.17.1427796138507;
        Tue, 31 Mar 2015 03:02:18 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id el6si797187wib.0.2015.03.31.03.02.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 03:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id o5so4564863wix.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 03:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=W832LjarMX0zWqjdGeM7kElJ9Ww80Ct+BF1Ej+D+0PQ=;
        b=gV+vHAYuzUWX8tw7tIv4hYFiGEhTcZHqY19q7OIr0jrf6NQI3L8ozwzgiZWacxLJa8
         Nm6Ft2sFCG4MEDF+hYsUzh7HNMfBwAUBZcaUdjvVz3CD0kweSl1zItYFdS2GCyLvpYhT
         zCWckCoAIcl36ZB05gIbHksP1LWgIckMeiVuvePiadN9nZqYUcGDXev9L4i1w+fAtMx6
         FkAnOYyvDlivyP6YWuI4gGo0VTFp7KwpXStdwl394inZrGSm4wWnS1/qhQCGL+5HX30m
         ZFYLPCSJ8kgs2uUZgW/1kgJYxBLcZm1vdBH6U85087b+fw6Rk41leggjks/0lTFT1QRM
         cNLw==
X-Received: by 10.180.82.169 with SMTP id j9mr4137394wiy.40.1427796138368;
        Tue, 31 Mar 2015 03:02:18 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id uo6sm19591239wjc.49.2015.03.31.03.02.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 03:02:17 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:01:18 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/7] Staging: iio: meter: Remove explicit NULL comparison
Message-ID: <dccbb8f37248a0fb3e9866646651d2eb32e6e056.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and replaces it with
its shorter form. Detected with coccinelle.

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c    | 2 +-
 drivers/staging/iio/meter/ade7758_ring.c    | 2 +-
 drivers/staging/iio/meter/ade7758_trigger.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 652aa10..77141ae 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -833,7 +833,7 @@ static int ade7758_probe(struct spi_device *spi)
 	if (!st->rx)
 		return -ENOMEM;
 	st->tx = kcalloc(ADE7758_MAX_TX, sizeof(*st->tx), GFP_KERNEL);
-	if (st->tx == NULL) {
+	if (!st->tx) {
 		ret = -ENOMEM;
 		goto error_free_rx;
 	}
diff --git a/drivers/staging/iio/meter/ade7758_ring.c b/drivers/staging/iio/meter/ade7758_ring.c
index ead38a5..9a24e02 100644
--- a/drivers/staging/iio/meter/ade7758_ring.c
+++ b/drivers/staging/iio/meter/ade7758_ring.c
@@ -132,7 +132,7 @@ int ade7758_configure_ring(struct iio_dev *indio_dev)
 						 indio_dev,
 						 "ade7759_consumer%d",
 						 indio_dev->id);
-	if (indio_dev->pollfunc == NULL) {
+	if (!indio_dev->pollfunc) {
 		ret = -ENOMEM;
 		goto error_iio_kfifo_free;
 	}
diff --git a/drivers/staging/iio/meter/ade7758_trigger.c b/drivers/staging/iio/meter/ade7758_trigger.c
index 6f45ce0..5b35a7f 100644
--- a/drivers/staging/iio/meter/ade7758_trigger.c
+++ b/drivers/staging/iio/meter/ade7758_trigger.c
@@ -66,7 +66,7 @@ int ade7758_probe_trigger(struct iio_dev *indio_dev)
 	st->trig = iio_trigger_alloc("%s-dev%d",
 					spi_get_device_id(st->us)->name,
 					indio_dev->id);
-	if (st->trig == NULL) {
+	if (!st->trig) {
 		ret = -ENOMEM;
 		goto error_ret;
 	}
-- 
1.9.1


