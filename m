X-GM-THRID: 6470101655297720320
X-Received: by 10.157.64.212 with SMTP id t20mr1464828oti.120.1506440513878;
        Tue, 26 Sep 2017 08:41:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.64.7 with SMTP id m7ls670901ote.9.gmail; Tue, 26 Sep 2017
 08:41:53 -0700 (PDT)
X-Received: by 10.157.12.230 with SMTP id o35mr1448143otd.104.1506440513099;
        Tue, 26 Sep 2017 08:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506440513; cv=none;
        d=google.com; s=arc-20160816;
        b=cbxLn/nhjycVCz7WMNdDLZ22UhuGP53m8hj/QW+pNuLpLfpQ1KZMdkkxjkwUH0pBDv
         ZU2kXOZ5Pc7Ga2NIQoI8FWR1bqm91UrnmsFaNDVf8um86Rw0KZcDpQVjb63o0Sr3JJ7w
         1KfC+0nw67kqxASBpS0u2c43UuKhfAJ+icWQAwWdDeb0TqEHrAeNzDIOBQf5s1tBwg0z
         Vt7LREy8BXMD6qwjiB0OAPOomJ1icSj/SRyI0X7Q53nNwnUJkbLSywUYh1+rs0ZDhE/L
         59edWCGT+4xPXMxetVbINJlRSuM4RAWNLymvcaF/8DN8vs/DDEvp1nNJjooI2RYQauve
         /g0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=LL3/9oMVC9LA/aMoiCvIGPAHyuMV9cP0IX5x13sOmu0=;
        b=Iu/4WkCJJGS7NKaPa69qb5635bnLaGsLr4brMcx1sWIiNebDK2Nfn9OYiYWwWcEpNG
         xxjFGooj4BVjyvHiZDEEAD2kMDkGIWaW8mwpD8B3Z3/0qPnwD2Z5HQK3Mv3GFyJZlUjX
         zWB+KrgF1uvDCu2cGFdX8JEhAhDiE/wSK3yMlqUkCIZtZQdgg9s3zzpbiA2xgldmoJM8
         qtS/CuftszmN5ZMb2KDUSyXnPWZylkLlj8l87cks/jg5zaXg/jjR9ObNyNWFlHBWl8n/
         S2elKDtKKIjb6IxcbprwMDq1AfzdiBtO+e5EG+Odv4VY+SJlYgrnCPbnpFabjliVR2pS
         SAvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4kD4AHt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t77si673923pfi.13.2017.09.26.08.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4kD4AHt;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so6976951pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LL3/9oMVC9LA/aMoiCvIGPAHyuMV9cP0IX5x13sOmu0=;
        b=d4kD4AHt42uHYeVl8LO8ToZ2G5hQJSwh9LCJflIvY57GaYytA78/RjHwIH8K8QmZ7A
         Qvy7/ZzdS5l1TSivUYWyCEmoY6d/siPWEi01mWKyPEvMKNu8TOu0Rc8qPV/XXR+b3NoD
         GdACqiS8HrXMYLw/FiyKNi5oiUDRZxpSE6Qapjkem/ruh+jwFDMdP3JGe5cYZBf2FEXG
         +7+yWQji9PSJkHH0OE00e2dNti8D5PHJZweYBks6xI9lK55SPx21acYJdXgqUATCM/1q
         ua3390BCE7Dk5UkGl5z/m8371CNTza5g97K+oHG/ECRhgluKZB7zA7jVEUynpQNAqCKt
         ASfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LL3/9oMVC9LA/aMoiCvIGPAHyuMV9cP0IX5x13sOmu0=;
        b=ZCV/7/fvgY3nU8WM2WFy2dFh6rezUiQNWQJBFqSEeq7qDCtSU/RQxWEIoblLxRVg/e
         UDIPH2hj1ScdxULJ+IL8ATvpCsLzCNaRNf5Tlcp/7x4dzd9/NVLqM/t57QzQC5IgU9M8
         jLO2QQZqW0luR8352f4BBiyb0V9mXQ2sRD60FVuij8M0XFvqstMg8EjdR1GjdrzDfAi7
         uVYlgxUC3MWHhtEWy0Ocu0olBgeTI3u2sAbMoJ8iJlyqPvvSW07D+A21BEM1F+YOHDH+
         wBMuhvFO6DbCslOe+M0ljmtUxQrmLdA+l2Qfm3Nvm864hcsuS2aFdgDRO10NJNdZVwfT
         B5tg==
X-Gm-Message-State: AHPjjUju7XlEfrceVRceuNkNieYkjDJGHTWp7dKvai9b7vx6zg0DS/5D
	2UQrnpyLeXci5nNLWMo7oVU=
X-Google-Smtp-Source: AOwi7QCpfdAakP/1bZdf2yVnNkrUBnEdXsJCa1GKxhYQzn1XbCuAOAwvqodxeuKNqiyDiZboYWtNQg==
X-Received: by 10.99.109.142 with SMTP id i136mr11358225pgc.353.1506440511391;
        Tue, 26 Sep 2017 08:41:51 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.3.154])
        by smtp.gmail.com with ESMTPSA id m15sm14890370pfh.35.2017.09.26.08.41.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 08:41:50 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 2/2] staging: iio: adc: ad7192: add lock to protect hardware state changes
Date: Tue, 26 Sep 2017 21:11:08 +0530
Message-Id: <1506440468-5081-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, private driver lock is being used to protect hardware
state changes as here state variables are being changed.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 096d29d..609a649 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -511,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
 		ret = -EINVAL;
+		mutex_lock(&st->lock);
 		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
 			if (val2 == st->scale_avail[i][1]) {
 				ret = 0;
@@ -524,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				ad7192_calibrate_all(st);
 				break;
 			}
+		mutex_unlock(&st->lock);
 		break;
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (!val) {
-- 
2.7.4


