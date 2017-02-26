X-GM-THRID: 6391449518367309824
X-Received: by 10.129.53.133 with SMTP id c127mr4889601ywa.15.1488125305286;
        Sun, 26 Feb 2017 08:08:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls2495936iod.9.gmail; Sun, 26 Feb
 2017 08:08:24 -0800 (PST)
X-Received: by 10.107.136.36 with SMTP id k36mr2138549iod.41.1488125304607;
        Sun, 26 Feb 2017 08:08:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c123si2398864pfa.4.2017.02.26.08.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:08:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so9809701pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 08:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=a9sj8bqhi4/kTDQ25pi3+i5YRzYXcBjrtXesenRw0VY=;
        b=iSwX4M8lxvwT6cbOriEiL7iOONlOAf6IrZGMehLR8smpmKGq6+mjL4HJlEneJp59ez
         yHQ2+wM/l/0UdksQk2wCmmEEsXTyK/dlAFmooOWlv6I2D+kHNrZKICFbVakQOwKT/per
         QGlCzqKcBnA7SGoG06Ep99lJ79UW5GyHcIg9c2jYQbvkE3r3ql0AYtmR48vgFGPDbV5c
         4IQzwDZzLOp7YUkmj9TV5lWNDYunMd9oxGofHFSlnU8ErDX3/tBDxi6FSy2d2LSHe21i
         DIRaJkpti/rEBJ+Sa+mR1xLPFFuToCOF/ZeWu1cXGQHcwMEgttc9AwmL6zFgjZ3JAq7p
         rQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a9sj8bqhi4/kTDQ25pi3+i5YRzYXcBjrtXesenRw0VY=;
        b=MIVlXs9CPULVKPikhlJszKJPhlze9G+XIypEVnQ3qOAxK/5ACjZcRPtvqKtEc0+Rq5
         bHftq/yxpwXxsDqG2RNMApq0+AATO2sTEdxlCq0TmeuBFH4Fs7z5q488W9c1ChCklvsE
         MNNEGe2/uuqJnCCJxmB4zNJ2EAd5IUsH4OxIS4nukVPJ/xoWe5PRzMVxhe1X+qTuKCU9
         SZcSj11V3D0Udfi37V1oQbmMRcsCiIu8nZjsMCVX+ZjnnG5tmQQQecnGoCmUPFdypQfS
         vaV03aflqxgsJdXnH6iRp4ug/3uBLDctbr6gd24yg8+4kjT66srErCXD2r9cs8JDqPX6
         0U0Q==
X-Gm-Message-State: AMke39nridf1U7USMeNfXowrhry31TkYtU9n6lwApOwUupRdTgTOtYFw1LJbwpVhqCDWeA==
X-Received: by 10.84.238.199 with SMTP id l7mr18107875pln.90.1488125304386;
        Sun, 26 Feb 2017 08:08:24 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b77sm13898439pfl.2.2017.02.26.08.08.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 08:08:23 -0800 (PST)
Date: Sun, 26 Feb 2017 21:38:20 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: ks7010: remove code in comments.
Message-ID: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commenting Code Is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in this patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - subject lines is made short.

 drivers/staging/ks7010/ks7010_sdio.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 2c263f98bdbb..54aa2e2f516f 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -495,10 +495,6 @@ static void ks7010_rw_function(struct work_struct *work)
 	/* wiat after WAKEUP */
 	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
 		DPRINTK(4, "wait after WAKEUP\n");
-/* 
- *   queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
- *   (priv->last_wakeup + ((30*HZ)/1000) - jiffies));
- */
 		dev_info(&priv->ks_wlan_hw.sdio_card->func->dev,
 			 "wake: %lu %lu\n",
 			 priv->last_wakeup + (30 * HZ) / 1000,
-- 
2.11.0


