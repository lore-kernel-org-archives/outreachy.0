X-GM-THRID: 6208399403783290880
X-Received: by 10.66.139.136 with SMTP id qy8mr11928998pab.21.1445505631157;
        Thu, 22 Oct 2015 02:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.216 with SMTP id 85ls417511ios.106.gmail; Thu, 22 Oct
 2015 02:20:30 -0700 (PDT)
X-Received: by 10.66.62.195 with SMTP id a3mr11454241pas.22.1445505630890;
        Thu, 22 Oct 2015 02:20:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si1539281pac.2.2015.10.22.02.20.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:20:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so82123143pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 02:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=5D2McTMT3ac0EL6a6ZSSgBcDTQ8Zp6XinmpE0yDAIas=;
        b=VX7eil1wb4kbmUuTOP0ewUT7XPJpkvB97QUPldOovmFCNJGF7ipf3j98DT3qYqS6Ln
         cfa9VAogfriKYScgvvLqQepyirBPBSQc3r+eACBVk4ymXe5eEHwl3RWVzCiQqwWJG76y
         vpQcr8W7nVp1D+TYCsA8ZGqgb2TFccVtL4a27Femhn+CEo5KVc3jLMiXUfb4MXsdr8Wv
         RMoRaoBdyM4r666RUuo/zf+mP6S4Qpy4dVYvzPC15N/B9Ap26F7NrWujJvoSVbj3d2Rh
         xfuJ3iNJuAEgnyOoKeYhCpHx55c+Ak3BbcIf/uPmTPsQAmgFM/S91i4BkKTSeEXx3uLe
         Q3FA==
X-Received: by 10.68.217.8 with SMTP id ou8mr16540971pbc.164.1445505630784;
        Thu, 22 Oct 2015 02:20:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.connectify ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tj2sm13088910pab.4.2015.10.22.02.20.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 02:20:30 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/2] Staging: lustre: ptlrpc: Remove unused functions
Date: Thu, 22 Oct 2015 14:50:19 +0530
Message-Id: <1445505620-10350-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>

Remove the functions which are not used anywhere throughout the
kernel

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 63 ----------------------
 1 file changed, 63 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 415817c..86745a6 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -1182,30 +1182,6 @@ EXPORT_SYMBOL(ptlrpc_lprocfs_unregister_obd);
 
 #undef BUFLEN
 
-int lprocfs_wr_ping(struct file *file, const char __user *buffer,
-		    size_t count, loff_t *off)
-{
-	struct obd_device *obd = ((struct seq_file *)file->private_data)->private;
-	struct ptlrpc_request *req;
-	int rc;
-
-	LPROCFS_CLIMP_CHECK(obd);
-	req = ptlrpc_prep_ping(obd->u.cli.cl_import);
-	LPROCFS_CLIMP_EXIT(obd);
-	if (req == NULL)
-		return -ENOMEM;
-
-	req->rq_send_state = LUSTRE_IMP_FULL;
-
-	rc = ptlrpc_queue_wait(req);
-
-	ptlrpc_req_finished(req);
-	if (rc >= 0)
-		return count;
-	return rc;
-}
-EXPORT_SYMBOL(lprocfs_wr_ping);
-
 /* Write the connection UUID to this file to attempt to connect to that node.
  * The connection UUID is a node's primary NID. For example,
  * "echo connection=192.168.0.1@tcp0::instance > .../import".
@@ -1273,42 +1249,3 @@ out:
 	return count;
 }
 EXPORT_SYMBOL(lprocfs_wr_import);
-
-int lprocfs_rd_pinger_recov(struct seq_file *m, void *n)
-{
-	struct obd_device *obd = m->private;
-	struct obd_import *imp = obd->u.cli.cl_import;
-
-	LPROCFS_CLIMP_CHECK(obd);
-	seq_printf(m, "%d\n", !imp->imp_no_pinger_recover);
-	LPROCFS_CLIMP_EXIT(obd);
-
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_pinger_recov);
-
-int lprocfs_wr_pinger_recov(struct file *file, const char __user *buffer,
-		      size_t count, loff_t *off)
-{
-	struct obd_device *obd = ((struct seq_file *)file->private_data)->private;
-	struct client_obd *cli = &obd->u.cli;
-	struct obd_import *imp = cli->cl_import;
-	int rc, val;
-
-	rc = lprocfs_write_helper(buffer, count, &val);
-	if (rc < 0)
-		return rc;
-
-	if (val != 0 && val != 1)
-		return -ERANGE;
-
-	LPROCFS_CLIMP_CHECK(obd);
-	spin_lock(&imp->imp_lock);
-	imp->imp_no_pinger_recover = !val;
-	spin_unlock(&imp->imp_lock);
-	LPROCFS_CLIMP_EXIT(obd);
-
-	return count;
-
-}
-EXPORT_SYMBOL(lprocfs_wr_pinger_recov);
-- 
2.1.4


