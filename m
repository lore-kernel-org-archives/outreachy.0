X-GM-THRID: 6208399403783290880
X-Received: by 10.13.236.135 with SMTP id v129mr12826194ywe.9.1445505633557;
        Thu, 22 Oct 2015 02:20:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.164 with SMTP id f33ls1471057qgf.29.gmail; Thu, 22 Oct
 2015 02:20:33 -0700 (PDT)
X-Received: by 10.129.88.87 with SMTP id m84mr11609737ywb.0.1445505633001;
        Thu, 22 Oct 2015 02:20:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si1539281pac.2.2015.10.22.02.20.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so82123143pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 02:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZmZWAj2JsimS0iNoB/QNU6N2IIjv6XWfsBKLf8rnVzg=;
        b=kIYC04zuW2wppeV9sLjKFTEuFKL67+C9+Ixr5T41Hv57DDqsOne2Hwg3Lw2OJDPPCv
         jKIZXe97JLOi0zRXte4pCgzGq0OOS5zMiT0wFbVqYBTopXfj1GaC6TtvPUOA+3fqIo+1
         THpnyM9tm9r2gbM13tjBY1kUIgFbtuW6vRxjllSxS6mV/CwRSsqD8WOaXwAhfyelONkS
         gSTDYcgxtxkOdXrf3PHMpDg/ELNblRJ4/rmzFxOfDGIjQgsn/BnMKuaw50w+UjnFPY1U
         HnvI+YKunzmadhR55jmHbeaf+Z1uNCNbF5jAA/rtgRFh/jmt9bdVrunFWMqAbw9rFkJS
         vgrg==
X-Received: by 10.68.68.197 with SMTP id y5mr16279630pbt.88.1445505632826;
        Thu, 22 Oct 2015 02:20:32 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.connectify ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tj2sm13088910pab.4.2015.10.22.02.20.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 02:20:32 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/2] Staging: lustre: obdclass: Remove unused functions
Date: Thu, 22 Oct 2015 14:50:20 +0530
Message-Id: <1445505620-10350-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>

Remove the functions since they are not used anywhere throughout the
kernel

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../lustre/lustre/obdclass/lprocfs_status.c        | 139 ---------------------
 1 file changed, 139 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 3228fee..6a35ee1 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -330,32 +330,6 @@ out:
 EXPORT_SYMBOL(ldebugfs_register);
 
 /* Generic callbacks */
-int lprocfs_rd_uint(struct seq_file *m, void *data)
-{
-	seq_printf(m, "%u\n", *(unsigned int *)data);
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_uint);
-
-int lprocfs_wr_uint(struct file *file, const char __user *buffer,
-		    unsigned long count, void *data)
-{
-	unsigned *p = data;
-	char dummy[MAX_STRING_SIZE + 1], *end;
-	unsigned long tmp;
-
-	dummy[MAX_STRING_SIZE] = '\0';
-	if (copy_from_user(dummy, buffer, MAX_STRING_SIZE))
-		return -EFAULT;
-
-	tmp = simple_strtoul(dummy, &end, 0);
-	if (dummy == end)
-		return -EINVAL;
-
-	*p = (unsigned int)tmp;
-	return count;
-}
-EXPORT_SYMBOL(lprocfs_wr_uint);
 
 static ssize_t uuid_show(struct kobject *kobj, struct attribute *attr,
 			 char *buf)
@@ -484,46 +458,6 @@ static ssize_t filesfree_show(struct kobject *kobj, struct attribute *attr,
 }
 LUSTRE_RO_ATTR(filesfree);
 
-int lprocfs_rd_server_uuid(struct seq_file *m, void *data)
-{
-	struct obd_device *obd = data;
-	struct obd_import *imp;
-	char *imp_state_name = NULL;
-
-	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
-	imp = obd->u.cli.cl_import;
-	imp_state_name = ptlrpc_import_state_name(imp->imp_state);
-	seq_printf(m, "%s\t%s%s\n",
-		   obd2cli_tgt(obd), imp_state_name,
-		   imp->imp_deactive ? "\tDEACTIVATED" : "");
-
-	LPROCFS_CLIMP_EXIT(obd);
-
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_server_uuid);
-
-int lprocfs_rd_conn_uuid(struct seq_file *m, void *data)
-{
-	struct obd_device *obd = data;
-	struct ptlrpc_connection *conn;
-
-	LASSERT(obd != NULL);
-
-	LPROCFS_CLIMP_CHECK(obd);
-	conn = obd->u.cli.cl_import->imp_connection;
-	if (conn && obd->u.cli.cl_import)
-		seq_printf(m, "%s\n", conn->c_remote_uuid.uuid);
-	else
-		seq_puts(m, "<none>\n");
-
-	LPROCFS_CLIMP_EXIT(obd);
-
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_conn_uuid);
-
 /** add up per-cpu counters */
 void lprocfs_stats_collect(struct lprocfs_stats *stats, int idx,
 			   struct lprocfs_counter *cnt)
