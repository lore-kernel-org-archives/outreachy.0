X-GM-THRID: 2853156421632
X-Received: by 10.70.45.49 with SMTP id j17mr7607235pdm.4.1424708848731;
        Mon, 23 Feb 2015 08:27:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.125.133 with SMTP id mq5ls709913obb.50.gmail; Mon, 23 Feb
 2015 08:27:28 -0800 (PST)
X-Received: by 10.182.94.204 with SMTP id de12mr13385548obb.13.1424708848537;
        Mon, 23 Feb 2015 08:27:28 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id pc4si4279233pac.0.2015.02.23.08.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 08:27:28 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so26496964pdn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 08:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EPTDX/BRHIi8I2FWdU6WCKNlGV9/hJMbe865pZpMBYY=;
        b=spKA6JN55FWz5DlXo2ozZi65W8NSeQ6MvOmk5YLAGTPvbLFgsvaMMlcs+E/xsH+swU
         3qpLIJHnVKtsUUBBnVXqsKJdRswW4/KVrpAhvhQW6ME0Qh6QRKSW10qLCT+/2sN1qjvG
         Wxi2+9HDh0O4HTX2nWNpVnNZtcz/mERgGvKdGiFWcWe5XjS71sFfgsEoeHqdq2cwrGA3
         88J1kZ9EmKLeTOlU2KVktmCVW0XZ91usG+7jSxjg6lm3jdMVTp4XR8nyGYTZLudTkAbR
         2E18IvGB7hqkPOsB/d/5hwS5xDpnCNorUQMK35Jw9xgqEbnv+AyxpgweOI4EXZ513Ihx
         WhHw==
X-Received: by 10.66.233.74 with SMTP id tu10mr20158985pac.135.1424708848379;
        Mon, 23 Feb 2015 08:27:28 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id i9sm36114313pdk.49.2015.02.23.08.27.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 08:27:27 -0800 (PST)
Date: Mon, 23 Feb 2015 21:57:09 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Replace ternary operator with predefined
 macro
Message-ID: <20150223162709.GA16766@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace use of ternary operator with abs() macro to increase
code readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index e7ede44..115d611 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -554,9 +554,7 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 			thermal_val = (u8)(thermal_avg / thermal_avg_count);
 
 		if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
-			delta = thermal_val > hal_data->EEPROMThermalMeter ?
-				(thermal_val - hal_data->EEPROMThermalMeter) :
-				(hal_data->EEPROMThermalMeter - thermal_val);
+			delta = abs(thermal_val - hal_data->EEPROMThermalMeter);
 			dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
 			dm_odm->RFCalibrateInfo.bDoneTxpower = false;
 		} else if (dm_odm->RFCalibrateInfo.bDoneTxpower) {
-- 
1.9.1


