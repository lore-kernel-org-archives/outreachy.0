X-GM-THRID: 5098257252352
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bfd4e32636b3089a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr1066944wib.5.1425124008996;
        Sat, 28 Feb 2015 03:46:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls283456wib.36.gmail; Sat, 28 Feb
 2015 03:46:48 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1067558wid.1.1425124008729;
        Sat, 28 Feb 2015 03:46:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id i7si292110wif.0.2015.02.28.03.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:46:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id k14so25020850wgh.4
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H9JIRtuSoaYEWxu9zai4a6+mFod58ld2qz6FFM8OLuI=;
        b=J7YaLQV09p63l6pufzz0FPx0BLimBqhH/F5ju/KuRPns/w47ROu1lNTtnsfdCmT7H4
         ORQZU172Bk4N9JTJCrD2cxpKgTdZbqDReeYUEuad2O/+ZZaiqJTISjeTcxqs6XJ66tPm
         rHgsZPq3QYdg4Kp9IrCa+FFfkjxc4edZlLLOHsvcLSVs/NftXISxfjtMH+DzKjMbBsaA
         9KQk5BeaEOBr3vgapaIhcxdiGAY9D9y3OnsMHJIV2vtHNDG3OIdDvcetMtV2A08zbKZ8
         w/45M1cfoi9mn5LG5p9YOBSTibRT3kgXrQe+VmLvS4WkelNUbAYpqMPDOuBaWrv1f7Gt
         xLSw==
X-Received: by 10.194.2.75 with SMTP id 11mr37384822wjs.78.1425124008675;
        Sat, 28 Feb 2015 03:46:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id g1sm6931646wjy.24.2015.02.28.03.46.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:46:48 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8192u: Fix line over 80 characters
Date: Sat, 28 Feb 2015 12:46:41 +0100
Message-Id: <12cfe6ea11a1b8c81facf1c542021c757896d35e.1425123965.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425123965.git.ksenija.stanojevic@gmail.com>
References: <cover.1425123965.git.ksenija.stanojevic@gmail.com>

This patch splits the line so that doesn't exceeds 80 character mark.
Issue found by checkpatch.pl

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index 7a5a388..6e5662f 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -14,7 +14,8 @@
 #define RTL8225H
 
 #define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
-extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
+extern void PHY_SetRF8256Bandwidth(struct net_device *dev,
+				   HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
 extern void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8	powerlevel);
-- 
1.9.1


