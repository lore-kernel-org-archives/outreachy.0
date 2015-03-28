X-GM-THRID: 10169912131584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f16c06afa3361ded,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.66.232 with SMTP id h68mr13305428yhd.39.1427524645897;
        Fri, 27 Mar 2015 23:37:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.3 with SMTP id l3ls1238611iod.94.gmail; Fri, 27 Mar
 2015 23:37:25 -0700 (PDT)
X-Received: by 10.66.248.74 with SMTP id yk10mr137836pac.9.1427524645588;
        Fri, 27 Mar 2015 23:37:25 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id pc4si467460pac.0.2015.03.27.23.37.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 23:37:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id c3so118056818pdn.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 23:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=yMRGk9Q1KAJptDuJYlKdSgwjdEfskWaCUb1uex18SKw=;
        b=t9UbIp2emVfNdh6ScSUQxtYcjyHXzIGH3CP7BpEy2TdeklF7vI2x0TntBq60rMcJlP
         ZQVHeOXAtCsy9WGH3YZdBv2UgPKhh0qH735GFLl3egso2BtbjF+9fkG7iA1QSlY95TGt
         b9x6v1AN3EwlYl/qg1cbCucaV5xGeprAnVkVV4d85b6rFuyXkdopeG/8KZSWXKI7Clsi
         Z+cqiVdWYeB89Z55FzcjXBnXCQM9ljB4ugUGu4qZtsBEElrpbQjSBWxwABS7ExVWUM3s
         fw0A3HfEhbJ7NATOsPYTgMIQx0i/1qVZyJXTAx7iJc3pTg11PJFRms2lU2LMucq/6K90
         5w8w==
X-Received: by 10.70.43.134 with SMTP id w6mr41039552pdl.169.1427524645492;
        Fri, 27 Mar 2015 23:37:25 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id fz1sm4007509pbb.12.2015.03.27.23.37.23
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 23:37:24 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org,
	linux-iio@vger.kernel.org,
	srinivas.pandruvada@linux.intel.com,
	daniel.baluta@intel.com,
	Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] iio: imu: Use iio_trigger_get for indio_dev->trig assignment
Date: Sat, 28 Mar 2015 12:07:14 +0530
Message-Id: <1427524634-5677-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch uses iio_trigger_get to increment the reference
count of trigger device, to avoid incorrect assignment.

This patch refers to a similar situation encountered through the
following discussion:
http://www.spinics.net/lists/linux-iio/msg13669.html

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/iio/imu/adis_trigger.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/imu/adis_trigger.c b/drivers/iio/imu/adis_trigger.c
index e0017c2..f53e9a8 100644
--- a/drivers/iio/imu/adis_trigger.c
+++ b/drivers/iio/imu/adis_trigger.c
@@ -60,7 +60,7 @@ int adis_probe_trigger(struct adis *adis, struct iio_dev *indio_dev)
 	iio_trigger_set_drvdata(adis->trig, adis);
 	ret = iio_trigger_register(adis->trig);
 
-	indio_dev->trig = adis->trig;
+	indio_dev->trig = iio_trigger_get(adis->trig);
 	if (ret)
 		goto error_free_irq;
 
-- 
1.9.1


