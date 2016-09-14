X-GM-THRID: 6330145501902536704
X-Received: by 10.107.3.96 with SMTP id 93mr1909724iod.3.1473851851564;
        Wed, 14 Sep 2016 04:17:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.74 with SMTP id v71ls326258ita.9.canary; Wed, 14 Sep
 2016 04:17:29 -0700 (PDT)
X-Received: by 10.36.57.69 with SMTP id l66mr1876688ita.5.1473851849447;
        Wed, 14 Sep 2016 04:17:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 142si940152pfx.2.2016.09.14.04.17.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 04:17:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z84so651845pfi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 04:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hwsiqOVgMSnIF7zJSDgJogWCDl0SGe6bA3+FgOimYEk=;
        b=RTBWqcntd9MAdztxj7oB3m5GFl3rkgN8dusN5ZtAmHKiA0pry/CUTGcZPYOe5DNMup
         iqL7tPle7DIzRiAI0O0LyHKf5BCKM0rTOS5q6izwCk0zgvRti9k78w7/Xo1LMhJ+E6bw
         ff7cTu6Te9uy63XcMQanX9YGy/E6VTsnqBCyOLzY+281cb91Tmft3Leu3L0WqzIErFTE
         q34iRhUijKMGpvqjevxXEmOtjViGXKFgwduAZAZmqEaDq+ZjNe/gzUtMgnUtT2jLUCCB
         ow3wOpgtTNbR4sQfU0kGsvjhimxMjJ4huIPnSYnZrQuXzUmreOkxgcuInjfOQEKDjA3s
         7XMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hwsiqOVgMSnIF7zJSDgJogWCDl0SGe6bA3+FgOimYEk=;
        b=LGWnrGk77zXDTuBZczG9vywX1WZ6h+tVtG+tLH0nW7s6TePx2scCRBkH4Mtau2GwcF
         fyw6+H/esuYKgK8hMiRaSPQbRuGhadvqcdMWVq81SZA3lU7xXcchCJxYca1dhFewfTEf
         0u0MujyXl3JVmuOx/fIBFmZgkt7iA2DeVeF85DXREBIlpBrdiRbYmrln0ZdnDx8GUCTO
         rQuy6SP/A9rL+esZECyRyFLE7cVWLdd9PHvXVj1HeoF5qYmPB55IXp9ieq2mykal9Wlm
         T+3NYaasIJJNDjSNOIbB6gsuzCtRUgxkNTarHanbzzFplybvyAXCe4IrCK5GtDtbUtNT
         z2KA==
X-Gm-Message-State: AE9vXwMjw/M+rVV1mLQRSbGiK8qrpR1pZ9dt4fY7cscBg1Sc5+YZmLNb5K+6tn5WCCYVDA==
X-Received: by 10.98.21.85 with SMTP id 82mr2395562pfv.81.1473851849023;
        Wed, 14 Sep 2016 04:17:29 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id m65sm37516502pfg.79.2016.09.14.04.17.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 04:17:28 -0700 (PDT)
Date: Wed, 14 Sep 2016 16:48:02 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: ad7280a: Add space around '-'
Message-ID: <20160914111802.GA3364@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add space around operator '-' .
This patch is found by checkpatch.pl script .
CHECK: spaces preferred around that '-' (ctx:VxV) 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 2177f1d..bc40153 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -744,14 +744,14 @@ out:
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-		in_voltage-voltage_thresh_low_value,
+		in_voltage - voltage_thresh_low_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
 		AD7280A_CELL_UNDERVOLTAGE);
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-		in_voltage-voltage_thresh_high_value,
+		in_voltage - voltage_thresh_high_value,
 		S_IRUGO | S_IWUSR,
 		ad7280_read_channel_config,
 		ad7280_write_channel_config,
-- 
1.8.2.3


