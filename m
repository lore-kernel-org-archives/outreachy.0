X-GM-THRID: 2915117826048
X-Received: by 10.50.109.202 with SMTP id hu10mr12728062igb.4.1424716594972;
        Mon, 23 Feb 2015 10:36:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.92.165 with SMTP id cn5ls731684obb.38.gmail; Mon, 23 Feb
 2015 10:36:34 -0800 (PST)
X-Received: by 10.182.22.138 with SMTP id d10mr12409154obf.37.1424716594760;
        Mon, 23 Feb 2015 10:36:34 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ri9si327539pdb.1.2015.02.23.10.36.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 10:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id rd3so29513308pab.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 10:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LftATjLtA2+JEB8GNSlpR/yyEQnE+tBngJtrfUA2/u0=;
        b=sMgXz2XaUGlWvzYOInVgOf2d6LYuH2C56cz9tG4je2GrXnsHw6BtE5hW1NdC5VV4/9
         C1b44Zrzh8oHF2M7YUrrIltTzt2KC9qZ+7PxQOQ/2xCU1Jlg2LWCsrVskgpWXC/xQ7Xq
         8N4N7T7g8b6t4CoGA/S0OlLAKECBcuF4llpIfNN75X4JMGY0g4WuDZ+WK+ApocEFCLZK
         SbUVZB7iLt/x7OnbJmNDFlJ5mcGYQsJZ2F4w9HDJofH/WBRmZCkWGUsSAWmTW45Fb6eB
         ybCSPLeM4M9eu51HysCuccJLZEpE14bB3uymvEhdDLxBArPwuL6mhSzrdr4Iro0eVctw
         HbDQ==
X-Received: by 10.68.164.3 with SMTP id ym3mr21446485pbb.100.1424716594624;
        Mon, 23 Feb 2015 10:36:34 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id b15sm15451600pdk.69.2015.02.23.10.36.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 10:36:33 -0800 (PST)
Date: Tue, 24 Feb 2015 00:06:14 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Replace ternary operator with existing
 macro
Message-ID: <20150223183613.GA23467@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace ternary operator with existing abs() macro to increase
code readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3f663fe..a1a9ebf 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -599,9 +599,8 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 		}
 
 		if (delta > 0 && dm_odm->RFCalibrateInfo.TxPowerTrackControl) {
-			delta = thermal_val > hal_data->EEPROMThermalMeter ?
-				(thermal_val - hal_data->EEPROMThermalMeter) :
-				(hal_data->EEPROMThermalMeter - thermal_val);
+			delta = abs(hal_data->EEPROMThermalMeter - thermal_val);
+
 			/* calculate new OFDM / CCK offset */
 			if (thermal_val > hal_data->EEPROMThermalMeter)
 				j = 1;
-- 
1.9.1


