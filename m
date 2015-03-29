X-GM-THRID: 10349433585664
X-Received: by 10.112.198.34 with SMTP id iz2mr6998569lbc.22.1427642510898;
        Sun, 29 Mar 2015 08:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.7 with SMTP id dw7ls153581wib.19.gmail; Sun, 29 Mar
 2015 08:21:50 -0700 (PDT)
X-Received: by 10.180.9.228 with SMTP id d4mr2722128wib.1.1427642510571;
        Sun, 29 Mar 2015 08:21:50 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id f5si94751wix.1.2015.03.29.08.21.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:21:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id ne17so3355003wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9Xm0bjO7SxQ2kT1Pf8mYzRKCVj4BCBtgEiTs0558Mxw=;
        b=czifZstrXeI7DYy1fU/noNhbUuJMlMr0FXGehpq83TPT4HPmTKqd9dhLAFQmgTedYV
         hRi2sSlq6tr5FtGVtTRkAGC9ArkGh00MjIJaZB88d1+wCD7uaLrC17bmi73WE9MM/wjM
         Vp76MEH/T2rcK20qKqx9TG+xsFoh6j1P9PwtML63PKlh5FW5ODI89dUfE9l4HMEsL+11
         MAyl2AzPwQv4Mc06g9lR830enTqSjPlT5ZWOyxFGQ/hCSVgulfnQzxd5+I7jBLbCvY1f
         l0MYxbVwSM8gvJrP6zA6eEG9j/6uxtXi1vXOT9Rbw8TzRXqlNMADQSOldZ5sfB46NnU9
         qbJA==
X-Received: by 10.194.200.229 with SMTP id jv5mr55251653wjc.59.1427642510514;
        Sun, 29 Mar 2015 08:21:50 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id md2sm12196486wic.19.2015.03.29.08.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:21:49 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:20:53 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <2c92c6e73683dbf10f7a60eb0630ffabcc019dba.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and writes it in its
simpler form. Done with coccinelle:

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/iio_simple_dummy.c        | 2 +-
 drivers/staging/iio/iio_simple_dummy_buffer.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
index 8341dce..b47bf9f 100644
--- a/drivers/staging/iio/iio_simple_dummy.c
+++ b/drivers/staging/iio/iio_simple_dummy.c
@@ -588,7 +588,7 @@ static int iio_dummy_probe(int index)
 	 * for chip specific state information.
 	 */
 	indio_dev = iio_device_alloc(sizeof(*st));
-	if (indio_dev == NULL) {
+	if (!indio_dev) {
 		ret = -ENOMEM;
 		goto error_ret;
 	}
diff --git a/drivers/staging/iio/iio_simple_dummy_buffer.c b/drivers/staging/iio/iio_simple_dummy_buffer.c
index 360a4c9..a651b89 100644
--- a/drivers/staging/iio/iio_simple_dummy_buffer.c
+++ b/drivers/staging/iio/iio_simple_dummy_buffer.c
@@ -50,7 +50,7 @@ static irqreturn_t iio_simple_dummy_trigger_h(int irq, void *p)
 	u16 *data;
 
 	data = kmalloc(indio_dev->scan_bytes, GFP_KERNEL);
-	if (data == NULL)
+	if (!data)
 		goto done;
 
 	if (!bitmap_empty(indio_dev->active_scan_mask, indio_dev->masklength)) {
@@ -122,7 +122,7 @@ int iio_simple_dummy_configure_buffer(struct iio_dev *indio_dev)
 
 	/* Allocate a buffer to use - here a kfifo */
 	buffer = iio_kfifo_allocate();
-	if (buffer == NULL) {
+	if (!buffer) {
 		ret = -ENOMEM;
 		goto error_ret;
 	}
@@ -161,7 +161,7 @@ int iio_simple_dummy_configure_buffer(struct iio_dev *indio_dev)
 						 "iio_simple_dummy_consumer%d",
 						 indio_dev->id);
 
-	if (indio_dev->pollfunc == NULL) {
+	if (!indio_dev->pollfunc) {
 		ret = -ENOMEM;
 		goto error_free_buffer;
 	}
-- 
1.9.1


