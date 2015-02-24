X-GM-THRID: 3247770173440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,352ba3b1521f4ad9
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.34 with SMTP id w2mr2285155wix.2.1424799212186;
        Tue, 24 Feb 2015 09:33:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.5 with SMTP id l5ls161673wiz.44.gmail; Tue, 24 Feb 2015
 09:33:31 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr2283010wib.5.1424799211716;
        Tue, 24 Feb 2015 09:33:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id el6si952266wib.2.2015.02.24.09.33.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:33:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ex7so6686322wid.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OYgO1dNxt8nQD0J5aD6XqrHGBM8Z+qhvYAI1zJ0jJyc=;
        b=D8hogFAa9Pp4IpxHy17AwUON4gMMPRlOQ6c2W/wcFn7JF/1GL7fRH2BAJA/qQBgma6
         AVX38444o5RQ4lT9nM673a7IeGFnJCs/AXODkGHtPtAp/JQ5KLQdf0YT73G9LrA6BxuF
         5c4RhBVH4soBRUO2fNQjYh1VTJ+FFaNrztWaSssT7UfHomfUz5pOSFnjehN4wkn2QfWn
         jyvOW5cApaOpf1pNiadgbXADQdRCwIXLE0dVbHq9A31Weqb9TYyrAUFtBf4S5R0/NjzH
         zxws01IrNIAJdguy+zX9hc3t1v54PNiK7S/5cbsEBWu6nmP/w2gexcQEC/m+gmtgmLYB
         w7Bw==
X-Received: by 10.194.175.102 with SMTP id bz6mr35281424wjc.120.1424799211623;
        Tue, 24 Feb 2015 09:33:31 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id lg18sm21404317wic.23.2015.02.24.09.33.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:33:30 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 4/6] Staging: rtl8192u: Replace TRUE and FALSE macros
Date: Tue, 24 Feb 2015 18:33:22 +0100
Message-Id: <69ec67df9a0343acd301f9e5bb045aea3590378e.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Replace all occurrences of TRUE and FALSE by true and false
respectively.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 0589602..7902cec 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1187,7 +1187,7 @@ bool rtl8192_SetRFPowerState(struct net_device *dev,
 				/* Turn on RF we are still linked, which might
 				   happen when we quickly turn off and on HW RF.
 				 */
-				if (pMgntInfo->bMediaConnect == TRUE)
+				if (pMgntInfo->bMediaConnect == true)
 					Adapter->HalFunc.LedControlHandler(Adapter, LED_CTL_LINK);
 				else
 					/* Turn off LED if RF is not ON. */
@@ -1579,10 +1579,10 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 			 priv->cck_present_attentuation);
 
 		if (priv->chan == 14 && !priv->bcck_in_ch14) {
-			priv->bcck_in_ch14 = TRUE;
+			priv->bcck_in_ch14 = true;
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 		} else if (priv->chan != 14 && priv->bcck_in_ch14) {
-			priv->bcck_in_ch14 = FALSE;
+			priv->bcck_in_ch14 = false;
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
 		} else {
 			dm_cck_txpower_adjust(dev, priv->bcck_in_ch14);
-- 
1.9.1


