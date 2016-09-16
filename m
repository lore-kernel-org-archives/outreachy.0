X-GM-THRID: 6330498915146661888
X-Received: by 10.200.54.118 with SMTP id n51mr10055032qtb.29.1474023202053;
        Fri, 16 Sep 2016 03:53:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls1032172itc.12.gmail; Fri, 16 Sep
 2016 03:53:19 -0700 (PDT)
X-Received: by 10.107.152.132 with SMTP id a126mr10738952ioe.28.1474023199969;
        Fri, 16 Sep 2016 03:53:19 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si2669045pab.1.2016.09.16.03.53.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 03:53:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so3362638pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 03:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QYJ4zHU+5zl1YR6hXCYsubrCczpgO7Q32dmKsSoa0u0=;
        b=mWoVaGSBD6RGJ1xyenlctV5O4N5UTFGymkCa+z7w5O8WsZhUrkwdJkIfiEm2fP04e6
         e/qY9pLcl3zljUvFihoGq89+qmIoWYsf0hITMGRhFUui/OFhxHP+FgZ5F9I+3VhNRGAM
         mx2BdidHgX9U8ExQ77XhNfBFmt0OsSw6b9vgiY/w2SjWjjpUtTBCnKbOHRjN4b/Dyw4M
         rGE/Mlg6tDlsJVyDMEn9YhGI7aBIcYNMfM3nxs/nfvU6j3Y3rJkbX4Tnkevx9nIx5SRI
         0I9825WtP8TdWbef9DxG/gdvIHhVsVzdbDo8S2wjd1pqSjb8OlkZqIl5XvPUaBkEppri
         PBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QYJ4zHU+5zl1YR6hXCYsubrCczpgO7Q32dmKsSoa0u0=;
        b=W/t2hbkNFhKVldXos5yHsa7Lt1u47Oblp+PX789PWZDcZhajNdYoEyVOQVjBuCyTCa
         mQnA8mbXRPx3peOrA28VN3TU2406eBCeMAKlLB1T1NIdDqxw4HmPF/l95MGsB4zzHC7Z
         X7abA3yaQ2g/LjC+P5Zmw34gUXUvLx8SK9n6WF26sMOJFxQQEM8TOYY4wDFII0CSxE4q
         NXRZHxu8ey88H4+U93gfKa6XgyY5duunCHDKnXjOwxwfFBCH6N1jyMrjKfRIhPjx6hzL
         X+UgTuWPQIWUpDR0od71YqJ2ZRSv44xagVh/WVHRwrOVCe/cXyP6YEam9HJEP+wCDc4M
         Ufqw==
X-Gm-Message-State: AE9vXwOcrDGnv/UR2qUjP2+/2z38TwMrm4gDOeJmBM0JI4ZJNbmNZX9NdWU20DrTvScdcw==
X-Received: by 10.66.185.232 with SMTP id ff8mr22203799pac.12.1474023199713;
        Fri, 16 Sep 2016 03:53:19 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id p17sm51385099pfi.7.2016.09.16.03.53.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 03:53:19 -0700 (PDT)
Date: Fri, 16 Sep 2016 16:23:02 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: wilc1000: Use sizeof type *pointer instead of
 sizeof type
Message-ID: <20160916105302.GA19913@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch uses the size of the dereference to a variable instead of it's type,
to make the code more resistant to type changes in the future. The type of the
pointer variable here is the same as the type in the argument that is being
replaced in sizeof().

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v3: Updated the subject to include the driver name.
v2: Updated the commit message.

 drivers/staging/wilc1000/host_interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 78f524f..d0cb568 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3329,7 +3329,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 
 	init_completion(&hif_wait_response);
 
-	hif_drv  = kzalloc(sizeof(struct host_if_drv), GFP_KERNEL);
+	hif_drv  = kzalloc(sizeof(*hif_drv), GFP_KERNEL);
 	if (!hif_drv) {
 		result = -ENOMEM;
 		goto _fail_;
@@ -3878,7 +3878,7 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
 	pu8IEs = ptstrNetworkInfo->ies;
 	u16IEsLen = ptstrNetworkInfo->ies_len;
 
-	pNewJoinBssParam = kzalloc(sizeof(struct join_bss_param), GFP_KERNEL);
+	pNewJoinBssParam = kzalloc(sizeof(*pNewJoinBssParam), GFP_KERNEL);
 	if (pNewJoinBssParam) {
 		pNewJoinBssParam->dtim_period = ptstrNetworkInfo->dtim_period;
 		pNewJoinBssParam->beacon_period = ptstrNetworkInfo->beacon_period;
-- 
2.7.4


