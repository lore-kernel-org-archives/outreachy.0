X-GM-THRID: 6249350509260439552
X-Received: by 10.129.103.69 with SMTP id b66mr23546930ywc.58.1455040301349;
        Tue, 09 Feb 2016 09:51:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.242 with SMTP id i18ls913650igt.10.canary; Tue, 09 Feb
 2016 09:51:40 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr32716005pas.6.1455040300847;
        Tue, 09 Feb 2016 09:51:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id v197si2393227ywa.1.2016.02.09.09.51.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 09:51:40 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id b67so58629071qgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 09:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=drwN73RrxQEo48cKNP07E9ucf5exadpmbF88tbTY5Jw=;
        b=Okvwb9UoAwGCVcoD+dvB7Y1CANEBUJHCbkSYDliDgc/oFPcd2k/bIfywslMpaNgkai
         dJyX6N1z1MlRquKpQ3mLm3hgivd8oI21mqoFkZlf0ed6Ff4Kfn2dAwMQ4lXbjnpiI8Si
         VSIt+YUeVFdRTuoyhbsMlfIoMdqe/KepNXGNPgE+KyMNJopyI6YkFrQIDUBd6XxZ4Bzi
         OqFxJBwvwOiCgR84zbplesrC8SSZ+/kwCdkYmdqGvlh29AmHVzPHlFsw0L88RmQ3SQHg
         Vgr5D1ztYoUrweUUMOAQysPAWzPdxUGec+Fp4atru45ydnzkMmcOVSC1Z7bcGCqt0awY
         OtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=drwN73RrxQEo48cKNP07E9ucf5exadpmbF88tbTY5Jw=;
        b=gNeDgd3YocneOEak5O9FlLcHA2dx35Sci0lcnIHSR5bKo23JcMSOwbbGH5/EE1rP4i
         n85TwYrg+IAawbs3VPhCMiq36dGRDzXZjBSbiDuOxhNiDmOFWOY+R82aU9nY7pHLZlta
         aKTMxFZDAaYD/fgDH9V0dZFCdAFoxoomQybuI5rLkHn2WWYM9VV1GC9jl/D4veFX1trz
         ywk1HqHbccJHnGbj9UCEchXgcx4fIx0WYg7KIc8PTJo/S0TqE/m93GKulySZvDdpVKM/
         kIxGVSAS9hpE9dxvW0E/qf5Aqh90uPHHgyeYN7c6PmzOW0IFArTbeZoUUTT0rMRiJmvn
         Juug==
X-Gm-Message-State: AG10YORBCF+ZiG/XAKbieUlkk22rB0SVEXhUQnKevGJgBDvpSyo7ho0POgYpVAY6OEL1ig==
X-Received: by 10.140.216.212 with SMTP id m203mr32333731qhb.37.1455040300593;
        Tue, 09 Feb 2016 09:51:40 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f10sm12810495qhc.18.2016.02.09.09.51.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 09:51:40 -0800 (PST)
Date: Tue, 9 Feb 2016 17:51:03 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: goldfish: Change form of NULL comparisons
Message-ID: <20160209225103.GA11077@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x. This was suggested
by checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/goldfish/goldfish_audio.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
index f1e1838..364fdcd 100644
--- a/drivers/staging/goldfish/goldfish_audio.c
+++ b/drivers/staging/goldfish/goldfish_audio.c
@@ -280,12 +280,12 @@ static int goldfish_audio_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, data);
 
 	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (r == NULL) {
+	if (!r) {
 		dev_err(&pdev->dev, "platform_get_resource failed\n");
 		return -ENODEV;
 	}
 	data->reg_base = devm_ioremap(&pdev->dev, r->start, PAGE_SIZE);
-	if (data->reg_base == NULL)
+	if (!data->reg_base)
 		return -ENOMEM;
 
 	data->irq = platform_get_irq(pdev, 0);
@@ -295,7 +295,7 @@ static int goldfish_audio_probe(struct platform_device *pdev)
 	}
 	data->buffer_virt = dmam_alloc_coherent(&pdev->dev,
 				COMBINED_BUFFER_SIZE, &buf_addr, GFP_KERNEL);
-	if (data->buffer_virt == NULL) {
+	if (!data->buffer_virt) {
 		dev_err(&pdev->dev, "allocate buffer failed\n");
 		return -ENOMEM;
 	}
-- 
2.5.0


