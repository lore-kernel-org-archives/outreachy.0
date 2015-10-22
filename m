X-GM-THRID: 6208461910524821504
X-Received: by 10.182.165.37 with SMTP id yv5mr843081obb.36.1445520182458;
        Thu, 22 Oct 2015 06:23:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.34 with SMTP id rh2ls1726821igc.34.canary; Thu, 22 Oct
 2015 06:23:01 -0700 (PDT)
X-Received: by 10.66.124.131 with SMTP id mi3mr12874470pab.32.1445520181678;
        Thu, 22 Oct 2015 06:23:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si1682445pbb.0.2015.10.22.06.23.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:23:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id z6so86898293pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 06:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=xe0h8EkOcY2E9tOwCJRej4cLFrtJJsQMl33u/4HZquY=;
        b=kYWu/btxrAM0jCQjYNOp+6Qr+GcacM5YPcGQsfZIhpDGsAastHB+1mxZ8+QsZjvy5h
         4tVRAoMWk1e44GHuZjmN1oQPKITSRb/K3+XwnfqsfwpRWfqSS2ej1oyFc4KJwqR7GAZ6
         mY+FvvM27jf7RtNvE1S1Zy50r7mc3M2h7MlplfVzGSETs/6A7ZY2TeUIB9QJMda5kuG/
         wLTmm4dL5wuvcFWbmV8VYUpjIZSKW8yFWdk5XoITDlnVE3EyH3WuanCu8GPM8C7UXuIk
         FuiUNPwXw49XL7zdGZxI+D+PL8PDBogiYPdyPgMqHLsfvjo8FTLhHvljVa/1nCEq+uUh
         I8ZQ==
X-Received: by 10.68.139.100 with SMTP id qx4mr17317389pbb.149.1445520181554;
        Thu, 22 Oct 2015 06:23:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ug4sm14035443pac.11.2015.10.22.06.23.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 06:23:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: [PATCH] Staging: lustre: lprocfs_status: Remove unused declaration
Date: Thu, 22 Oct 2015 18:52:49 +0530
Message-Id: <1445520169-7398-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove declaration of function lprocfs_wr_timeouts from header file
since it is not used

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 6e41129..f332351 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -594,8 +594,6 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data);
 struct adaptive_timeout;
 int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at);
 int lprocfs_rd_timeouts(struct seq_file *m, void *data);
-int lprocfs_wr_timeouts(struct file *file, const char __user *buffer,
-			unsigned long count, void *data);
 int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 		    size_t count, loff_t *off);
 int lprocfs_wr_import(struct file *file, const char __user *buffer,
-- 
2.1.4


