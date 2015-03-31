X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.163.99 with SMTP id yh3mr8155907lab.8.1427796307014;
        Tue, 31 Mar 2015 03:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls833933wic.11.canary; Tue, 31 Mar
 2015 03:05:06 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr9590876wjc.5.1427796306690;
        Tue, 31 Mar 2015 03:05:06 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id a14si485272wib.3.2015.03.31.03.05.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 03:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id dm7so13130860wgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fnSHVebXan7e0w1JAL/uBb6OuwGjd1j633g+gMtP5VE=;
        b=eZhLBFvYRtKS+4QXu4gwrpf20I4lr7FlsgZKPlbrhfDVIBjWfE0kQaVPqFEFb8BvB1
         1r0myhYgd7/GyHJn627YLKoTPlZ7CbVsoBFyqkohEk+3hRIha06uaZA2d2n3w5EY8DYF
         s1rOb8bfTRI3j2V+NqOdZ+kp8EkbA6bxNWgWWPNfN0U06z+Ra2c6IxWWgCzOc6royP9A
         j57dx3ZyiGdaY57zO7Eh7ZvztfKlOT90lkD76m3/BlH3k6e8lN0N8yO0asuIRGMaVfYC
         bSjHkvypVix4iYXeCUa7Hoq7GIC1vhdh0nL3uUZnK923cJqm5g0e2a3lIxNX0NOGx2hN
         dQxQ==
X-Received: by 10.180.78.161 with SMTP id c1mr4007740wix.36.1427796306616;
        Tue, 31 Mar 2015 03:05:06 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id nb4sm19618999wjc.20.2015.03.31.03.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 03:05:05 -0700 (PDT)
Date: Tue, 31 Mar 2015 13:04:07 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/7] Staging: iio: adc: Remove explicit NULL comparison
Message-ID: <751bc3c122ffb9e2f89b149d02570100f26ff16c.1427795054.git.cristina.opriceana@gmail.com>
References: <cover.1427795054.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427795054.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit NULL comparison and writes it in its
shorter form. Detected with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/adc/ad7606_ring.c | 2 +-
 drivers/staging/iio/adc/ad7780.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7606_ring.c b/drivers/staging/iio/adc/ad7606_ring.c
index 3bf174c..a6f8eb1 100644
--- a/drivers/staging/iio/adc/ad7606_ring.c
+++ b/drivers/staging/iio/adc/ad7606_ring.c
@@ -50,7 +50,7 @@ static void ad7606_poll_bh_to_ring(struct work_struct *work_s)
 	int ret;
 
 	buf = kzalloc(indio_dev->scan_bytes, GFP_KERNEL);
-	if (buf == NULL)
+	if (!buf)
 		return;
 
 	if (gpio_is_valid(st->pdata->gpio_frstdata)) {
diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index 273add3..6cb17ec 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -169,7 +169,7 @@ static int ad7780_probe(struct spi_device *spi)
 	int ret, voltage_uv = 0;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL)
+	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
-- 
1.9.1


