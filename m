X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.233 with SMTP id qt9mr2016040lbb.2.1427796329397;
        Tue, 31 Mar 2015 03:05:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.236 with SMTP id uh12ls683014lac.54.gmail; Tue, 31 Mar
 2015 03:05:28 -0700 (PDT)
X-Received: by 10.112.213.100 with SMTP id nr4mr8043435lbc.10.1427796328900;
        Tue, 31 Mar 2015 03:05:28 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id a14si485274wib.3.2015.03.31.03.05.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 03:05:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id a2so19171336wia.0
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 03:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Zoq7g/zZ0xjhWXyXUN46Idek127cj3xGWRfRICDE3mU=;
        b=mKJR5SMEiKF6qzbUwoZYhgpfHhslQ/h9nM9FElVSxldXWMQYrxXaxQkGsD34Q8tuSQ
         xc5X6lixLSHUN91uoyW6IvsrGJpa3b1KQAz+SE28BAK4Zj9wXEhfm3+0AGVktM6WIn7A
         fUdA+Ea22ztd/49RrO/oAVa1gsvTr1tY7d6IKAA7li6tf280hZm6JDVM8O4MYQuZBd5g
         tFonGo2cJrG9xPPurEV48fPJTXv9W4E8nUy7QjMuF5d/bYxmAb+Lje6hLgHTAr5uHb/S
         NNj4R43GIoen73y2e9uFdaeI1T+rH9OVvjzIL62HKb3WfmR7QOM2s5+srj+GlUsIEMF2
         XyIg==
X-Received: by 10.180.75.233 with SMTP id f9mr4016924wiw.5.1427796328820;
        Tue, 31 Mar 2015 03:05:28 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id cj9sm19607952wjc.42.2015.03.31.03.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 03:05:28 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:04:29 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/7] Staging: iio: accel: Remove explicit NULL comparison
Message-ID: <80c073fcfea218cecbf400e16820013f7f09863b.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
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


