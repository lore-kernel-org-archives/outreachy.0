X-GM-THRID: 6208213403443396608
X-Received: by 10.50.66.210 with SMTP id h18mr4231637igt.10.1446078652239;
        Wed, 28 Oct 2015 17:30:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.227 with SMTP id z90ls113157qgz.37.gmail; Wed, 28 Oct
 2015 17:30:51 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr41367187ywg.26.1446078651571;
        Wed, 28 Oct 2015 17:30:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si5168156pbb.0.2015.10.28.17.30.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 17:30:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so21775117pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 17:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=w8BlbS3ONj1gXSBMFrIFNkEFVk5HZbyt1716hbWS+qI=;
        b=AsSBIqSGybvP0m7T+WP2cAac2zr0Yr0panOIhSfmpAvOE1bgqZhIo76IHewIZ7Zn+n
         JSE/FD07m50ZUgawAP+4jMhvHZR4qnGVLJOuC5TZrhMpkcHtHpT64s1bVBL/2F2FHUhG
         +c3S5/hqbB6KsXU5F5EFfCwne4vfuLjUPZEdX1Wko+nfzDP1iRvLjpN0yakZG4D/ulCN
         a7x15JT+I/gk1U+HfYNMEoHy4OauoMce5wxQADs1eZIZxaM7wwz2VwevTetb7xPTlARh
         eQ9U71ySWYXPPyi1uPNGJYCkOoWMByhOc7H6Cc+4nkzSIk76IrGkzz/WR/vHI1P7RfZD
         Qy5A==
X-Received: by 10.68.234.230 with SMTP id uh6mr37805712pbc.19.1446078651378;
        Wed, 28 Oct 2015 17:30:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ix1sm47584126pbd.40.2015.10.28.17.30.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 17:30:50 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v3] Staging: lustre: Replace LPROCFS_CLIMP_EXIT with up_read
Date: Wed, 28 Oct 2015 17:30:43 -0700
Message-Id: <1446078643-16479-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

In all call sites type of argument that macro LPROCFS_CLIMP_EXIT
use is the same, so replace it with up_read function.
Also remove the macro since it's no longer used.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
Changes in v3:
 - drop unnecessary parentheses.

Changes in v2:
 - remove macro in this patch and not in separate one.
 - use up_read and not a static inline wrapper function

 drivers/staging/lustre/lustre/include/lprocfs_status.h  |  3 ---
 drivers/staging/lustre/lustre/mgc/mgc_request.c         |  2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 12 ++++++------
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c     |  6 +++---
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lprocfs_status.h b/drivers/staging/lustre/lustre/include/lprocfs_status.h
index 9e654b2..f18c0c7 100644
--- a/drivers/staging/lustre/lustre/include/lprocfs_status.h
+++ b/drivers/staging/lustre/lustre/include/lprocfs_status.h
@@ -624,9 +624,6 @@ void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
 int lprocfs_single_release(struct inode *, struct file *);
 int lprocfs_seq_release(struct inode *, struct file *);
 
-#define LPROCFS_CLIMP_EXIT(obd)		 \
-	up_read(&(obd)->u.cli.cl_sem)
-
 /* write the name##_seq_show function, call LPROC_SEQ_FOPS_RO for read-only
   proc entries; otherwise, you will define name##_seq_write function also for
   a read-write proc entry, and then call LPROC_SEQ_SEQ instead. Finally,
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index b81efcd..abee084 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -463,7 +463,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 	}
 	spin_unlock(&config_list_lock);
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
 
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 333ac7d..2de3c1b 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -502,7 +502,7 @@ int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
 		   obd2cli_tgt(obd), imp_state_name,
 		   imp->imp_deactive ? "\tDEACTIVATED" : "");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 
 	return 0;
 }
@@ -526,7 +526,7 @@ int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
 	else
 		seq_puts(m, "<none>\n");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 
 	return 0;
 }
@@ -765,7 +765,7 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 	}
 
 out_climp:
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_import);
@@ -796,7 +796,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
 			   ptlrpc_import_state_name(ish->ish_state));
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_state);
@@ -857,7 +857,7 @@ int lprocfs_rd_timeouts(struct seq_file *m, void *data)
 		lprocfs_at_hist_helper(m, &imp->imp_at.iat_service_estimate[i]);
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_timeouts);
@@ -876,7 +876,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 	seq_printf(m, "flags=%#llx\n", flags);
 	obd_connect_seq_flags2str(m, flags, "\n");
 	seq_printf(m, "\n");
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_connect_flags);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index afab0de..2aecab2 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1197,7 +1197,7 @@ int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 		return rc;
 
 	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 	if (req == NULL)
 		return -ENOMEM;
 
@@ -1291,7 +1291,7 @@ int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
 		return rc;
 
 	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 
 	return 0;
 }
@@ -1319,7 +1319,7 @@ int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
 	spin_lock(&imp->imp_lock);
 	imp->imp_no_pinger_recover = !val;
 	spin_unlock(&imp->imp_lock);
-	LPROCFS_CLIMP_EXIT(obd);
+	up_read(&obd->u.cli.cl_sem);
 
 	return count;
 
-- 
1.9.1


