X-GM-THRID: 3830218489856
X-Received: by 10.66.190.104 with SMTP id gp8mr9423689pac.26.1424974681104;
        Thu, 26 Feb 2015 10:18:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.129 with SMTP id po1ls85583obc.18.gmail; Thu, 26 Feb
 2015 10:18:00 -0800 (PST)
X-Received: by 10.183.10.164 with SMTP id eb4mr8642491obd.48.1424974680899;
        Thu, 26 Feb 2015 10:18:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id ks4si212733pbc.1.2015.02.26.10.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:18:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id y10so14652924pdj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 10:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nXyo8Aq/kLPPqC1iYA4Nzi5DG+DPUzC/r2mPKhQc4R8=;
        b=nRELrO5CoKm5JAUB0kNZqFuSNXrGYHNvaO2v2Yvq+j1bOh2t1DURPIwPr1F89Qcgek
         je5dl44gpILhZj6VbgiZR5M0vSWEYuMkPZ8k7OQWJ4bRFpQvgLQykIY9SOXMdgwKs+Ah
         FrAZU+/lISi7JJiWeFd82J8RWqWbyoHuGujC55TJsDoLTQ5zMMLs8VagKcnA6vcv5EQ7
         CVqDy5AzWBase6djxHyEwDNe/MNx2HJWLTO8VkN4GQTR+dXZplUicsRTYoA7cveSXxiI
         kA6XSH2d2Iv88N8EZeLb6eRLNh+4UJ1iLPf8j8a9PcDJyePBP8H+Q7AHpG0HbF5pw6Zy
         PA9Q==
X-Received: by 10.70.26.100 with SMTP id k4mr16919595pdg.125.1424974680768;
        Thu, 26 Feb 2015 10:18:00 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id q3sm1708223pdo.16.2015.02.26.10.17.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 10:17:59 -0800 (PST)
Date: Thu, 26 Feb 2015 23:47:39 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Combine two loops to increase readability
Message-ID: <20150226181739.GA30297@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The first loop assigns values to ofdm_index array and the
second checks for boundary conditions. They are combined and 
a comment is added to increase clarity.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 1d9c662..5822ca6 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -602,17 +602,17 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 			}
 			if (offset >= index_mapping_NUM_88E)
 				offset = index_mapping_NUM_88E-1;
-			for (i = 0; i < rf; i++)
-				ofdm_index[i] = dm_odm->RFCalibrateInfo.OFDM_index[i] + ofdm_index_mapping[j][offset];
-			cck_index = dm_odm->RFCalibrateInfo.CCK_index + ofdm_index_mapping[j][offset];
 
+			/* Updating ofdm_index values with new OFDM / CCK offset */
 			for (i = 0; i < rf; i++) {
+				ofdm_index[i] = dm_odm->RFCalibrateInfo.OFDM_index[i] + ofdm_index_mapping[j][offset];
 				if (ofdm_index[i] > OFDM_TABLE_SIZE_92D-1)
 					ofdm_index[i] = OFDM_TABLE_SIZE_92D-1;
 				else if (ofdm_index[i] < ofdm_min_index)
 					ofdm_index[i] = ofdm_min_index;
 			}
 
+			cck_index = dm_odm->RFCalibrateInfo.CCK_index + ofdm_index_mapping[j][offset];
 			if (cck_index > CCK_TABLE_SIZE-1)
 				cck_index = CCK_TABLE_SIZE-1;
 			else if (cck_index < 0)
-- 
1.9.1


