X-GM-THRID: 6211434117440995328
X-Received: by 10.129.101.196 with SMTP id z187mr5997462ywb.41.1446212203661;
        Fri, 30 Oct 2015 06:36:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.148 with SMTP id d142ls584038iod.13.gmail; Fri, 30 Oct
 2015 06:36:43 -0700 (PDT)
X-Received: by 10.66.248.9 with SMTP id yi9mr5849856pac.43.1446212203352;
        Fri, 30 Oct 2015 06:36:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si719617pbc.1.2015.10.30.06.36.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 06:36:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so75195742pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 06:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=U5mlqiILWk0WgsorC/DdZLGyjEqT8A7yU2zfhQdl8MY=;
        b=iR7HcF4Fcb8cwTbmBqR89bopIfpG379q74vBwBZAEkUmhK1/czlszWjMy/vKe+d1vC
         LtNxZsTA1/OMoi6cH48+Z4K18AIJTDp/3VKlSnq2XR+/5zSCn/L4jBIImgZQWHlHLupa
         5IzNc8GWgerf2fAGrbmsXzMKAA3U0PxyaT/XT5hSGgWf2pY6fhQv/wXHLQingTLlpWZC
         Jv/mp765ToSamMEsNbMYjTAmvJNlcBiUc17206Sox8zpyIEJDuLvgOy7Rfhsoh6XCLD0
         U87pTcIS2It7OWMtRdCIWJdImGOtprDd9uMu9sSRQqYnjhC6Cg8SVRedt8Aa4MTdaWI+
         d7Cw==
X-Received: by 10.68.135.40 with SMTP id pp8mr8858174pbb.50.1446212203256;
        Fri, 30 Oct 2015 06:36:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tj2sm8400741pab.4.2015.10.30.06.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 06:36:42 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: dgnc: Remove unused #include header file
Date: Fri, 30 Oct 2015 19:05:56 +0530
Message-Id: <1446212156-28978-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.5633726A.0012,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove digi.h header since it is not needed.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/dgnc/dgnc_utils.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_utils.c b/drivers/staging/dgnc/dgnc_utils.c
index f76de82..95272f4 100644
--- a/drivers/staging/dgnc/dgnc_utils.c
+++ b/drivers/staging/dgnc/dgnc_utils.c
@@ -1,7 +1,6 @@
 #include <linux/tty.h>
 #include <linux/sched.h>
 #include "dgnc_utils.h"
-#include "digi.h"
 
 /*
  * dgnc_ms_sleep()
-- 
2.1.4


