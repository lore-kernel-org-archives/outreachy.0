X-GM-THRID: 6399496110666153984
X-Received: by 10.107.192.5 with SMTP id q5mr1817272iof.102.1489998798507;
        Mon, 20 Mar 2017 01:33:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1912218ith.16.canary-gmail; Mon,
 20 Mar 2017 01:33:17 -0700 (PDT)
X-Received: by 10.99.160.103 with SMTP id u39mr10493887pgn.14.1489998797732;
        Mon, 20 Mar 2017 01:33:17 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y203si2571729pfb.0.2017.03.20.01.33.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 01:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so10462473pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 01:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1eKvGLk4IDxH0y+MrezDVuuh/ie2UK+f0s0GdzlWmE4=;
        b=SmAY+lk0+0FSy89Civch7KL321p2wkCaibWL+Wey/QQn34BUxKZcxEfkicVujIhldc
         GYIO2GlDklTIQWURFSvrGOJkiNGrCzKl/kihLwTKCtPKnSQ2eGsw7eiCaxAdfLkZt4MY
         pdLJ//vY5OUijNd3nQ6ihPyWO2e9t7nIvFpKePtuxAmoIWnBYntdfrN/ghEvjPw+YAFf
         w8hKozMPriUB68Ky/Oc/c/GUt0mvYLeRj1X6RaqhEP+kp2OPqeTBfkrbRazinbwlrOn3
         iBX94cq1VzWgJPym/6uYEbsadYafHcEOL2y/4lOBepTCdaYQvKwauZcVNXF4hLyVE59J
         woWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1eKvGLk4IDxH0y+MrezDVuuh/ie2UK+f0s0GdzlWmE4=;
        b=m7kiDk2DhmBBOehHeP8ZYLkdX5V+jMV3px8pz5exjySAl3GYKuD69rob0ac06WTtOu
         BQ22389i98xIRwI8qLsIo7XZkS1AXA9mxI6+JZvPCgP1rM9FW4dFWgwqoAfkKb4Y2pbH
         pAvyCcxJWcQwsxyZQb2bETCwHz/OUYT67rBl/I4FAWwKht0sVkXbTG5vivWccleV/QqJ
         3VfTAcPWHz3xaXq0221LWpCTu2HPQ0AN/NlcyiYBs5HJgthRnMCHqu9/qg8x+92YuUP+
         R/0+eW6e70D/9kNeZWRK5aSuNJiSg2DoSIqAT13Ap3lmdKAJgjpVh88JwZyqHdXwjD6a
         xV0g==
X-Gm-Message-State: AFeK/H0pMdDR/NkxZ7wZwOT+aTxIjCNJRst82CYjq6xnNiLnjTc10avJpydePO/9YJZS8w==
X-Received: by 10.84.134.36 with SMTP id 33mr38131542plg.34.1489998797519;
        Mon, 20 Mar 2017 01:33:17 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r67sm31427748pfb.125.2017.03.20.01.33.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 01:33:17 -0700 (PDT)
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
Subject: [PATCH] staging: adis16203: Remove locking on raw reads of IIO_CHAN_INFO_CALIBBIAS
Date: Mon, 20 Mar 2017 14:00:42 +0530
Message-Id: <1489998642-13796-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

adis16203_read_raw does not need lock for IIO_CHAN_INFO_CALIBBIAS
since adis_read_reg_16 is already atomic and nothing else needs to be
protected.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/accel/adis16203.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index 68189ad..14fe2d3 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -203,17 +203,14 @@ static int adis16203_read_raw(struct iio_dev *indio_dev,
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_CALIBBIAS:
 		bits = 14;
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16203_addresses[chan->scan_index];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	default:
 		return -EINVAL;
-- 
2.7.4


