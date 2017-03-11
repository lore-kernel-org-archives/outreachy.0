X-GM-THRID: 6396079372840730624
X-Received: by 10.13.238.134 with SMTP id x128mr10425048ywe.59.1489203300171;
        Fri, 10 Mar 2017 19:35:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls1690778otf.16.gmail; Fri, 10 Mar
 2017 19:34:59 -0800 (PST)
X-Received: by 10.129.91.214 with SMTP id p205mr10356434ywb.163.1489203299901;
        Fri, 10 Mar 2017 19:34:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si2041353pfz.1.2017.03.10.19.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:59 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so12706335pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=s4A4Jh3kSRTM1wJtjcLrRY5osPJ0ymxQg1G2OAgSmu8=;
        b=V2+FNb0wcWH+4m8EjlKKiZpwXTho0W7z+iku9mCRAP6JGomTo6kqEupwWGdpvHudzf
         eaERmKxKo23B7k6LBnohtyzW2EB/ePC5uPQEASmTgAZxohdd3UpSTy52GGjR1eZRWO3Z
         oV9VY33M9/vLXKGiLrxWTFf1nM01kgGHUHUlTB/RKfRMOL0PP/Q+0OkN0xabaA7Uu1AB
         sR/UI6qmqtE1GxVoxS7Uz5E6zyEFyyT0tnB3OFB41yVi25YgUgbmjQ/5AQ8dr2F+L4ik
         y5+TxkV4T+bvR61+uR38TSjFtSAqFhJSooamCdZH3F3PUBVpRd5GAZQxpunQLSnXBGo4
         9BKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=s4A4Jh3kSRTM1wJtjcLrRY5osPJ0ymxQg1G2OAgSmu8=;
        b=iYkifdjGEj1c8DkHXiSwm2vHOTD9uwKrZk9zCjKm1zz5SA0oFxMC80V9bXASmb4Out
         F1DUMRhhu05UBuZejnb9Fp79R+zmxoh/EJ1IAuIG+iEwQI4Uo7I18N3CEOFv7WK6EdzK
         esLfoE7JljyiKmKVGfQP0D0iVmGqbVfrgjTbFD/oXI1+pveNj/A0dI9skCTXQ92ispRM
         QDGcqRyd3j4Wbbamb47u8G0lfWP0PdWzwSj6nCmRdZqOjhy4mZ2/DJu6jg6GjJEVoipm
         VqdPXmvsVuPSK/TjJzfHsiGdSaVlbaun0595KvETQXPfZUe7h1WZG5nUfYY4EtfGqIuS
         ZX/A==
X-Gm-Message-State: AMke39msk0BRPWKEXPUUzQy51xUgfNCbLWjiXc1/aqNo9AIMpysYMOejXNDiS1JgxpksVg==
X-Received: by 10.84.218.205 with SMTP id g13mr30023871plm.78.1489203299681;
        Fri, 10 Mar 2017 19:34:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m12sm21223130pgc.46.2017.03.10.19.34.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:58 -0800 (PST)
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
Subject: [PATCH 06/10] staging: iio: adis16201: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:37 +0530
Message-Id: <1489203401-17518-7-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>

In this file,function names are otherwise used as pointers without &.
Found using coccinelle.
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


