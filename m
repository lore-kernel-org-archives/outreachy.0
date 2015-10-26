X-GM-THRID: 6208213403443396608
X-Received: by 10.182.126.47 with SMTP id mv15mr32432961obb.44.1445872103011;
        Mon, 26 Oct 2015 08:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.77 with SMTP id z74ls1164780iod.46.gmail; Mon, 26 Oct
 2015 08:08:22 -0700 (PDT)
X-Received: by 10.107.38.141 with SMTP id m135mr30635715iom.18.1445872102657;
        Mon, 26 Oct 2015 08:08:22 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id fa8si3573657pab.1.2015.10.26.08.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 08:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so190901107pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 08:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fQtTKTCW1qd0JLTLlSjs2yHHKyLVml80koKindnZozo=;
        b=qV5UoUmazJ+d6S1xFTuvh4Fu3mMJ95L/1mgow9C402L/oUHumuMwMHL9y1/hce2+am
         iBCQy8gfKQJxthus/Wc3/jE/fpCZl3WwMzja1ZXxUj7Q21WMPVI6zPnmCPOHdZDGJVWj
         oJbYXTLCSuDDU503SPnNOAnf1hplw6YqO8VtQ6jBZRr5VEACgEuKQhK6ddqUEggIUqYy
         cn2MbWhYMS5IwhtcdZ7clM/A7hzHkGqb3+C8eItCeO+zMwBidcsMfsTevjiyeXZqGz7d
         z7s64Cx8Jqgo9XEf4CfxdfpGKslop/hwNfm9rfxedbX5JpRafKiQexsCnh0Rf1YExwFZ
         cU6Q==
X-Received: by 10.66.102.34 with SMTP id fl2mr22551812pab.82.1445872102511;
        Mon, 26 Oct 2015 08:08:22 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id v13sm34518337pbs.51.2015.10.26.08.08.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 08:08:22 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 2/2] Staging: lustre: Replace LPROCFS_CLIMP_EXIT with up_read
Date: Mon, 26 Oct 2015 08:08:15 -0700
Message-Id: <0e2d7570c644c1de4d1cf681e6f13de3e0fb1ff7.1445871650.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445871650.git.ksenija.stanojevic@gmail.com>
References: <cover.1445871650.git.ksenija.stanojevic@gmail.com>

In all call sites type of argument that macro LPROCFS_CLIMP_EXIT
use is the same, so replace it with up_read function.
Also remove the macro since it's no longer used.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v2:
 - remove macro in this patch and not in separate one.
 - use up_read and not a static inline wrapper function

 drivers/staging/lustre/lustre/include/lprocfs_status.h  |  3 ---
 drivers/staging/lustre/lustre/mgc/mgc_request.c         |  2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 12 ++++++------
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c     |  6 +++---
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 089e5a3..532d195 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -626,9 +626,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
 int lprocfs_single_release(struct inode *, struct file *);
 int lprocfs_seq_release(struct inode *, struct file *);
 
-#define LPROCFS_CLIMP_EXIT(obd)		 \
-	up_read(&(obd)->u.cli.cl_sem)
-
 /* write the name##_seq_show function, call LPROC_SEQ_FOPS_RO for read-only
   proc entries; otherwise, you will define name##_seq_write function also for
   a read-write proc entry, and then call LPROC_SEQ_SEQ instead. Finally,
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index b81efcd..95c5f14 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -463,7 +463,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 	}
 	spin_unlock(&config_list_lock);
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	return 0;
 }
 
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 4494096..694dcde 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -502,7 +502,7 @@ int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
 		   obd2cli_tgt(obd), imp_state_name,
 		   imp->imp_deactive ? "\tDEACTIVATED" : "");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 
 	return 0;
 }
@@ -526,7 +526,7 @@ int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
 	else
 		seq_puts(m, "<none>\n");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 
 	return 0;
 }
@@ -762,7 +762,7 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 	}
 
 out_climp:
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_import);
@@ -793,7 +793,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
 			   ptlrpc_import_state_name(ish->ish_state));
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_state);
@@ -854,7 +854,7 @@ int lprocfs_rd_timeouts(struct seq_file *m, void *data)
 		lprocfs_at_hist_helper(m, &imp->imp_at.iat_service_estimate[i]);
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_timeouts);
@@ -873,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 	seq_printf(m, "flags=%#llx\n", flags);
 	obd_connect_seq_flags2str(m, flags, "\n");
 	seq_printf(m, "\n");
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_connect_flags);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 33184c7..c2773b58 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1194,7 +1194,7 @@ int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 		return rc;
 
 	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 	if (req == NULL)
 		return -ENOMEM;
 
@@ -1288,7 +1288,7 @@ int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
 		return rc;
 
 	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 
 	return 0;
 }
@@ -1316,7 +1316,7 @@ int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
 	spin_lock(&imp->imp_lock);
 	imp->imp_no_pinger_recover = !val;
 	spin_unlock(&imp->imp_lock);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&(obd)->u.cli.cl_sem);
 
 	return count;
 
-- 
1.9.1


