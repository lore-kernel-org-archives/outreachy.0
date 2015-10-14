X-GM-THRID: 6205568801455472640
X-Received: by 10.66.146.131 with SMTP id tc3mr3934217pab.20.1444846578099;
        Wed, 14 Oct 2015 11:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.16.165 with SMTP id h5ls154902obd.93.gmail; Wed, 14 Oct
 2015 11:16:16 -0700 (PDT)
X-Received: by 10.182.79.70 with SMTP id h6mr718347obx.22.1444846576304;
        Wed, 14 Oct 2015 11:16:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si962540pac.2.2015.10.14.11.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:16:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ur7so11993847pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EdN9GNjO6X+DTs83Oi1Rp+Z/6JJN2gDEEJGLbXuQsaA=;
        b=GdvPbO781rcF9MBB3BcIxkU7AR+rmWoW2Pj1qNKNmWlCOZ59O174cmgbBnGNDx8YAP
         nLam1soJuQabYVGy63ituqaJYs9/PZhyrH6hpXHdWlJkY8JAWHXibw8LwPnly+tfrjiz
         8ESkDIXc8RMHhvI5bsQY33CKm3bGPZnp6vak/QGbTT4WLgdkiMHrASOMeqfGfRC5kQi5
         956Pt6QWMQMKIsOXb0Lgj4yB7f/9pqNPqI/lZRW5Rl2cHzDpGYMHSu2HUfjdp6r3oAg1
         P2g/HYr2vEq8MOTlP9dZEcC/J4juQJkauk05UBaN30a+WytXXk3qcE5uL53yUHk22EZh
         Zm5A==
X-Received: by 10.66.141.70 with SMTP id rm6mr5030111pab.20.1444846576187;
        Wed, 14 Oct 2015 11:16:16 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ze3sm10963502pac.5.2015.10.14.11.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:16:15 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:46:05 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: rtllib_softmac: Remove useless cast
Message-ID: <20151014181605.GA24341@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type conversion is not required to remove it.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 3bc4223..d0fedb0 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1520,8 +1520,7 @@ static void rtllib_associate_complete_wq(void *data)
 				     container_of_work_rsl(data,
 				     struct rtllib_device,
 				     associate_complete_wq);
-	struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
-					(&(ieee->PowerSaveControl));
+	struct rt_pwr_save_ctrl *pPSC = &(ieee->PowerSaveControl);
 	netdev_info(ieee->dev, "Associated successfully\n");
 	if (!ieee->is_silent_reset) {
 		netdev_info(ieee->dev, "normal associate\n");
@@ -1974,8 +1973,7 @@ static short rtllib_sta_ps_sleep(struct rtllib_device *ieee, u64 *time)
 {
 	int timeout = ieee->ps_timeout;
 	u8 dtim;
-	struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
-					(&(ieee->PowerSaveControl));
+	struct rt_pwr_save_ctrl *pPSC = &(ieee->PowerSaveControl);
 
 	if (ieee->LPSDelayCnt) {
 		ieee->LPSDelayCnt--;
-- 
2.1.0


