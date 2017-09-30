X-GM-THRID: 6471664999226933248
X-Received: by 10.101.85.4 with SMTP id f4mr1030042pgr.176.1506801927773;
        Sat, 30 Sep 2017 13:05:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls2971308plk.12.gmail; Sat, 30 Sep
 2017 13:05:26 -0700 (PDT)
X-Received: by 10.99.182.79 with SMTP id v15mr345941pgt.163.1506801926822;
        Sat, 30 Sep 2017 13:05:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506801926; cv=none;
        d=google.com; s=arc-20160816;
        b=KRPM2ilj8PMLcmigyEaSXxL8A25jinUbEJVEtaThKFzWzk+S2JlNRh1VjTqnRHKcSP
         N6xLOHO8zWgA7YI5BSb1emeFpo5iLIst0lBOqflqMKvl/d4kuXQ0+7Z0GSre6xCXwUVs
         gX07rYOWQqGjyuN6GzONwH1uTwhGT3dFexUc+C5ZX96YC1wmX+p1RiKJIiLrS3rHNOVP
         WDB31axe0OHIRHhyhnYNTngga9JSnJoDXuRCrV/jvXjBvGowIjr5oy0XbzyDTVPKstnj
         /8nOl04TBdjcqjmY/eyGwt8VvFDLwzvt3yxrXV1eKcgPnj2gjik7hwM+aYuxMJaxdqPD
         CEqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=/Mf9i1jtM1sT6+9NWVaMzH1zejM/Udh29EjnLrAYZJk=;
        b=0tBcmbSfZ1DXfwhXERIk6AhkFXYf+NAUkfl8DzFJSkVGGyqKw/514sOz+G9i/ndmA9
         pkV36tXs9oedYxTFEd6s/i/n9zOU5iPjiZvcdpceb5+AqrmHXPEs7UYx7x6rNp5+TivD
         eggD1Gx2NOWeN1dXhH13u4Mc8/0oE7CosR+yWKEPCwavoiva+mJ8dN4MjFLQeoI1XwfH
         tcoxTb2avm0RPcARAvv+WuUzVQAkKp0+29SIYdvswdQuy+hnFzzYJwLzPPDdthINGYos
         +VHy9/+mjCMd5irFrVX0ATynrcKpEN3h9M5Adgd2GZfwPKj2hffbpNOUfTyn2X+Hc7Ll
         ozkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hzZPkrWg;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b6si780705pfm.28.2017.09.30.13.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 13:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hzZPkrWg;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so1896091pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 13:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/Mf9i1jtM1sT6+9NWVaMzH1zejM/Udh29EjnLrAYZJk=;
        b=hzZPkrWgf+1NTz7wzmYTAne0Z8VH4nq/3r1YB6AIxC8syXCzRQl5Mo3HbDFN4zk659
         wnbqLuyAXKD4BB6hes+OlKEv1ozcbt2ivXnkBVfYeqVKSpjpxj1jlB9lGIlu+0CrCrM4
         3GSliP2EAn1B6Ns4Ap5jPputkA+3bt1JFWTIh8SXFxVzuI2gy6Lyg2/WUQlIRrHTZ13N
         qKjFsecInvOVUlBbvKjGAYQ2GsqzELQ7cptJbxe6xL4w3l4AMzRbvcWhKHXZY4EqiKV2
         qqhb1M0n4KsE2O6bAl8Lw1q8a0r3gK5p/DBIrTXYa5L6Dd52qe3LesGFUykrk2qV+isl
         PhTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/Mf9i1jtM1sT6+9NWVaMzH1zejM/Udh29EjnLrAYZJk=;
        b=RVY62y3OQPNildL2VdrflUjzbU9N82DEzIO3OuWokxBrifWGoFqXxwI4grgs14OjE/
         6TViT6JcIpbxurXQ+2Domi/EHAoSsnZzhS6gBUFVV0TQ6SgJjvIoZsiEJGn7+SOe2r6B
         OiQGH1mvtTebi8OIPklZjavKSJIlSAgScq8hShjffhSUXbuF/brb3LYcY0arE1xNU56d
         /BSagAZYyJlw6lQKJJJHueA4QULmbwcjHEWHS3J1mNIKh44ZryVCh2I5+Wqom2Z6BzTx
         5unc2Y3ar/+3IbIGnWlKJhUdqATI6rmM48Irq/U7TI7CaNtuLEGaP8plaZgknK4R2xIk
         bgaQ==
