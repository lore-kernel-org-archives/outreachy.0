X-GM-THRID: 6330498915146661888
X-Received: by 10.157.63.161 with SMTP id r30mr5810458otc.24.1473934137090;
        Thu, 15 Sep 2016 03:08:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.195 with SMTP id d186ls348662itc.15.gmail; Thu, 15 Sep
 2016 03:08:53 -0700 (PDT)
X-Received: by 10.98.100.3 with SMTP id y3mr5726420pfb.8.1473934133813;
        Thu, 15 Sep 2016 03:08:53 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si2496371pfx.2.2016.09.15.03.08.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 03:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so611899pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1xKhuoxnTscpbA2TFYJ4rh/NY+OdOlq2jEA7+PZvEU8=;
        b=PBGw2JJSPGXeA5pHZRl5udde+TjZlTK2m6k7aYsC/hlpGook3lF+Xn3ulEJ4+TDyZO
         diVC5dqMyehWhUW920fTj+5xfCKHQlO04vlmjFZrTd+hu0d15hui24pfBbM4xPBC4r5M
         WubfBWS4giZTmwX2TOJ8wiRzJP6MB5ypMABLlm/qo/A6nnLhT08EhHBIU4BkUtPCce9x
         YCLm3VLFISCtq3dhyOx7OBgACtO1Bwe64wF+vvEhddVJ2R9WcrZeI+BVAdRZ+VGabv0K
         OJYbR+F4aGgxpeORh9pEm+YDAMsAt/HDxC5IRWBVRBdlch3SUTWdDDke7Ak+jclHc0qE
         PbCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1xKhuoxnTscpbA2TFYJ4rh/NY+OdOlq2jEA7+PZvEU8=;
        b=Yi7swQI02tgQtqv4l1ZoPve5Gc3vfGHRPZUFqSrwyCum1RRUXnAXVUKDT+ZBWGBUE4
         0/SVtwmE9rZDqzCJYehvgc8NMVc81OAjptszrJiuzS5DTiJNPM+e8BWnBWAyLT7ams3E
         OvZ53ar6+paMuiGG1Ea9LfR24osbk6k/+gJVuDVh4WLLodaUCSNmnaKy9MeIRSUwD6Lr
         V+RB+QfhFM4HKm1pLVdaa/qIRDws2u583CWD7+GsVx34Xek8j1hod6NE/wVVTGPP6LyB
         B2hFnq2GPRA9gtK1f/ENP/eZgkKlSCs2gGPzTEJixVVa0tynw/AKQs0F+iUW/X8UsBgk
         NMdA==
X-Gm-Message-State: AE9vXwMAfQcZvedcQ56XBH5JZTUgWml8Us8osDOmJbqxugQuS/c9G+Cz+smJ4qoRKmCLbw==
X-Received: by 10.98.64.193 with SMTP id f62mr13045093pfd.141.1473934133662;
        Thu, 15 Sep 2016 03:08:53 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.236.194])
        by smtp.gmail.com with ESMTPSA id 3sm44051236pfz.33.2016.09.15.03.08.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 03:08:53 -0700 (PDT)
Date: Thu, 15 Sep 2016 15:38:34 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: wilc1000: Use sizeof type *pointer instead of
 sizeof type
Message-ID: <20160915100834.GA5703@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces sizeof type with sizeof type pointer as suggested by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
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


