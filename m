X-GM-THRID: 4820301774848
X-Received: by 10.236.40.112 with SMTP id e76mr16047832yhb.5.1425067062569;
        Fri, 27 Feb 2015 11:57:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.197 with SMTP id 66ls682779iot.55.gmail; Fri, 27 Feb
 2015 11:57:42 -0800 (PST)
X-Received: by 10.70.88.234 with SMTP id bj10mr14447319pdb.0.1425067062301;
        Fri, 27 Feb 2015 11:57:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id pc4si623234pac.0.2015.02.27.11.57.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdev10 with SMTP id v10so23322902pde.7
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Kw+tkY3l7615QnSUZrkYGvkylFWlEJY92atI5q1/7UM=;
        b=gx2hmF4OmpwphMmnrws8b93+hFmgKIMQKX6P9Y51aHb2dowBFVK/ixbzsTSFqEVWUt
         hTyD5SJyYsJvoNNVN3KGmK+GDfXucsWocKmsyPKZ6/KJCJSBs2MDBWGM4Tl92nk2QhNm
         vYD2YzdZZ2yagPEby7Nitp9d4ectIGH8joyD8gxrJ3DIpXUyBpHwglbcsFCXVPei2DSD
         zrTMJV8+iIWg8UeBs7BLriMkgMNA+UaNuCy+3rVAQYN17v0ifFlf4SNhBiH4PrltmNSz
         vx4lqi1W7l9RSGYADbEmykJ9/E98zHAlt4MpQYAOrdtN4c10nXXqpExpOePvJTcSb1U/
         V9tw==
X-Received: by 10.70.44.36 with SMTP id b4mr11425768pdm.134.1425067062177;
        Fri, 27 Feb 2015 11:57:42 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ep2sm4686270pbc.78.2015.02.27.11.57.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:57:41 -0800 (PST)
Date: Sat, 28 Feb 2015 01:27:19 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove dead code
Message-ID: <20150227195719.GA32735@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The if condition is always false and the variables are
unused elsewhere in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index b6b6b0b..7dbdbe7 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1456,15 +1456,12 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 
 void rtl88eu_phy_lc_calibrate(struct adapter *adapt)
 {
-	bool singletone = false, carrier_sup = false;
 	u32 timeout = 2000, timecount = 0;
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
 
 	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
 		return;
-	if (singletone || carrier_sup)
-		return;
 
 	while (*(dm_odm->pbScanInProcess) && timecount < timeout) {
 		mdelay(50);
-- 
1.9.1


