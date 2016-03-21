X-GM-THRID: 6264514475504697344
X-Received: by 10.140.40.239 with SMTP id x102mr23425261qgx.23.1458571551322;
        Mon, 21 Mar 2016 07:45:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.97 with SMTP id e1ls940460igl.29.gmail; Mon, 21 Mar 2016
 07:45:50 -0700 (PDT)
X-Received: by 10.98.73.92 with SMTP id w89mr12079898pfa.11.1458571550170;
        Mon, 21 Mar 2016 07:45:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si3444488pfb.1.2016.03.21.07.45.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 07:45:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id u190so30355250pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 07:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ErZvTeMq8+NFZmnOh3bm6UD3yDZZwJVxtcSgluevn50=;
        b=gBO85fIv8m3KgOvp6EKtaM+BkvJej6dSvfuO+Keom4h3rA9IrY2ymDDd+DyAszmfkq
         Rqi1tAr7smDkCtggNHKgFyGypaP0mQw0cE0wIzdta8TlbuZXhp+ywFnrNqa3HWAoqE6j
         /sI4SAWoqepTIQNV2gjOmzSN2vl8yd96o7xxz7IM0YEMTLjhWHxC4RmyZZfi7yQvjY++
         25TOlErS83UfxQMUSkkaIHejQyNOztcSDbOdlpxgwWLNPa7ohmTaDPfmx4PwyxnH0nTA
         23jmxWqlyN7z+K9EUZZvc3v4PrRrxYKFCMBYvQXGj4oBEGE5V0+zTrXbdzJA4+rckQMH
         zpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ErZvTeMq8+NFZmnOh3bm6UD3yDZZwJVxtcSgluevn50=;
        b=XLbVcRHNoQH4Bjbse1PULsDgLmOryex9ZsZMs4VoFokJUI1zvkfbMBjtUtZROHQOiV
         LR9BpF26rrg9zNZZbAjWiejFreb9dRFiA9zAjRq2XV9qGUTquCzvg+9/vM77Ss/2Axe5
         wkXgnma0ChuLtgdGTtsYvpj3aHW5SyB9X1JrHMihaGvtxaUt5PEmbAnGf08QiUctn7X1
         J6lz9nl8u7bUH6HENy0FC26NpLqvzZ4RYY/rW7Rhestix8oyTezbahFIObVq7yuAKwz5
         4YIG+STm+q0ZJT2nkNZp3UyWo7o34LbFALkDEnDFGahpovXMvoq9i9zggdTImqdFj1Ez
         33QQ==
X-Gm-Message-State: AD7BkJKl3y2Q4ReZiH43X4qtL+lyt1y1OaMbNEUP3mLXM19ZWgDDGcTnRxZ5FBDld6Mk3g==
X-Received: by 10.98.75.214 with SMTP id d83mr45503517pfj.22.1458571550008;
        Mon, 21 Mar 2016 07:45:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.219])
        by smtp.gmail.com with ESMTPSA id d19sm41274176pfj.92.2016.03.21.07.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 07:45:48 -0700 (PDT)
Date: Mon, 21 Mar 2016 13:17:01 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: iio: ade7758: Fix open parentheses alignment
 issues.
Message-ID: <5599f8c8bf2c00784be0900903bf1fb37b93d098.1458545206.git.bankarsandhya512@gmail.com>
References: <cover.1458545206.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458545206.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Fix open parentheses alignment issues.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758.h | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758.h b/drivers/staging/iio/meter/ade7758.h
index ff7c764..1d04ec9 100644
--- a/drivers/staging/iio/meter/ade7758.h
+++ b/drivers/staging/iio/meter/ade7758.h
@@ -139,19 +139,15 @@ void ade7758_remove_trigger(struct iio_dev *indio_dev);
 int ade7758_probe_trigger(struct iio_dev *indio_dev);
 
 ssize_t ade7758_read_data_from_ring(struct device *dev,
-		struct device_attribute *attr,
-		char *buf);
-
+				    struct device_attribute *attr, char *buf);
 
 int ade7758_configure_ring(struct iio_dev *indio_dev);
 void ade7758_unconfigure_ring(struct iio_dev *indio_dev);
 
 int ade7758_set_irq(struct device *dev, bool enable);
 
-int ade7758_spi_write_reg_8(struct device *dev,
-		u8 reg_address, u8 val);
-int ade7758_spi_read_reg_8(struct device *dev,
-		u8 reg_address, u8 *val);
+int ade7758_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val);
+int ade7758_spi_read_reg_8(struct device *dev, u8 reg_address, u8 *val);
 
 #else /* CONFIG_IIO_BUFFER */
 
-- 
1.8.3.4


