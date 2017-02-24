X-GM-THRID: 6390816507551547392
X-Received: by 10.157.47.200 with SMTP id b8mr1687333otd.22.1487977920761;
        Fri, 24 Feb 2017 15:12:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.71 with SMTP id 65ls8194859otw.48.gmail; Fri, 24 Feb
 2017 15:12:00 -0800 (PST)
X-Received: by 10.157.28.175 with SMTP id l47mr1867517ota.58.1487977920444;
        Fri, 24 Feb 2017 15:12:00 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id d63si1730430pfe.2.2017.02.24.15.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 15:12:00 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so4637571pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 15:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JiUdOBL7J3+RNZQ93e5WeHpRJaqn/DC+kLXqGlYa0k0=;
        b=eu0r9uncJEkR9BAP/oufZQpNAkQzBTSYRJK0wH/7IecXKCKow5FZwX9G3sIoYfpENt
         oOvav5MZphmLgwygbF1RyFIxDMSspe9zcLDbzsAinuEwjvuMBWYY00U3mDJxIRDVWmeH
         m81ZOdZF234oEgbXSMfvTTUv3eI2IB4xrqcDR5SLLFw+gQ1iF4Oqy8tDvNIgrK+NphZg
         7P8+v9r4yAYDnMoRvTRiVcHG/G51ycfVqRT6qDnfqHdlZBPUB1mAx8TnRAmOBWgN8eLr
         usTs3zVWLyRqyIcP4t8or+Ehh0aFI5MU7UQGuK1IW2TCQb35+VIDgfxCxSbUTVJ2oNax
         pgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JiUdOBL7J3+RNZQ93e5WeHpRJaqn/DC+kLXqGlYa0k0=;
        b=ML7fzf0/AnP4jZJBdv/b4ROeMq4d8EUo2pFr5URZZvSE1+cfcP33/mGvrP1ayaJc3A
         2xMBAjfE+kD8cOPKpW5cGIH0l7Gt15tuKuKzFXWLlX4QuFQ2iKaUHLfNBqFvO91bC96n
         Qw4HGgz9HLoM+kLaD8+chvJxsPhgOKJjgO6h5V71+4FI6FnJHL6slpsg4QqXg8cwpc7u
         quvAoE1+u8/E1gcJHdA8CGslgqx+4Y68n6k76Vwx+AR7m/zNHTA3JCiVCa33u6T4rKyA
         vwEsYmgYqXJRfrEZ8pvQ1WnbADUV8gK5IRpGfH0scpca5sfXDKc9HTAfZ52jNJuSD3f3
         InQw==
X-Gm-Message-State: AMke39n2ins0dtvtB5EIpxv2xA7aRcLMYRuRDXaB1FWY9ieuKTUkN/Z1V1E5VqTJsGmPkg==
X-Received: by 10.84.217.18 with SMTP id o18mr7193077pli.51.1487977920209;
        Fri, 24 Feb 2017 15:12:00 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 67sm16860745pfd.120.2017.02.24.15.11.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Feb 2017 15:11:58 -0800 (PST)
Date: Sat, 25 Feb 2017 04:41:55 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: codes in the comments are removed
Message-ID: <20170224231154.GA32083@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commenting Code Is a Bad Idea.
Comments are their to explain the code and how the code achieves its
goal and as codes in the comments  does not explain what the code is
doing so there is no use of commenting them.
So in thos patch codes in the comments are removed.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
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


