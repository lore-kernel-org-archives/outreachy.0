X-GM-THRID: 10181885820928
X-Received: by 10.50.43.170 with SMTP id x10mr5706995igl.2.1427564690409;
        Sat, 28 Mar 2015 10:44:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.69 with SMTP id y63ls1596589qgy.88.gmail; Sat, 28 Mar
 2015 10:44:50 -0700 (PDT)
X-Received: by 10.236.228.106 with SMTP id e100mr28337553yhq.21.1427564690225;
        Sat, 28 Mar 2015 10:44:50 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id gu4si577112pac.1.2015.03.28.10.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id n5so13094155pdd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=Pbd33ZT1LVQt6Ov4N3ZJPCDe1Qo6CGxaF6xFSb464Cc=;
        b=ZKk0xlxv+S+9dS7G+jAv7r7xY/8EtHo60EHrYWS84sPc5s4PpbVkAbJjmcjvCri5/8
         ejPzlLRw+BJx6+ZQ4Sjny8RRvoFGZEmykReo6dmY6ds8v1fVb5odeJjl59FP6hL+ycBt
         luA/uShwuYpmopLDtLWmcKtJI+kji2Aavo77cEXmgSu5tZudfeP8yR3u9QcRGRrAwW3R
         rqolFG8ipIz7RXL06xNtr18SN6VeWGIAZ8bBE4TFIptUQvcHK2XLMIr98jIjhpBXBriO
         WJzBgOXDWeYGkneSmi4HhH2O6vSoTe0uII/BIEwfMgV6SbCB8ktAKE6KILOxmNdERAys
         Bxng==
X-Received: by 10.70.127.140 with SMTP id ng12mr45849222pdb.24.1427564690123;
        Sat, 28 Mar 2015 10:44:50 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id xh3sm5639854pab.25.2015.03.28.10.44.47
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:44:49 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 3/6] Staging: lustre: Include header for functions prototypes
Date: Sat, 28 Mar 2015 23:13:54 +0530
Message-Id: <1427564637-10305-4-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch includes the header lustre/include/lclient.h that declares
the functions lov_lsm_put and lov_read_and_clear_async_rc defined in
lov_object.c.

This eliminates warnings reported by sparse:
warning: symbol was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_object.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index d69a035..5604f45 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -42,6 +42,7 @@
 #define DEBUG_SUBSYSTEM S_LOV
 
 #include "lov_cl_internal.h"
+#include "../include/lclient.h"
 
 /** \addtogroup lov
  *  @{
-- 
1.9.1


