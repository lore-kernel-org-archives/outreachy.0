X-GM-THRID: 4554318938112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9993e5f8efad15bc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr2076109lbb.9.1425042362108;
        Fri, 27 Feb 2015 05:06:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.180 with SMTP id jp20ls146962lab.64.gmail; Fri, 27 Feb
 2015 05:06:01 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr2079758lba.16.1425042361583;
        Fri, 27 Feb 2015 05:06:01 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id i7si116152wif.0.2015.02.27.05.06.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:06:01 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id k11so20266370wes.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KWK2kqXIGZPbTXR2TqiNwmEFxom3Gstr3kr8eMnd6v0=;
        b=FgmQ61mWNDpBKM7EA15aIv9gpBao4jl3+yByXO1nxHUyFIOMENDiSqeJy3wdKfyuGs
         0dgP4aREK8Oe2vpf+PjAJvstwmdOEV1e2+Gjt9HQ2f7zHbcfPKfcvCmoNyym7V4XwzHr
         3sqB8YCYejigldsYb+nHXi3MNNT8FEW4AQOZxtdKzovg7rV9hfJiSRHxSOgfsAo3GAtV
         A3KqF5HOev16LfcOkK5FNPaPT/q3YHK9532SAGdEkowdJyl+lAI5PbIf8Qcp8bzpnOl7
         hDsjEsZVFUM5Fl/aMjjT7mp6mZZeXurQU3btpk5ZJLdvVMN7sIJGrgKo4KwRwrI7thc6
         EPgQ==
X-Received: by 10.194.240.97 with SMTP id vz1mr27913293wjc.155.1425042361430;
        Fri, 27 Feb 2015 05:06:01 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id bd8sm5897517wjc.21.2015.02.27.05.05.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 05:06:00 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Added #include <linux/statfs.h> instead of #include <asm/statfs.h>
Date: Fri, 27 Feb 2015 15:05:45 +0200
Message-Id: <1425042345-14989-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
WARNING: Use #include <linux/statfs.h> instead of #include <asm/statfs.h>

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 1795d3a..d622c63 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -35,7 +35,7 @@
  */
 #define DEBUG_SUBSYSTEM S_CLASS
 
-#include <asm/statfs.h>
+#include <linux/statfs.h>
 #include "../include/obd_cksum.h"
 #include "../include/obd_class.h"
 #include "../include/lprocfs_status.h"
-- 
1.9.1


