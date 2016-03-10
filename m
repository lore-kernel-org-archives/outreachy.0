X-GM-THRID: 6260488708355522560
X-Received: by 10.66.146.194 with SMTP id te2mr3545287pab.17.1457633615088;
        Thu, 10 Mar 2016 10:13:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.11 with SMTP id g11ls2107964qgf.2.gmail; Thu, 10 Mar
 2016 10:13:34 -0800 (PST)
X-Received: by 10.140.147.139 with SMTP id 133mr3574472qht.21.1457633614375;
        Thu, 10 Mar 2016 10:13:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ui7si748190pab.0.2016.03.10.10.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:13:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fl4so72399049pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 10:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=glWiRT/H7YoSh5WpU0/4vSUCgRN2bW1GKup4RdT4oAA=;
        b=PgZhOhZ1wRrva8vrREO4m94J6XIr2BnEvWOyZRrh8pjm9xUR4XsKgCwMtIiYDABP/p
         d/AeZ/7EihaZYhpFhj1HcMdQZRU5DXVL1CSYWHvb1k4GnAV1nA10/3wNRr9pxL0puMuM
         E3K+V0NUspK5MtZDWEn5ZI/0EVmuMXVFd/7k1gMhfuTzrE0RPTDUu+Nf4g1G3x6/LbUa
         F0fUmGW8FicmeNuIoeNEDrYDbgMBQMz4emKiJk+JxpbIj1dfAG6etWgw6TSvHoA+SqyN
         HiCFhpOFnH0Tp0TcK9kbCrroXKVDQ66DFNOWm6KKQ2JJ12fS8AOrW8ooQpY1iFglleee
         aCow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=glWiRT/H7YoSh5WpU0/4vSUCgRN2bW1GKup4RdT4oAA=;
        b=ACCrXOSXd6utDCxTXxjbIMW6J8tbqD6wyRYA8KM/sqkfJm0BeuaC87BHg9J5mwgcT/
         fsyJ49JqGgGYk/KVxMJ8/1HJd4LpBXp5omRck++pCABW3xmz8GRKOUHGgUphzTraNESS
         Se5ybkH2mXO9Iz1km6BMUyoEzuapDTZ0FsNWtT3dtIg0h0dvnks71VNWqJqDnViJGLvR
         RFmGKRb6iQUDFAO8BgbwiQofyYD4qzaZZ0TDk2FKxSsqxeTYTK15js83AAMJ/X4GTv4l
         O3p1rSajsIIbPhed7FiiZdL4pLnQwgbE2itepihuVWpFOSrROdaCAQ8vb0oRqAVM6aN/
         /5bw==
X-Gm-Message-State: AD7BkJI/yiwsoHwAjNNgf7Rr6l8PnBOu3ZwsvgNQKVfOe1GytTOmBYtz8T8/5UB6UhghqQ==
X-Received: by 10.66.141.42 with SMTP id rl10mr7080451pab.48.1457633614019;
        Thu, 10 Mar 2016 10:13:34 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t76sm7140593pfi.7.2016.03.10.10.13.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 10:13:33 -0800 (PST)
Date: Thu, 10 Mar 2016 23:31:22 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: hal: Remove unnecessary function and its
 call
Message-ID: <20160310180122.GA20665@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function odm_DynamicBBPowerSaving23a on being called, simply returns
back. The function hasn't been mentioned in the TODO and doesn't have FIXME
code around. Hence, odm_DynamicBBPowerSaving23a and its calls have been
removed.

This was done using Coccinelle.

@@
identifier f;
@@

void f(...) {

-return;

}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/hal/odm.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/odm.c b/drivers/staging/rtl8723au/hal/odm.c
index 45d70fd..e279c34 100644
--- a/drivers/staging/rtl8723au/hal/odm.c
+++ b/drivers/staging/rtl8723au/hal/odm.c
@@ -185,7 +185,6 @@ void odm_CCKPacketDetectionThresh23a(struct dm_odm_t *pDM_Odm);
 /* START-------BB POWER SAVE----------------------- */
 void odm23a_DynBBPSInit(struct dm_odm_t *pDM_Odm);

-void odm_DynamicBBPowerSaving23a(struct dm_odm_t *pDM_Odm);

 /* END---------BB POWER SAVE----------------------- */

@@ -270,7 +269,6 @@ void ODM_DMWatchdog23a(struct rtw_adapter *adapter)

 	odm_RefreshRateAdaptiveMask(pDM_Odm);

-	odm_DynamicBBPowerSaving23a(pDM_Odm);

 	odm_EdcaTurboCheck23a(pDM_Odm);
 }
@@ -894,10 +892,6 @@ void odm23a_DynBBPSInit(struct dm_odm_t *pDM_Odm)
 	pDM_PSTable->initialize = 0;
 }

-void odm_DynamicBBPowerSaving23a(struct dm_odm_t *pDM_Odm)
-{
-	return;
-}

 void ODM_RF_Saving23a(struct dm_odm_t *pDM_Odm, u8 bForceInNormal)
 {
--
2.1.4


