X-GM-THRID: 6264794735972450304
X-Received: by 10.112.219.68 with SMTP id pm4mr4383334lbc.18.1458636190511;
        Tue, 22 Mar 2016 01:43:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.189.5 with SMTP id n5ls801983wmf.11.canary; Tue, 22 Mar
 2016 01:43:10 -0700 (PDT)
X-Received: by 10.194.121.197 with SMTP id lm5mr3113285wjb.2.1458636190088;
        Tue, 22 Mar 2016 01:43:10 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x233.google.com (mail-lb0-x233.google.com. [2a00:1450:4010:c04::233])
        by gmr-mx.google.com with ESMTPS id k2si1431344lbs.3.2016.03.22.01.43.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 01:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) client-ip=2a00:1450:4010:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x233.google.com with SMTP id bc4so151057337lbc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 01:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7aa6PU73RkRisepEI1A7YhRwnxDj1kHXWbimhUictQI=;
        b=0121mqfhaiU2ECCyj38Ihtw2CX0w0VN/PkMArhsYk7opI8oSO383sFPuB/vSk+IVF6
         8qLM8maZcnk9lm7VkkXpVatPMsnzTUjf7OY13uC9H1/gzLmIa8gLNy0murQNrcLQUf0Z
         0bL8pDTnsYRIs6FE9+FgzMH42a583D7GuGwQnYeRbz3/xsC9UGhI7tFlm4JxpuzzpDST
         6l541WacWrtiHuBu1mREK+XRQGk5+jgIm5zsdJ0KHFxyytiLb7loJ07TmNteDgkNuCvh
         XmRpzrHWDtMVQf4VrozYK0ViyKComqsqEuL4GDQLt7pG7mUQ89vnfOd8uJPMWeLexomt
         N1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7aa6PU73RkRisepEI1A7YhRwnxDj1kHXWbimhUictQI=;
        b=O7mTMiy5TuWErwdmR8q7+puhZOgJDokTVOpJs4u8MQu7ZEla2SO3zZtDxn7URHWpjr
         ZJEiEIgqiHW+JkQIlFdYhET4rCYrnb99aG99bNT95yq5rr/kuNRGxHiJ4c5jvLANL4tf
         zrMLW/zSmbHEBXmUrLPmICY0u2+nXpK5P7Jgu0q3htS0aHdLbfxG7E2fty83Tu066qh5
         swhM/r8Y74p5BfOEq6jV+ZA5VvFBAgJmhMwGwjSUGe7fWBWZJBTVvwxBrtiavzcWI2c+
         QAPFuRCg5g7riYv8OcLwbUguvpaFb3WN6oozswGIe4KZVJdt+42nHaKhFwec2EqfoGgt
         /Pqw==
X-Gm-Message-State: AD7BkJJFQoJl+8smLv+vgmdr7N5CoDlUOQqBArCDWJnhLaxzn5ww0RBegttgWf3bpaU3lw==
X-Received: by 10.112.151.207 with SMTP id us15mr10462418lbb.28.1458636189928;
        Tue, 22 Mar 2016 01:43:09 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id sa9sm4929986lbb.38.2016.03.22.01.43.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 01:43:09 -0700 (PDT)
Date: Tue, 22 Mar 2016 11:43:08 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: accel: adis16240: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20160322084308.GA26816@pal-comp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace 'unsigned' with 'unsigned int' to avoid checkpatch warning.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
 drivers/staging/iio/accel/adis16240_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
index 1b5b685..a425e18 100644
--- a/drivers/staging/iio/accel/adis16240_core.c
+++ b/drivers/staging/iio/accel/adis16240_core.c
@@ -29,13 +29,13 @@
 static ssize_t adis16240_spi_read_signed(struct device *dev,
 					 struct device_attribute *attr,
 					 char *buf,
-					 unsigned bits)
+					 unsigned int bits)
 {
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct adis *st = iio_priv(indio_dev);
 	int ret;
 	s16 val = 0;
-	unsigned shift = 16 - bits;
+	unsigned int shift = 16 - bits;
 	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 
 	ret = adis_read_reg_16(st,
-- 
2.5.0


