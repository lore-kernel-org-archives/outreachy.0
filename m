X-GM-THRID: 6331272586985472000
X-Received: by 10.66.85.225 with SMTP id k1mr2288375paz.48.1474114271479;
        Sat, 17 Sep 2016 05:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.65 with SMTP id a62ls2365618ioj.12.gmail; Sat, 17 Sep
 2016 05:11:09 -0700 (PDT)
X-Received: by 10.98.193.129 with SMTP id i123mr1370924pfg.39.1474114269915;
        Sat, 17 Sep 2016 05:11:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si3415844pam.0.2016.09.17.05.11.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so4599420pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ahjZjonSdW9Ctpn9oCsGcDXIjVr6nnaxurwlNk+xyz4=;
        b=b6i4MgDmyJirpJonyBcqKnTd4WiLSEHe9eR60s/7JbActwMAg9Ad02CpkIb6O7HR4X
         iDf62IY8d48PaTq7wVh1C2dhTENFXniJqeywndo2cckLmk/AELKqzehqw+Nov6taDxSf
         5yzvf0qX7kpDwJ8N766l349b9ixPUtp8TL+mP1uGzf+m8my9D1KE/IgkvmYbFzKyZ4pO
         RzD9IwjfduWsW+71ZHAjWuk/SY584zAX+nyrX6n/1Tcd4vV7PkI9fk2d4VzBD4E1CzPi
         j1l7dQ5DwQCjcLy8/PP7zxz1zS3/FXJNXqMsLqJ6+v3Zs0RkNzEAGky2UjpdDRpv4jAv
         fPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ahjZjonSdW9Ctpn9oCsGcDXIjVr6nnaxurwlNk+xyz4=;
        b=SFh0FKNst8HBuNfqHYqaF4RyOnWMe6WDfSaiasoaB9kYVa11idHdwsPnF/6gN+CTHQ
         sfLfUBmtBZyABojLM10Fbb3tIgDimmRkQ8MruBd/is6jqkWZG+2T19Xszoua1DdIwmWV
         m8XpHz0pRBu5ImCBnHY6K6Ul2qVdVncyKPWDQjPsXigK0+JSVQFu9a/vDY8S/ZIUY2D2
         1SmVb7qp6k5KM5YzQknJcPMmox9mi3ZRPpFJadtuVGUkkDCIwxCU+zl8Y85KfUmLXX7N
         6dT+qvM7GfLsx9k9fncxV8G0YFt5ryrvAT3pc+4ey2ETKiMbbBdMm63A6EaDDx7FO2Pl
         n8gA==
X-Gm-Message-State: AE9vXwNuQPbT0fsRAgUQrgrY7hE9HiUL4CJ1+8e1CB1o9HBb77683SHDb23LfgyLmhlSNQ==
X-Received: by 10.66.224.101 with SMTP id rb5mr31254182pac.45.1474114269761;
        Sat, 17 Sep 2016 05:11:09 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id p7sm11090638paa.3.2016.09.17.05.11.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 05:11:08 -0700 (PDT)
Date: Sat, 17 Sep 2016 06:40:52 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: i4l: Do not initialise statics to 0.
Message-ID: <20160917011052.GA14721@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not initialise statics to 0.
static variable by default initialise to 0,so
no need to explicite initialisation.
This issue was found by checkpatch .

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/act2000/module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 68073d0..39a8940 100755
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -28,7 +28,7 @@ static unsigned short act2000_isa_ports[] =
 static act2000_card *cards = (act2000_card *) NULL;
 
 /* Parameters to be set by insmod */
-static int   act_bus  =  0;
+static int   act_bus;
 static int   act_port = -1;  /* -1 = Autoprobe  */
 static int   act_irq  = -1;
 static char *act_id   = "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
-- 
1.7.1


