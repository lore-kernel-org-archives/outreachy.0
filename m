X-GM-THRID: 3247770173440
X-Received: by 10.180.87.166 with SMTP id az6mr2278083wib.1.1424799247736;
        Tue, 24 Feb 2015 09:34:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.166 with SMTP id fh6ls127105wib.26.gmail; Tue, 24 Feb
 2015 09:34:07 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr2284206wid.1.1424799247144;
        Tue, 24 Feb 2015 09:34:07 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id el6si952389wib.2.2015.02.24.09.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id x3so26642294wes.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OIa5yj9J8+emYF+zancZsmbIXGSOzRG8QrhwO/6vPgA=;
        b=xBsSxI5W3TT0imXBgCQn5Lj+Nmkflz2BHgJDuV0PHOJa9T3/R9UEGSMWaTuCc14uq0
         c7pIiVvErwSHQAy6iCppeboH707OH5Fja5D+hrBvxMZVmeBhDYihsTsLHWqBdGlrYJVN
         HhXRTmaUcReq8HJTN5n6yv00XewEicNQMlmjx96nrIMS2aNQgt0XPHx5EIOK0D2Q9C+h
         CBvamSZDSv04Rp1zCiPKPbpafXFH4zPgARXKz63ZZcrAW3beWiQbKFKl7ekOX6a7tox5
         OqjOkJ0n+/j9qpObP89ynxAXldHNDw8LWB94KpcWDt9LTd39DmxEcIuUi1qmdg0cMtJ1
         3xoA==
X-Received: by 10.180.74.15 with SMTP id p15mr32071470wiv.63.1424799246749;
        Tue, 24 Feb 2015 09:34:06 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dj5sm61141857wjb.28.2015.02.24.09.34.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:34:06 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 5/6] Staging: rtl8192u: Repace TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:33:59 +0100
Message-Id: <8b573d974ee53b888c998e139fff730f290f314e.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Replace all occurrences oof TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_firmware.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index c230be2..1a3a09f 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -164,7 +164,7 @@ static bool CPUcheck_maincodeok_turnonCPU(struct net_device *dev)
 
 CPUCheckMainCodeOKAndTurnOnCPU_Fail:
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
-	rt_status = FALSE;
+	rt_status = false;
 	return rt_status;
 }
 
@@ -201,7 +201,7 @@ CPUCheckFirmwareReady_Fail:
 bool init_firmware(struct net_device *dev)
 {
 	struct r8192_priv	*priv = ieee80211_priv(dev);
-	bool			rt_status = TRUE;
+	bool			rt_status = true;
 
 	u32			file_length = 0;
 	u8			*mapped_file = NULL;
@@ -281,7 +281,7 @@ bool init_firmware(struct net_device *dev)
 		if (rst_opt == OPT_SYSTEM_RESET)
 			release_firmware(fw_entry);
 
-		if (rt_status != TRUE)
+		if (rt_status != true)
 			goto download_firmware_fail;
 
 		switch (init_step) {
@@ -304,7 +304,7 @@ bool init_firmware(struct net_device *dev)
 
 			/* Check Put Code OK and Turn On CPU */
 			rt_status = CPUcheck_maincodeok_turnonCPU(dev);
-			if (rt_status != TRUE) {
+			if (rt_status != true) {
 				RT_TRACE(COMP_ERR, "CPUcheck_maincodeok_turnonCPU fail!\n");
 				goto download_firmware_fail;
 			}
@@ -318,7 +318,7 @@ bool init_firmware(struct net_device *dev)
 			mdelay(1);
 
 			rt_status = CPUcheck_firmware_ready(dev);
-			if (rt_status != TRUE) {
+			if (rt_status != true) {
 				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n",rt_status);
 				goto download_firmware_fail;
 			}
@@ -336,7 +336,7 @@ bool init_firmware(struct net_device *dev)
 
 download_firmware_fail:
 	RT_TRACE(COMP_ERR, "ERR in %s()\n", __func__);
-	rt_status = FALSE;
+	rt_status = false;
 	return rt_status;
 
 }
-- 
1.9.1


