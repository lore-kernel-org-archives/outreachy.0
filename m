X-GM-THRID: 1391989882880
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f2463521e8be7771,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.35.135 with SMTP id h7mr1420837lbj.23.1424452481458;
        Fri, 20 Feb 2015 09:14:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.191.168 with SMTP id gz8ls281834lac.16.gmail; Fri, 20 Feb
 2015 09:14:41 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr1439594lah.8.1424452481012;
        Fri, 20 Feb 2015 09:14:41 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id i7si152340wif.0.2015.02.20.09.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:14:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id u56so6765534wes.10
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ncHu1MzwSsOVqDGFpDjlrGIVh/E5GJ8p8yr1UW+mWf0=;
        b=YV1sfLN2YzHN0G53iUzNi4joATstPhZa4Y3GMlv2p6M06wBVbjKhYuwh7MAikRJRlR
         r1Jvq3KJ78HmGEZVVyPaIv4hfTHK5hUTm/vqov3iVuuM1hgNCu748P9y9mRrjNp2FFxD
         WnX+9gB3hRbUWV/6JEJmYhSRubaOkCjkpOio1NBE1ZgS4o4Sbmgz7c/d0qmUOV/A4Rvd
         SZG72kWugH/9/GoJepi/RxX8ArFqWc8aCTw7dQnFR2oorPgbfN2Y4k1Y1W7EGr/VzQY7
         Yn+UnKVnpXLuflgAA+QMUM/nWvKh4I+uFxM/RSfbPoIlB0EuKKpwSSCd1Plgu4ATKbZQ
         0bnA==
X-Received: by 10.194.24.103 with SMTP id t7mr20409256wjf.15.1424452480867;
        Fri, 20 Feb 2015 09:14:40 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id uo6sm42881391wjc.49.2015.02.20.09.14.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 09:14:40 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2] Staging: rtl8192: Simplifying if-else statement
Date: Fri, 20 Feb 2015 18:14:30 +0100
Message-Id: <1424452470-4013-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch simplifies the code by not having two identical paths and
fixes the warning given by checkpatch.pl: "else is not useful after
a break or return".

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
v2: - Change commit message and subject.
    - Furthemore simpify the code by placing identical statements
      (and not just return) after if-else branch.

 drivers/staging/rtl8192u/r819xU_phy.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 0589602..e210664 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -352,16 +352,14 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
 		return 0;
 	if (priv->Rf_Mode == RF_OP_By_FW) {
 		reg = phy_FwRFSerialRead(dev, eRFPath, reg_addr);
-		bitshift =  rtl8192_CalculateBitShift(bitmask);
-		reg = (reg & bitmask) >> bitshift;
 		udelay(200);
-		return reg;
 	} else {
 		reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
-		bitshift =  rtl8192_CalculateBitShift(bitmask);
-		reg = (reg & bitmask) >> bitshift;
-		return reg;
 	}
+	bitshift =  rtl8192_CalculateBitShift(bitmask);
+	reg = (reg & bitmask) >> bitshift;
+	return reg;
+
 }
 
 /******************************************************************************
-- 
1.9.1


