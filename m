X-GM-THRID: 6208399403783290880
X-Received: by 10.107.160.8 with SMTP id j8mr20660800ioe.4.1445927726490;
        Mon, 26 Oct 2015 23:35:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.228 with SMTP id 91ls3785648qgl.15.gmail; Mon, 26 Oct
 2015 23:35:26 -0700 (PDT)
X-Received: by 10.129.137.133 with SMTP id z127mr13126755ywf.25.1445927726032;
        Mon, 26 Oct 2015 23:35:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si3900077pbc.1.2015.10.26.23.35.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 23:35:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hk11so212830527pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 23:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=WrzmBvklvwoy0uvp5q9m58yRuW0FNpcz981WW5zk6BQ=;
        b=cwmhdlQm3MuKlfcHkxPF8g+GCDTBLy/YOxCc5W5vkHXENdG27QCN8ychjqf7oY8GXW
         0KBcL3CrxGBwOYt1fx3VKRHvie6wLyWu8/sZix2qK8e9jBxTrWYAZBTioMSVuXsqPWt6
         EJe08CRsk1qj6aKiXZ14tnP0v7b1YFhte0h5GvCHZ5JmfPZ2cdgWs/BzKBhkiXUgEgtj
         SKXSqhy/gGNZ9MOQ5tMVY2bmdPov8TobD0HyplvNwu3gP4+VMD4sOi6NF9x/7A/WwPlr
         6JL7nMv3YwAIdilq2mnd71I+RwKOkOPohrKCTJDVNgUbJGKhUwFvxf0Stw7aKa7Qqodw
         A/2A==
X-Received: by 10.68.90.3 with SMTP id bs3mr630304pbb.49.1445927725887;
        Mon, 26 Oct 2015 23:35:25 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rw8sm17083594pbc.70.2015.10.26.23.35.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 23:35:25 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: lustre: lprocfs_status: Remove unused declaration
Date: Tue, 27 Oct 2015 12:05:10 +0530
Message-Id: <1445927710-3559-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445927710-3559-1-git-send-email-shraddha.6596@gmail.com>
References: <1445927710-3559-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.562F1B2C.01DB,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove declaration of function lprocfs_wr_timeouts from header file
since it is not used

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 089e5a3..9e654b2 100644
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


