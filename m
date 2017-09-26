X-GM-THRID: 6470101655297720320
X-Received: by 10.99.124.30 with SMTP id x30mr7052452pgc.35.1506437946495;
        Tue, 26 Sep 2017 07:59:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.226.147 with SMTP id l141ls1613314ywe.11.gmail; Tue, 26 Sep
 2017 07:59:05 -0700 (PDT)
X-Received: by 10.129.152.83 with SMTP id p80mr6630492ywg.136.1506437945749;
        Tue, 26 Sep 2017 07:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506437945; cv=none;
        d=google.com; s=arc-20160816;
        b=J8OWMZW/M5Jzd6VmR8tWeQWUG2EUrK01Bb5dIvXmL9e2vbwrKwG2n2f36qg0T0tVjH
         nvHaZGk4CWuanYDbRfCSwseDER7B4gN1egw4BRL0zNq2fHlAELVYidsMJlGFJolRPUPD
         aG4no/TE/GG/15noiJ8FgoW4a7yWOjFMLAGgpJGXM7FQnTdbvG9Cen7AUQpB/aIlyuRG
         tUNAOpIy09IRcAstu1WwQlfCWsrVUQ8BQUbGjeLHvW1sLYEY0k39o+9ikDWa+a4lAWjj
         Y95F9otCJMvAgxmbKWQDSGycMkqSQFJOvl8OZ+8qphYKfv9uZoMDof4MUFiZVd3BUvK5
         aD9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=MGRVxhyQZLDAsI3xNgMyn0mbObdQw9uOfytryYaBF0o=;
        b=rgzDzeaOS/dZRsBbDz58D40Dk9+AnBy9/hUBEWN1UblSyS3CYrPyckSnzBWd9BE0rS
         8k6v9j6PZBPVnQFu5R1fK7/7w93r3Chc+Va9K9EZvm/O4ozKO+iG8ZNUaZ+XGgQyaoXY
         vznEUV8m8rEpWvCGMmWymzxuYrFnkYngKyFpsnwm/eaW1uaq+HWF0SeZNytjKhyQPP6d
         9CW15pZGEkABhGBmHU0pZBZ0vqCAFRTQZpaypY+7vjRNdFTGuxcxJ9rYYcOwhUsaEyUX
         xu311GFgIyfzZ2/csSeSAMN7dLEKEOXmlOeOr44DgggrPXKs3eN1aBYcCrjm8R/5A0VR
         zX2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wr9f1Spb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q15si730416pfi.7.2017.09.26.07.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 07:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wr9f1Spb;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m30so6916850pgn.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 07:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MGRVxhyQZLDAsI3xNgMyn0mbObdQw9uOfytryYaBF0o=;
        b=Wr9f1SpbtojvfNtgPYzG17WgH56WYoMsQp1OgEeuBbsV66/12AVWIg2ZL5Nrpqk8c7
         AdNbG7ecyAzSzAaMuB/+8Wz/vAjRrucy+44EeVKZ+U7cxLOIrl/lOS2o+mYlugQ6ye4Z
         kIbGQOLIPJ/OSrQz2MO5+/m6gPszPCSGGS+rpkS70L2tcsvNPx8Je7Ea2v+zeHouWkK1
         YD0XQX09BmBf6m7Nb4vzVERg+DjxjuQb6xoWMuSY+4EE/myJqXQp3ufFDXRzvNpbw1jI
         xh2OMkwXpIqHLiN5XChPfRVvPv2KATyGKBVJRI/ytK+Bo85HczGF/6S889GAwyyf3H/Z
         h3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MGRVxhyQZLDAsI3xNgMyn0mbObdQw9uOfytryYaBF0o=;
        b=h+XCSLvDSzdwfWcZp7ZxW+0cM6uK/5klaw3ruQ+XP+eUQRPL+C4caFI7m+GmGv/+Ka
         igp1tRUwLi+kPKNCNpkuFuS+49mXbc3sPn0EFFRa9bZpELZ/Ty23FZCTlm6PsFLUvdF5
         /Dm+Dz6LcniQKkWYVitujMBe8PeeVcFAfK4Ni+4h3WZ7svpMBubiwFX+vXCJTdqFda63
         0tiySIKm6j8oDCE+FU5A0U66g0swSqWy/Y5+/Y3ORKO5QiGZvEXSBBe/d7GZvQoXi2+0
         jNv/6Sl53TqcWYUUyuitaPJdL8PC5U3dCTZ9lUBezHWyoAG/7ryXV2gc18Rn16vOkrxg
         6xRQ==
X-Gm-Message-State: AHPjjUj4rfWnKrs+IuYddBvGJEjgpOHT2wKgbXw75Fgi1usG70s/GTLP
	3vChrEr9COz4vX77Cj3b/Ss=
X-Google-Smtp-Source: AOwi7QBRMSheZmMqv722PVEkd8eUuiDnM4Jvl+Z9pZYnYtOgQ0STyXybxODthLce9TSUd64byOn1eQ==
X-Received: by 10.84.129.226 with SMTP id b89mr10695719plb.6.1506437945414;
        Tue, 26 Sep 2017 07:59:05 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.6.55])
        by smtp.gmail.com with ESMTPSA id q67sm18356740pfg.160.2017.09.26.07.59.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 07:59:04 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 1/2] staging: iio: adc: ad7192: Replace mlock with driver private lock
Date: Tue, 26 Sep 2017 20:28:36 +0530
Message-Id: <1506437917-7219-2-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com>

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


