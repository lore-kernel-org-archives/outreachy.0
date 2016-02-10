X-GM-THRID: 6249498218591158272
X-Received: by 10.66.62.162 with SMTP id z2mr35936498par.5.1455074692428;
        Tue, 09 Feb 2016 19:24:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.46 with SMTP id k14ls1067716igt.44.canary; Tue, 09 Feb
 2016 19:24:51 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr7591563igg.4.1455074691954;
        Tue, 09 Feb 2016 19:24:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x229.google.com (mail-qk0-x229.google.com. [2607:f8b0:400d:c09::229])
        by gmr-mx.google.com with ESMTPS id g136si83149ywb.5.2016.02.09.19.24.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 19:24:51 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) client-ip=2607:f8b0:400d:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x229.google.com with SMTP id s5so2752402qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 19:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jR+ffr1xGJLInhHQyqLuBSbgOG4Ehj07tfOtShTDpJY=;
        b=Wq+RZER1tjaP5mQZGLeycwddb9cKZomXmqC1T6Q2Tq9HvdIDeLIPUx0L5gCC3WyS0j
         DHE9ovqWCsK89wFErI/PyrZS4Vigul52mfWEzmSwKzL665+HbGY+IAWuM6DQv+U2Jje1
         RKf/YpAV60tqhwMmwKxfBdQFSS5Ss6sOJf4v744y9qWj7U/V2gKhMtWM0JkBW0/OVbe6
         9oXb5X7nVl4vE7pJiwTQceBqFyG+CBu/tutBWrROkDfte/ynM/qRKqJxLrk+wIWRe8Nk
         54zCq2DNEPB35kkKg/gJaxvuW3jmS8IGFEJskz8z4dQUrQLTFyVi/B0D3FSJw5WBRc+K
         WoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jR+ffr1xGJLInhHQyqLuBSbgOG4Ehj07tfOtShTDpJY=;
        b=hwvSPTm7jHTZTcMk6skvrbDGLKFjDHjipqBGayrph69Jgsjie3mfefd7kZNrLXFSkT
         Q2T4w2MV8KtvnLoUYoXVZA6FuhUxECQEGvttwMgJhWvfHSEpq5sL4BfHwEse+LxEwXSM
         dolQBmgHghFtjCpNZJZAeevO5yXG3aYsT2Wsdww34c3tFBHUSgrdzHgahecyRr/FPaPE
         ihEcfbPfwMc2vKaaAhvAJknAHJ+4sv9UTjpEQl0ftihPITx2YJZGDBqaXk/HG98MWsFM
         UE9xrENXOdJK0T6xHVukMwJD7rW0KjTaLwARmJLMLjI3EghAQeOetWwHRV4DS50pjNox
         828g==
X-Gm-Message-State: AG10YOQzLmGpckyrObbYisNEXg/VfgBR/VLzHKz38yeP1e7A18KBaRH5ryaIoktuCnIWbw==
X-Received: by 10.55.80.131 with SMTP id e125mr45817133qkb.62.1455074691754;
        Tue, 09 Feb 2016 19:24:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id d64sm506330qgd.9.2016.02.09.19.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 19:24:51 -0800 (PST)
Date: Wed, 10 Feb 2016 03:24:13 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: unisys: Modify boolean assignment
Message-ID: <20160210082412.GA2645@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Boolean variables should be assigned true/false rather than 1/0.
This patch makes such a correction.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/unisys/visorhba/visorhba_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 5a78409..e93bb1d 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -1062,7 +1062,7 @@ static int visorhba_resume(struct visor_device *dev,
 		return -EINVAL;
 
 	if (devdata->serverdown && !devdata->serverchangingstate)
-		devdata->serverchangingstate = 1;
+		devdata->serverchangingstate = true;
 
 	visor_thread_start(&devdata->threadinfo, process_incoming_rsps,
 			   devdata, "vhba_incming");
-- 
2.5.0


