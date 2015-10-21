X-GM-THRID: 6208213403443396608
X-Received: by 10.180.9.104 with SMTP id y8mr7416167wia.7.1445462522839;
        Wed, 21 Oct 2015 14:22:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.208 with SMTP id r199ls277533lfg.2.gmail; Wed, 21 Oct
 2015 14:22:02 -0700 (PDT)
X-Received: by 10.112.132.10 with SMTP id oq10mr2695458lbb.1.1445462522289;
        Wed, 21 Oct 2015 14:22:02 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id o3si367935wiz.1.2015.10.21.14.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:22:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx6so109582897wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iowbuI9eITmZyiJmQpJV84nz7cM8IOuKLutwmzL2bJU=;
        b=Y8CWW6DeONBUOks6Y9YvidYHXXs8BkNLsosFbYh9EJ9I9e/XUhfz7jAH1DGyZJaWV8
         L/ojViup8ZhOjr1H1TWyCRWJH+awW2ejD+pRHGpI+KJ+2jKroEqgVxEs2bfjfpFn8bwI
         Diy8u2kw7p/cunJF0vwlKTgCcofxb75l+/jQGqo7nvFRx1xhdSssZ1wF+uy1ZAmOoOnl
         +dT4LA/FicltWUG+Wmh/b5XHLElXJS5iVPGhb7Zvq9aNAF5GJTEVY3DxM2dx5GDEQ9Rh
         NpQFh65A0eIl1Q/xnfk7W6tYfptsgPqEpDR7uW3Ib8Fak/KSKspiEVlyhRPlUimXGB/y
         g62g==
X-Received: by 10.180.93.232 with SMTP id cx8mr12867287wib.26.1445462522187;
        Wed, 21 Oct 2015 14:22:02 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id p2sm12750184wjb.21.2015.10.21.14.22.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:22:01 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Remove unused macros
Date: Wed, 21 Oct 2015 23:21:53 +0200
Message-Id: <c283335f7c43aaa0fe8794045742d0be4bae0c18.1445462106.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>

Macros LPROCFS_CLIMP_CHECK and LPROCFS_CLIMP_EXIT are not used anymore,
therefore remove them along with the comment.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 6e41129..532d195 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -626,19 +626,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
 int lprocfs_single_release(struct inode *, struct file *);
 int lprocfs_seq_release(struct inode *, struct file *);
 
-/* You must use these macros when you want to refer to
- * the import in a client obd_device for a lprocfs entry */
-#define LPROCFS_CLIMP_CHECK(obd) do {	   \
-	typecheck(struct obd_device *, obd);    \
-	down_read(&(obd)->u.cli.cl_sem);    \
-	if ((obd)->u.cli.cl_import == NULL) {   \
-	     up_read(&(obd)->u.cli.cl_sem); \
-	     return -ENODEV;		    \
-	}				       \
-} while (0)
-#define LPROCFS_CLIMP_EXIT(obd)		 \
-	up_read(&(obd)->u.cli.cl_sem)
-
 /* write the name##_seq_show function, call LPROC_SEQ_FOPS_RO for read-only
   proc entries; otherwise, you will define name##_seq_write function also for
   a read-write proc entry, and then call LPROC_SEQ_SEQ instead. Finally,
-- 
1.9.1


