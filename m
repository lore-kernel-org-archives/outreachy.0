X-GM-THRID: 10181885820928
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9b48fb57ed55724c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.149.102 with SMTP id tz6mr29113137pab.26.1427564682811;
        Sat, 28 Mar 2015 10:44:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.91.112 with SMTP id cd16ls925763obb.25.gmail; Sat, 28 Mar
 2015 10:44:42 -0700 (PDT)
X-Received: by 10.182.110.168 with SMTP id ib8mr27333105obb.41.1427564682549;
        Sat, 28 Mar 2015 10:44:42 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id gu4si577112pac.1.2015.03.28.10.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pddn5 with SMTP id n5so13094155pdd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=k67R9mQ6s3ZFDaxyEGASMhIP96YXlKtT3frVtesFaTE=;
        b=CXolzgaLRC3kUw3HmYQ7pBWg+EtjN99V52+CXdo9x9XCvWdq1M5NeT0uHRniR+iWr2
         CYL368eQmRzdNq3fMzTJgpQ+AHqhEtRrPcWURspaDeS1J3E+ay4EHfK2SEf89YnXPXx7
         Kd9F+Iqr9PFwe28VMWni+K5hdz+QiVecvFsylZpC2aHjDR8tJ+1hExb913SHM5Jf90xx
         7lkMeuXb9mqVsYQbJBdTXMYukON0Lk9dNHQI9fZ+sqGwnI7p2Vf01GIS4siWvuqZT6Gl
         akmoHYwBvxvnb0d+t6FJ/e1HLXfG5y9SMC98h1zqBT6gqeuKYLW9Py53elOSBIEkFjm4
         EMzg==
X-Received: by 10.70.130.37 with SMTP id ob5mr45864101pdb.54.1427564682439;
        Sat, 28 Mar 2015 10:44:42 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id n10sm5632781pdp.18.2015.03.28.10.44.39
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:44:41 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 2/6] Staging: lustre: Add header that declares function lprocfs_lmv_init_vars
Date: Sat, 28 Mar 2015 23:13:53 +0530
Message-Id: <1427564637-10305-3-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch includes the header file lmv_internal.h that declares
the function lprocfs_lmv_init_vars defined in lproc_lmv.c.

This eliminates the sparse warning:
warning: symbol 'lprocfs_lmv_init_vars' was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lproc_lmv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/lmv/lproc_lmv.c b/drivers/staging/lustre/lustre/lmv/lproc_lmv.c
index d5bc0fb..22e5c31 100644
--- a/drivers/staging/lustre/lustre/lmv/lproc_lmv.c
+++ b/drivers/staging/lustre/lustre/lmv/lproc_lmv.c
@@ -40,6 +40,7 @@
 #include <linux/statfs.h>
 #include "../include/lprocfs_status.h"
 #include "../include/obd_class.h"
+#include "lmv_internal.h"
 
 static int lmv_numobd_seq_show(struct seq_file *m, void *v)
 {
-- 
1.9.1


