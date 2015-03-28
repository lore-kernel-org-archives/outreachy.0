X-GM-THRID: 10181885820928
X-Received: by 10.52.24.108 with SMTP id t12mr28571057vdf.6.1427564699465;
        Sat, 28 Mar 2015 10:44:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.100 with SMTP id sd4ls567060igb.16.canary; Sat, 28 Mar
 2015 10:44:57 -0700 (PDT)
X-Received: by 10.43.152.9 with SMTP id ku9mr40110537icc.8.1427564697601;
        Sat, 28 Mar 2015 10:44:57 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id gu4si577112pac.1.2015.03.28.10.44.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id n5so13094155pdd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=e43IKUflM3lXiFiCmUYBynYcuR4H04y8jHIbkI//XUU=;
        b=bYkkstVh9FRJW7Fb92gzOfaN4y9LmVSGBRSDrHi+W39feFhgWwYEEQy0qpMAm5LBed
         9jaDulJvVix708JyK5FQmEe4I/aYNFBUDFrtGd1mu+3AbvVlyRDGS3MqJgtOc6HhYmCW
         S7kBJDv1EQrjUPOzNPPkMXzdssnTEBhwL6xNYHk25Uw2aDrFHo0vTb2TfZ5vU9q1+j+A
         dgFv3Q35apW5wT7+EYx3ZrvYRciMfYA2QzXTebJyOLRsKIWtJRmwC0e+HdmM0VGxkNZc
         3XnLhqcb3kDkHqcv5zsDXBaEN87QOTPhkCmIKPu+UCW/8W8bxBN4cqDcXq2tjvRAw4QG
         pWDw==
X-Received: by 10.68.109.197 with SMTP id hu5mr44922331pbb.126.1427564697525;
        Sat, 28 Mar 2015 10:44:57 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id zi10sm5637964pab.35.2015.03.28.10.44.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:44:56 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 4/6] Staging: lustre: Include header file that declares lprocfs_mdc_init_vars
Date: Sat, 28 Mar 2015 23:13:55 +0530
Message-Id: <1427564637-10305-5-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch includes the header file mdc_internal.h that declares the
function lprocfs_mdc_init_vars.

This also eliminates the sparse warning:
warning: symbol 'lprocfs_mdc_init_vars' was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/lproc_mdc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/mdc/lproc_mdc.c b/drivers/staging/lustre/lustre/mdc/lproc_mdc.c
index a4fb294..acfe08e 100644
--- a/drivers/staging/lustre/lustre/mdc/lproc_mdc.c
+++ b/drivers/staging/lustre/lustre/mdc/lproc_mdc.c
@@ -38,6 +38,7 @@
 #include <linux/vfs.h>
 #include "../include/obd_class.h"
 #include "../include/lprocfs_status.h"
+#include "mdc_internal.h"
 
 static int mdc_max_rpcs_in_flight_seq_show(struct seq_file *m, void *v)
 {
-- 
1.9.1


