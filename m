X-GM-THRID: 6470101655297720320
X-Received: by 10.36.86.194 with SMTP id o185mr2353914itb.0.1506440504161;
        Tue, 26 Sep 2017 08:41:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.6.193 with SMTP id 184ls2926302pfg.0.gmail; Tue, 26 Sep
 2017 08:41:43 -0700 (PDT)
X-Received: by 10.99.109.139 with SMTP id i133mr7122470pgc.89.1506440503138;
        Tue, 26 Sep 2017 08:41:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506440503; cv=none;
        d=google.com; s=arc-20160816;
        b=0t6eFInKxqyCEOxCNK4c1+UDoJfnDZ6EapNITIDbvOhdCWNoZvXYNQ9bOBE2Hfa+Sf
         296eYhnmNQHuAxUTzpJZcnO5Mp6Lu0hHTSZcn1o1e3sKRvJlrSLplKSbT9NxN0navctR
         5RYwc96LXCrDLc5RahVdPLef+u4VYVSADacC5CSVFddfdLMEfKB8s2Gh3kMFY500dxaU
         qjBDy28/O5f8+5q2/oTPBbK7MtLznDjtb6PbKB8AbgZnL3BRTby6l9ggV3G5goU2bz/i
         FFCim1YZl/kYfRjdoqAAfK03yZyh6E2Mb37PlWX9u/4vnHTWwZSCCIw0CR1pOIo+BMjX
         kksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=pUwXie9CIT/XOthT3Ma2zKAfjvodkEgASD7+owdJ9l0=;
        b=zk69KXBL+qnLhG6wfNjdKpvz4/MBkjSGkd59RZHCXciLtu57hfqMABJlh9CBEjGW5X
         oaZ4rArngzTJyB6Z6oJgkyQPq2410mIY1zLKMATdQvGUUOLfn9g5DZrDdLN0LXYynHGH
         R66AipXbgQ5lvdXTic7T3afKqnMgYAIcCWWxHk65fRxaBzODY/cMDC84TB2b27PQ0jFt
         HTQc1iQC3ahiuSK7CLIdybKaDM4zdJZZWnGNrvGHqzLmKXPz7FCDr5FgjFH6sRngGXqE
         zX4rsG37mhywnNkCxNRqsAmSEczk8eqaR3CSJ68aGi9hNczLi3eVHSMnxiCejiBxsz3q
         ap1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSHD9cKC;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t77si673923pfi.13.2017.09.26.08.41.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:41:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSHD9cKC;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so6976951pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 08:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pUwXie9CIT/XOthT3Ma2zKAfjvodkEgASD7+owdJ9l0=;
        b=MSHD9cKCUVtx8Xn0kfjyHqVgVzNgclqQin1RNGrLbxyF/wywU8Gw2iImf1b2Zafzt4
         vJq+RS1hSbDecWHkT8ycABxul89IKBkGlUkvTrEvz6e68XgFZ1a2dVa3yaqPQnCL1hy1
         NbZWi7fNbxqPaD+MZx8k7QryVJRtbsOTEtALP5k0I4/NdzjcAwojwFLyW4XU50rB20h7
         HgYxcds/mx/cxqfd4UzLakI8mP8Dj4Qb6F/tQ0e4Fw+QnwtOPYnfvnJxvEhLtmAyyBR7
         6lwxUsPkY9wFJhc38m76PMXu2ariU5rkWKwm3ySBpRA4ylCWjh5pJaabfHZGAHo9A92h
         G3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pUwXie9CIT/XOthT3Ma2zKAfjvodkEgASD7+owdJ9l0=;
        b=duZfVLCJUUM+M9GZ2e24adOk7VYT1EC0q4ciXzYYQBGZeN1bltpQ5T0/dKfRsvy+0m
         rT7tDpmBSxe4bA76RF9UJfzmF8EofxMm2x1lv8mvr73VE8Z12QmzT9NdAhaC0X+u0Ohl
         ffBCL+VvAmwrkl5fyOAiTdlpvwBVbWJryCrdMMackDY/nntr2CkASVg23WWWclYBLRZK
         kfs6KAj1M5PdfD2MTIb4+PSiw+0ctKEfGGcIRLj7IXJ/r1ifgVF/iJFQFfZ6zo5RPLRc
         xztkaAcMLn+i8fReFVdesseS+FNHH9L3Jzv7HDtSA7jPKob/XB5yVH4oie/qTHgLjejZ
         +ACA==
X-Gm-Message-State: AHPjjUhIj7u2iUKIQo1JTatJV/V80oDWPL7HIAL/GJIDnUFGrQ3vKGn8
	W8todPDHIq4Eb4OmiTKLHIo=
X-Google-Smtp-Source: AOwi7QAxRUR2diQvLKtOi/CuKtFd344gSsPOp8zGLj1V3E50FtZaxcdFaY7seXThtRNXNmYMYdNPIw==
X-Received: by 10.101.91.134 with SMTP id i6mr11331918pgr.428.1506440502818;
        Tue, 26 Sep 2017 08:41:42 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.6.55])
        by smtp.gmail.com with ESMTPSA id 126sm16058626pgd.17.2017.09.26.08.41.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 08:41:42 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 1/2] staging: iio: adc: ad7192: Replace mlock with driver private lock
Date: Tue, 26 Sep 2017 21:11:07 +0530
Message-Id: <1506440468-5081-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index d11c6de..096d29d 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -162,6 +162,7 @@ struct ad7192_state {
 	u32				scale_avail[8][2];
 	u8				gpocon;
 	u8				devid;
+	struct mutex			lock;
 
 	struct ad_sigma_delta		sd;
 };
@@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_SCALE:
 		switch (chan->type) {
 		case IIO_VOLTAGE:
-			mutex_lock(&indio_dev->mlock);
+			mutex_lock(&st->lock);
 			*val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
 			*val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->lock);
 			return IIO_VAL_INT_PLUS_NANO;
 		case IIO_TEMP:
 			*val = 0;
@@ -634,6 +635,8 @@ static int ad7192_probe(struct spi_device *spi)
 
 	st = iio_priv(indio_dev);
 
+	mutex_init(&st->lock);
+
 	st->avdd = devm_regulator_get(&spi->dev, "avdd");
 	if (IS_ERR(st->avdd))
 		return PTR_ERR(st->avdd);
-- 
2.7.4


