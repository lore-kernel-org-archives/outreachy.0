X-GM-THRID: 6402897717905850368
X-Received: by 10.99.52.78 with SMTP id b75mr87287pga.118.1490790807228;
        Wed, 29 Mar 2017 05:33:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.231 with SMTP id v100ls5688799iov.19.gmail; Wed, 29 Mar
 2017 05:33:26 -0700 (PDT)
X-Received: by 10.99.36.3 with SMTP id k3mr79400pgk.25.1490790806440;
        Wed, 29 Mar 2017 05:33:26 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y203si1191652pfb.0.2017.03.29.05.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so1747375pfp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 05:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ElqzClVslQtjfy1XLvn0PsMS1XF5RA73OQMSnsJBU90=;
        b=OQsuptIRonj9wmmgskGjzjb4lo0gmEvbU5iKVy7xHjNMLbBIKz8bzbgP5YXgQMyWuC
         Ek146L4nyct3CQgCqbAo2kamfhsrLFQl9xbvWbIexvCs5EJNY6GCEqWyNSiZRaIwRiv0
         R+hfiBZG6SBN/snuEOLcxqmADfO6crV/M3ZwCAkTadfcEeE35se0oa03W0+cGHQGqWWm
         HbrPXymahPYZ4Pe2hSofZM7j0Bi9CQgLpufOgMD9iXA4bWtG51bQ6GE+Pzfwtn+x5hJq
         XWeTmY7H86vCiMU6P0Y+0/mN00dVFB/yXsmYY1oCCob4E7v6RYmOA2i/A7gwgVCgtWit
         cyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ElqzClVslQtjfy1XLvn0PsMS1XF5RA73OQMSnsJBU90=;
        b=lmg4RsYSOeyZD8UjNtYXH8DDja9FgM8Wk3r+vcFnTRqNjC4Xy2CvuqNcvRzDS8bwLU
         edHJvEnA4raWY76yZ3+TVhi7fPUzVnXQ/2SS2Bd1VWcp0annTH3xSKyQWHoTqX5S4CMq
         JeO7YQWB3V0CLBdc4a3gJUx58kI/E1BzGj1C4hnv3CrrG2o9UasTT/g7StCiaqslIgS4
         oCFqCWhua/hUpIeRltDgB+Xg0TMMVxE4fUSUtXq/nBhEDjLwYibWIHCCFQ/hf33rb3M9
         L8j3oE53cFm+xAZTktXxkFO73bmSZrYQfsQuFt+Q1MocJoU3Hkp3NC7fCrPtawVON/CJ
         ul+g==
X-Gm-Message-State: AFeK/H34ecI8CU8QgHOeyItiUy2f2d2VFsoygIcGdKcaC82+NLm9Q6AdWefJwxQcK7zO1Q==
X-Received: by 10.84.163.75 with SMTP id n11mr311841plg.186.1490790805979;
        Wed, 29 Mar 2017 05:33:25 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm13504509pfk.68.2017.03.29.05.33.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 05:33:25 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] iio: imu: st_lsm6dsx: Replace ternary operator with min macro
Date: Wed, 29 Mar 2017 18:03:10 +0530
Message-Id: <1490790791-5694-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com>

Use macro min() to get the minimum of two values for brevity and
readability.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c
index e959825..e11653d 100644
--- a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c
+++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c
@@ -203,7 +203,7 @@ int st_lsm6dsx_update_watermark(struct st_lsm6dsx_sensor *sensor, u16 watermark)
 out:
 	mutex_unlock(&hw->lock);
 
-	return err < 0 ? err : 0;
+	return min(err, 0);
 }
 
 /**
-- 
2.7.4


