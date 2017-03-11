X-GM-THRID: 6396079372840730624
X-Received: by 10.99.125.68 with SMTP id m4mr8900261pgn.35.1489203307675;
        Fri, 10 Mar 2017 19:35:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls3055156iod.9.gmail; Fri, 10 Mar
 2017 19:35:07 -0800 (PST)
X-Received: by 10.99.52.12 with SMTP id b12mr10367972pga.118.1489203307255;
        Fri, 10 Mar 2017 19:35:07 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id r66si2069240pfb.7.2017.03.10.19.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:35:07 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so12119645pgc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XGYSluShNZ92XwWvM7Ula1NTr4r2sKST287E53YVkpg=;
        b=ff/rTmwt5oRHldBppusyvHyiRe0/aWxO5rv55fiJX64K42PLNnF/8egSNsy2XrUGza
         xeMXiRdNgfKVcxzz+kGPMzAcZjIUd++Xe1UB1Yu+xwEY1GwQL+GlvxOHg3rf7auXfUD2
         1FxVQXqcFmXnrhGKN9waebS2fbioUDdz7CuWIj9CJkmUUorhveF2tIjzeR4YLw6Wh+SE
         CrQ8sY6lwmoiROJ2zWuaMEE0ltC9EzC+/461XPXvxFdngMpeXYYro0/nu1Rg7x2bNXqb
         hodAAy9Ai7or0zXq9RkMpX08KqvUfJYZDoxUlwbVnLiO3fwOZQrOLZpiEwh0MISuYb/V
         R6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XGYSluShNZ92XwWvM7Ula1NTr4r2sKST287E53YVkpg=;
        b=FN4ILl2oODDLUPRxeJ0C5y8MDKIPov8apjtZLViWER19ThCcc1ZtZTnK1zFc9xT5UW
         RLZSIipp7THrJK6A0+TnlFqbIfk5EZawgfO7e/k3Zpz0588NB/YGZ6lBfFk8C0WHE0Wc
         M7+/vs4BNsZ4DNwXUUxDwmCXTJfWhYNwJv0cCymCKtAk3K4EvLXh6CvYpZnPSr7oXzbI
         XTOrvrKNvhh08scwlTD8iiJ3asYzMe/kp30/HAa5VnWFo1XLB60mzQogM+UYQlEysmRy
         2CqnQXPBuXkS9tdGYFEah7p2bI0KEmVe8a1+k8LYFH8P9b3EoALDbUR3NkRlUxjKcuK3
         fIag==
X-Gm-Message-State: AMke39lSCIbvAb9MOkQECWJuH7xgNPF8jnekDJZ2LVf+r4Drxmd3fp5lnW/ZzIHZtZZUlg==
X-Received: by 10.99.167.74 with SMTP id w10mr24410316pgo.2.1489203307081;
        Fri, 10 Mar 2017 19:35:07 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u129sm21024390pfb.130.2017.03.10.19.35.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:35:06 -0800 (PST)
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
Subject: [PATCH 08/10] staging: iio: adis16203: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:39 +0530
Message-Id: <1489203401-17518-9-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>
References: <1489203401-17518-1-git-send-email-singhalsimran0@gmail.com>

In this file, function names are otherwise used as pointers without &.
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
 drivers/staging/iio/accel/adis16203.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index 68189ad..b59755a 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -233,8 +233,8 @@ static const struct iio_chan_spec adis16203_channels[] = {
 };
 
 static const struct iio_info adis16203_info = {
-	.read_raw = &adis16203_read_raw,
-	.write_raw = &adis16203_write_raw,
+	.read_raw = adis16203_read_raw,
+	.write_raw = adis16203_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


