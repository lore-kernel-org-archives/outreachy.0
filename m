X-GM-THRID: 6255961671110492160
X-Received: by 10.107.3.24 with SMTP id 24mr11179254iod.12.1456587365486;
        Sat, 27 Feb 2016 07:36:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls2007443qge.98.gmail; Sat, 27 Feb
 2016 07:36:05 -0800 (PST)
X-Received: by 10.140.29.75 with SMTP id a69mr22878514qga.0.1456587364995;
        Sat, 27 Feb 2016 07:36:04 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si2826461pad.2.2016.02.27.07.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 07:36:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so6064561paa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 07:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=V06DPAJpjwNN7nvepUNWHfLSt+ZNAQB02o0i2cyC7y0=;
        b=w+m8Vp2/lE1pFjMZrA77VIsovS//YzRHcOJCrFsZDTGNvFJUZ7DLx4RR1wJ4UnS6uQ
         Qd6Ej2A1ZX050/2DNkcLQ92s3EItd0MFtlQB669zE8EkWu0Id03cYMgQLqAUMroHdjqV
         9kQfdLJ0tG+WS8fnBUWmOeH01lv424goLKVyDdzGAo/F6eR1w1fmW5qYcc3G77+36BSQ
         CwGu739mnmCQR7PFq2tNGqqQhub1ROvU9EjvVuod1ZvHE7kCmxf1hAWwtACg08HF/fft
         Dpvy7CyfBfCQPwVsebZwUTS9An9XD5+hVGWYXO9qQ6MAXBrv4BVfKR4d/OPiLSMklMKb
         ZBDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=V06DPAJpjwNN7nvepUNWHfLSt+ZNAQB02o0i2cyC7y0=;
        b=aaAHaRqP/XPXVKhdKsEJPlr56kgqepXsGR9S/1uqc4wcuvBm53OUpMWBjBBw69J38w
         BxaBNaVCgANoHkMDubVceeLt2qtn2piRVXsSze7KkqaltmGInoRsL7kHFyoZFA5xkUV9
         6wHeSvaeO0k7V0JfjBx4k6U9LVeLN+y04/58dEfRyimAjcuJ1t7hIo4DyaxsL9jzxWIG
         I0hB8XU9MCN6wqOnPq54aWjHLGr+8HRLwa9JzdjhExzI4xUQrsBPZ9qiGiXq98A3ZLmM
         u0uLo29CU0u1ldvc/ZPuzUvPagtzi2BWgaWiRf8CHhp2DTU5eFxDTheczpt8F7Vp29+S
         0EgQ==
X-Gm-Message-State: AD7BkJI+tLo+w5dmcvu79bFDN1/hNXRwUDVfJJagcs5omZKOX8nrG7kLEjHv9sAgK33EOQ==
X-Received: by 10.66.62.134 with SMTP id y6mr10051712par.43.1456587364822;
        Sat, 27 Feb 2016 07:36:04 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 144sm26868311pfa.83.2016.02.27.07.36.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 07:36:03 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v2] staging: wilc1000: Fix warning usleep_range() shouldn't use min ==max args.
Date: Sat, 27 Feb 2016 21:05:53 +0530
Message-Id: <1456587353-29404-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

As usleep_range should not use min == max args.This patch fixes checkpatch
warning: usleep_range should not use min == max args; see
Documentation/timers/timers-howto.txt.
Choose to increment max by 100, as done in commit here
https://patches.linaro.org/patch/11284/.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
Changes in v2:
   update in commit message.

 drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 83af51b..8d6a457 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				}
 				PRINT_WRN(GENERIC_DBG, "[wilc txq]: warn, vmm table not clear yet, wait...\n");
 				release_bus(wilc, RELEASE_ALLOW_SLEEP);
-				usleep_range(3000, 3000);
+				usleep_range(3000, 3100);
 				acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 			}
 		} while (!wilc->quit);
@@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 					break;
 				} else {
 					release_bus(wilc, RELEASE_ALLOW_SLEEP);
-					usleep_range(3000, 3000);
+					usleep_range(3000, 3100);
 					acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 					PRINT_WRN(GENERIC_DBG, "Can't get VMM entery - reg = %2x\n", reg);
 				}
-- 
1.9.1


