X-GM-THRID: 6402897717905850368
X-Received: by 10.129.99.6 with SMTP id x6mr86058ywb.62.1490790800557;
        Wed, 29 Mar 2017 05:33:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.1.7 with SMTP id 7ls3126689itk.11.canary-gmail; Wed, 29 Mar
 2017 05:33:19 -0700 (PDT)
X-Received: by 10.99.126.4 with SMTP id z4mr76257pgc.101.1490790799496;
        Wed, 29 Mar 2017 05:33:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si1039113pfb.5.2017.03.29.05.33.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id r137so1743924pfr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 05:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=IrsdadB4nALpwW931LKPdO9W3SYRP3+/8fmYtK8ohK8=;
        b=ZmB06oYXHsrwn+KmXMba7XMTztzJuyyF0Rs7aTc/nS2OcZmpOmE89kNQDbH6t/+/tR
         QQK26x9arFKX2VVSlIn+gaTmhdBgterlbW+XT+CmHTTOUtys+cXVUNeoOG09f9+RmGDe
         jUgWo/hzRdgJe2D+J0d1pZXUfKFelj+XYN9eR04O1Byw4cpcm+4MfSvQISOb5GpitDS+
         DFgPIJ0mB21uNIQCq+J/p9nOjiOX/S02DzRQr9BQrBnCI07RAbffic6cxGdCm7Hk7eEv
         E89++JaHSaWz/A7trXGVazMW+L8pBMtLl9LwrNUVByHE8rBUxbVst3PW/xYpzEivhGFj
         IDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=IrsdadB4nALpwW931LKPdO9W3SYRP3+/8fmYtK8ohK8=;
        b=khhunb85Yi/qmJ9osDcgz276z6b6RPh868VXo2zxzCR6bNqPVzuafok+rmnkxvufVf
         djEczBy5KIZ4qHbfgx7iNM0iUoMSl3sq9bW+Y9ucVmqIovmOqZF5rMiF1LUfPOJ6VxX2
         ZDeIw4MIAuDmN66moJ8mT2mTA0khluwLi4mLVQ6yqZfpb8mPoqk1tKnHTQV5iTEuTiGh
         MGo5nTmS6ltL5fLXnMNPXfku8hQ/X+30NXWBzlHXISU7z12cpuwgjHcDHUNrjTB02vYC
         9qvVYdjlbEUiwBAFu5APjRtVrsqVVMAj9SkVoLtVJwD5m0QVE4wfOF/d2nhlblaB1nZD
         Sn9g==
X-Gm-Message-State: AFeK/H2P6GSUjZ8eP85VrbHkQBhbVpLKRopaOgH1PgZOKE9az1mUjdW3+S935ilTLsdyEQ==
X-Received: by 10.84.164.106 with SMTP id m39mr318728plg.9.1490790799320;
        Wed, 29 Mar 2017 05:33:19 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v79sm13455146pfi.120.2017.03.29.05.33.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 05:33:18 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] iio: common: st_sensors: Replace ternary operator with min macro
Date: Wed, 29 Mar 2017 18:03:08 +0530
Message-Id: <1490790791-5694-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>

Use macro min() to get the minimum of two values for brevity and
readability.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/common/st_sensors/st_sensors_i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/common/st_sensors/st_sensors_i2c.c b/drivers/iio/common/st_sensors/st_sensors_i2c.c
index c83df4d..7a68fdd 100644
--- a/drivers/iio/common/st_sensors/st_sensors_i2c.c
+++ b/drivers/iio/common/st_sensors/st_sensors_i2c.c
@@ -39,7 +39,7 @@ static int st_sensors_i2c_read_byte(struct st_sensor_transfer_buffer *tb,
 	*res_byte = err & 0xff;
 
 st_accel_i2c_read_byte_error:
-	return err < 0 ? err : 0;
+	return min(err, 0);
 }
 
 static int st_sensors_i2c_read_multiple_byte(
-- 
2.7.4


