X-GM-THRID: 6251158573882015744
X-Received: by 10.13.216.150 with SMTP id a144mr11153888ywe.52.1455461274196;
        Sun, 14 Feb 2016 06:47:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.11 with SMTP id z11ls1349083ioi.54.gmail; Sun, 14 Feb
 2016 06:47:53 -0800 (PST)
X-Received: by 10.50.142.105 with SMTP id rv9mr7741075igb.10.1455461273853;
        Sun, 14 Feb 2016 06:47:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id i133si1811765ywe.7.2016.02.14.06.47.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 06:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id e124so4565322qkc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 06:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=y+bzHWKaC9F5VEJnU6OY29cBiNDT3JGJ4WT7QRjz6yA=;
        b=YZw1/kIZBHJ/qZJXiEegvMHNEIPuGINqGUyVYO7UJ5hPdZ1QL+weELuL+i0DKZXVig
         4y410bcEHPUiq5f8hSGJnb8qsZT1oEUXxrjNDCZ2MM8BhwzynJnwL0Gplx1pCPuttGVV
         sh2a4Bf8YLfx2IoDFYWvsWQJp7IHfJqEoDRq4dn/PV4V0e41yA3hP5gEpa1PquR0ArM5
         gH349FiOywTGWId2R0rq+Ubq4CpAo8MmZ02ijuewu3PC8LKMofjEV5HQmvG3cGjNwHJO
         nkpFQSZ632tqhceLDkuuojJ6IitOdydwvwittC0ekME2EE0Ql4EXt+9rs9EURv/KIXOh
         9dOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=y+bzHWKaC9F5VEJnU6OY29cBiNDT3JGJ4WT7QRjz6yA=;
        b=Sop/xniUGriwWfau2urHze08G+VVTdnX3t1KpOHtCzMMGpmtY0IP5NH5Xx8qsS00gd
         efQy58YDGYz3X3lRaRY5EQDSPWvu6hHizU3QTmCn1+zrJJtL0AAe5VHVPtwsYz9hGggQ
         lVaoWZ9wzYCyGR9ofcOUnFGRqj4hGQwACHXg8I+g5K+05dFS8I2hgmy1kQCw6/dUrLKh
         aR9HUv94AQM8ozRW3FM2THzdAkMAw2Ky355H44RrysUBh3eEfHgqCFxwIfBz1kg4zufD
         O6yATBm7d7kJCcJ7r7LuCwPIjv+owATvc4o40nOh18vMNnZh2Zncgm3GIB6bYYlEGBx4
         IMYw==
X-Gm-Message-State: AG10YOS+JU3iR/uT2lcMfZiQwaTKxYTQEdc/iDB7QrlNrW8hBPBoTju5AZXtnWGi1/Tb1A==
X-Received: by 10.55.72.207 with SMTP id v198mr15034371qka.65.1455461273637;
        Sun, 14 Feb 2016 06:47:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id u10sm9329378qhc.0.2016.02.14.06.47.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 06:47:53 -0800 (PST)
Date: Sun, 14 Feb 2016 14:47:13 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: linux_mon.c: Remove unneeded braces
Message-ID: <20160214194713.GA3387@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove braces around single statement blocks in if conditions as they
are not required.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Changed the term parentheses to braces in the subject and the commit
   description

 drivers/staging/wilc1000/linux_mon.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e9bb0ec..e5f9ec9 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -302,9 +302,8 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
 	struct WILC_WFI_mon_priv *priv;
 
 	/*If monitor interface is already initialized, return it*/
-	if (wilc_wfi_mon) {
+	if (wilc_wfi_mon) 
 		return wilc_wfi_mon;
-	}
 
 	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
 	if (!wilc_wfi_mon) {
-- 
2.5.0


