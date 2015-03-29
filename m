X-GM-THRID: 10349433585664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,222a9111e0db7cb8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.44.167 with SMTP id f7mr6999365lbm.9.1427642707521;
        Sun, 29 Mar 2015 08:25:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls496800lak.88.gmail; Sun, 29 Mar
 2015 08:25:06 -0700 (PDT)
X-Received: by 10.152.27.134 with SMTP id t6mr6837254lag.5.1427642706927;
        Sun, 29 Mar 2015 08:25:06 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id a14si160084wib.3.2015.03.29.08.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 08:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id g7so75416602wib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 08:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fnSHVebXan7e0w1JAL/uBb6OuwGjd1j633g+gMtP5VE=;
        b=HNY5kfeF9lCACWHrxd/O3L5tDI96IsHlB5HiB/WCCLooyIQrj4cnOQN3/3427L1CcK
         B89TMEomH6gXB7oBSBPcbh+qr24j2ukWXfYDq/5g/Xnn1jQNUPZlj8ierCefhwKXM4DZ
         0HBxvMjFZHrpzcllmXW9LYwNk05LjmFUwPVphAri/2plTKmFdl0bcsImMwhlm5+cDu9b
         Xs5DfzvsvnndBo60qDCBploK0rUSt5OYaRnEGx57l5y2frKmIEMSRq87YvZDtCSrdU99
         MKexYWeh8rCxJLt9X0Yh8n2J1rFEWtrMmZPDdLvcf8SCnIQk5KMyv4tqvE+XTT8kkRUN
         C52A==
X-Received: by 10.181.9.98 with SMTP id dr2mr13886816wid.62.1427642706848;
        Sun, 29 Mar 2015 08:25:06 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id kr5sm11656662wjc.1.2015.03.29.08.25.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 08:25:06 -0700 (PDT)
Date: Sun, 29 Mar 2015 18:24:09 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] Staging: iio: Remove explicit NULL comparison
Message-ID: <a05b54a83d0a83d3727cc03c1d1f499f0af82bf3.1427642156.git.cristina.opriceana@gmail.com>
References: <cover.1427642156.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427642156.git.cristina.opriceana@gmail.com>
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


