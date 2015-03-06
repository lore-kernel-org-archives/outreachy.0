X-GM-THRID: 6876686188544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ff204b327ade74ec,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.156.65 with SMTP id wc1mr2310240lbb.7.1425644108697;
        Fri, 06 Mar 2015 04:15:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.33 with SMTP id s1ls66745lae.40.gmail; Fri, 06 Mar 2015
 04:15:07 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr2205557lbb.15.1425644107388;
        Fri, 06 Mar 2015 04:15:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id l8si144864wia.0.2015.03.06.04.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 04:15:07 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id k11so59004168wes.11
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 04:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mCfVW2TVV+9puZfRJXLAVeVGrndn+tV2iJE0tKg3HTU=;
        b=b2d4ahQWmL5q1IoRI7RkZLKy51wmR437lZWKK7SIROd155pm9sibJzZQ2SdEKAmpmv
         CbrRGxXSOSgqIArBYZmv+wEoRXedw/CoVLCfDCz+BT/4Sr/Yz3mp+RiRSgux3nADVQZ3
         eatf95DxER+CRzkDT1Qz+xdiV8QiHDKqpdZMluQDzuF0wqCGx3PuWQAViBTHEUxPcv49
         VepoP4tUowCuP8aMbNcxlEH1hqsbrezc/hM/zAOj6VFqY/Njs1Qs7Z/FhxZFa1ZF/pvl
         9xsmoaTvGxJmqkfYg0RINERXsvu62bfxibsoROA4zmnHe9qpPd1JzAXyVMVJDhVqvVCq
         eg6Q==
X-Received: by 10.180.149.205 with SMTP id uc13mr33145979wib.0.1425644107249;
        Fri, 06 Mar 2015 04:15:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id cb9sm1977634wib.10.2015.03.06.04.15.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 04:15:06 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8712: Replace __constant_cpu_to_le16
Date: Fri,  6 Mar 2015 14:14:58 +0200
Message-Id: <1425644098-6640-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following checkpatch.pl warning:
WARNING: __constant_cpu_to_le16 should be cpu_to_le16

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 6b1e1fa..17f5131 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -243,9 +243,9 @@ enum WIFI_REG_DOMAIN {
 
 #define SetFrameType(pbuf, type)	\
 	do {	\
-		*(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | \
+		*(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
 		BIT(2))); \
-		*(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
+		*(unsigned short *)(pbuf) |= cpu_to_le16(type); \
 	} while (0)
 
 #define GetFrameSubType(pbuf)	(cpu_to_le16(*(unsigned short *)(pbuf)) & \
-- 
1.9.1


