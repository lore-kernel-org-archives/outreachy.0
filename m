X-GM-THRID: 2829093699584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7e065b60dab7b1c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr1677872lah.8.1424730807818;
        Mon, 23 Feb 2015 14:33:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls648882wib.31.gmail; Mon, 23 Feb
 2015 14:33:27 -0800 (PST)
X-Received: by 10.180.81.34 with SMTP id w2mr1634657wix.2.1424730807524;
        Mon, 23 Feb 2015 14:33:27 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si975286wia.0.2015.02.23.14.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 14:33:27 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id k48so21722568wev.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 14:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=U/Un3tXonfvkMP0jx/ea6FQ1duSWRrFUkJ8uuPlLotY=;
        b=kWBMIp7y47f2YcK2R0t1sD/x2dIXmU8ZmIz+mEboHHVwcfbGZ7tBZ1Ei0gsij34Bsf
         AR8qsOLB162JI5TBUBevs57Qxh2HQC+l/CZoB0apS7A4ZogkIdtT3LB6pzggzXidwQZk
         +9AUZTFhGTe3ISUXx1s+A6hDyICstZM0httUnlnF1IFwnPm6SSr79MHhbNJTxGBo1eyF
         d2K7soEa0jph1EaAVU5wEMKh08MIrZ8lHlQjQ9r2TuI6P2D3HFuSeyI1lgupF9mTLe+V
         13zRfBTUGw19DCyCeBetUef3ZVyxLyy8Bf1HfZsCypIjJJmsvL3SjeQjSl//HXDZ7OrL
         sYEw==
X-Received: by 10.180.83.129 with SMTP id q1mr24770838wiy.46.1424730807436;
        Mon, 23 Feb 2015 14:33:27 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id ee10sm22123301wib.0.2015.02.23.14.33.25
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 14:33:26 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Add blank line after declarations
Date: Tue, 24 Feb 2015 00:32:44 +0200
Message-Id: <1424730764-21137-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: "Missing a blank line after declarations"
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 3c651d5..2c23aa9 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -538,6 +538,7 @@ int ODM_RAInfo_Init(struct odm_dm_struct *dm_odm, u8 macid)
 	struct odm_ra_info *pRaInfo = &dm_odm->RAInfo[macid];
 	u8 WirelessMode = 0xFF; /* invalid value */
 	u8 max_rate_idx = 0x13; /* MCS7 */
+
 	if (dm_odm->pWirelessMode != NULL)
 		WirelessMode = *(dm_odm->pWirelessMode);
 
-- 
1.8.3.2


