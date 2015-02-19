X-GM-THRID: 1055341412352
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fa81c02fcb664df,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr898371lbb.13.1424385509780;
        Thu, 19 Feb 2015 14:38:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls1396141wic.10.canary; Thu, 19
 Feb 2015 14:38:29 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr1004747wib.3.1424385509505;
        Thu, 19 Feb 2015 14:38:29 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id cl5si9121098wib.3.2015.02.19.14.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so2506894wes.7
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=w8jwhbiCewOtBOB26+20EzDhwNQ/lK5i/ydZ8JnaMv8=;
        b=HoAW/5y5+GUQoqJBeoiZukL8SooOr4HdANH8FTQWj1lwJ4WU07yq758ESLH/rfU5Sd
         5gQBUmhoarBnyBf7cvS4hebuFx+cUlUhKW24poUf5pK2RLJ5h4S/cSsplMiVvm3JxURN
         JUInu7Rtw4BagwG4G3OUba5VmCch90P95LuHJ5SO0XX7m4bH/g/scGmtILfeZYHrVLKU
         E2gWwQjeDZFlCAPVlYyPNtoiHhlmxIZci7ePF+184WnJJNb+7JLyc8EvoDGGxmGkWBcj
         XLIjEM6HMX7qEbGpIklcmOaWK62EI0kUMDE1HUD5VksemYVcqfaIGvAz6FrX+hNVLrkz
         SYYA==
X-Received: by 10.180.171.35 with SMTP id ar3mr14734341wic.24.1424385509430;
        Thu, 19 Feb 2015 14:38:29 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dx11sm36421414wjb.23.2015.02.19.14.38.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 14:38:28 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Reposition of return statements
Date: Thu, 19 Feb 2015 23:38:20 +0100
Message-Id: <1424385500-22022-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "else is not generally useful after a break or return"
by placing return reg after if-else branch.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index d006602..f343735 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -355,13 +355,12 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
 		bitshift =  rtl8192_CalculateBitShift(bitmask);
 		reg = (reg & bitmask) >> bitshift;
 		udelay(200);
-		return reg;
 	} else {
 		reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
 		bitshift =  rtl8192_CalculateBitShift(bitmask);
 		reg = (reg & bitmask) >> bitshift;
-		return reg;
 	}
+	return reg;
 }
 
 /******************************************************************************
-- 
1.9.1


