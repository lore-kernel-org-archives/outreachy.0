X-GM-THRID: 6389638055287848960
X-Received: by 10.13.237.196 with SMTP id w187mr9531586ywe.27.1487703541719;
        Tue, 21 Feb 2017 10:59:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.82.215 with SMTP id d206ls1852273itb.17.canary-gmail; Tue,
 21 Feb 2017 10:59:00 -0800 (PST)
X-Received: by 10.107.178.3 with SMTP id b3mr9582007iof.93.1487703540913;
        Tue, 21 Feb 2017 10:59:00 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3407227pfd.3.2017.02.21.10.59.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 10:59:00 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so9003359pgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 10:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0rxDwHcYcDmSKoKOO2CFKd3/w7mx31UrC6wa46rfqkw=;
        b=JzEAClx/zIXS2g9jR2iD3hi/RCXJADwxLefK/C60OG+K84+jWLKnWDWc602c832AqQ
         rLZkGmlW7ve1aEmWICHfpb3734VcJAHZ1h6ZL/ePjUy6uO5zk/Ok0i0+GAcQ7PHLJCLc
         uaMC7Wa91Qb6Gae3CdskWHwh/NE4WGGtrq9y6enf3T5aoIH8HO4Ya/wMIJRstfaB6bHV
         oNhiuYWMufNJ1OBYIlMx4Yo7REMBt4JsrHE6Rah5pmHlgVSK0m3VPNtDHBInNRP8YlhG
         /IwYuhTRaetOWSzn8y7I+H7PUmCeqYnB0NQHIsYzbqKRM+ESVFuqXQdSrpVm/SJQLCRP
         mKdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0rxDwHcYcDmSKoKOO2CFKd3/w7mx31UrC6wa46rfqkw=;
        b=cCgfbj2Tjx7GBVUV6qNPiuF+9zw/8l/lP5S8PsymBg3z6WdHBmYrIkbfzl0Ya5xILi
         a6+B1tNIBKZUeO27kUIgsWB762rbg58MN/slpM0uUayV0ObY+57o2jZfq/2YkgoKfFA/
         a9FwFaixTDJ8qoqHbALiKkbGBeX7WHAMxiqUiU56F+WBvcQT5MVoHboA8knFEeAHehr2
         mAFOpq1yj052w9qjZd7BoVZXVJAbR6DwJMBk4EWvUxmSzC+Wnf7VpRC+HJZsVBeTH4w6
         pyqmmQ2xqBCAGDlQvvehpkW2nBDpNQIhlPlLdWvkd0MCvzqxVA0uiwjV5G4vJ5+HK2tR
         6cLA==
X-Gm-Message-State: AMke39ld1/AkYJ7UBegAuFFQ/QX15mf+v9jHdbH5VwI/YhMN2YgXwxjbrIqL/+u+0NNrUA==
X-Received: by 10.99.43.74 with SMTP id r71mr16967050pgr.83.1487703540691;
        Tue, 21 Feb 2017 10:59:00 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h14sm42842752pgn.41.2017.02.21.10.58.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 10:59:00 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192e: Remove useless parentheses
Date: Wed, 22 Feb 2017 00:26:50 +0530
Message-Id: <1487703410-18483-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Parentheses are not needed on the right side of assignment.
Additionally added space around '+' to remove checkpatch issue,
space required around '+'.

Parentheses Removed using the coccinelle script:
@@
binary operator bop = {+,-,>>,<<};
expression e, e1, e2;
@@

e =
-(
        e1 bop e2
-)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 2 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index 9bc2848..b61e90b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -886,7 +886,7 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
 		if (tmpCCK40Mindex >= CCK_Table_length)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
-		tmpval = ((u8)tmpRegA - priv->ThermalMeter[0]);
+		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 		if (tmpval >= 6)
 			tmpOFDMindex = tmpCCK20Mindex = 0;
 		else
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index cded0f4..a59fcd4 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -489,7 +489,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
 				if ((bitMap%2) != 0) {
 					if (HTMcsToDataRate(ieee, (8*i+j)) >
 					    HTMcsToDataRate(ieee, mcsRate))
-						mcsRate = (8*i+j);
+						mcsRate = 8*i + j;
 				}
 				bitMap >>= 1;
 			}
-- 
2.7.4


