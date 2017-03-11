X-GM-THRID: 6396079372840730624
X-Received: by 10.157.7.78 with SMTP id 72mr8977374ote.55.1489203288630;
        Fri, 10 Mar 2017 19:34:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls1880987otd.12.gmail; Fri, 10 Mar
 2017 19:34:48 -0800 (PST)
X-Received: by 10.157.11.109 with SMTP id p42mr9300473otd.14.1489203288337;
        Fri, 10 Mar 2017 19:34:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si2069240pfb.7.2017.03.10.19.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:48 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so12119645pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=FXEFfAAPk1VPI+UIJNFwpG9GIODyabGct6nRxxHsGIQ=;
        b=piFbTX5W3AiQ+YpjSEUoMLLqrb32V0eX90FSQrtavcJNn8z7f8E56Lioh60PfN6nSQ
         GtIRIHMRHGkkHvt/YqTQuhc6u5YjLd8m8Kn+/ZGnMSEu+LpYyojx5DxLWG4fXkp97/BH
         IlrnUpihy9H5rnjM2tc261IukvJ+zTNcAvP5zwQVBx1B+vU71eJykXDChBeRZf26Ef41
         OLHsxWq0un3NhuJ9uOn41ycocuLb4E1CJ6KcZP/11Bdc8J0eKYaYbqX5h66P0lnN7xo8
         PJDu05+XJCe5aDRkAOg6BSVBblVgVZgbFn0iIGrintg7RPQBuZanLzQ/xIZU5HVBW+wG
         ec1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=FXEFfAAPk1VPI+UIJNFwpG9GIODyabGct6nRxxHsGIQ=;
        b=OEPJ1m2e+ld6xkIDCSr0FaMB09mFAw7axgWkcqwrziFE1MA9e6TZyoWIlXJOWlVmVe
         xPQNCXTNgNKv6Rez6jLoyQx0KfMxzIR5MO2zuo1WF1EVIVUc6tjLILV5PiWTWk45XB9O
         Sz3GzMfMVE13j3sK2+GkOqZCQY3jfH9e3i5X6hlh6n/lkMxYY1sGAdM5qRrI+GzXVqRb
         ThjfEVp+x/z36VxobGYsVtJk4uG0ye5A8Tr5ucNAV1VyWgCQN0FGJ042GrGYhAFkECx3
         QWgTHCVkfTs7qlMMvrFgz8bZ2NgebMVWQz5E1USFi7i+KAnWgNSacSyYMf4wT+iRlHPa
         +U2A==
X-Gm-Message-State: AMke39l319V62mQRk6EU+/Egdr6dMU2I8/9d4JqsPMIYMG56pxEYcqJoRAxAxR/2bBggBg==
X-Received: by 10.99.109.14 with SMTP id i14mr24412332pgc.102.1489203288118;
        Fri, 10 Mar 2017 19:34:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z68sm21265332pgz.11.2017.03.10.19.34.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:47 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 03/10] staging: iio: cdc: ad7746: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:34 +0530
Message-Id: <1489203401-17518-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>

In this file,function names are otherwise used as pointers without &.
Found using coccinelle.
// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 81f8b9e..6294de7 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -664,8 +664,8 @@ static int ad7746_read_raw(struct iio_dev *indio_dev,
 
 static const struct iio_info ad7746_info = {
 	.attrs = &ad7746_attribute_group,
-	.read_raw = &ad7746_read_raw,
-	.write_raw = &ad7746_write_raw,
+	.read_raw = ad7746_read_raw,
+	.write_raw = ad7746_write_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


