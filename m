X-GM-THRID: 6202672545102036992
X-Received: by 10.180.72.68 with SMTP id b4mr678767wiv.2.1444241646724;
        Wed, 07 Oct 2015 11:14:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.130 with SMTP id hc2ls1359246wib.1.canary; Wed, 07 Oct
 2015 11:14:06 -0700 (PDT)
X-Received: by 10.194.83.169 with SMTP id r9mr528075wjy.6.1444241646431;
        Wed, 07 Oct 2015 11:14:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id w4si173161wiz.0.2015.10.07.11.14.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fx3so40375500wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=U0nQhOOaWIE6JPMrL61q8Zc5vAWlgL50u7F6DTzRTm0=;
        b=MDcAszyRIIbZ40mmdUyBiYPw6orx6j/hY4+BvsTtAjrx8ou9tkMcPlBzt2H1prcMrU
         2Qy56yQ/YLSRqrEzq7nxkTVNeyF2nbK5AvBFE945+Vk76BYnMPFZ5j+5HP/FP2+71+30
         /ucJnNvB2Sr28JRw+VW6diiwsmNQwq5wthbi/5REnZpGfY3kUSJaFmx5jUttsd5xK2qe
         EzWzKNuY1ZnetRJP9kfjrjal1QiN4ees+SzuAf6/ND03ofIRakDEn2gcxQdwXvcLEm6/
         MwSbna2q9vuwKPzJzep0IqysoD4dITqtbqSkTLzPG8tiVbFTdmQpRKgo5FcGG/0q3dz2
         EJjg==
X-Received: by 10.194.236.200 with SMTP id uw8mr2711477wjc.126.1444241646349;
        Wed, 07 Oct 2015 11:14:06 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id jf3sm3629403wic.8.2015.10.07.11.14.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 11:14:05 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 6/9] staging: iio: adc: add blank line after declarations
Date: Wed,  7 Oct 2015 21:13:44 +0300
Message-Id: <e3b365bc87da0d942f799571be73015c66b2eade.1444241200.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1444241200.git.ciorneiioana@gmail.com>
References: <cover.1444241200.git.ciorneiioana@gmail.com>

Insert a blank line after declarations

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
Changes in v2:
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


