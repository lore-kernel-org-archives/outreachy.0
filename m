X-GM-THRID: 4525053181952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,253b09dbad964a54,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr2041363wjc.2.1425041839199;
        Fri, 27 Feb 2015 04:57:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.229 with SMTP id et5ls110597wib.40.canary; Fri, 27 Feb
 2015 04:57:18 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr454696wib.6.1425041838912;
        Fri, 27 Feb 2015 04:57:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id o3si104561wib.2.2015.02.27.04.57.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:57:18 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id k48so20255401wev.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:57:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=YZHdE9C77mLlJgq/isItOEu5tjDJcWmqsyWZ/erE0zs=;
        b=BRFk8jPfs6t/l3Gi6v/6vp+fb64L0vF/yR3tLTFK5ILgzYbvTHlVa5NaGWSc177pHa
         T1VSPBb7rvV7oLFGL2HFXctVgSI4jpCTwlNLcInWBVicZGaGtCZEgmNVswtPdTqdF92y
         YAlbs2uuEAjGDGWzdP53OF8RZ0tLZbN+CxFAH31Z32VlMv9X7WjiI95VygKl/kmK5OpC
         IdkoFkodvLGGWw+IFiS0581V3A5exUb3gLt+ai9eSg0siIFC7bOJj038m9gP1zdL27UB
         Dd0+NGJGrbtneg1oqNuI4grwcop/nyjtkLvbp/St7jrajsGdzO5+21Vaql+jVlRCHM7h
         gZiQ==
X-Received: by 10.194.234.40 with SMTP id ub8mr28008579wjc.100.1425041838802;
        Fri, 27 Feb 2015 04:57:18 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id ch6sm5895123wjc.3.2015.02.27.04.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 04:57:18 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Fri, 27 Feb 2015 14:57:11 +0200
Message-Id: <1425041831-15572-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/osc/lproc_osc.c WARNING: Missing a blank
line after declarations

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/osc/lproc_osc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
index 9f719bc..9c151dd 100644
--- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
+++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
@@ -345,6 +345,7 @@ static int osc_checksum_type_seq_show(struct seq_file *m, void *v)
 {
 	struct obd_device *obd = m->private;
 	int i;
+
 	DECLARE_CKSUM_NAME;
 
 	if (obd == NULL)
@@ -367,6 +368,7 @@ static ssize_t osc_checksum_type_seq_write(struct file *file, const char *buffer
 {
 	struct obd_device *obd = ((struct seq_file *)file->private_data)->private;
 	int i;
+
 	DECLARE_CKSUM_NAME;
 	char kernbuf[10];
 
@@ -461,6 +463,7 @@ LPROC_SEQ_FOPS(osc_lockless_truncate);
 static int osc_destroys_in_flight_seq_show(struct seq_file *m, void *v)
 {
 	struct obd_device *obd = m->private;
+
 	return seq_printf(m, "%u\n",
 			atomic_read(&obd->u.cli.cl_destroy_in_flight));
 }
@@ -602,6 +605,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
 	for (i = 0; i < OBD_HIST_MAX; i++) {
 		unsigned long r = cli->cl_read_page_hist.oh_buckets[i];
 		unsigned long w = cli->cl_write_page_hist.oh_buckets[i];
+	
 		read_cum += r;
 		write_cum += w;
 		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
@@ -625,6 +629,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
 	for (i = 0; i < OBD_HIST_MAX; i++) {
 		unsigned long r = cli->cl_read_rpc_hist.oh_buckets[i];
 		unsigned long w = cli->cl_write_rpc_hist.oh_buckets[i];
+
 		read_cum += r;
 		write_cum += w;
 		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
@@ -648,6 +653,7 @@ static int osc_rpc_stats_seq_show(struct seq_file *seq, void *v)
 	for (i = 0; i < OBD_HIST_MAX; i++) {
 		unsigned long r = cli->cl_read_offset_hist.oh_buckets[i];
 		unsigned long w = cli->cl_write_offset_hist.oh_buckets[i];
+
 		read_cum += r;
 		write_cum += w;
 		seq_printf(seq, "%d:\t\t%10lu %3lu %3lu   | %10lu %3lu %3lu\n",
-- 
1.9.1


