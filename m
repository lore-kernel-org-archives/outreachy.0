X-GM-THRID: 6396079372840730624
X-Received: by 10.99.222.21 with SMTP id f21mr12599721pgg.23.1489242432897;
        Sat, 11 Mar 2017 06:27:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls11724223otd.37.gmail; Sat, 11 Mar
 2017 06:27:12 -0800 (PST)
X-Received: by 10.13.220.195 with SMTP id f186mr10239657ywe.121.1489242432568;
        Sat, 11 Mar 2017 06:27:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c123si2251301pfa.4.2017.03.11.06.27.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:27:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so13923725pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zBRfPKt2hybCmsD3BoatSx2KZUQ5LGxLm7A+HRMCIZE=;
        b=cVolK5WS0J8ievZvbBnJaaYSQ7wRtfCv+oXep53gXnCARV9Bl/RsaBqXKR/SWMPS8h
         1CEmcRx+1FKz55D9rSlO74UmStt9JXWYSpUWSZ920lSEE5ndz2xDT+hJYQ2b8rRMNcAb
         jx32J9nskqZec9J991O+uFLkQ/1bSd2olvYokW24T+sYFNihs5BVg3n1EDbaxizXod0F
         CWaP/lYMPIUK27kDTdzqCBg9VsEK4rhW2M5aA8LwjmJWrCcXcJs7JJG22VzKfbHY7rFa
         Jei+SyZ2tJJStg6paBUw0Kk+ucTBO5vmtXHVz1UCLSkgYt3k3k+sLH93SeCgZAm1GcPD
         P2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zBRfPKt2hybCmsD3BoatSx2KZUQ5LGxLm7A+HRMCIZE=;
        b=o95318zFv95YWPR90xz2HxgSEKA32MHsCOrjbLyryw7vZBqUpak3FsHkAKySwyRsjs
         te5kLjRD3OAdmn34SSP2ydOPbJjesp4id79SL5axo4vYv2xOj43LOx7HpZSzjYigeLE/
         XXO+CARKKU3rePD7s1yg5aYM0IpQDIKK8TMXD9gdHO5vQw6L5bpAFaBXGIQHS+vWfFmM
         Xzh6dPy0blETJNGeltk3J/fct6E10izGLpQ/MXnLYJGyBxRBPxSBLgiN2XuKx1dt1pzR
         FoudPkEWvgarsym4v1hz7Ml4XGb7TayHT62emLzvOhAwhqblghfSCALvS8I3lZoyVvbi
         ZiDQ==
X-Gm-Message-State: AMke39ltPhGqpExU/kVtpWY/h9A+9BJ3UGfS1CFKLk7tlfqRXkc2YLvdpMyeKi8Y5GVQ8g==
X-Received: by 10.84.128.74 with SMTP id 68mr34029435pla.111.1489242432351;
        Sat, 11 Mar 2017 06:27:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s81sm12439554pgs.18.2017.03.11.06.27.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:27:11 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 06/10] staging: iio: adis16201: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:40 +0530
Message-Id: <1489242404-12352-7-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>
References: <1489242404-12352-1-git-send-email-singhalsimran0@gmail.com>

Remove & from function pointers to conform to the style found elsewhere
in the file.  Done using the following semantic patch

// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/accel/adis16201.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
index d6c8658..7565268 100644
--- a/drivers/staging/iio/accel/adis16201.c
+++ b/drivers/staging/iio/accel/adis16201.c
@@ -285,8 +285,8 @@ static const struct iio_chan_spec adis16201_channels[] = {
 };
 
 static const struct iio_info adis16201_info = {
-	.read_raw = &adis16201_read_raw,
-	.write_raw = &adis16201_write_raw,
+	.read_raw = adis16201_read_raw,
+	.write_raw = adis16201_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


