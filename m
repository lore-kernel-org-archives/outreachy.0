X-GM-THRID: 6397771412658978816
X-Received: by 10.46.80.82 with SMTP id v18mr674229ljd.27.1489597235614;
        Wed, 15 Mar 2017 10:00:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.201 with SMTP id q192ls82913lfe.35.gmail; Wed, 15 Mar
 2017 10:00:34 -0700 (PDT)
X-Received: by 10.25.190.65 with SMTP id o62mr629431lff.16.1489597234447;
        Wed, 15 Mar 2017 10:00:34 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id b186si417625wme.1.2017.03.15.10.00.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 10:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id z63so5668335wmg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 10:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=spNWVRfNhgx5e0c3rU3q/ojg+ez53YvpRalFDkLYAbY=;
        b=uNf8LLzhQ7z8nfBkkCCpi1TV2BfWWgw7cwpZCHkKsuLfQgRY+kNfWeGCt/UtDZsMit
         0p+zxTdO1W9lDv1l3+PJajZ4pj2sW52FBTfoErFo9ql1Jjkzz5wyq1YbBrk12+2wlC6q
         8hh6bD2amaE4uCTMAmZlRBDsR+eGjsC4QUQ9Jdsyjwsk/pYhZ+XompatQ510S39/cYkA
         3ywIDVl+36hQ/CkVgZQSx9NAcDUOfRWfYip+k4XXMIA+MBQaLQ/GOEQPU4FjDCZCE7xC
         3uDGKOc7m2xheZcrvwo9CAXWHZJ5PZTnH5RMMMvRAAQ0qRRpZyjWFz6yYmGD+8ze2u8v
         mxbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=spNWVRfNhgx5e0c3rU3q/ojg+ez53YvpRalFDkLYAbY=;
        b=TL9+l5LFOM5itdizVm2Y+S3h+HA4uy9bgbwYHGGGTksNZZ2IyZnUNA7JNYGMUFnLjc
         rD3WZRLCn+lJZR8NNBImxLA22dF8cDOF+iPy+ICR9QQ8ja3bAvdCJl16+d0Mc5lY+xeo
         VVt84jUSi7jwCjwBrVN0oW2tO3g4wKXk5UxH+/BsfkIOExL2NWbcAAGaNpYBVKDHpZtv
         G5RgZ+tTyb07EnNWMaBPV934W9D2tUENK5mvWgGWwVPwy/pI/7EuKOgETRXBTTQSm3fi
         mNyBZi1NG2w3n07Dc06ESrAOacw8ybuIGzzAQz89QtlQNwtSQFfM0BPpn0urk29gNH1i
         8+PQ==
X-Gm-Message-State: AFeK/H1OHvohIAARb9DZ8bT9ZNyenfb5v2qbPAqG1G9xerby00dgD3okCNKUA+Pdnk2ikw==
X-Received: by 10.28.105.92 with SMTP id e89mr5012901wmc.93.1489597234205;
        Wed, 15 Mar 2017 10:00:34 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id h65sm1435832wrh.32.2017.03.15.10.00.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 10:00:33 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	linux-iio@vger.kernel.org,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH] staging: iio: adis16209: Remove mutex_lock() and mutex_unlock() calls
Date: Wed, 15 Mar 2017 19:00:14 +0200
Message-Id: <1489597214-24564-1-git-send-email-narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

The function adis16209_read_raw() is safe to be run in parallel.
The call to adis_read_reg_16() is safe since adis_read_reg() uses the
txrx_lock from struct adis to protect simultaneous changes.

Remove mutex.h inclusion since it is no longer needed.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/accel/adis16209.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16209.c b/drivers/staging/iio/accel/adis16209.c
index 8ff537f..f8c1fb0 100644
--- a/drivers/staging/iio/accel/adis16209.c
+++ b/drivers/staging/iio/accel/adis16209.c
@@ -7,7 +7,6 @@
  */
 
 #include <linux/delay.h>
-#include <linux/mutex.h>
 #include <linux/device.h>
 #include <linux/kernel.h>
 #include <linux/spi/spi.h>
@@ -252,17 +251,14 @@ static int adis16209_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16209_addresses[chan->scan_index][0];
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
 	}
 	return -EINVAL;
-- 
1.9.1


