X-GM-THRID: 6396079372840730624
X-Received: by 10.157.40.36 with SMTP id m33mr10518580otb.49.1489242416928;
        Sat, 11 Mar 2017 06:26:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls5567560otd.20.gmail; Sat, 11 Mar
 2017 06:26:56 -0800 (PST)
X-Received: by 10.157.45.198 with SMTP id g64mr10392762otb.136.1489242416620;
        Sat, 11 Mar 2017 06:26:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id a3si2272873pfb.2.2017.03.11.06.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:26:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so13935506pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cI9qtCslxeuu8LfuHw4iCKzH1eXkGO0WTQq3rM8JKkA=;
        b=ZKCFN3lEJEy6muzdFiCboc2hx7LhoKfmMLynQW+n6dm3diutfy8CeMDrW2WR60RxSi
         au9AOiIB08zNyEk4FXh6Nar4B6r5gIBorb0YNehwHE7mlJypSWoIe/gvfZpE0YNRIcGE
         q4ZN4qFn7/Ac2+6uSZFMt5531PI0U3Eg5rgkHbYfPvMQAkbsM8PNp/kf6i8/p33QvtX5
         NkkT98xseHSFPQpxkJ995dW949vdKA74XoWBsiI5zZTuOlgMpFmgWy0xE0qj6mthwdHC
         cUhSvM9T90/wf9ZPR89AnM3bdZmxGQUzEEf2PCR/MfEhps+JChy/ECYqsD0LnzYLnI0d
         DDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cI9qtCslxeuu8LfuHw4iCKzH1eXkGO0WTQq3rM8JKkA=;
        b=qbnReIwAJB7tla0N7jaxEHVvmCECSMv7N0R/Am7Mg/XwfuJQSNO70Jj4t0+TB314Aa
         AehVoF7Xn4k2gQq1kfNWoiGNXRypvT8M3zUFM6dskymcWnF/npYuFNe9kVVeTum2mxM8
         D2B5b2Gjg5a+QkYIAZMf9y9y3jgypj3AeSLmP4JzRQVrqOpfM5kuVw2rw6/q+uerl+mJ
         X0lG69gOmbvcaMBy0TkoNRBRCPJPYietoNcznos6/NVH7Kzn+fMiAooZIAeB8HeuPYDY
         ynQWRGVMriICME5kur4x1LxBP9QSd0nUY1SGfqOyT4nYOb+e3XOOAmXFjx0QZUyXGSv+
         AcfA==
X-Gm-Message-State: AMke39lHkFTFwURPe44VOZCjs9jbm/GijeMu2qEnFVYZNJDqX+R3JP9f4okqT/qIa1/IEA==
X-Received: by 10.84.208.102 with SMTP id f35mr34023717plh.19.1489242416361;
        Sat, 11 Mar 2017 06:26:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e16sm14737637pfb.102.2017.03.11.06.26.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:26:55 -0800 (PST)
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
Subject: [PATCH v1 02/10] staging: iio: ad7780: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 19:56:36 +0530
Message-Id: <1489242404-12352-3-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/adc/ad7780.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7780.c b/drivers/staging/iio/adc/ad7780.c
index e149600..dec3ba6 100644
--- a/drivers/staging/iio/adc/ad7780.c
+++ b/drivers/staging/iio/adc/ad7780.c
@@ -154,7 +154,7 @@ static const struct ad7780_chip_info ad7780_chip_info_tbl[] = {
 };
 
 static const struct iio_info ad7780_info = {
-	.read_raw = &ad7780_read_raw,
+	.read_raw = ad7780_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


