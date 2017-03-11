X-GM-THRID: 6396244306305220608
X-Received: by 10.157.17.123 with SMTP id p56mr10761692otp.116.1489241678194;
        Sat, 11 Mar 2017 06:14:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls10409054otc.44.gmail; Sat, 11 Mar
 2017 06:14:37 -0800 (PST)
X-Received: by 10.129.94.215 with SMTP id s206mr11678931ywb.1.1489241677819;
        Sat, 11 Mar 2017 06:14:37 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g82si2244905pfb.5.2017.03.11.06.14.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:14:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so13893262pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uhMDcQHVU1ssiG1y1Q6Gyh5th/3+W/vfo9bKoRuemuo=;
        b=rmikCeyWahpZI4geIK8azxpPud7Yl5A04JVnxepxhCC+NJBjQvVb6kstCR7y3VkL7X
         qazp871NKV/xkUDBxLAlkX1Y4H+XSaIwFi5Uup6kF2v7CkQ2Ou4ExKz6sSTAbeJOFscw
         s1bWZFF9KtaQqJD7V1qyHUs9Gs/fGJq3WGig/7yu5Ja3SkM1X+c/1Ag2ZUQcTMV3gVKU
         ctNldSRjJqVE+o4qYBi8CBTo66nEoBubAMUQDdJa9syfXXWYptfhOoAc/VtPeE/Ftlw0
         YnMMEBi0U/qxnvnvJnLe58MgUbfLGqnQppMUtLzduAkHM7iWoXYeANuiLoH6QcUSpZAF
         p+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uhMDcQHVU1ssiG1y1Q6Gyh5th/3+W/vfo9bKoRuemuo=;
        b=IeTbpHVj+4JJ1GFv9pT4nfoPjWK/CQ8HtVov9X+PRL6ZrtW/itTleKbPRRhADO1P3E
         T6tf0VTyZwgw1/xRuP76mNZq3FAchfTb4Tohm0DRDRCFWo6LNsQYqUrU2qYLrSG78fc5
         +5l0EJXO5/61nRMIRHoMe64PTDY58rialQfTKt+CkjO8dxx2ckbF7B6Wk3SCuxxZx7lv
         4zc4SoLm20iAeRMpIB00vxF5lgM4NzaRGkGZpLoVrjug4xiJfPBdJ5hvqOclMID0BfXG
         g4v7C3s8lYHWkMRwstNuA4W5FjXPFNwPlCKuEusSwzK5tcHlLNQC+glipjLlfiHFAl9x
         a+Iw==
X-Gm-Message-State: AMke39lbg5iMBlJr4D/E4ZJdivj2qATmYBaPXRUiWjOGFdfjMmUe4QiPiIoeCfvBs1+oYQ==
X-Received: by 10.99.157.143 with SMTP id i137mr26612386pgd.132.1489241677561;
        Sat, 11 Mar 2017 06:14:37 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y9sm24543616pfi.39.2017.03.11.06.14.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:14:37 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192u: Remove multiple assignments
Date: Sat, 11 Mar 2017 19:42:10 +0530
Message-Id: <1489241530-11540-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes multiple assignments by factorizing them.

This was done with Coccinelle.

@ r1 @
identifier i1,i2;
constant c;
@@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 9209aad..ccd19be 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -725,8 +725,10 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 	} else {
 		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 
-		if (tmpval >= 6) /* higher temperature */
-			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
+		if (tmpval >= 6) /* higher temperature */ {
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		} /* max to +6dB */
 		else
 			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
 		tmpCCK40Mindex = 0;
-- 
2.7.4


