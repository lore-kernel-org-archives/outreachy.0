X-GM-THRID: 9118866735104
X-Received: by 10.236.27.76 with SMTP id d52mr52057515yha.52.1426772068637;
        Thu, 19 Mar 2015 06:34:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.40 with SMTP id e8ls493870obr.32.gmail; Thu, 19 Mar
 2015 06:34:28 -0700 (PDT)
X-Received: by 10.182.133.69 with SMTP id pa5mr79297168obb.32.1426772068460;
        Thu, 19 Mar 2015 06:34:28 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ri9si106724pdb.1.2015.03.19.06.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 06:34:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id we9so75967053pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 06:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=Ate+cfeWRxYATeDLt85X5yBhwM5SFQcDZPfAmV7pIDE=;
        b=aTXNU+35rMZT/i8z4Apcg/fwbpRBOT7v0Drk/uKk8otpxBdY8CfAdipQgyk5a/QsOf
         lFaEPFbyxS7uU5xVCnxgBTh1ga1GVbcRjXsaOjMvMD7TtFduzkwusPHFjDVIxPvVra4D
         jA0414AsYBwOzYlDOkiW6NnFmgYeCoD2iLP9d1pPBQzx+/szFNq1pmqqFVatd7D6EA3+
         XVkp1PhAOAlSryRJT97mhgUc/zud6vmavLAfLSFTcRBFJ7NPx9s9OBIH+/pZZTkKh/LG
         GceM5uTM6q6bTsmTaevdqsFLKa9gvIIoZITaf2MDBnkvDlIrwoJFFXtCDDlwT9JDQaAz
         +bGw==
X-Received: by 10.70.45.169 with SMTP id o9mr120089390pdm.81.1426772068299;
        Thu, 19 Mar 2015 06:34:28 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id x3sm3207079pdo.0.2015.03.19.06.34.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 06:34:27 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] iio: adc: Call uninitialized_var for raw_sample
Date: Thu, 19 Mar 2015 19:04:21 +0530
Message-Id: <1426772061-20753-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch calls uninitialized_var function for uninitialized
variable raw_sample. This error was reported by the static
analysis tool, cppcheck.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index d10bd0c..f0bbf3c 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -248,7 +248,8 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 	const struct iio_chan_spec *chan, int *val)
 {
 	struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);
-	unsigned int sample, raw_sample;
+	unsigned int sample;
+	unsigned int uninitialized_var(raw_sample);
 	int ret = 0;
 
 	if (iio_buffer_enabled(indio_dev))
-- 
1.9.1


