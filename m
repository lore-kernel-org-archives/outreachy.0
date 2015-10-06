X-GM-THRID: 6202672545102036992
X-Received: by 10.194.240.230 with SMTP id wd6mr6971564wjc.0.1444172252500;
        Tue, 06 Oct 2015 15:57:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls1170982wik.20.canary; Tue, 06 Oct
 2015 15:57:29 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr4133280wib.2.1444172249803;
        Tue, 06 Oct 2015 15:57:29 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si671844wib.2.2015.10.06.15.57.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 15:57:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so188053027wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 15:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EI+GsaCJTGFWDEksiXp/FplZHGDyJT4FxLCBAuXIH2I=;
        b=tOvsfkr9hsJUph5DGVFZ7CLk8ethkZVXwu2VPzU25Iv6ETxGD7Oa/NMvZCA6x0ghXa
         Cgyrs9czlACM3Dj6TQRiIP+2rSqOGQeNFd0VJu6jk7X46lUCxAO9WYpQeLi/wv1tDt8K
         1L3Oq+7LeqSGHOwMDSX5c4hd1kZU2aIO9MIjZxnsExmQbpQaliGJNDp1w19SgMXkAmt4
         uplb5TDRRm8dcuEpfjAJyEY7qdFR80M5ll06KnM6sO2TXQqjitRGmZ57L7oYuNdfupHK
         SVaexJ0oPt84wX7xYzGAURt4wEi3xy+bARPk0D0PsM8r4B/zkw4iIGMF7h7OkY26EEC9
         1Tjg==
X-Received: by 10.180.230.197 with SMTP id ta5mr19084268wic.26.1444172249719;
        Tue, 06 Oct 2015 15:57:29 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id cv4sm35261421wjc.17.2015.10.06.15.57.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 06 Oct 2015 15:57:29 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 06/10] staging: iio: adc: add blank line after declarations
Date: Wed,  7 Oct 2015 01:57:06 +0300
Message-Id: <e3b365bc87da0d942f799571be73015c66b2eade.1444172066.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444172065.git.ciorneiioana@gmail.com>
References: <cover.1444172065.git.ciorneiioana@gmail.com>

Insert a blank line after declarations

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/iio/adc/ad7606_par.c | 1 +
 drivers/staging/iio/adc/ad7606_spi.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7606_par.c b/drivers/staging/iio/adc/ad7606_par.c
index 3537a78..adc370e 100644
--- a/drivers/staging/iio/adc/ad7606_par.c
+++ b/drivers/staging/iio/adc/ad7606_par.c
@@ -113,6 +113,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
 	.suspend = ad7606_par_suspend,
 	.resume  = ad7606_par_resume,
 };
+
 #define AD7606_PAR_PM_OPS (&ad7606_pm_ops)
 
 #else
diff --git a/drivers/staging/iio/adc/ad7606_spi.c b/drivers/staging/iio/adc/ad7606_spi.c
index 9c62e94..b88f882 100644
--- a/drivers/staging/iio/adc/ad7606_spi.c
+++ b/drivers/staging/iio/adc/ad7606_spi.c
@@ -85,6 +85,7 @@ static const struct dev_pm_ops ad7606_pm_ops = {
 	.suspend = ad7606_spi_suspend,
 	.resume  = ad7606_spi_resume,
 };
+
 #define AD7606_SPI_PM_OPS (&ad7606_pm_ops)
 
 #else
-- 
2.1.4


