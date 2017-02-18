X-GM-THRID: 6388471626392928256
X-Received: by 10.36.29.80 with SMTP id 77mr3791071itj.18.1487431960296;
        Sat, 18 Feb 2017 07:32:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.33 with SMTP id z30ls3341950otb.29.gmail; Sat, 18 Feb
 2017 07:32:39 -0800 (PST)
X-Received: by 10.200.44.125 with SMTP id e58mr736546qta.16.1487431959858;
        Sat, 18 Feb 2017 07:32:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s64si676196pfk.0.2017.02.18.07.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 07:32:39 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id c193so1605168pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 07:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IQSvlf2jJ2zEMBjYtFVVQcidJT8SK+nZ5Uc5+JDXpgM=;
        b=fgc6aq9Ad9cWSE3ONL1q9pSFkTgXm1OkJfKhyWuogna6flly1EmShVZD7rYN2tw5sZ
         X93uNDXGUJNE/HgfAcDzZJMcCshKPfFSodW8Ck8UPRwSYyMw/cgaUzDA8D4ZTVb31FC1
         raw0SrfSZTWWOMQMU3wwiBO4kgMrz8MuueM37nBrs0poP4MC9H43SjXSq2cXXOQODvfM
         zeqxqN669KUP1XKBaQIfcYIjeDQQtJ0mK4j1agKpJuxHI4cb40F/kJCeEICOsHjVq5Df
         HYSQRe/6d+4yUaDub3xXe539r8WOGY+rfhUEIKkpl1ue+B1rTYQ1+KypUwVT/OfkPBnA
         bgBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IQSvlf2jJ2zEMBjYtFVVQcidJT8SK+nZ5Uc5+JDXpgM=;
        b=fV6seksDwHUlvOpwjj8yO/7eG4Eyzjj9qeKp13BDblcua7InOiRIOMXcFtvGS5IhVu
         qSxkE6hAvArpWWxuKQxmKYInAIQ2Zf+m4dKSSjxazyqIZbrD2kw3k1h/5icCDBqIaw6h
         H6kcYNalwVRy9+PeqhxuxbfaWfKvIdalaQdQkwZ0+rD9sSnIqhVh16p3YGiWMBrdmaH9
         vi4mmdbebGAeVGcufwaNNGU9byLzUbJcQCXgzjI9VLJash9p7NcmEFM+CdWPei9T9t4S
         aPeo8Rn1vkZBJppgVPS7nTqOAGlWbYPRVdKCMZqgAo1j2EaGQmskA2TsT9nQdyN8BgBM
         /Nvg==
X-Gm-Message-State: AMke39mqD7SQChjqxt3GJelR4HfMkyiU1GhHjBQerTcGVyu5PE6ey7JWShGqMnSqUSAEjw==
X-Received: by 10.99.98.193 with SMTP id w184mr16876721pgb.223.1487431959223;
        Sat, 18 Feb 2017 07:32:39 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t133sm26184864pgc.24.2017.02.18.07.32.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 07:32:37 -0800 (PST)
Date: Sat, 18 Feb 2017 21:02:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Block comments use * on subsequent lines
Message-ID: <20170218153233.GA6466@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Some of the block comments styles are not encouraged:
for example:
/*
block comment without introductory *
*/
and
/*
* block comment with line terminating */

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index a604c83c957e..2c263f98bdbb 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -495,8 +495,10 @@ static void ks7010_rw_function(struct work_struct *work)
 	/* wiat after WAKEUP */
 	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
 		DPRINTK(4, "wait after WAKEUP\n");
-/*		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
-		(priv->last_wakeup + ((30*HZ)/1000) - jiffies));*/
+/* 
+ *   queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
+ *   (priv->last_wakeup + ((30*HZ)/1000) - jiffies));
+ */
 		dev_info(&priv->ks_wlan_hw.sdio_card->func->dev,
 			 "wake: %lu %lu\n",
 			 priv->last_wakeup + (30 * HZ) / 1000,
-- 
2.11.0