X-Gm-Message-State: AHPjjUiq4mzQyCqPoQmsBtwTQeL0hw8kLutgxT5XP9uYGYKhr8+MVmQP
	ajne1e6WAdG7pZZ2rAeG2MuvZBS9
X-Google-Smtp-Source: AOwi7QCyt9CDEAU2LsKfHmjGa1k+jU0gxMEHJzj/0JP5tfk96kAzYWz+eTNXJ3koE3I8agljewAFSg==
X-Received: by 10.98.15.13 with SMTP id x13mr11045757pfi.249.1506801926157;
        Sat, 30 Sep 2017 13:05:26 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([106.201.8.116])
        by smtp.gmail.com with ESMTPSA id w27sm1117145pfi.18.2017.09.30.13.05.24
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 13:05:25 -0700 (PDT)
Date: Sun, 1 Oct 2017 01:35:21 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	lars@metafoo.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
	daniel.baluta@gmail.com, amsfield22@gmail.com,
	Michael.Hennerich@analog.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: iio: ade7753: expanding buffer lock to cover both
 buffer and state protection
Message-ID: <20170930200521.GA19705@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Dropping the extra lock (used for protecting the write frequency) by
expanding the buffer lock to cover both buffer and state protection.

Doing this by introducing a new function (__ade7753_spi_write_reg_16)
making buffer changes without locking the state, to avoid nested locks
while making device frequency changes.

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 drivers/staging/iio/meter/ade7753.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index b704b24..c44eb57 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -80,13 +80,11 @@
  * @us:         actual spi_device
  * @tx:         transmit buffer
  * @rx:         receive buffer
- * @buf_lock:       mutex to protect tx and rx
- * @lock:	protect sensor data
+ * @buf_lock:       mutex to protect tx, rx and write frequency
  **/
 struct ade7753_state {
 	struct spi_device   *us;
 	struct mutex        buf_lock;
-	struct mutex	    lock; /* protect sensor data */
 	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
 	u8          rx[ADE7753_MAX_RX];
 };
@@ -109,6 +107,19 @@ static int ade7753_spi_write_reg_8(struct device *dev,
 	return ret;
 }
 
+static int __ade7753_spi_write_reg_16(struct device *dev, u8 reg_address,
+				      u16 value)
+{
+	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
+	struct ade7753_state *st = iio_priv(indio_dev);
+
+	st->tx[0] = ADE7753_WRITE_REG(reg_address);
+	st->tx[1] = (value >> 8) & 0xFF;
+	st->tx[2] = value & 0xFF;
+
+	return spi_write(st->us, st->tx, 3);
+}
+
 static int ade7753_spi_write_reg_16(struct device *dev, u8 reg_address,
 				    u16 value)
 {
@@ -117,10 +128,7 @@ static int ade7753_spi_write_reg_16(struct device *dev, u8 reg_address,
 	struct ade7753_state *st = iio_priv(indio_dev);
 
 	mutex_lock(&st->buf_lock);
-	st->tx[0] = ADE7753_WRITE_REG(reg_address);
-	st->tx[1] = (value >> 8) & 0xFF;
-	st->tx[2] = value & 0xFF;
-	ret = spi_write(st->us, st->tx, 3);
+	ret = __ade7753_spi_write_reg_16(dev, reg_address, value);
 	mutex_unlock(&st->buf_lock);
 
 	return ret;
@@ -485,7 +493,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&st->lock);
+	mutex_lock(&st->buf_lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -503,10 +511,10 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	reg &= ~(3 << 11);
 	reg |= t << 11;
 
-	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
+	ret = __ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
 
 out:
-	mutex_unlock(&st->lock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
@@ -581,7 +589,6 @@ static int ade7753_probe(struct spi_device *spi)
 	st = iio_priv(indio_dev);
 	st->us = spi;
 	mutex_init(&st->buf_lock);
-	mutex_init(&st->lock);
 
 	indio_dev->name = spi->dev.driver->name;
 	indio_dev->dev.parent = &spi->dev;
-- 
1.9.1


