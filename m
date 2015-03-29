X-GM-THRID: 10349433585664
X-Received: by 10.180.126.37 with SMTP id mv5mr1923594wib.3.1427642552391;
        Sun, 29 Mar 2015 08:22:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.135 with SMTP id 7ls553851lam.8.gmail; Sun, 29 Mar 2015
 08:22:31 -0700 (PDT)
X-Received: by 10.153.8.171 with SMTP id dl11mr5119084lad.9.1427642551566;
        Sun, 29 Mar 2015 08:22:31 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id f5si94797wix.1.2015.03.29.08.22.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id dm7so39486949wgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=W832LjarMX0zWqjdGeM7kElJ9Ww80Ct+BF1Ej+D+0PQ=;
        b=Qm739G1WY0tUeLUBsCfboaElhIT7gl23360+cGekVoifyXMNPJ/kgsVWh7qfrsMUoP
         J4zNHqAKpyIEUP8MUk88Dnt7Zow0+aCYgUH1mgZAEfYnhuBbHqiEtfafg1ANjoxoeIHh
         MrVUCjGCU6KgY2A1NlyGwqNV44EBOs74wzj/0zMXn3zy5hPaui0hBbPlAEuAL6EpL/58
         4cSCJZweE1R1U1xfU1pMLnCqqzb/BMSBrFKINpuDFk7oU6OSIGHi8+7e0n8u0JvGJnW1
         6s3WRMVUF4cleY1hlAeiHa+kLHRbJxJy98evidFUhmM1X6KBQSHSW2gQIW38NwULBej8
         P+kA==
X-Received: by 10.195.11.161 with SMTP id ej1mr53336940wjd.47.1427642551480;
        Sun, 29 Mar 2015 08:22:31 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id bp1sm11613040wjb.31.2015.03.29.08.22.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:22:30 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:21:34 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <1a0602289ca8e339e0f5a611596a8b5169971bb8.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
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


