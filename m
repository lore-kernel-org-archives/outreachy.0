X-GM-THRID: 6330521261250183168
X-Received: by 10.98.22.149 with SMTP id 143mr5998295pfw.10.1473939339428;
        Thu, 15 Sep 2016 04:35:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls1003198ioo.47.gmail; Thu, 15 Sep
 2016 04:35:37 -0700 (PDT)
X-Received: by 10.36.204.197 with SMTP id x188mr1783522itf.11.1473939337335;
        Thu, 15 Sep 2016 04:35:37 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si2546134pfe.0.2016.09.15.04.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 04:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so2040143pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 04:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qblJX2kA88KQPkbmaM5eDLqhkgDeLNeQk1BU5GHS1UI=;
        b=hkZFjmzcF+eswV/Wyr9kTWlhhc1mmIjNm/SdF3vKnAhwDD2LCTKrQUcbPMjW6Uor+9
         CEVnByJSB759HeDzD1yDBSfxN/9jsgAdNrh0tQpN7It9k6SSNlQfxdqqnmZNW3Rd7zl/
         z0/Ke9U4JNzKUJ37yYnpnD6Gb2hgInNiu98soiGLCI3G1/W4pOBCSYgYC9Z1mRCqM8Gw
         /S7FFcTD+oQJh5BMP7WdbBdvRyEXaR8pn51bpaXbPFyftw0GXysbw1lYfh34gus/F/b0
         f97vP70j4l3qfhby9e5nEqNqpI70NO7PwKiG5MDePoHBWwM3JMfoFFwqRB33E0qgS2Zf
         zRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qblJX2kA88KQPkbmaM5eDLqhkgDeLNeQk1BU5GHS1UI=;
        b=XRx3Spq7cGaHS/4+471vGqV7qGveOHp6X6mJHILEGw0L8SZSmWJRliT+0s2PcD/4eD
         DtyDHELV+HYfvRCnAlk9XBz2Exlfsbj153Xxk5LqSsT7VnrRjo25RhLcgkKCvv+1JNLW
         yWmCyVJEzDf5ycv0hDArSiy7pJiQcZRfdOl1QPcq67Q9pcopHAVWXnfnBLOCo39hNaRV
         JW9CJDpQgmi2wgHkEqqsHhsxl+lJTDtoJ3p4Bb6297RNP9Pmvspys1DrADdV3Gka51en
         b8AfkOCfND443duX3XTDLbMbcFB09NAWfweogesiwhBEWLKQJmDPjUzG+0ppdh7vmpKu
         Mbqw==
X-Gm-Message-State: AE9vXwNuK9126t1l26rT5QAxzWraECkXNx6Z9etIVobshJJOm/mq/RQyhTtHw8oQ41Wk2Q==
X-Received: by 10.66.147.105 with SMTP id tj9mr1442492pab.42.1473939336977;
        Thu, 15 Sep 2016 04:35:36 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.236.194])
        by smtp.gmail.com with ESMTPSA id d9sm4650061pan.7.2016.09.15.04.35.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 04:35:36 -0700 (PDT)
Date: Thu, 15 Sep 2016 17:05:08 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] Use sizeof type *pointer instead of sizeof type
Message-ID: <20160915113508.GA6773@sayli-HP-15-Notebook-PC>
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


