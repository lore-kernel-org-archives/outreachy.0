X-GM-THRID: 6396079372840730624
X-Received: by 10.157.3.103 with SMTP id 94mr9786500otv.100.1489203314776;
        Fri, 10 Mar 2017 19:35:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls4891374otd.20.gmail; Fri, 10 Mar
 2017 19:35:14 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr9820431ywd.17.1489203314498;
        Fri, 10 Mar 2017 19:35:14 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2083156pfa.4.2017.03.10.19.35.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:35:14 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so12143526pgy.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1bAyY5EEoxHqq36N+CC4t/rMWYFOKFxWtC+DDXNRh6M=;
        b=RddAngjM3d3rjLQ1dOZRFs/h7/o5AoZtyS+vIu8JLKC3r+stwBVGQbgEzklOOHr7qk
         dtrtQHIXArZ/X3DP5EB3N8zJO0dYkNHtJXLSi6/VI+HdhUXGDbGVKaGy/HesiLsmaCxu
         UIYHamuxH/ZwS5Z+HAY5sXz4N9ECu88mkoZh4UXbzc8CWK6WJ4m43t7SmJ9+jtpeIEif
         eifUfSTKwz8vqMg0CBUzvIy6mCv4VT2mUSKQVfaYP3F6d2xBXU5CTaC7aup4IpAnJOuw
         4DO3/ke/ohffkRUMRh+z23Y/8tpu4eenKr5uq8RSNd7zhk6dLhMt2WjMGGiMsFr8g4IH
         e+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1bAyY5EEoxHqq36N+CC4t/rMWYFOKFxWtC+DDXNRh6M=;
        b=RY/AtpghaHr1SWQxJX/IYO4GSwt4OTPEIG6MydW/1a04bS983n3Djj68VQxe4JXnln
         Gy57y8XH6BKvb/h4DannpvxzGnhaZVUxpNKiNQLUuZxYK0mWPmJQEHiCCEU/zBqMHtvm
         j6ZSsdy5m3tRIvbaD6x2XMX70Wtl7aF22lD+tnMi/uyXQdmywrs1kiq/OJNLA1JVLhQo
         5k3leN/B61xhOaf3UYjFt/meFScStbVb++hul+pdQSr8Hegi89YFK+vy0boGeryZ0Mzk
         Ach8nW/MLO0gY42VJDWDop7AA2wxUQxhZwG/C0CEKfmh/ja5P2f2e29HyQSPS0XbE8F/
         XMDg==
X-Gm-Message-State: AMke39lS2O2Ju75iUlAP6QiN+EYJrk8Jt61kbgQ5CusNZQ+P8SbITv/tHFW+8nsuXXSKSw==
X-Received: by 10.98.198.78 with SMTP id m75mr25048102pfg.160.1489203314269;
        Fri, 10 Mar 2017 19:35:14 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t189sm21054827pfb.81.2017.03.10.19.35.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:35:13 -0800 (PST)
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
Subject: [PATCH 10/10] staging: iio: gyro: Remove exceptional & on function name
Date: Sat, 11 Mar 2017 09:06:41 +0530
Message-Id: <1489203401-17518-11-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/iio/gyro/adis16060_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index ab816a2..c9d46e7 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -117,7 +117,7 @@ static int adis16060_read_raw(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info adis16060_info = {
-	.read_raw = &adis16060_read_raw,
+	.read_raw = adis16060_read_raw,
 	.driver_module = THIS_MODULE,
 };
 
-- 
2.7.4


