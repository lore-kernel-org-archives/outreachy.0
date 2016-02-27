X-GM-THRID: 6255876964906696704
X-Received: by 10.31.52.207 with SMTP id b198mr4328272vka.5.1456559860536;
        Fri, 26 Feb 2016 23:57:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.141 with SMTP id 13ls987335iok.51.gmail; Fri, 26 Feb
 2016 23:57:39 -0800 (PST)
X-Received: by 10.66.163.4 with SMTP id ye4mr4350589pab.23.1456559859803;
        Fri, 26 Feb 2016 23:57:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si2424511pfb.1.2016.02.26.23.57.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 23:57:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ho8so64951313pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 23:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=2AYvNZFycVlAJVE54vsC/AYlYESFMgfbCPxzoOAbHEk=;
        b=wsfhnwJqcUSJl027cW1yRnDclgsnxF+H716VNppNQ8ekNr4j5Uch7leshooNozJJ6R
         9hwcvmNgGrVFioXdhLHOTnnyj/pEOWj8PDiOXLbVyeT3AcT58R4TCF53gh2kfeSH7isB
         YD04niJ+eZ7QtcltdLTWZtytxMipHhWjc4ASEeYVjRYwwnZ0Y2CVUuIAsyL4HE32iruR
         Wu7ogC1cnD33sNr/fcyBShvzqiCdJs0KGVnh7C34GyZYsZ/Y9erKgH6UkI8E3n5vRBgH
         GquNxjo/qtE3jffTXI0QF8ZGTNbe8/twsWAQEIqqH9ei3jYDOEiOl4hZMXckntmDHO0P
         HaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2AYvNZFycVlAJVE54vsC/AYlYESFMgfbCPxzoOAbHEk=;
        b=JTINtWdutWKFIcn3kTTl2yimZXYBa4FyEkQg5g8U3BnZSKRQSgtT3a9Zv3cxWiyrqv
         CNONulfoP9GT4uGDvah6RVav99qoFCFKUp1yGKCQPrmY4kLqQJu+ZTvaq9/d/Y/KuA3f
         NlF3MSkD3bzBxjRfFXS0GR+egDg1YEc27WQP/tvwu0xQ7K+HcJSPrQigNu2I3kV2mPTx
         q9yI+mtyV28aJH2J7d+vosYN7FVTm8ZNRlfq7l4XnfiX+obzZeTyxFp6eklkocZiW8Md
         5tD0TvAxrsD4TNjo9YIIuhHu8v88pgrYD6NLVc+TagLI1Swu9Tjl/OaaJlui5zkpJDBn
         lhsA==
X-Gm-Message-State: AD7BkJKRFzjtCNupmHL9mekUGkcEOEI6e03PEnHvH7ifT6FRlkVist0EqPAieHrLxYjwXg==
X-Received: by 10.66.100.129 with SMTP id ey1mr7894538pab.100.1456559859231;
        Fri, 26 Feb 2016 23:57:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.145.144])
        by smtp.gmail.com with ESMTPSA id n68sm24035937pfj.46.2016.02.26.23.57.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 23:57:38 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 27 Feb 2016 13:27:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: obdclass: Use seq_puts/seq_putc
Date: Sat, 27 Feb 2016 13:27:20 +0530
Message-Id: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch converts the seq_printf output with constant strings to
seq_puts and also use seq_putc for seq_printf(...,"\n").
Done using coccinelle:

@@
identifier a;
constant b;
@@
(
- seq_printf(a,"\n");
+ seq_putc(a,'\n');
|
- seq_printf(a,b);
+ seq_puts(a,b);
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_object.c      | 10 +++++-----
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17 ++++++-----------
 2 files changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index b56dfb6..a0d8cce 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -462,19 +462,19 @@ locks: ...... ...... ...... ...... ...... [...... ...... ...... ...... ......]
  */
 	lu_site_stats_print(&site->cs_lu, m);
 	cache_stats_print(&site->cs_pages, m, 1);
-	seq_printf(m, " [");
+	seq_puts(m, " [");
 	for (i = 0; i < ARRAY_SIZE(site->cs_pages_state); ++i)
 		seq_printf(m, "%s: %u ", pstate[i],
 				atomic_read(&site->cs_pages_state[i]));
-	seq_printf(m, "]\n");
+	seq_puts(m, "]\n");
 	cache_stats_print(&site->cs_locks, m, 0);
-	seq_printf(m, " [");
+	seq_puts(m, " [");
 	for (i = 0; i < ARRAY_SIZE(site->cs_locks_state); ++i)
 		seq_printf(m, "%s: %u ", lstate[i],
 				atomic_read(&site->cs_locks_state[i]));
-	seq_printf(m, "]\n");
+	seq_puts(m, "]\n");
 	cache_stats_print(&cl_env_stats, m, 0);
-	seq_printf(m, "\n");
+	seq_putc(m, '\n');
 	return 0;
 }
 EXPORT_SYMBOL(cl_site_stats_print);
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 28bb4e5..82a1fab 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -584,7 +584,7 @@ static int obd_import_flags2str(struct obd_import *imp, struct seq_file *m)
 	bool first = true;
 
 	if (imp->imp_obd->obd_no_recov) {
-		seq_printf(m, "no_recov");
+		seq_puts(m, "no_recov");
 		first = false;
 	}
 
@@ -648,15 +648,10 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 		     ptlrpc_import_state_name(imp->imp_state),
 		     imp->imp_connect_data.ocd_instance);
 	obd_connect_seq_flags2str(m, imp->imp_connect_data.ocd_connect_flags, ", ");
-	seq_printf(m,
-		      " ]\n"
-		      "    import_flags: [ ");
+	seq_puts(m, " ]\n    import_flags: [ ");
 	obd_import_flags2str(imp, m);
 
-	seq_printf(m,
-		      " ]\n"
-		      "    connection:\n"
-		      "       failover_nids: [ ");
+	seq_puts(m, " ]\n    connection:\n       failover_nids: [ ");
 	spin_lock(&imp->imp_lock);
 	j = 0;
 	list_for_each_entry(conn, &imp->imp_conn_list, oic_item) {
@@ -788,7 +783,7 @@ int lprocfs_rd_state(struct seq_file *m, void *data)
 
 	seq_printf(m, "current_state: %s\n",
 		     ptlrpc_import_state_name(imp->imp_state));
-	seq_printf(m, "state_history:\n");
+	seq_puts(m, "state_history:\n");
 	k = imp->imp_state_hist_idx;
 	for (j = 0; j < IMP_STATE_HIST_LEN; j++) {
 		struct import_state_hist *ish =
@@ -810,7 +805,7 @@ int lprocfs_at_hist_helper(struct seq_file *m, struct adaptive_timeout *at)
 
 	for (i = 0; i < AT_BINS; i++)
 		seq_printf(m, "%3u ", at->at_hist[i]);
-	seq_printf(m, "\n");
+	seq_putc(m, '\n');
 	return 0;
 }
 EXPORT_SYMBOL(lprocfs_at_hist_helper);
@@ -878,7 +873,7 @@ int lprocfs_rd_connect_flags(struct seq_file *m, void *data)
 	flags = obd->u.cli.cl_import->imp_connect_data.ocd_connect_flags;
 	seq_printf(m, "flags=%#llx\n", flags);
 	obd_connect_seq_flags2str(m, flags, "\n");
-	seq_printf(m, "\n");
+	seq_putc(m, '\n');
 	up_read(&obd->u.cli.cl_sem);
 	return 0;
 }
-- 
1.9.1


