X-GM-THRID: 3944967307264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a1a213d6f9d424d4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.40.112 with SMTP id e76mr15917916yhb.5.1425065438211;
        Fri, 27 Feb 2015 11:30:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.41 with SMTP id if9ls306407igb.17.gmail; Fri, 27 Feb
 2015 11:30:37 -0800 (PST)
X-Received: by 10.70.91.67 with SMTP id cc3mr2517582pdb.2.1425065437958;
        Fri, 27 Feb 2015 11:30:37 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ri9si603462pdb.1.2015.02.27.11.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:30:37 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so24923789pad.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=P7O+mGtG0CQcXmfrVycBHC/8zENIbvN4dkQkvbRlFzA=;
        b=v7MARAgcs3hM49xbtlrBvlj/QE5sgh1Uv8BeIVyLXWRxZJeviv74ac+Kvfy0G5GS1H
         kkLTffw9JSC1gC2hUNpxTt1rN2pw+y+kFqwB4odFNU6Pw64UdwkfBsMtZ5m+4fOMJl4j
         y+yFymtA3o7u5KrZXPVAqhkImCPLOcnv4y2K/EyZFz6MNZFHd2C4lc04bRWdhqqdnpX5
         IWG7FG2ogMMa6T3na/2t2dlpQ2fDY7xVxcP6RY0bTmeqyFg7c476Nn5kXMO7INSOw5hm
         In9rGE1JidaRJQ8bDRAJFkhujxLXQa2hP15zkI564LlDJnZC5eAQfgbtXMXXtNqX+Hrp
         yOeA==
X-Received: by 10.66.254.68 with SMTP id ag4mr26549798pad.39.1425065437784;
        Fri, 27 Feb 2015 11:30:37 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id xx7sm4766746pab.21.2015.02.27.11.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:30:36 -0800 (PST)
Date: Sat, 28 Feb 2015 01:00:15 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unnecessary if condition
Message-ID: <20150227193015.GA30908@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The variable final will never retain its original value of 0xff
so the else branch can be eliminated.
The loop is eliminated as the reg values are reassigned.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 47 +++++++++++--------------------------
 1 file changed, 14 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index d5b5998..b6b6b0b 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1418,40 +1418,21 @@ void rtl88eu_phy_iq_calibrate(struct adapter *adapt, bool recovery)
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
+	dm_odm->RFCalibrateInfo.RegE94 = reg_e94;
+	dm_odm->RFCalibrateInfo.RegE9C = reg_e9c;
+	dm_odm->RFCalibrateInfo.RegEB4 = reg_eb4;
+	dm_odm->RFCalibrateInfo.RegEBC = reg_ebc;
+	pathaok = true;
+	pathbok = true;
 
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


