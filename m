X-GM-THRID: 6401527449864110080
X-Received: by 10.99.97.85 with SMTP id v82mr4953043pgb.11.1490471756579;
        Sat, 25 Mar 2017 12:55:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls4908997ott.28.gmail; Sat, 25 Mar
 2017 12:55:56 -0700 (PDT)
X-Received: by 10.31.13.193 with SMTP id 184mr3804680vkn.20.1490471756145;
        Sat, 25 Mar 2017 12:55:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s67si1052081pfs.4.2017.03.25.12.55.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 12:55:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so3861088pgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 12:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eBH8ets/ZAt69uZ4pKFVDVY48AoeKTF+9bIh6+hoesM=;
        b=ijiYXAMdVUv36XTW0UX+f9OSo2VHIUiU6huXkQjgjPt7rNwlcJSog6d6vs4kofnaL0
         uJQbOs+n4rPtbtsUi0/NM66ss4TFRoLFbv/+mmPusQn1tHRD/ZO33LDOBYWGTCyq8EV7
         +5/0ZvsDmzweCIIrGY74c/VIGdggkdZs8/Nn441nZAYS+bGGng5kP0dXnwlVpHQRkexn
         uuE/Ew4OglaC+1jhebjFv52Jx8gd2qPrw0pGtsuS9giAscop4j0Yzu5pVVJc+zwyFdlX
         zSoDGSTuPoIpEvvPz+uIjjOrt6SRXiGjlQ6ioeWhciTHoQR99tYS4OhUZeqTjbVH3FEp
         AvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eBH8ets/ZAt69uZ4pKFVDVY48AoeKTF+9bIh6+hoesM=;
        b=De/tV2Gt3auEOcibdX20iULh24BbiNVkf33eCscvcL7zlPUMJXYubI7iL/P+YIgEXF
         wAK86E5nn8GihyZntkHqCGNPADSJfKO7L2VB0U3NzDS3YlrPzUURBXsFzA8TELr5w0+J
         93neohMPL8EJ9XxnK5EH58PBNlQHIp3QUAtnGSoqfxKHLqK5NTWrAzynu29NGkvSc4AA
         bTgQUHv1gfNAETatKR95XZ+8RAAMimWOaobhKmPS9vE2RfQeiuGKzinp6Rqvt87df0+q
         92VsPSPQDIwZpo0nQOKisLiBbKBUVLq9NJBFNArwBAQVx404YDuRZZAPmjOqfUkFXyUS
         z2XA==
X-Gm-Message-State: AFeK/H2OJ59HpcMP8tUjzK8TJ0unNgIz9ukz8u4FaRB+BWbKj2CezE97ma1OSYbGTetjDg==
X-Received: by 10.99.145.194 with SMTP id l185mr15901992pge.187.1490471755876;
        Sat, 25 Mar 2017 12:55:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([106.222.74.93])
        by smtp.googlemail.com with ESMTPSA id 23sm12096465pfw.94.2017.03.25.12.55.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 12:55:55 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [RFC] staging: iio: update locking method during frequency writes
Date: Sun, 26 Mar 2017 01:25:17 +0530
Message-Id: <1490471717-1413-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The driver needs to insure atomicity during frequency
changes of bus and device. The iiodev->mlock as used
was not doing that. Replace it with the drivers existing
buffer lock and execute spi_write directly.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
ade7754_set_irq() has a similar read then write without any locking
mechanism in place. Do we want to introduce something similar there?
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


