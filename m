X-GM-THRID: 6261788098456190976
X-Received: by 10.107.3.193 with SMTP id e62mr16721075ioi.19.1457936153396;
        Sun, 13 Mar 2016 23:15:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.103.8 with SMTP id fs8ls737669igb.26.gmail; Sun, 13 Mar
 2016 23:15:53 -0700 (PDT)
X-Received: by 10.67.30.161 with SMTP id kf1mr17134711pad.21.1457936153127;
        Sun, 13 Mar 2016 23:15:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ui7si3052004pab.0.2016.03.13.23.15.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 23:15:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id u190so99688337pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 23:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tPooUE+UCwkw3nNm0IrSAwZabPhr/i2v0Xgm0J21r5o=;
        b=T/UMtbMqwbKc7vqK1oN5rRuT2X3LIrUdSFnOhwNi12t00YEeHcYH2vqUW2DH/Dp2aS
         BHWN0p1viGs/xM90gkMOQpAQ74Tn0lDVxBvveQF0JXTiEJUJcHhw+jN5MMqjS2Jc3i14
         hdl2pInQfgIs2va1PGnfwAwdw2M8oF8M+WZZXGzdR4OtVtod5aAh+Y32MNkDXntYpkNe
         cwhxOum4jfpk56FcWX9K9Vn0YC0wjvhqb0I+rUtIzbP1yuDIkl2Zt6yLhIbJTd1Rr8GG
         TD7wybLON6Rj1D/votCDutqFrEsr75bkqjIDETPYyeXCZnLdtbJBqM/6dPFQHxl3PJRV
         Qtvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tPooUE+UCwkw3nNm0IrSAwZabPhr/i2v0Xgm0J21r5o=;
        b=KnRHjmlBBV9lCim4X9O1zHIcQRCNj/fryrOt68kqI3BS6jlZ2gH9qJzNoVpR9u8tq1
         TzsikksoEonMo4Y5UfVEyfpeCkkFobGnZ9QIYzWPwyAOJJUTigIFBvaxSGratAoKcZfY
         f3m9pDoa4qMaykai/hpvmTtbUK4KfG8OJ/GfKOUDDJ/mdYgyQFzjY5migdHKmttNoCP4
         1ZLGPkvgX93fZgbYLu0WAFRmpd1NVp4+olmPoAfsV3N+n5fc58O3U9d3Y1XckZHB/PHX
         sgTTYbCl8S/bQw4XWXc4XEtqQlYVY8IRfiDvGwbo+VIVB4itspqXLsQuHH0rtKm0ztyH
         /lTg==
X-Gm-Message-State: AD7BkJLXq6bNn7JVwx+Bua6hFGN05Q7jVfK4vKk5Fap7IUVRsR/SwTM2BQvvSe6FvcdZpg==
X-Received: by 10.98.71.91 with SMTP id u88mr27597302pfa.161.1457936152991;
        Sun, 13 Mar 2016 23:15:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id 16sm29029675pfk.28.2016.03.13.23.15.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 23:15:52 -0700 (PDT)
Date: Sun, 13 Mar 2016 23:15:51 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: io-trig-bfin-timer: use dev_get_platdata()
Message-ID: <20160314061544.GA6641@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use dev_get_platdata() for retrieving the platform data instead of
accessing dev->platform_data directly. Move the assignment out of
the declaration (avoid lines over 80 char and put it close to
usage).

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
index 035dd45..8667334 100644
--- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
+++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
@@ -178,7 +178,7 @@ static const struct iio_trigger_ops iio_bfin_tmr_trigger_ops = {
 
 static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 {
-	struct iio_bfin_timer_trigger_pdata *pdata = pdev->dev.platform_data;
+	struct iio_bfin_timer_trigger_pdata *pdata;
 	struct bfin_tmr_state *st;
 	unsigned int config;
 	int ret;
@@ -221,6 +221,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
 
 	config = PWM_OUT | PERIOD_CNT | IRQ_ENA;
 
+	pdata =	dev_get_platdata(&pdev->dev);
 	if (pdata && pdata->output_enable) {
 		unsigned long long val;
 
-- 
2.1.4