@@ -755,34 +689,6 @@ out_climp:
 }
 EXPORT_SYMBOL(lprocfs_rd_import);
 
-int lprocfs_rd_state(struct seq_file *m, void *data)
-{
-	struct obd_device *obd = data;
-	struct obd_import *imp;
-	int j, k;
-
-	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
-	imp = obd->u.cli.cl_import;
-
-	seq_printf(m, "current_state: %s\n",
-		     ptlrpc_import_state_name(imp->imp_state));
-	seq_printf(m, "state_history:\n");
-	k = imp->imp_state_hist_idx;
-	for (j = 0; j < IMP_STATE_HIST_LEN; j++) {
-		struct import_state_hist *ish =
-			&imp->imp_state_hist[(k + j) % IMP_STATE_HIST_LEN];
-		if (ish->ish_state == 0)
-			continue;
-		seq_printf(m, " - [%lld, %s]\n", (s64)ish->ish_time,
-			   ptlrpc_import_state_name(ish->ish_state));
-	}
-
-	LPROCFS_CLIMP_EXIT(obd);
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_state);
-
 int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at)
 {
 	int i;
@@ -795,51 +701,6 @@ int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at)
 EXPORT_SYMBOL(lprocfs_at_hist_helper);
 
 /* See also ptlrpc_lprocfs_rd_timeouts */
-int lprocfs_rd_timeouts(struct seq_file *m, void *data)
-{
-	struct obd_device *obd = data;
-	struct obd_import *imp;
-	unsigned int cur, worst;
-	time64_t now, worstt;
-	struct dhms ts;
-	int i;
-
-	LASSERT(obd != NULL);
-	LPROCFS_CLIMP_CHECK(obd);
-	imp = obd->u.cli.cl_import;
-
-	now = ktime_get_real_seconds();
-
-	/* Some network health info for kicks */
-	s2dhms(&ts, now - imp->imp_last_reply_time);
-	seq_printf(m, "%-10s : %lld, " DHMS_FMT " ago\n",
-		   "last reply", (s64)imp->imp_last_reply_time, DHMS_VARS(&ts));
-
-	cur = at_get(&imp->imp_at.iat_net_latency);
-	worst = imp->imp_at.iat_net_latency.at_worst_ever;
-	worstt = imp->imp_at.iat_net_latency.at_worst_time;
-	s2dhms(&ts, now - worstt);
-	seq_printf(m, "%-10s : cur %3u  worst %3u (at %lld, " DHMS_FMT " ago) ",
-		   "network", cur, worst, (s64)worstt, DHMS_VARS(&ts));
-	lprocfs_at_hist_helper(m, &imp->imp_at.iat_net_latency);
-
-	for (i = 0; i < IMP_AT_MAX_PORTALS; i++) {
-		if (imp->imp_at.iat_portal[i] == 0)
-			break;
-		cur = at_get(&imp->imp_at.iat_service_estimate[i]);
-		worst = imp->imp_at.iat_service_estimate[i].at_worst_ever;
-		worstt = imp->imp_at.iat_service_estimate[i].at_worst_time;
-		s2dhms(&ts, now - worstt);
-		seq_printf(m, "portal %-2d  : cur %3u  worst %3u (at %lld, "
-			   DHMS_FMT " ago) ", imp->imp_at.iat_portal[i],
-			   cur, worst, (s64)worstt, DHMS_VARS(&ts));
-		lprocfs_at_hist_helper(m, &imp->imp_at.iat_service_estimate[i]);
-	}
-
-	LPROCFS_CLIMP_EXIT(obd);
-	return 0;
-}
-EXPORT_SYMBOL(lprocfs_rd_timeouts);
 
 int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 {
-- 
2.1.4


