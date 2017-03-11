X-GM-THRID: 6396079372840730624
X-Received: by 10.129.152.151 with SMTP id p145mr10221480ywg.119.1489203296642;
        Fri, 10 Mar 2017 19:34:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.136 with SMTP id p130ls3055047iod.9.gmail; Fri, 10 Mar
 2017 19:34:56 -0800 (PST)
X-Received: by 10.107.162.147 with SMTP id l141mr6636836ioe.4.1489203296162;
        Fri, 10 Mar 2017 19:34:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y203si1695171pfb.0.2017.03.10.19.34.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:34:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so12702695pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mMq7h+ZaAnbMRburhsWSGEah55rFroOVdO30hm6jL9o=;
        b=dVWYGbwr+NQKcOs1kntZ3Wt5qB8psEddkUKXM8iT5MpB5//+9Q8ErwIjER7mIKDXyW
         X+UN3jbHcNSSeejtt1KbhQz1cXbgEiBblLwg3EWo6ArVF2CGrPWtY/pYeQyN68a+pE55
         APrpnNJ6GRgrdKJ73rA3q+XoLhzneV7YxWGC+A9BnLaZVI1vvAYZ9m9RYxqC/6Gsm0Ku
         x3RNu9klEqmEhaLfDPeoiqMNjN6rrDlmlxiubrWQXDkwbb+csJu6dyhEgBy7GoNNMT0f
         G+jAfpLFMtN82YekS/QQNHL9KT9WKfhKQ58MjNKJ6IDzmK6qDV3kczjg13GMPv1XAbe2
         NCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mMq7h+ZaAnbMRburhsWSGEah55rFroOVdO30hm6jL9o=;
        b=kF5ssea8qgqhq6bn/jwTPQqOqIVWh52feCA/rNSAvpdBWqUmzWh7ijXoT568Y0TtFN
         Se5+Mukx5k9rOLmpyHD+zvjFId4/5BKxNzcoficURQxrxCbgMOZ+J0pUz0c+FSCE99wQ
         UdKAdgLkBv3CrkRyk91noIbkPJDtwk7QIPIb5uvgEQZ+Z5gDJnLiXiaLU7k9/hckl0Ua
         RYmh+bIWRJcy2BZGIeokXYqe6pTWc1pJFoRqO6Z4OYpIUmd+4I4a9v4PP1rd8EsUSeHx
         zm9ZkTPuBNUrUyQIkYbGc94v1ffmwm4D7k3y6Q8n2ZkPIoRmbLVkb3kdCAJPAdQQY6Bj
         z4tg==
X-Gm-Message-State: AMke39lyec+URcax3264WVxjOnHlO0QDcN5FZZszavhyJe0UqLpEe+PohdgI3lr/rtdMyQ==
X-Received: by 10.99.217.69 with SMTP id e5mr24338366pgj.56.1489203295960;
        Fri, 10 Mar 2017 19:34:55 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h14sm21281532pgn.41.2017.03.10.19.34.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:34:54 -0800 (PST)
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
Subject: [PATCH 05/10] staging: iio: adis16240: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:36 +0530
Message-Id: <1489203401-17518-6-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/accel/adis16240.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
index 27d7f6a..37a29dc 100644
--- a/drivers/staging/iio/accel/adis16240.c
+++ b/drivers/staging/iio/accel/adis16240.c
@@ -373,8 +373,8 @@ static const struct attribute_group adis16240_attribute_group = {
 
 static const struct iio_info adis16240_info = {
 	.attrs = &adis16240_attribute_group,
-	.read_raw = &adis16240_read_raw,
-	.write_raw = &adis16240_write_raw,
+	.read_raw = adis16240_read_raw,
+	.write_raw = adis16240_write_raw,
 	.update_scan_mode = adis_update_scan_mode,
 	.driver_module = THIS_MODULE,
 };
-- 
2.7.4


