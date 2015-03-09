X-GM-THRID: 7207946027008
X-Received: by 10.66.149.102 with SMTP id tz6mr26960858pab.26.1425897826689;
        Mon, 09 Mar 2015 03:43:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.230 with SMTP id o6ls863554igv.30.gmail; Mon, 09 Mar
 2015 03:43:46 -0700 (PDT)
X-Received: by 10.66.97.10 with SMTP id dw10mr26287819pab.48.1425897826472;
        Mon, 09 Mar 2015 03:43:46 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id ri9si2558458pdb.1.2015.03.09.03.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:43:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so19970484pdn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=i+Un5iAXOXs2prJbQ8uBya3qe6HC8y5i6mUNfrIm3JE=;
        b=HPyHazDkYl//bmtLd7Aw4BKxqKc93rXakZo6jR9QIVO5FDP2P9lIIKQP3jKyf3tB4C
         ih+WZcfPaJltIJasFokK8s15qW/JHvnUCi4wd9vx/ki+z95mN2qifxibqtyCmKOkByLF
         XlwNek70EJre29xuHZu6CrSmV9zveYdZYSPGsrdpIzufnEG6e5H254GceJa/eT8Rb0Mg
         lxNXiLIAO7Ugy8gErMwhogN98Vvr9dkNaWQaXw36/ZTuL/+wt6axbpd9gJ57Ueh1XoqW
         uOmiqlpCdE42adydpKFHjRp3F34acWHo+8F/w3qBW+aymjJ7rqWGn5zzLfPWCKyLM56F
         zQzw==
X-Received: by 10.66.182.199 with SMTP id eg7mr51313472pac.57.1425897826367;
        Mon, 09 Mar 2015 03:43:46 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id ux7sm18676800pab.19.2015.03.09.03.43.43
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:43:45 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 2/5] drivers: staging: iio: meter: Removed unnecessary variable
Date: Mon,  9 Mar 2015 16:11:17 +0530
Message-Id: <1425897680-6179-3-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>

Variable len is used only to store the return value. Hence len is
removed and the return statement modified. Coccinelle was used to
detect such removable variables:

@rule1@
identifier ret;
expression e;
@@

-ret =
+return
           e;
-return ret;

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/iio/meter/ade7758_core.c |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
index 7e287da..652aa10 100644
--- a/drivers/staging/iio/meter/ade7758_core.c
+++ b/drivers/staging/iio/meter/ade7758_core.c
@@ -485,7 +485,7 @@ static ssize_t ade7758_read_frequency(struct device *dev,
 		struct device_attribute *attr,
 		char *buf)
 {
-	int ret, len = 0;
+	int ret;
 	u8 t;
 	int sps;
 
@@ -498,8 +498,7 @@ static ssize_t ade7758_read_frequency(struct device *dev,
 	t = (t >> 5) & 0x3;
 	sps = 26040 / (1 << t);
 
-	len = sprintf(buf, "%d SPS\n", sps);
-	return len;
+	return sprintf(buf, "%d SPS\n", sps);
 }
 
 static ssize_t ade7758_write_frequency(struct device *dev,
-- 
1.7.10.4


