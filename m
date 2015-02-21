X-GM-THRID: 1818210861056
X-Received: by 10.112.181.198 with SMTP id dy6mr321526lbc.22.1424527581677;
        Sat, 21 Feb 2015 06:06:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls274287wiy.4.canary; Sat, 21 Feb
 2015 06:06:21 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr322315wib.1.1424527581361;
        Sat, 21 Feb 2015 06:06:21 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id ta1si311692wic.1.2015.02.21.06.06.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id k14so17985212wgh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7qv6APy88lnXBw/rbDye1xvxrAMFWzti+4eZe4HHWCY=;
        b=PzD6wX+//iO2NtJF9/XBoErHqSi2D425cSCg6rZvVV/W01gXbMgZ6JuIHC6piWJxXn
         +LVjH5sEfTQ9Uy11yXJs6SV/VG5M3pdCk2ZGW6r1szoakxN7sf2O1MxT/6nXoXNVa0Ri
         AWNYBB6sigREG2DUNX16RCMh/EZRqpx42P749FJnQUJDS26CQdnokVcmNO62xxCEBG9h
         OYjrW7TvblLaHPkdRAcriOuGwTVtb53oy+Z87g/YbiBl+GYjLnj39ACFSShfH17ZHnM8
         zjixvJOD03WalfyNs7pI81a4XHRmoO2Sk8VMseX3fEBW5kCe5332mKatdXCC44lrxu0z
         fAEA==
X-Received: by 10.180.212.113 with SMTP id nj17mr4390481wic.54.1424527581277;
        Sat, 21 Feb 2015 06:06:21 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id l6sm46774875wjx.33.2015.02.21.06.06.20
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:06:20 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8192u: Remove space before ','
Date: Sat, 21 Feb 2015 15:06:14 +0100
Message-Id: <376efd2304214b6bbdd97ea0bf0b55bb7567ea33.1424527515.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424527515.git.ksenija.stanojevic@gmail.com>
References: <cover.1424527515.git.ksenija.stanojevic@gmail.com>

This patch removes space before ','.
Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index fa6dd37..ddddd70 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -14,7 +14,7 @@
 #define RTL8225H
 
 #define RTL819X_TOTAL_RF_PATH 2 //for 8192U
-extern void PHY_SetRF8256Bandwidth(struct net_device *dev , HT_CHANNEL_WIDTH Bandwidth);
+extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
 extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
-- 
1.9.1


