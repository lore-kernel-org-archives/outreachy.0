X-GM-THRID: 8221215424512
X-Received: by 10.180.90.169 with SMTP id bx9mr4923305wib.6.1426297004545;
        Fri, 13 Mar 2015 18:36:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.36 with SMTP id dd4ls479046lac.43.gmail; Fri, 13 Mar
 2015 18:36:43 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr7694627lan.1.1426297003473;
        Fri, 13 Mar 2015 18:36:43 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id i8si242560wif.1.2015.03.13.18.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:36:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id dy8so510185wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eGwiMDLTzp3vVPgEO6BxYn7tRPVwjpiSXsJMALTMAww=;
        b=H7lG5BalfIxp+DSmshkaH47l4I15ODH9RljsvHAKzCYK5E4q/mweR7HmbtFAs61KLk
         CT6VPhlXm6XxZ2iAycOvJHjGkT8VxZrKeBgwZZpebgVWr20VZfLHvr0EAuUJfaLktHBd
         ZKBHXS+woZ4QmxGSA7S8fDxzru54O1ix+QpXH7zQ+wSYU2GSWTZgdwU7lgUxjaQmiQOK
         uruz6hQ4IxG4L+OwaNF4FiKoHgGtnWf2Tv76AYY9o9OdhGlyB+D0VQ4a3P819YFUmBDt
         8eRwYrl+Xk52H6ce9dRs5b4O+SyRNuGtmSzfAfBV1msoMVagd1MAT65rydh0CHacgcQX
         tm/w==
X-Received: by 10.180.75.73 with SMTP id a9mr54750476wiw.45.1426297003400;
        Fri, 13 Mar 2015 18:36:43 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id b4sm5036994wic.2.2015.03.13.18.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:36:42 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:36:01 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] Staging: iio: Remove explicit comparison to NULL
Message-ID: <8fddb5ee8a8f3a53ebd4b337f08e475c2dce63ce.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch simplifies pointer comparison to NULL and makes code
easier to read. Warning found by checkpatch.pl.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9832.c | 2 +-
 drivers/staging/iio/frequency/ad9834.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 9a16699..8ecc0bc 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -220,7 +220,7 @@ static int ad9832_probe(struct spi_device *spi)
 	}
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL) {
+	if (!indio_dev) {
 		ret = -ENOMEM;
 		goto error_disable_reg;
 	}
diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index a346673..efea560 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -336,7 +336,7 @@ static int ad9834_probe(struct spi_device *spi)
 	}
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
-	if (indio_dev == NULL) {
+	if (!indio_dev) {
 		ret = -ENOMEM;
 		goto error_disable_reg;
 	}
-- 
1.9.1


