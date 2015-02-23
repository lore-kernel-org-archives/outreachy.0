X-GM-THRID: 2819880910848
X-Received: by 10.66.90.200 with SMTP id by8mr11477187pab.38.1424691811342;
        Mon, 23 Feb 2015 03:43:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.96.33 with SMTP id dp1ls667730obb.69.gmail; Mon, 23 Feb
 2015 03:43:31 -0800 (PST)
X-Received: by 10.183.10.164 with SMTP id eb4mr11023157obd.48.1424691811145;
        Mon, 23 Feb 2015 03:43:31 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id bx1si3109086pdb.2.2015.02.23.03.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 03:43:31 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by paceu11 with SMTP id eu11so26873691pac.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 03:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7OHcRaxCMfnaGvgIuBDtSCyQNzsNurRMdnfsghAgPxQ=;
        b=NXtPjDVIqTGAqzDqM2LvTaUBqcOXV+SN+oxMSWqavVx5IFm43VzFSEdx1Q2wcej9Mf
         +pldGRhzZS2wgRWz44mkcWgGNbbAf+z+TKl86mN1WLQKlBkvZAiUBmsr1f+RfDPYte+J
         oMdKo98yIqtyRCsShScEDLr+cXoDal85BA76SuHPzGu/ssfDwLTRuuqLUIDi/sgxyXpC
         vfYC9dnpGVsXtKj7GPMsz2+8OeeZxGsZu57EgPLTJAlj5JTo8gnJKbRjUPQVKmvyWSYw
         TqK/IO4Xf9M/cbQU7o+MFhIRJik2+Fwf4ZZKHR2+RTHQoNzL4qS/aKHqiLb0/7GYMwxv
         zEEA==
X-Received: by 10.68.232.200 with SMTP id tq8mr18235547pbc.133.1424691810978;
        Mon, 23 Feb 2015 03:43:30 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id f3sm34313916pdn.89.2015.02.23.03.43.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 03:43:29 -0800 (PST)
Date: Mon, 23 Feb 2015 17:13:12 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Remove redundant if condition
Message-ID: <20150223114312.GA7095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if condition as !result is always false.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
Changes in v3: Removed unneeded newline after if condition to
		follow kernel coding conventions.
Changes in v2: Removed {} around the outer if condition as
                it has single statement.

 drivers/staging/rtl8188eu/hal/phy.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3950cb3..c20881d 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -359,7 +359,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	u8 tmpchannel = hal_data->CurrentChannel;
-	bool  result = true;
 
 	if (hal_data->rf_chip == RF_PSEUDO_11N)
 		return;
@@ -369,15 +368,10 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 
 	hal_data->CurrentChannel = channel;
 
-	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
+	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
 		phy_sw_chnl_callback(adapt, channel);
-
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


