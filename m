X-GM-THRID: 6206591728806264832
X-Received: by 10.112.150.229 with SMTP id ul5mr4942327lbb.2.1445084747630;
        Sat, 17 Oct 2015 05:25:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.100 with SMTP id gt4ls289779wib.34.gmail; Sat, 17 Oct
 2015 05:25:47 -0700 (PDT)
X-Received: by 10.180.210.212 with SMTP id mw20mr2426818wic.3.1445084747066;
        Sat, 17 Oct 2015 05:25:47 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id w4si359571wiz.0.2015.10.17.05.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 05:25:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id p11so42383405wij.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 05:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xRV8YuuhQ97iEvzmlpxQFFDs2jSTIQgJzpeJ0wWiy2E=;
        b=uz+VJwL+VGiAOrjA6i5K9p5Mc/vZ/ArG0TxLNim31tuKTL7eDxrYN/0yPV+RJpQp/+
         Apd0Xpf++vDkHvnRXIASSclkuhx8lWXtUcw6WHYjag1vpf8eocalWyOKEzTFS1n5fOLc
         kS2lq/GaPKscKVaGqVYEPccDWSARoomEOpCAtZIi9q4UUDqnsy6z5+6hAutIUj2K2L3Y
         0zmQAvLZfP7AWKtf52xC2JKhhzNR2uollIT+aby0H09OjuzNwf87o1KMumIOZuBgcWml
         TtQtOAUwunsW7uc1WcPHeIA3Y2lTVXS0/GDQXxvexnkltzTIm5y3YoGo56CuoaGpKoBV
         CfUA==
X-Received: by 10.180.106.37 with SMTP id gr5mr10264515wib.86.1445084746950;
        Sat, 17 Oct 2015 05:25:46 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id fz2sm6976580wic.2.2015.10.17.05.25.45
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 05:25:46 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/3] Staging: wilc1000: Remove multiple blank lines
Date: Sat, 17 Oct 2015 15:25:33 +0300
Message-Id: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 3d45cc3..93f3c75 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -8,7 +8,6 @@
  *  @version	1.0
  */
 
-
 #include "coreconfigurator.h"
 #include "wilc_wlan_if.h"
 #include "wilc_wlan.h"
@@ -544,7 +543,6 @@ s32 ParseAssocRespInfo(u8 *pu8Buffer, u32 u32BufferLen,
 
 	*ppstrConnectRespInfo = pstrConnectRespInfo;
 
-
 	return s32Error;
 }
 
-- 
1.9.1


