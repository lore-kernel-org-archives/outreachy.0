X-GM-THRID: 6262299386982694912
X-Received: by 10.182.168.17 with SMTP id zs17mr8667725obb.17.1458055197581;
        Tue, 15 Mar 2016 08:19:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.182 with SMTP id c51ls332244qga.60.gmail; Tue, 15 Mar
 2016 08:19:56 -0700 (PDT)
X-Received: by 10.129.112.202 with SMTP id l193mr21840427ywc.6.1458055196892;
        Tue, 15 Mar 2016 08:19:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id sf5si4268372pac.1.2016.03.15.08.19.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 08:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id u190so32646560pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 08:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=R6j3ZycPi99DhcRXaNJ9t7+XoE0OnFULN1BIJ4R3BZI=;
        b=Z7Ou7/dEItKKQqEAsQhO6JN63fnA/3KgiiQr0hRmWUuPoLt+c34lIZ1M9hgeGUFeO1
         BlieFg1QsZRBds90X7+JOv0XSqpKI+xJ6IVXk2th3QBLbHQ3rPYzPKya0SXbpsF8jHv/
         059IzQkOs3UzCsTFMQDLLzGRwX7XGvbo5hRiJcbckAkHbsLpzxb/qj11asbEd/NaR4s+
         yij41bSAJyKEl+CZfSK8+TVSLmhaOnyu7k2icwWJVN32r36I2sy1vwU37e8httF0Jpoy
         Q9EN6Y5Gev8XDe4EoJjtY8DbdZ+xxApCoSY2FOiA7Co+zixTZs6Vb1r3meN8Ia+XX5WJ
         fmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=R6j3ZycPi99DhcRXaNJ9t7+XoE0OnFULN1BIJ4R3BZI=;
        b=m9RO9rIewVtyGyRbPxnqrnYC/MSlyMSjArEuI6pqpCTtVHLwGVt8sGsw4P8Yrizpt0
         8CYKvwUwipIRD6yN/CRBqZctRwHvhU6xSNYn+R/J1Fsl4ITuVkW2EJK5/bCi9tKsNG8/
         8QURkJgiQPaewIKQnIAN7t+8CbtZCcicN45uPFmA1IZTPxm4nSUwlBxwPS6MpJHDQ1x4
         oir/b4z0Bs2ClVJiOVp3YSmLiH5LbbBYKAOWAM+JnheUsMoHgSucnTImAv92A4M0YiaU
         JGutdvHiXNh3Squx6iBu4YmUMHYfySJA1Y6SJk5mCqUzRENj+sm48qDCxbBh/IV69JRF
         w2Iw==
X-Gm-Message-State: AD7BkJKfW0efQe5YR1skOyI7u2pDQKqoEqiX0z91Y+Qio09CRM6sFonV3TeB7IAU5HiyVA==
X-Received: by 10.98.14.207 with SMTP id 76mr39448479pfo.1.1458055196644;
        Tue, 15 Mar 2016 08:19:56 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.9.248])
        by smtp.gmail.com with ESMTPSA id k88sm39351345pfj.0.2016.03.15.08.19.55
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 08:19:55 -0700 (PDT)
Date: Tue, 15 Mar 2016 20:49:51 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH] iio: light: tsl2563: Remove flush_scheduled_work
Message-ID: <20160315151951.GA5890@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

flush_scheduled_work is scheduled for deprecation. 
Replace cancel_delayed_work and flush_scheduled_work with
cancel_delayed_work_sync instead to ensure there is no pending or
running work item.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/iio/light/tsl2563.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/light/tsl2563.c b/drivers/iio/light/tsl2563.c
index 12731d6..57b108c 100644
--- a/drivers/iio/light/tsl2563.c
+++ b/drivers/iio/light/tsl2563.c
@@ -806,8 +806,7 @@ static int tsl2563_probe(struct i2c_client *client,
 	return 0;
 
 fail:
-	cancel_delayed_work(&chip->poweroff_work);
-	flush_scheduled_work();
+	cancel_delayed_work_sync(&chip->poweroff_work);
 	return err;
 }
 
-- 
1.9.1


