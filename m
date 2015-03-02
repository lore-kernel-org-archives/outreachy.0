X-GM-THRID: 5841740627968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2202a9cb6df1b0d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.161.6 with SMTP id me6mr26543839icc.21.1425277464899;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.195 with SMTP id ti3ls533752obc.38.gmail; Sun, 01 Mar
 2015 22:24:24 -0800 (PST)
X-Received: by 10.182.50.161 with SMTP id d1mr25693471obo.28.1425277464722;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id xj4si1374102pbc.2.2015.03.01.22.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id bj1so15204230pad.11
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 22:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+2cdVzLV2mmZxfgx1ZILEA5NWT2ehcz0yaMvxb77Tvg=;
        b=oRSL31nS4v6PPEJ1Pt6b7C4xXBylSceUN9yWqBry/0FfEEbp9fNygF8oPM5SAsv4FQ
         vV5ZyBVnXiGQPNuX7xY9M7MAyzHx5vuXEe9MQ/hN1jZjQXpmQFkYTkq2VL+vGp/7NGal
         JHxN9sFhhaMFMwu0DR0PZ+T8CxC5ToJCDkz4vq5x61SbMmhtaVjQR/olsPjV3Slo6uSt
         c0IpeirdUEHO5I9eBL0Fhm76x2vheQS7Ej3H2TxA2GyKW24MYVs0lXfHTlKlNVhAx7uz
         /NHAg6dwlWNLq1dIBLV8WgOGicisSYrzv/vpR0rnM1h7qSzh45aNt2U7kHG77CfN2ylM
         seKQ==
X-Received: by 10.70.140.130 with SMTP id rg2mr44344881pdb.49.1425277464624;
        Sun, 01 Mar 2015 22:24:24 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([183.82.106.99])
        by mx.google.com with ESMTPSA id ot6sm10807248pdb.28.2015.03.01.22.24.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 22:24:23 -0800 (PST)
Date: Mon, 2 Mar 2015 11:52:55 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: rtl8188eu: Remove unnecessary if condition
Message-ID: <17e0406f62f4646e60f790f3bdad405211aa9cd3.1425276736.git.vatikaharlalka@gmail.com>
References: <cover.1425276736.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425276736.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The variable final will never retain its original value of 0xff
so the else branch can be eliminated.
The loop is eliminated as the reg values are reassigned.
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 47 +++++++++++--------------------------
 1 file changed, 14 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 2bbdcca..8148201 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1393,40 +1393,21 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
 		}
 	}
 
-	for (i = 0; i < 4; i++) {
-		reg_e94 = result[i][0];
-		reg_e9c = result[i][1];
-		reg_ea4 = result[i][2];
-		reg_eac = result[i][3];
-		reg_eb4 = result[i][4];
-		reg_ebc = result[i][5];
-		reg_ec4 = result[i][6];
-		reg_ecc = result[i][7];
-	}
+	reg_e94 = result[final][0];
+	reg_e9c = result[final][1];
+	reg_ea4 = result[final][2];
+	reg_eac = result[final][3];
+	reg_eb4 = result[final][4];
+	reg_ebc = result[final][5];
+	reg_ec4 = result[final][6];
+	reg_ecc = result[final][7];
+	pathaok = true;
+	pathbok = true;
+	dm_odm->RFCalibrateInfo.RegE94 = reg_e94;
+	dm_odm->RFCalibrateInfo.RegE9C = reg_e9c;
+	dm_odm->RFCalibrateInfo.RegEB4 = reg_eb4;
+	dm_odm->RFCalibrateInfo.RegEBC = reg_ebc;
 
-	if (final != 0xff) {
-		reg_e94 = result[final][0];
-		reg_e9c = result[final][1];
-		reg_ea4 = result[final][2];
-		reg_eac = result[final][3];
-		reg_eb4 = result[final][4];
-		reg_ebc = result[final][5];
-		dm_odm->RFCalibrateInfo.RegE94 = reg_e94;
-		dm_odm->RFCalibrateInfo.RegE9C = reg_e9c;
-		dm_odm->RFCalibrateInfo.RegEB4 = reg_eb4;
-		dm_odm->RFCalibrateInfo.RegEBC = reg_ebc;
-		reg_ec4 = result[final][6];
-		reg_ecc = result[final][7];
-		pathaok = true;
-		pathbok = true;
-	} else {
-		ODM_RT_TRACE(dm_odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,
-			     ("IQK: FAIL use default value\n"));
-		dm_odm->RFCalibrateInfo.RegE94 = 0x100;
-		dm_odm->RFCalibrateInfo.RegEB4 = 0x100;
-		dm_odm->RFCalibrateInfo.RegE9C = 0x0;
-		dm_odm->RFCalibrateInfo.RegEBC = 0x0;
-	}
 	if (reg_e94 != 0)
 		patha_fill_iqk(adapt, pathaok, result, final,
 			       (reg_ea4 == 0));
-- 
1.9.1


