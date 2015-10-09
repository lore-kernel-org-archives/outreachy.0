X-GM-THRID: 6202672545102036992
X-Received: by 10.194.240.230 with SMTP id wd6mr2988428wjc.0.1444420307603;
        Fri, 09 Oct 2015 12:51:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.36 with SMTP id b4ls439855wie.38.gmail; Fri, 09 Oct
 2015 12:51:47 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr202493wic.4.1444420307303;
        Fri, 09 Oct 2015 12:51:47 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c7si3296wiy.3.2015.10.09.12.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fx3so80281258wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=60w0DxW4uIl540XE/apQg+0aK8v0x4WT0E54WxKwNCE=;
        b=YABri9s/csswyvOng5MuVnrPH9eOTbGPBhAjoGwN/7BXfH2cfAQ9is+W/u6sY56DXi
         ewzo0K5zyPmiqH2S7yCxUnK3IBTylGA6ItKij1ueAp+IfSffL5Tn9sWZcih0qwVOYxNt
         yk7RioIU7aNY5wmveVUKzSggBVNUo7fvW7ShRNAEIRF7QcL0HVcMVwmHzwnDujDSebNA
         GNP9klkAKfw1bmJ4TWChJK53D9EOX/RfEVdriI/V/NTRxkZQlZjCeNgWpfCODL7TlQBM
         Ce333pt/ITxon3t5RA+lsXPIzMKVHx9MebBuZFtHti/RN6iIcKagqjiY6CDv+Pfrg4Vo
         fXXg==
X-Received: by 10.180.24.102 with SMTP id t6mr1038608wif.83.1444420307231;
        Fri, 09 Oct 2015 12:51:47 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id wj4sm3895064wjb.10.2015.10.09.12.51.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:51:46 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3 6/9] staging: iio: adc: add blank line after declarations
Date: Fri,  9 Oct 2015 22:51:05 +0300
Message-Id: <dda33ad15dafe15f720f120eb5c0d87efb52f391.1444419393.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444419393.git.ciorneiioana@gmail.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>

Insert a blank line after declarations

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
    - nothing
Changes in v3:
    - nothing

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


