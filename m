X-GM-THRID: 9130553114624
X-Received: by 10.152.87.141 with SMTP id ay13mr9144219lab.3.1426867829410;
        Fri, 20 Mar 2015 09:10:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.100 with SMTP id l4ls380530wif.7.gmail; Fri, 20 Mar
 2015 09:10:29 -0700 (PDT)
X-Received: by 10.194.221.65 with SMTP id qc1mr13261302wjc.7.1426867829108;
        Fri, 20 Mar 2015 09:10:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id i8si373895wif.1.2015.03.20.09.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 09:10:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id w10so25045160wix.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 09:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2PRkTcAdas4C8JbHSNu00Xw/t17U25PKrtPCoV34yMI=;
        b=Hp1ZZaSxl8tdVU9virR+hdgO8uMYEI/vIL/jIhO+Hnue53j99j5ZTfagW8c8dqqurI
         Q8/h8wdyI9bpId++ZLuY8cJi6LxLPP9fLYLAEsJN7ITB2g9msm968mlGWxNUrKg8c97o
         D12sT6CroGzdhC0cDIjl6D5PI0zpb7EduOCvRnPUTqgr9lYJNmgRxKlLa6r9+doVFk7C
         xmmOolWRiECZdrKQhcPgznsJWEf0v7znFaEYJ72f1WGclLP3Rn1tSWohtigSfzQxfpNK
         PySoqwH2/CCD9QuAF5fOYSTIvUNaV/fP0EQxZsh6jvO8i8t4X2zgSC1uKpp0BOs2a+4s
         kcdQ==
X-Received: by 10.180.24.162 with SMTP id v2mr6278341wif.80.1426867829029;
        Fri, 20 Mar 2015 09:10:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id q6sm3629058wix.3.2015.03.20.09.10.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 09:10:28 -0700 (PDT)
Date: Fri, 20 Mar 2015 18:09:43 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] Staging: iio: Add kernel-doc for struct hmc5843
Message-ID: <bf54cd694e0103b4e26cd91b243614f716bb693c.1426867335.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch documents the struct hmc5843 specific data following
this warning:
"CHECK: struct mutex definition without comment".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 Changes in v2:
  - correct kernel doc to match standards

 drivers/staging/iio/magnetometer/hmc5843.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/magnetometer/hmc5843.h b/drivers/staging/iio/magnetometer/hmc5843.h
index 332a75c..f3d0da2 100644
--- a/drivers/staging/iio/magnetometer/hmc5843.h
+++ b/drivers/staging/iio/magnetometer/hmc5843.h
@@ -31,12 +31,20 @@ enum hmc5843_ids {
 	HMC5983_ID,
 };

+/**
+ * struct hcm5843_data	- device specific data
+ * @dev:		actual device
+ * @lock:		update and read regmap data
+ * @regmap:		hardware access register maps
+ * @variant:		describe chip variants
+ * @buffer:		3x 16-bit channels + padding + 64-bit timestamp
+ **/
 struct hmc5843_data {
 	struct device *dev;
 	struct mutex lock;
 	struct regmap *regmap;
 	const struct hmc5843_chip_info *variant;
-	__be16 buffer[8]; /* 3x 16-bit channels + padding + 64-bit timestamp */
+	__be16 buffer[8];
 };

 int hmc5843_common_probe(struct device *dev, struct regmap *regmap,
-- 
1.9.1


