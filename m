X-GM-THRID: 5841740627968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2202a9cb6df1b0d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.224.169 with SMTP id rd9mr24018944obc.41.1425277467106;
        Sun, 01 Mar 2015 22:24:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.209 with SMTP id k200ls1163631ioe.20.gmail; Sun, 01
 Mar 2015 22:24:26 -0800 (PST)
X-Received: by 10.66.187.68 with SMTP id fq4mr12657120pac.28.1425277466903;
        Sun, 01 Mar 2015 22:24:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si1422467pac.0.2015.03.01.22.24.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 22:24:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id lf10so40883198pab.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 22:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2/Q+RyRd1r5GNzRxdgcYsJW8eF13/riCzM+eVS3F2GQ=;
        b=OnlK6YWqQc4yUa9c07/geh7Ygk14Ymx1kUilRDcYcYCXPcmiE1q6SexLB9FG0g9hrk
         AJDtjld5sIGuYJf1NdJxh9SiKkWpizMzJFaZXN3nuMGi3/b0Uz+HKUZY59wgnzJbvSze
         gL6eyiNcweCAcA0CY4GXSS1sZBzNqIT/1Rk9wT7zFpKNIfs6gur9DEjgXUr+vdcvbHvW
         Lurg1vzffQY/cNBFc55MHRHjOStfgswbsG82XPAt1pYTVVW+RPmAnW5D1+M+tN+q9+FY
         2sDLqBuJzTXI9oj9VPB7GLlFdsNibs/6s3Wl77/70hHcfoOPco9gZ+EP3Iy/WlQNyfjP
         EJfQ==
X-Received: by 10.69.4.33 with SMTP id cb1mr44475979pbd.63.1425277466830;
        Sun, 01 Mar 2015 22:24:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([183.82.106.99])
        by mx.google.com with ESMTPSA id gv2sm10813583pbc.8.2015.03.01.22.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 22:24:25 -0800 (PST)
Date: Mon, 2 Mar 2015 11:52:57 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: rtl8188eu: Remove dead code.
Message-ID: <7d18ad2a7999a32c142a0c35a05cca9026d20704.1425276736.git.vatikaharlalka@gmail.com>
References: <cover.1425276736.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425276736.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The if condition is always false and the variables are
unused elsewhere in the code.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 8148201..6f05ff7 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1327,7 +1327,6 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 	s32 reg_e94, reg_e9c, reg_ea4, reg_eac, reg_eb4, reg_ebc, reg_ec4,
 	    reg_ecc;
 	bool is12simular, is13simular, is23simular;
-	bool singletone = false, carrier_sup = false;
 	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
 		rOFDM0_XARxIQImbalance, rOFDM0_XBRxIQImbalance,
 		rOFDM0_ECCAThreshold, rOFDM0_AGCRSSITable,
@@ -1341,9 +1340,6 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 	if (!(dm_odm->SupportAbility & ODM_RF_CALIBRATION))
 		return;
 
-	if (singletone || carrier_sup)
-		return;
-
 	if (recovery) {
 		ODM_RT_TRACE(dm_odm, ODM_COMP_INIT, ODM_DBG_LOUD,
 			     ("phy_iq_calibrate: Return due to recovery!\n"));
-- 
1.9.1


