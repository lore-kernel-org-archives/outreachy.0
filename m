X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.164.171 with SMTP id yr11mr6848278lab.4.1427642735734;
        Sun, 29 Mar 2015 08:25:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls361669lad.53.gmail; Sun, 29 Mar
 2015 08:25:35 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr6993287lbb.18.1427642735160;
        Sun, 29 Mar 2015 08:25:35 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id sf8si424386wic.2.2015.03.29.08.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id g7so72039490wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Zoq7g/zZ0xjhWXyXUN46Idek127cj3xGWRfRICDE3mU=;
        b=TEmFtOI4FEqOSiKa2stBTI/Oxn40pVXYilNErMmM3PH1BL6q/rgeFmVu0KjS9stJOM
         huWgxEKeKAwLaQ6qhnctq8FZQOpLKbbEQ3F9ZDhLWzSIHKY/kAh4/bQkYQhdyt26eBeT
         MyJpH2MVNVzbhOvOSnEQ1xy/cIPSUuo8QT+psSukh85MTNI0My80sDBoDb6zD1CH+QPE
         U9PvzcC0c2y3dIwVIpOQ4JNe/LYIO6h/42YsglzDAPBBV2IBiL2gvD+2wnj5+sELCtgz
         IJO/F+MoBSaTZYoeUmhsXDBkaZqTxsbVkKU4oxqCtn6g7FRAZ6jTJs+YlleDrqhNkvxg
         lXSQ==
X-Received: by 10.194.174.225 with SMTP id bv1mr55004072wjc.101.1427642735085;
        Sun, 29 Mar 2015 08:25:35 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id u16sm11649302wjr.5.2015.03.29.08.25.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:25:34 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:24:38 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <01080f23d9b06112c9578f48b7e93751fd20f371.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and writes it in its
equivalent shorter form. Done with coccinelle.

@replace_rule@
expression e;
@@

-e == NULL
+ !e

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq_ring.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/accel/lis3l02dq_ring.c b/drivers/staging/iio/accel/lis3l02dq_ring.c
index e6101bb..677774f 100644
--- a/drivers/staging/iio/accel/lis3l02dq_ring.c
+++ b/drivers/staging/iio/accel/lis3l02dq_ring.c
@@ -119,7 +119,7 @@ static int lis3l02dq_get_buffer_element(struct iio_dev *indio_dev,
 				       indio_dev->masklength);
 
 	rx_array = kcalloc(4, scan_count, GFP_KERNEL);
-	if (rx_array == NULL)
+	if (!rx_array)
 		return -ENOMEM;
 	ret = lis3l02dq_read_all(indio_dev, rx_array);
 	if (ret < 0) {
@@ -142,7 +142,7 @@ static irqreturn_t lis3l02dq_trigger_handler(int irq, void *p)
 	char *data;
 
 	data = kmalloc(indio_dev->scan_bytes, GFP_KERNEL);
-	if (data == NULL)
+	if (!data)
 		goto done;
 
 	if (!bitmap_empty(indio_dev->active_scan_mask, indio_dev->masklength))
@@ -410,7 +410,7 @@ int lis3l02dq_configure_buffer(struct iio_dev *indio_dev)
 						 "lis3l02dq_consumer%d",
 						 indio_dev->id);
 
-	if (indio_dev->pollfunc == NULL) {
+	if (!indio_dev->pollfunc) {
 		ret = -ENOMEM;
 		goto error_iio_sw_rb_free;
 	}
-- 
1.9.1


