X-GM-THRID: 6396598979256123392
X-Received: by 10.129.160.83 with SMTP id x80mr1465138ywg.90.1489428559621;
        Mon, 13 Mar 2017 11:09:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls15463641otb.2.gmail; Mon, 13 Mar
 2017 11:09:19 -0700 (PDT)
X-Received: by 10.237.33.236 with SMTP id m41mr5356512qtc.15.1489428559294;
        Mon, 13 Mar 2017 11:09:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si3209595pfb.7.2017.03.13.11.09.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 11:09:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so14345929pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 11:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uJ3SPU15ppFT5PYH2xmORfutWkkn/L/YuUICUnzG/TE=;
        b=YDnz1BgIT2xPAGpuUEQdc0kaSG/Ew4X80j/ZMRzQAYvdfiCtHlFqoRxS4X867da2we
         yl/T0fPzLJm5/8IBySP+Vwe8Hk7TiWmgXcbAgYc5xED+0BXCtIIN7bvml/eCa8R+IAt2
         Vn8sklRdtWuQD2RLx7JWEp+zrDmjz44eMw8YLqgRbCvIPpFkAzEI7Uq5UaYyxxHG0nPN
         Vpc52oRZjBpnZZLZVS6vq/c2UxO457SHYYBug4EAIUW2O8RdFPE4OhDNub+J4nuwLWbj
         IRA73cChPkxEn4zKXPP5rYotG6BHgN4AC7SWXHzpCWcqlyqqliTf7eesmxsVnIP+QFu5
         VS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uJ3SPU15ppFT5PYH2xmORfutWkkn/L/YuUICUnzG/TE=;
        b=mCvdxvH1n9J2qKmVzBh9sp38dYls8r3/s8aY7DJWQ6iy2b/4IgPbSOhEtGNOcv0oLJ
         sL66PSQL/fZa0wqfX/9MvJAJ8k6Mzw29vsjV3f5nXZJOgbS8ukmyxP4r1rC1rrC5PY+L
         TNn2/cHcx2re20xM7M7LAzCBxJBS5T4lo9EO0tLpJWlljq8nTGsXHS3fFpOiMILf2OWd
         p9IjDWkNJoFpDTctWbp2ufRKEKwl+e0/shAotAKFRCk3pSDq4apoP1SakZL6Pdj5sFS7
         ukG0WGNKRDAZBF9UxAFGcUrWG8XFpDCjWKlaVHiLzbRBI/svX6E011B//eQqINOsZX8e
         2fSA==
X-Gm-Message-State: AMke39lMr08sHyRnK3/qpEAXkkF4ArMf9xsnJE2JWPM6bgHY9BOL3ceHUhXbcZAmkHu6Iw==
X-Received: by 10.98.87.216 with SMTP id i85mr38618362pfj.151.1489428559035;
        Mon, 13 Mar 2017 11:09:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e16sm24122575pfb.102.2017.03.13.11.09.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 11:09:18 -0700 (PDT)
Date: Mon, 13 Mar 2017 23:41:30 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: adis16060_core: Use private driver lock instead
 of mlock
Message-ID: <20170313181130.GA27111@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v3:
   -Removed new lock to reuse the existing lock

 drivers/staging/iio/gyro/adis16060_core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index c9d46e7..602ec53 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -83,11 +83,12 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 {
 	u16 tval = 0;
 	int ret;
+	struct adis16060_state *st = iio_priv(indio_dev);
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW:
 		/* Take the iio_dev status lock */
-		mutex_lock(&indio_dev->mlock);
+		mutex_lock(&st->buf_lock);
 		ret = adis16060_spi_write(indio_dev, chan->address);
 		if (ret < 0)
 			goto out_unlock;
@@ -96,7 +97,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 		if (ret < 0)
 			goto out_unlock;
 
-		mutex_unlock(&indio_dev->mlock);
+		mutex_unlock(&st->buf_lock);
 		*val = tval;
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_OFFSET:
@@ -112,7 +113,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 	return -EINVAL;
 
 out_unlock:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 	return ret;
 }
 
-- 
2.7.4


