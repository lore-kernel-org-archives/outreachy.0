X-GM-THRID: 6396079372840730624
X-Received: by 10.99.160.69 with SMTP id u5mr9992441pgn.47.1489203303922;
        Fri, 10 Mar 2017 19:35:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls4661828otb.24.gmail; Fri, 10 Mar
 2017 19:35:03 -0800 (PST)
X-Received: by 10.157.13.229 with SMTP id 92mr9513526ots.69.1489203303598;
        Fri, 10 Mar 2017 19:35:03 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si2110307pfx.8.2017.03.10.19.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so12167702pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cFOKIiPsetBiDF9Vyf5VvGMdd/WsMT7VQ/FYFeGh4+c=;
        b=vCMFrGQRNSwWooGkOxA7uYHWQ5lgGb00YsJpT5Ayo92RVXpe6RNYS03KwaofAS2mxu
         DvInArXP+v2BMIu5c8p3SUIqrufiB+qLAAJKcgmUqZjK5yxyvGXTcOeI74ZJpZPlAnS8
         YNpbBWnOOG15HjdkGUESazpwEbMXgMm8cVLQUtChxPgigEAeL3bLKZMUF3rCxHNozgrr
         aE2W3dgq9dKgRUSDaAKdwD42bxblsv0wFquL8nEeBsYfE7B2qRRh+E3S+KD5owBm5P3y
         dTZ4AbrV47k7TNGJWSvNYCVO5Miv07QwJCiFf0bOjPLbTC1uSh9cm5JHNa6t8WOrM6Bi
         8jZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cFOKIiPsetBiDF9Vyf5VvGMdd/WsMT7VQ/FYFeGh4+c=;
        b=khXOSI+4JQOFgjsLFv2iU2avA6zgCCyqeOkyRtLQq64gEleMQn8+EUM7odUl735ohj
         CbSLvTqVBqUvHxZv3JAEKcCQ7LAI9ZDXq7FZ1ZQI2DufXmMpXMMtK8gWTRnMZqZHxm5q
         txmgqHSHs/WgzfWmdYcE+kcs/sSvBOAP/N0fggsOEb21memBRC2bHc2t221VfzmVLtdC
         l2aRBgDPcp+b+6yocVuEDp2ZM+d43UMEhYDSes7nJBgPorGNOrcpS4wpKjRu012FS5gV
         7/Ad0IuCEmYnr+MQkjfLvS/G/wHbQDTiiRUevLuLbMCgnL3gXIp9mnpcgCvbTptR9sUT
         baNg==
X-Gm-Message-State: AMke39nAoqukwoy8jChH3Ww2ysYCqONwf9HhYKKZv4NhwJhgG2ArlmrmA4BuKoXvW1Y9MA==
X-Received: by 10.98.149.147 with SMTP id c19mr24537691pfk.36.1489203303367;
        Fri, 10 Mar 2017 19:35:03 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y67sm21033250pfa.96.2017.03.10.19.35.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:35:02 -0800 (PST)
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
Subject: [PATCH 07/10] staging: iio: adis16209: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:38 +0530
Message-Id: <1489203401-17518-8-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/accel/adis16209.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
index 8ff537f..56bc2ac 100644
--- a/drivers/staging/iio/accel/adis16209.c
+++ b/drivers/staging/iio/accel/adis16209.c
@@ -285,8 +285,8 @@ static const struct iio_chan_spec adis16209_channels[] = {
 };
 
 static const struct iio_info adis16209_info = {
-	.read_raw = &adis16209_read_raw,
-	.write_raw = &adis16209_write_raw,
+	.read_raw = adis16209_read_raw,
+	.write_raw = adis16209_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


