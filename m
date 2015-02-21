X-GM-THRID: 1826428551168
X-Received: by 10.112.162.135 with SMTP id ya7mr307932lbb.14.1424527751256;
        Sat, 21 Feb 2015 06:09:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.100.225 with SMTP id fb1ls275083wib.38.canary; Sat, 21 Feb
 2015 06:09:11 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr308722wjb.1.1424527751009;
        Sat, 21 Feb 2015 06:09:11 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id r6si319386wix.0.2015.02.21.06.09.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:09:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so8231827wid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XHMoLL8LAgDtyNP9IIt5AErdlktfF5WLHkLYOCnfTBQ=;
        b=bMQvxMJeTKZZn+Jv3Vfel2+OUYDIRkNqcWVjoS8wr9xKLYw3SxmpcDKqpU6tpDjRgy
         z+k1keB4h8Eoqi4Af2A3XHrJTjOO2bXsfmwoNZaSyVHD0zkdngEe9oCWcaggrE4Igq5e
         c+a/sxBs3KRHu1QSFA7Pk14NX86etZSvtzSblhj8REoCPZMB75HXR8xSymQ58QJ0wZ70
         sYYG7WX7mLjAycs4NCvKfpjRl+P5AjC25l11QE8/kBlBlIr+QehN7uJ4M0pw7CMCNUQT
         Sdb6JvJU9plLWrQmBu92pfEEJaRYpgdoWgTOsVKjY/VzA6QJrB6aT+V24zi/dTZV0lP2
         EjjQ==
X-Received: by 10.194.236.200 with SMTP id uw8mr5021367wjc.10.1424527750935;
        Sat, 21 Feb 2015 06:09:10 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id gi3sm7103698wic.15.2015.02.21.06.09.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:09:10 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8192u: Split line over 80 characters
Date: Sat, 21 Feb 2015 15:09:04 +0100
Message-Id: <970675096b4d77e9230c7fb4614ff9ad1c5b01fe.1424527655.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424527655.git.ksenija.stanojevic@gmail.com>
References: <cover.1424527655.git.ksenija.stanojevic@gmail.com>

This patch splits line over 80 characters in order to fit kernel
coding style rules. Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index 7a5a388..9023193 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -14,7 +14,8 @@
 #define RTL8225H
 
 #define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
-extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
+extern void PHY_SetRF8256Bandwidth(struct net_device *dev,
+		HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
 extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
-- 
1.9.1


