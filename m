X-GM-THRID: 6208213403443396608
X-Received: by 10.112.130.41 with SMTP id ob9mr2702995lbb.17.1445462446045;
        Wed, 21 Oct 2015 14:20:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls272472lfg.109.gmail; Wed, 21 Oct
 2015 14:20:45 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr2712367lbc.23.1445462445597;
        Wed, 21 Oct 2015 14:20:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id o3si367736wiz.1.2015.10.21.14.20.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 14:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fv8so93704006wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 14:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OR2igFDbUT9wO802rJCwuwmTbQHQkePr6S1QSMhs2BM=;
        b=C5Wt53qGB7+wYUYMdQ7FnqG6LX327Vb6kJKbaptvJrAYM39HelaZdbRFbIhcn3Ua86
         w2HhE3dQfOt6ufu0bjSwzCYt2GqivRG9Evg7figiz+nww/MSkVdO2Hl1EONB1qdUb0k/
         SHaZUHsfEC5r4h35YucUmUOkc3ZBCksEcu2MwIa1JylkF/x1lzFvrqpi5r+pA07FD6l3
         lr54rqZ881B0uQHQuE7W1OeWPv/YwL7bgOJR2/1C7GWmjZNU8j91N5RmLaaARITNV+qE
         9Iit+aKWNOVbwsknQhuR1WzpiPIbEKHUz/Qh0FFBRygrgbieVC8ys2ozbjeAH17ZJbtD
         42Ng==
X-Received: by 10.180.184.134 with SMTP id eu6mr13944462wic.77.1445462445477;
        Wed, 21 Oct 2015 14:20:45 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id i3sm25265257wij.9.2015.10.21.14.20.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 14:20:44 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: Replace LPROCFS_CLIMP_EXIT with lprocfs_climp_exit
Date: Wed, 21 Oct 2015 23:20:34 +0200
Message-Id: <2f3b181baa7f390b1169b8c8baa3f3cebb92da72.1445462106.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>

Static inline functions are preferred over macros. The function is
placed in obd_class.h instead lprocfs_status.h because obd_class.h
includes header obd.h which contains definition of struct obd_device
and in that way avoids build error: Dereferencing pointer to incomplete
type.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h       |  5 +++++
 drivers/staging/lustre/lustre/mgc/mgc_request.c         |  2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 12 ++++++------
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c     |  6 +++---
 4 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 56c2096..ad15a10 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -262,6 +262,11 @@ static inline int lprocfs_climp_check(struct obd_device *obd)
 	return 0;
 }
 
+static inline void lprocfs_climp_exit(struct obd_device *obd)
+{
+	up_read(&(obd)->u.cli.cl_sem);
+}
+
 struct inode;
 struct lu_attr;
 struct obdo;
diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index b81efcd..82faabc 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -463,7 +463,7 @@ int lprocfs_mgc_rd_ir_state(struct seq_file *m, void *data)
 	}
 	spin_unlock(&config_list_lock);
 
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	return 0;
 }
 
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 4494096..a096fac 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -502,7 +502,7 @@ int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
 		   obd2cli_tgt(obd), imp_state_name,
 		   imp->imp_deactive ? "\tDEACTIVATED" : "");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 
 	return 0;
 }
@@ -526,7 +526,7 @@ int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
 	else
 		seq_puts(m, "<none>\n");
 
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 
 	return 0;
 }
@@ -762,7 +762,7 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 	}
 
 out_climp:
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_import);
@@ -793,7 +793,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
 			   ptlrpc_import_state_name(ish->ish_state));
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_state);
@@ -854,7 +854,7 @@ int lprocfs_rd_timeouts(struct seq_file *m, void *data)
 		lprocfs_at_hist_helper(m, &imp->imp_at.iat_service_estimate[i]);
 	}
 
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_timeouts);
@@ -873,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 	seq_printf(m, "flags=%#llx\n", flags);
 	obd_connect_seq_flags2str(m, flags, "\n");
 	seq_printf(m, "\n");
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_rd_connect_flags);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 33184c7..b431c3b 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1194,7 +1194,7 @@ int lprocfs_wr_ping(struct file *file, const char __user *buffer,
 		return rc;
 
 	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 	if (req == NULL)
 		return -ENOMEM;
 
@@ -1288,7 +1288,7 @@ int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
 		return rc;
 
 	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 
 	return 0;
 }
@@ -1316,7 +1316,7 @@ int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
 	spin_lock(&imp->imp_lock);
 	imp->imp_no_pinger_recover = !val;
 	spin_unlock(&imp->imp_lock);
-	LPROCFS_CLIMP_EXIT(obd);
+	lprocfs_climp_exit(obd);
 
 	return count;
 
-- 
1.9.1


