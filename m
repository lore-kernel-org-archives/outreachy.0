X-GM-THRID: 2910553374720
X-Received: by 10.182.186.38 with SMTP id fh6mr12180417obc.21.1424715046614;
        Mon, 23 Feb 2015 10:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.14 with SMTP id 14ls2462888qga.37.gmail; Mon, 23 Feb
 2015 10:10:46 -0800 (PST)
X-Received: by 10.236.43.146 with SMTP id l18mr12610232yhb.23.1424715046461;
        Mon, 23 Feb 2015 10:10:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id ks4si4312865pbc.1.2015.02.23.10.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 10:10:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so29363468pad.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 10:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=4cCw2n7U/Pun2xBTdT+lTFDsYk+p2Ux3hE5FRpOphIo=;
        b=DcGYQ7KhM6LPIRBUNqXAyVOiuKlMhKxP42D3iJ2fJgLjUlk5SKu0l/Kvd/llqfORF6
         03r9ywzBVflQfEgv3zSxOcWPWdDhsuNmYUIiVDRv1ba1kjplp3O+VvBbZUbegWZgEmUx
         /bkyZGZCMyCUcpD+tuTDmozpHnma+8UMYE2nmzkhB8zm4wIjp7D0QgrNKWok7ACjmReH
         AkN8jjfscbNhh2ywtQ4jIZWZkqzGP3wNnkfrVdBAA1Xok5NkH5GwsVLU2d1l+I1HSEEN
         jsxJHPL5LDtcP+vg71ifCIgNRYzSYgo8UDmFc/909RkBCGwA+vXjuWZcgEKzJfNfcKML
         rSKQ==
X-Received: by 10.66.101.73 with SMTP id fe9mr4018333pab.156.1424715046326;
        Mon, 23 Feb 2015 10:10:46 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id kp5sm10330701pbc.52.2015.02.23.10.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 10:10:45 -0800 (PST)
Date: Mon, 23 Feb 2015 23:40:27 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Refactored code to increase readility
Message-ID: <20150223181027.GA21128@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Refactored the conditional code to make it more compact.
Replaced the ternary operators with abs() macro to increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 32 ++++++++++++--------------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3f663fe..f256004 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -570,27 +570,19 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 		if (thermal_avg_count)
 			thermal_val = (u8)(thermal_avg / thermal_avg_count);
 
-		if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
-			delta = thermal_val > hal_data->EEPROMThermalMeter ?
-				(thermal_val - hal_data->EEPROMThermalMeter) :
-				(hal_data->EEPROMThermalMeter - thermal_val);
-			dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
-			dm_odm->RFCalibrateInfo.bDoneTxpower = false;
-		} else if (dm_odm->RFCalibrateInfo.bDoneTxpower) {
-			delta = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue) ?
-				(thermal_val - dm_odm->RFCalibrateInfo.ThermalValue) :
-				(dm_odm->RFCalibrateInfo.ThermalValue - thermal_val);
-		} else {
-			delta = thermal_val > hal_data->EEPROMThermalMeter ?
-				(thermal_val - hal_data->EEPROMThermalMeter) :
-				(hal_data->EEPROMThermalMeter - thermal_val);
+		if (dm_odm->RFCalibrateInfo.bDoneTxpower &&
+			!dm_odm->RFCalibrateInfo.bReloadtxpowerindex)
+			delta = abs(thermal_val - dm_odm->RFCalibrateInfo.ThermalValue);
+		else {
+			delta = abs(thermal_val - hal_data->EEPROMThermalMeter);
+			if (dm_odm->RFCalibrateInfo.bReloadtxpowerindex) {
+				dm_odm->RFCalibrateInfo.bReloadtxpowerindex = false;
+				dm_odm->RFCalibrateInfo.bDoneTxpower = false;
+			}
 		}
-		delta_lck = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue_LCK) ?
-			    (thermal_val - dm_odm->RFCalibrateInfo.ThermalValue_LCK) :
-			    (dm_odm->RFCalibrateInfo.ThermalValue_LCK - thermal_val);
-		delta_iqk = (thermal_val > dm_odm->RFCalibrateInfo.ThermalValue_IQK) ?
-			    (thermal_val - dm_odm->RFCalibrateInfo.ThermalValue_IQK) :
-			    (dm_odm->RFCalibrateInfo.ThermalValue_IQK - thermal_val);
+
+		delta_lck = abs(dm_odm->RFCalibrateInfo.ThermalValue_LCK - thermal_val);
+		delta_iqk = abs(dm_odm->RFCalibrateInfo.ThermalValue_IQK - thermal_val);
 
 		/* Delta temperature is equal to or larger than 20 centigrade.*/
 		if ((delta_lck >= 8)) {
-- 
1.9.1


