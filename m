X-GM-THRID: 6399483181164134400
X-Received: by 10.129.76.210 with SMTP id z201mr13704970ywa.172.1489995788326;
        Mon, 20 Mar 2017 00:43:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls1926150itc.7.canary-gmail; Mon, 20
 Mar 2017 00:43:07 -0700 (PDT)
X-Received: by 10.99.56.80 with SMTP id h16mr4380326pgn.83.1489995787437;
        Mon, 20 Mar 2017 00:43:07 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si2556091pfb.0.2017.03.20.00.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 00:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so9653815pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 00:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/A7YodLc/PSBy3iuF5xAfKDwcsFgQ8OdFyueDsn65Vk=;
        b=N5jnjQxUIVbvXTY8ACnNdyH953wKoUmmQKCW1ZzuWnjcNb0JTunFqUmK5puZdv8E7N
         Yq5nvWJwydPLdPcyTRS3ggdyDWeC2dei9JC2scoVda7w3MGjDeHiv2flkdEwC53FQs9O
         qQKbzgltgEqhd2GigUoMlAnnACC4rWFSN5jPFOGRVzJB8PNlthOlLbxXnV9jr/6Qtjmc
         IHi7rDubbGIVsuriVpZseSoNc9sMkvf9xk53usgjfZ1nFd7Fs9QCwcqeMOSirGJNKOMr
         vd5sbJera5Vfb31phf8Rdr2qS3ElMyMSzjC1KJAhqf6ehj0z/qx3r8K7Q9f/WXQ4pLp1
         iOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/A7YodLc/PSBy3iuF5xAfKDwcsFgQ8OdFyueDsn65Vk=;
        b=NVDxsMJwRX/figFeyPFqIzSHZAqySlKHEt07rXXuWuaL5V8th2wpm2PHsCbX0J7rd1
         vQ8M8pOA6OCN2vg8NXtV3wv6mZkvxNCUW4urLPZyuKeYwUWL8YV+pj5lE/ciFV09eyz0
         NRwsEmy7FVMMTl7G8sRsL3dBbLpP3zbrMTWgMWYtt+BC3UpeSsLZSb2jtLx+B4r+Pxnk
         UL42Ayc9IjJeMDt9wQYZej7bpbjqtBpjUmi4iMbOsBbrhx65LpbA89XSspI2tNX3LDWe
         znT332a7cHFjtYvFO5Kuwu0KmNe1C3fJ9MofN0/GUt7iQVNq5z+nrqGn0i/DG9CJn2g0
         fLoQ==
X-Gm-Message-State: AFeK/H3WolqKmrrO5iNNz+OkO21UU84Kmatym/9zjKnPXK4pba44EndA9JYr/RhooE6tfg==
X-Received: by 10.84.164.225 with SMTP id l30mr13489293plg.30.1489995787229;
        Mon, 20 Mar 2017 00:43:07 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id x10sm31056330pfi.21.2017.03.20.00.43.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 00:43:06 -0700 (PDT)
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
Subject: [PATCH] staging: ade7754: Replace mlock with buf_lock and refactor code
Date: Mon, 20 Mar 2017 13:09:21 +0530
Message-Id: <1489995561-6988-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes. Replace it with buf_lock in the devices global data.

As buf_lock already protects operations in ade7754_write_frequency,
there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
when writing to the register.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 024463a..eb03469 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
 
+	if (reg_address == ADE7754_WAVMODE) {
+		st->tx[0] = ADE7754_WRITE_REG(reg_address);
+		st->tx[1] = val;
+
+		ret = spi_write(st->us, st->tx, 2);
+
+		return ret;
+	}
+
 	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7754_WRITE_REG(reg_address);
 	st->tx[1] = val;
@@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 26000 / val;
 	if (t > 0)
@@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


