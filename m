X-GM-THRID: 6207016662523183104
X-Received: by 10.182.106.11 with SMTP id gq11mr21845409obb.25.1445184222588;
        Sun, 18 Oct 2015 09:03:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.165 with SMTP id gv5ls1102737obb.4.gmail; Sun, 18 Oct
 2015 09:03:42 -0700 (PDT)
X-Received: by 10.182.50.138 with SMTP id c10mr22359414obo.38.1445184222294;
        Sun, 18 Oct 2015 09:03:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si2918428pac.2.2015.10.18.09.03.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hk11so4546686pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qMDCAKM+f7GIZAl/Igk36EBq1aZBDi7d2FxxXrpAgzY=;
        b=JTgHnjs3JCa7YhzoSxNpiBc6OtePjmv4Qg9M5+BN1V9E2zyAWVtdWdFvOg1OKKpTaN
         FRp7U1Ev18wm4giSCia6z9VwsfPVpvAeibnW4ob1VG9EegnxbHgW2SIYlF3bzA65qpvr
         +cAwh75GFnSz1ZTHTjBSGZH/sXjV1jUMs4iZyn18atgeoBwSgRGuYlQ9OV0221NwtSBT
         2Z27MGh6w9/jWLncje3tGYXsULp7O4Dv4WEkfTuDpl4CkylCvjJ6ZkfwEH9/UPNhFoIF
         Pd2VZ18jEoH+ezrVrgHYT65yKiPJRxsoUSAJYQw/MnYxWb/PhBZv0Tu8/eYDNDkYVF9V
         fQJQ==
X-Received: by 10.66.228.233 with SMTP id sl9mr29442548pac.139.1445184222115;
        Sun, 18 Oct 2015 09:03:42 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.177.180])
        by smtp.gmail.com with ESMTPSA id kp4sm31597290pbc.34.2015.10.18.09.03.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 18 Oct 2015 09:03:41 -0700 (PDT)
Date: Sun, 18 Oct 2015 21:33:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: lustre: ptlrpc: Replace seq_printf() with
 seq_puts()
Message-ID: <df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445183494.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace seq_printf() with seq_puts() since it is more expensive than
seq_puts(). Problem found using checkpatch.pl
WARNING: Prefer seq_puts to seq_printf

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 6cf9b92..23f1e26 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
 			   (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
 			   (long)(req->rq_sent - req->rq_deadline));
 		if (svc->srv_ops.so_req_printer == NULL)
-			seq_printf(s, "\n");
+			seq_puts(s, "\n");
 		else
 			svc->srv_ops.so_req_printer(s, srhi->srhi_req);
 	}
-- 
1.9.1


