X-GM-THRID: 6254601683424247808
X-Received: by 10.129.117.11 with SMTP id q11mr16821346ywc.3.1456262935609;
        Tue, 23 Feb 2016 13:28:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.13 with SMTP id c13ls2680029qge.68.gmail; Tue, 23 Feb
 2016 13:28:55 -0800 (PST)
X-Received: by 10.140.104.72 with SMTP id z66mr6239501qge.22.1456262935139;
        Tue, 23 Feb 2016 13:28:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id u66si4629379pfa.2.2016.02.23.13.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:28:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fy10so116490700pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lq//9fQnrd3FLnWUi0Wz8ZKs2GWHGiQOX15sgiPSpbU=;
        b=hdC1uiLiQ1Z+pc40bckWwklp1ks2YvFvnRjhXl2dakXWoLS/r+jytTs2zprwxn6V+K
         3gJBQJyAcOySsFzVx3iQnGBKiLW6Q/c16rb4uIEruWM6zcg5PoAbuPT7ZEWVWVLrd0SP
         qxa+gX1fNLJhKAA+srCZkrEOgy/8LdudhUygrdcfXsRtf0VoYaKqgkWWGof4OYXIQIpd
         3xGyXH9k1mK2QaabqtMOx4lWdokhLZSxw9KDKSa5vY0Iw2UtWEti/TjQmGgJ8EIQuJsR
         m44foce629vJAWaKNi1y78oexKkYdeSvr0m4HSqamqditfBjAfeGZyMxjef3MPXiRnlH
         pMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lq//9fQnrd3FLnWUi0Wz8ZKs2GWHGiQOX15sgiPSpbU=;
        b=bCBCIMmFHhTkAy2XX0SJ6+7P4nB9fHum9CmJwDeAHPIjv/PAGfaaCIBuV/zai3Czb9
         O19FAhpg6RxdxwayJDOmWGTcyWP8+v8Fo1vi7IyXMicrZ3TElLncaUURuKA6hpsFWvdx
         +9eYq5Fq9Czal2MAipDDEVuvevf38laJJjmxDT/x8XsWuqpRchn59fzi0CshcZo6CNkp
         ozFNB++gzNBpr+hYTjHVyXAIoHoYnumRsVao36kLn60ziDxiCbyZa/FSCEvkqwQb0Da6
         lO//+RvE3pElsJZEqy0W9th96rRWqW34sicR4yUVWhXnlVIcKCaDLpdvB5DMIa/Sabsr
         ZuHA==
X-Gm-Message-State: AG10YOQgNx6D2yJICi5ZKbi+ubUe0uSBHZx9ab6MwFuuSdOZ9rWD5kpbYVzXmZx3IybIsQ==
X-Received: by 10.66.244.233 with SMTP id xj9mr29312782pac.19.1456262934986;
        Tue, 23 Feb 2016 13:28:54 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p8sm46261942pfi.34.2016.02.23.13.28.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:28:54 -0800 (PST)
Date: Wed, 24 Feb 2016 02:59:29 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Remove multiple assignments
Message-ID: <20160223212929.GA24472@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes multiple assignments by factorizing them.

This was done with Coccinelle.

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/rtsx_scsi.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 16284ca..9e1c324 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -3025,10 +3025,14 @@ static int get_ms_information(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		return TRANSPORT_FAILED;
 	}

-	if (dev_info_id == 0x15)
-		buf_len = data_len = 0x3A;
-	else
-		buf_len = data_len = 0x6A;
+	if (dev_info_id == 0x15) {
+		buf_len = 0x3A;
+		data_len = 0x3A;
+	}
+	else {
+		buf_len = 0x6A;
+		data_len = 0x6A;
+	}

 	buf = kmalloc(buf_len, GFP_KERNEL);
 	if (!buf) {
--
2.1.4


