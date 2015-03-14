X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.67 with SMTP id c3mr6835263lae.7.1426359089685;
        Sat, 14 Mar 2015 11:51:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.105 with SMTP id dz9ls359207wib.4.gmail; Sat, 14 Mar
 2015 11:51:29 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr5345899wib.6.1426359089316;
        Sat, 14 Mar 2015 11:51:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ew13si365098wid.0.2015.03.14.11.51.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 11:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id dy8so10126584wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 11:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eGwiMDLTzp3vVPgEO6BxYn7tRPVwjpiSXsJMALTMAww=;
        b=yyhuYmPOgyem5Bg3AOdviVIB8alGuIuXcxpq6CegKbr1ZW8Z6aoGxRB+WDIT1WpT0N
         aFpdSF+n1PnSHc9BZF9TgsWaKKs0xH2WhGvlXnRFV5mM0+BmLtHsUYOntWLuUoWT7Mnp
         6fsEOuyhs/tAMu4UTz0NLyYrq1AnUpzzdtAtpkEc2bevlofHSTkAeBRfYvnNWKcEleIc
         yPX0RylKoJzjiMEINNYeaNHDUV8Q1bOWytlYPdfEhQb9AJdkF0ykdvKRIN+CmJBa+5fs
         F+8vP/KoErJ+0dMT7hhiWj+sWhfPF0aB1dkDdqEWghhiF9WqOSPkVR3C7yOkJn4nWwDK
         vQmA==
X-Received: by 10.194.59.199 with SMTP id b7mr109106724wjr.26.1426359089265;
        Sat, 14 Mar 2015 11:51:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id dc9sm8044301wib.9.2015.03.14.11.51.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 11:51:28 -0700 (PDT)
Date: Sat, 14 Mar 2015 20:50:48 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/6] Staging: iio: Remove explicit comparison to NULL
Message-ID: <8fddb5ee8a8f3a53ebd4b337f08e475c2dce63ce.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426353884.git.cristina.opriceana@gmail.com>
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


