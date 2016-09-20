X-GM-THRID: 6332296655202680832
X-Received: by 10.13.254.71 with SMTP id o68mr5070426ywf.135.1474352706767;
        Mon, 19 Sep 2016 23:25:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.220 with SMTP id w28ls1313236otw.27.gmail; Mon, 19 Sep
 2016 23:25:06 -0700 (PDT)
X-Received: by 10.13.233.6 with SMTP id s6mr5867116ywe.63.1474352706442;
        Mon, 19 Sep 2016 23:25:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si5774524pam.0.2016.09.19.23.25.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 23:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so468236pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 23:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=slURZ2AlRLuHixul1FwhpYKfTVQkZT+NsgVKmnkKKi4=;
        b=vuSif7RsSDlMOEB678Vc+6zv/sIfLAP/ZhZ56ocP4VivIZbxWn022sG2EqhGUxwAeK
         +RM2gHZRMuOvyJhFGszSjIKCbAkuPw2dbbDLRxQP39LGQYf8qJXP7ChY2Gz1+G87P0Om
         /9bwPOOCfvsq2LwdW3B9Z86XmYFz4DQdL8dQuJsiurXbKoHXuHrMsY9DLXVoGhywYp5C
         krIv40CumC4sxX4nsD7y0wm8qWgmLGDce3q0qrav9Hg1UWh+9dtBKLuYNbZ9CNUmmYxr
         9bhqAk3xmnructSI/KfId159nua4M7Z9zOLGJuwfNglogbkNe95BZjLx1mKwwO1obNRx
         LZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=slURZ2AlRLuHixul1FwhpYKfTVQkZT+NsgVKmnkKKi4=;
        b=lhtKWwlqqYJXxwcMqQySD7gFDIBWb09P9MIkYi5IJDTcDp3oIA4TVyVMqyJ6WRVQCO
         tgAbsCHMJ9V4RY1bL+e6BhYmEbewjQPEa9Mh0QnU9encvfKZ09OyTT8QmdPsItN0bdSE
         Q2io1yTmH4bCw/e9stXl8VcsehaS5Af52Q+RZ6hr5jpADDKCnzFIAxDH7sHgwQwFgZgz
         JRpGlamhY64OSqX5990mjZWQtyuMkLwAhYOi+8eJtORsnO6FzpLrEAFOxPrfSM4xniBj
         Q/klQt1ib1qTohusblcww/awC4phQbaoqSfkN4dtAa/wgCROnZjvYkrmLl60rWJlkFn8
         qUgg==
X-Gm-Message-State: AE9vXwPoM+8EH+OQiVV+fieHrmWuir8oqotv59/9/lFba3Ty7YTubOg9nU2Q2APeErW+vw==
X-Received: by 10.98.201.16 with SMTP id k16mr49582952pfg.102.1474352706047;
        Mon, 19 Sep 2016 23:25:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.179.109])
        by smtp.gmail.com with ESMTPSA id 184sm75885802pfg.20.2016.09.19.23.25.04
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 23:25:05 -0700 (PDT)
Date: Tue, 20 Sep 2016 11:55:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ks7010: Use sizeof structure *pointer over sizeof
 structure in kzalloc()
Message-ID: <20160920062547.GA2958@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 25ad43d..37a4ba3 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -955,7 +955,7 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 	netdev = NULL;
 
 	/* initilize ks_sdio_card */
-	card = kzalloc(sizeof(struct ks_sdio_card), GFP_KERNEL);
+	card = kzalloc(sizeof(*card), GFP_KERNEL);
 	if (!card)
 		return -ENOMEM;
 
-- 
1.7.1


