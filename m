X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr9572855wjb.6.1427795558024;
        Tue, 31 Mar 2015 02:52:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.37 with SMTP id k5ls389281wie.23.canary; Tue, 31 Mar
 2015 02:52:37 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr9586433wjb.0.1427795557721;
        Tue, 31 Mar 2015 02:52:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id sf8si746986wic.2.2015.03.31.02.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 02:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id e14so12462559wgo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 02:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9Xm0bjO7SxQ2kT1Pf8mYzRKCVj4BCBtgEiTs0558Mxw=;
        b=gLYsMf8rP2iN+0cemTuhS3c7mmhjiWQ3oMG7YegQ4aDgyVW9+AX5sMfF0GF05jrhUt
         Ei5SQnMqakLVFR9ZPOaC8EibuDNbIduHkJ7VwiFBBKRyMzu2SjmDM8EqsauhS93637Mc
         Ozu6KCn7AWDpecPC0psdnGdj5IOb68lJg56SG0ZP6Y9NzC4T6CjIcM/9LyDpTgDsIvFZ
         tXsZZgc5ASMs7MJKbcTazGTVblai6hwxrM2OzySR0N1iYcOuW8w2+UGC4NBJmr7eeiol
         Ag0zYBpNb89R27J8ij66R+mIWH8vV4hlvJAAjUOJrdDjTzsUnawBC7BB2ka0Ova0O2Qg
         AxXg==
X-Received: by 10.180.20.7 with SMTP id j7mr3458461wie.47.1427795557643;
        Tue, 31 Mar 2015 02:52:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id pa4sm19577920wjb.11.2015.03.31.02.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 02:52:37 -0700 (PDT)
Date: Tue, 31 Mar 2015 12:51:38 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/7] Staging: iio: iio_simple_dummy: Remove explicit NULL
 comparison
Message-ID: <225901c74d22c8d45f462df00bcc7a4b295e302b.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
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


