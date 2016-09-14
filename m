X-GM-THRID: 6330275775734874112
X-Received: by 10.200.53.133 with SMTP id k5mr3405274qtb.25.1473882565312;
        Wed, 14 Sep 2016 12:49:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.140 with SMTP id q12ls595754ioi.39.gmail; Wed, 14 Sep
 2016 12:49:24 -0700 (PDT)
X-Received: by 10.66.188.137 with SMTP id ga9mr3413337pac.23.1473882564836;
        Wed, 14 Sep 2016 12:49:24 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si1496310pam.0.2016.09.14.12.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so1131907pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RU+oHPZvbMwQJZ7mSxd0d11iQe+9Izg2VdE6eiPohpI=;
        b=tG7ueWBUgzu+2IS+O4LVw4VIzJtiTeVW5pANqJPUyKGSSr5rvRCev60EZdlgc7Kf3P
         4iV/VNLYQAFO6VyWoE8Cb8eCdfwBdKc+ZXlqkm6h3eb9eiJLiTh7dU+Hc3CZ/7Bzb55d
         0PHm8FRqaSd7jVonydxtbs0+4TK2Ay0DDuhezs04K509xcKpRXREdtzGeCTIHeIbW1HL
         2YelVHdhEDHISEoevgVzCGiE9+LkeIJ6VcdKmSgQfhxJBx7tPCyWhUamDGUDTOx0RyRw
         4g+EuesE7djBO6W3vOVho0dRcxbm2ahCF8ehXhoCz1DNbWzsumbREkTAMRbQvHwTY2fK
         8zjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RU+oHPZvbMwQJZ7mSxd0d11iQe+9Izg2VdE6eiPohpI=;
        b=CgvL9hYG/mASgampUBCw0kD9pjES46TnT4c9qg8xrYq5WEWT8yHaO62BXkmv/crGWM
         yNjxQ3crrbtth8aEFN+u+GfdMp2G23xvG2zU395wH5ctFT9nOz+4wOd9CooTYEo5Rl7E
         XviGQar53ztSH0wVEwWoGS604DOFUKQGo8ARZ+yCd0gPmixDXWwjwwNSoLTLKnByU4HD
         O3J2t/i0yLgPOP6kUdz71KU3YG4UhbQhB1wbTH4mGlDhKcrMI9o8Wt2IvIoefijHq8kY
         UvsQkNtiU0jyLljPokISVPIycxIZfdmncPeCduh+cSScVY/ZGTnZteOYQPvW9uSlrg56
         Ab2w==
X-Gm-Message-State: AE9vXwPuG5raVbDph19cOQk5kNnsGuI7Aj0h0v3HHJqzKmh2cvsyMcrtKfab/wkXGymDag==
X-Received: by 10.66.144.5 with SMTP id si5mr1109257pab.158.1473882564622;
        Wed, 14 Sep 2016 12:49:24 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id e1sm7351632pap.11.2016.09.14.12.49.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:49:24 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:19:11 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: ks7010: ks7010_sdio.c: Remove unnecessary blank
 lines
Message-ID: <ef5c8c6f3229b6052e053974768a5c0b87549246.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes unnecessary blank lines as detected by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 1e109dd..4a918b5 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -182,7 +182,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 
 	if (priv->reg.operation_mode == MODE_INFRASTRUCTURE &&
 	    (priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
-
 		//DPRINTK(1,"psstatus.status=%d\n",atomic_read(&priv->psstatus.status));
 		if (priv->dev_state == DEVICE_STATE_SLEEP) {
 			switch (atomic_read(&priv->psstatus.status)) {
@@ -246,7 +245,6 @@ int _ks_wlan_hw_power_save(struct ks_wlan_private *priv)
 				break;
 			}
 		}
-
 	}
 
 	return rc;
@@ -346,7 +344,6 @@ static void tx_device_task(void *dev)
 						   &priv->ks_wlan_hw.rw_wq, 1);
 				return;
 			}
-
 		}
 		kfree(sp->sendp);	/* allocated memory free */
 		if (sp->complete_handler)	/* TX Complete */
@@ -605,7 +602,6 @@ static void ks_sdio_interrupt(struct sdio_func *func)
 				}
 				complete(&priv->psstatus.wakeup_wait);
 			}
-
 		}
 
 		do {
-- 
2.7.4


