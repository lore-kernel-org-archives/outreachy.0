X-GM-THRID: 2788406853632
X-Received: by 10.50.2.71 with SMTP id 7mr10919167igs.4.1424688198791;
        Mon, 23 Feb 2015 02:43:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.131 with SMTP id l3ls2348059qgl.5.gmail; Mon, 23 Feb
 2015 02:43:18 -0800 (PST)
X-Received: by 10.140.149.78 with SMTP id 75mr11231211qhv.9.1424688198636;
        Mon, 23 Feb 2015 02:43:18 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id xj4si3798590pbc.2.2015.02.23.02.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 02:43:18 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padbj1 with SMTP id bj1so26577679pad.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 02:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=um8dvWGxZziB/7n9rUrucaXsKUE9rw1JnZMmh5Tu+u0=;
        b=B+gtO9/XixU1mnhoCr0HXWYggbgTN2VHirXBMtYqVABS4vLJyahaRD3lQ/8Q4eauwK
         epZjyLiljtwzmRWPn01JcsijMRQ22K0aUeh8UTfGLlgK4TWcIaEPpIJtJlwIVQuF9n0U
         +4FUUypupdZQhHkk6H4s/CxTyFwzs1Ey/yuerUNLgdvfAqHC5gJS5vFXH6OlDNDlUXv7
         RII5XH+7qfZ3wcnvj4/Q9kPHSSPEirem1BC74grvlY9k3xsP/kO3nMsM1PBPTPQhiUz7
         rcs1TH5uA9LxB0Yo2pVnBpY+P4G4Pf2INLi8NQuBTEA6YIPWkpe4k5BcqWi1kipNpbVi
         doQw==
X-Received: by 10.70.137.99 with SMTP id qh3mr18180818pdb.39.1424688198496;
        Mon, 23 Feb 2015 02:43:18 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id xx7sm35534205pab.21.2015.02.23.02.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 02:43:17 -0800 (PST)
Date: Mon, 23 Feb 2015 16:12:59 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove redundant if condition
Message-ID: <20150223104259.GA6583@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if condition as !result is always false.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 341f0db..192d764 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -345,7 +345,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	u8 tmpchannel = hal_data->CurrentChannel;
-	bool  result = true;
 
 	if (hal_data->rf_chip == RF_PSEUDO_11N)
 		return;
@@ -358,9 +357,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
 		phy_sw_chnl_callback(adapt, channel);
 
-		if (!result)
-			hal_data->CurrentChannel = tmpchannel;
-
 	} else {
 		hal_data->CurrentChannel = tmpchannel;
 	}
-- 
1.9.1


