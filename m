X-GM-THRID: 6401339211777048576
X-Received: by 10.107.155.213 with SMTP id d204mr3784816ioe.56.1490427928082;
        Sat, 25 Mar 2017 00:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.168 with SMTP id e37ls3516948otb.3.gmail; Sat, 25 Mar
 2017 00:45:27 -0700 (PDT)
X-Received: by 10.157.54.9 with SMTP id w9mr3983803otb.122.1490427927443;
        Sat, 25 Mar 2017 00:45:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s67si887796pfs.4.2017.03.25.00.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 00:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so1744507pfr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 00:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/yog4XPTdu/k+w3z9F7tnJ4L8A9NXiNu2IoWzmGaaAM=;
        b=jBGWK2etdIEcCvuX4z/QlnnUA9LJtZydOweffNdqVDPuD+EtHTMPOiH4egETB714qY
         E9yL+3R9ky8dTzyjf8pjHOQ+8wPvklOtVfb30Uz2Fl4CGORsdlQcrJBn+0tcKIE0S4+w
         Z2z4Cg7TZjjOFe/wwskcZ2hsUdnTr/5IO2J9aFS6woEVRuM/fMEwAUMOt1AzCr1eMb7I
         D5aUe3AHpIGZWRjv30J5AaihrDnSsZRsc7kKOAASjOKR0VjJgDzBAYYAN3bRbccAzOrT
         U/FOTewsf53dcg20KeRr77HWOi/SUbJvC1D1RnQv3Z+7G6VbS/MieUD5WX/2qtlsYDsC
         A0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/yog4XPTdu/k+w3z9F7tnJ4L8A9NXiNu2IoWzmGaaAM=;
        b=TkE/geVzLQlNnZ0RAVo1TMiGqzvttejt+2zf37F/fqULktxoBW5Ij4jL5k1i/uhd1R
         HxYyxZQUpeeE61w4kRJjSYzbuszM1kPBV3FFDVcAyliqueam125bVH1Fl2vR7B0wiQgs
         UJYpBahNbTXNU73qlDGc0x3vCPOOXYHDifVrfkS7q9F5Z7c6iMJniKm16JaIz5wLON6B
         3AVSjQnuv8CL8+DmyV5YXcNSikrXRflVd0a/ihMxpUmzt4JuHkRgkcIibG+zlxL8sP8B
         beFr+5dhDXrVagvLC78EGJLCXK/RZrXUJmCxlzbDjh66YRmSdzboRmTiKAG3q8csFbTG
         2F7w==
X-Gm-Message-State: AFeK/H3YlsJRYM48gHQc5ipRDOPEICpikXxQokPtxa1odKtUc2xg7XuEbXLOGkTdboU6Ew==
X-Received: by 10.84.217.142 with SMTP id p14mr10462487pli.164.1490427927040;
        Sat, 25 Mar 2017 00:45:27 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.78])
        by smtp.googlemail.com with ESMTPSA id x65sm8600009pfb.111.2017.03.25.00.45.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 00:45:26 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com,
	arushisinghal19971997@gmail.com,
	singhalsimran0@gmail.com,
	karniksayli1995@gmail.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] Proposal for meter ade* patches
Date: Sat, 25 Mar 2017 13:15:00 +0530
Message-Id: <1490427900-21479-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The driver needs to insure atomicity during frequency
changes of bus and device. The iiodev->mlock as used
was not doing that. Replace it with the drivers existing
buffer lock and execute spi_write directly.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index c8d2d4c..48339e9a 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -513,7 +513,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 26000 / val;
 	if (t > 0)
@@ -531,10 +531,13 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	reg &= ~(3 << 3);
 	reg |= t << 3;
 
-	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
+	st->tx[0] = ADE7754_WRITE_REG(ADE7754_WAVMODE);
+	st->tx[1] = reg;
+
+	ret = spi_write(st->us, st->tx, 2);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


