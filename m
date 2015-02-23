X-GM-THRID: 2788406853632
X-Received: by 10.42.14.145 with SMTP id h17mr11690423ica.19.1424690733444;
        Mon, 23 Feb 2015 03:25:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.199 with SMTP id z7ls659525obk.0.gmail; Mon, 23 Feb
 2015 03:25:33 -0800 (PST)
X-Received: by 10.182.142.102 with SMTP id rv6mr11966226obb.47.1424690733253;
        Mon, 23 Feb 2015 03:25:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id nt14si2421545pab.2.2015.02.23.03.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 03:25:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so24761767pdn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 03:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bKk1PCNWk3SjeKrGlWCNOQr9gfsUaDIzi246VW02jnk=;
        b=w7p9pPVDX8l9w2pB+0kfk95Od0Fw4hGQ/9lf9xa6pg3P3EViku829nOCK4d04+CuAO
         7OMdvVz+PvhWDW+oOeGwytxf8YH4qVUNRQMGBqyOeC4tn2M4p/ki2MGYW8eHWeuV3mes
         1ufp4AQba2JEkuyj1B3++L1IZIOeiRp7o8p1wIt1ydtdgPUvkMIILPtd0kYKwCR8dfWy
         sHK1tl5k/idMvsIHVIAutpaA87PYHTZ1fMcN2VgPtfhqHyYRoXcduJbxGWHCScCqKgDW
         lxPQWJDZ7TbWT6sjCPCGihjcxrQ0ZcCZXnPUMpJoldI9Q5dXaIQc5PGlIO5Owr3BcF5u
         Y+KA==
X-Received: by 10.70.20.164 with SMTP id o4mr18395728pde.106.1424690733135;
        Mon, 23 Feb 2015 03:25:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id rj7sm35213258pbc.58.2015.02.23.03.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 03:25:32 -0800 (PST)
Date: Mon, 23 Feb 2015 16:55:13 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Remove redundant if condition
Message-ID: <20150223112513.GA6967@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if condition as !result is always false.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Removed {} around the outer if condition as 
		it has single statement.

 drivers/staging/rtl8188eu/hal/phy.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 341f0db..2806e86 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -345,7 +345,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	u8 tmpchannel = hal_data->CurrentChannel;
-	bool  result = true;
 
 	if (hal_data->rf_chip == RF_PSEUDO_11N)
 		return;
@@ -355,15 +354,11 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 
 	hal_data->CurrentChannel = channel;
 
-	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
+	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
 		phy_sw_chnl_callback(adapt, channel);
 
-		if (!result)
-			hal_data->CurrentChannel = tmpchannel;
-
-	} else {
+	else
 		hal_data->CurrentChannel = tmpchannel;
-	}
 }
 
 #define ODM_TXPWRTRACK_MAX_IDX_88E  6
-- 
1.9.1


