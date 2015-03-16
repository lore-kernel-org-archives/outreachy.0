X-GM-THRID: 8624928718848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e66bcd52f43b80f6,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.120.136 with SMTP id lc8mr6361870lbb.24.1426525271384;
        Mon, 16 Mar 2015 10:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.44.136 with SMTP id e8ls765239lam.91.gmail; Mon, 16 Mar
 2015 10:01:10 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr9655985lbw.4.1426525270900;
        Mon, 16 Mar 2015 10:01:10 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id gj20si735293wic.1.2015.03.16.10.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id p45so17618801weo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=k14P60T1Q7Sx0TXVvNRwSEDiKUZwa+ulmIZWIfm7fDg=;
        b=RyzzV+Yjo5ZiL4qn1LFa4VjEUerG22/Jsiy5CS1zE32vZnxrI44WGQU5TMl1Xu4wgf
         9HgW11h1gIOkkkl98IAglQBhCCgFX11HmP2VzMaa30EKIfDXP6tD9KUjotoUbj0u2I+i
         Vo2Z0jK9Cgg9sOyRcBvGmMIjswGuxSpc7FfIndBzFLTnTTcOCMoue3nljSYTCg7pHAFY
         6ZUER1UYHg4hgAf8P70yBw0pZ17lHUYP9oagWVrIF8XhLA0P6zygsNSx1hia8pmq8Jio
         p5GSMtOQXRfMShcQzfhcy7Krccp3sVOJSsBP4pO2SifIj8ro6QwXFooS9llwjPo8vvN3
         VybQ==
X-Received: by 10.180.38.15 with SMTP id c15mr63375955wik.74.1426525270651;
        Mon, 16 Mar 2015 10:01:10 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id ev7sm16175441wjb.47.2015.03.16.10.01.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:01:09 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 5BFD3C1F5A; Mon, 16 Mar 2015 20:00:56 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: lustre: Fix spelling mistakes
Date: Mon, 16 Mar 2015 20:00:55 +0300
Message-Id: <1426525255-8523-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fix the following spelling mistakes found using checkpatch.pl: interoprability, SEPERATOR, defult.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/llite/lproc_llite.c   | 12 ++++++------
 drivers/staging/lustre/lustre/obdclass/obd_mount.c  |  4 ++--
 drivers/staging/lustre/lustre/ptlrpc/niobuf.c       |  4 ++--
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c |  4 ++--
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index 2b8f147..83a9b85 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -727,7 +727,7 @@ static int ll_max_easize_seq_show(struct seq_file *m, void *v)
 }
 LPROC_SEQ_FOPS_RO(ll_max_easize);
 
-static int ll_defult_easize_seq_show(struct seq_file *m, void *v)
+static int ll_default_easize_seq_show(struct seq_file *m, void *v)
 {
 	struct super_block *sb = m->private;
 	struct ll_sb_info *sbi = ll_s2sbi(sb);
@@ -741,7 +741,7 @@ static int ll_defult_easize_seq_show(struct seq_file *m, void *v)
 	seq_printf(m, "%u\n", ealen);
 	return 0;
 }
-LPROC_SEQ_FOPS_RO(ll_defult_easize);
+LPROC_SEQ_FOPS_RO(ll_default_easize);
 
 static int ll_max_cookiesize_seq_show(struct seq_file *m, void *v)
 {
@@ -759,7 +759,7 @@ static int ll_max_cookiesize_seq_show(struct seq_file *m, void *v)
 }
 LPROC_SEQ_FOPS_RO(ll_max_cookiesize);
 
-static int ll_defult_cookiesize_seq_show(struct seq_file *m, void *v)
+static int ll_default_cookiesize_seq_show(struct seq_file *m, void *v)
 {
 	struct super_block *sb = m->private;
 	struct ll_sb_info *sbi = ll_s2sbi(sb);
@@ -773,7 +773,7 @@ static int ll_defult_cookiesize_seq_show(struct seq_file *m, void *v)
 	seq_printf(m, "%u\n", cookielen);
 	return 0;
 }
-LPROC_SEQ_FOPS_RO(ll_defult_cookiesize);
+LPROC_SEQ_FOPS_RO(ll_default_cookiesize);
 
 static int ll_sbi_flags_seq_show(struct seq_file *m, void *v)
 {
@@ -862,9 +862,9 @@ static struct lprocfs_vars lprocfs_llite_obd_vars[] = {
 	{ "statahead_stats",  &ll_statahead_stats_fops, NULL, 0 },
 	{ "lazystatfs",       &ll_lazystatfs_fops, NULL },
 	{ "max_easize",       &ll_max_easize_fops, NULL, 0 },
-	{ "default_easize",   &ll_defult_easize_fops, NULL, 0 },
+	{ "default_easize",   &ll_default_easize_fops, NULL, 0 },
 	{ "max_cookiesize",   &ll_max_cookiesize_fops, NULL, 0 },
-	{ "default_cookiesize", &ll_defult_cookiesize_fops, NULL, 0 },
+	{ "default_cookiesize", &ll_default_cookiesize_fops, NULL, 0 },
 	{ "sbi_flags",	      &ll_sbi_flags_fops, NULL, 0 },
 	{ "xattr_cache",      &ll_xattr_cache_fops, NULL, 0 },
 	{ NULL }
diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index 3c0c910..3a74041 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
@@ -645,10 +645,10 @@ int lustre_put_lsi(struct super_block *sb)
 }
 
 /*** SERVER NAME ***
- * <FSNAME><SEPERATOR><TYPE><INDEX>
+ * <FSNAME><SEPARATOR><TYPE><INDEX>
  * FSNAME is between 1 and 8 characters (inclusive).
  *	Excluded characters are '/' and ':'
- * SEPERATOR is either ':' or '-'
+ * SEPARATOR is either ':' or '-'
  * TYPE: "OST", "MDT", etc.
  * INDEX: Hex representation of the index
  */
diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index f715e9a..dc3f6c6 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -383,12 +383,12 @@ int ptlrpc_send_reply(struct ptlrpc_request *req, int flags)
 		       req->rq_export->exp_obd->obd_minor);
 	}
 
-	/* In order to keep interoprability with the client (< 2.3) which
+	/* In order to keep interoperability with the client (< 2.3) which
 	 * doesn't have pb_jobid in ptlrpc_body, We have to shrink the
 	 * ptlrpc_body in reply buffer to ptlrpc_body_v2, otherwise, the
 	 * reply buffer on client will be overflow.
 	 *
-	 * XXX Remove this whenever we drop the interoprability with such client.
+	 * XXX Remove this whenever we drop the interoperability with such client.
 	 */
 	req->rq_replen = lustre_shrink_msg(req->rq_repmsg, 0,
 					   sizeof(struct ptlrpc_body_v2), 1);
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index eb6ff90..b51af9b 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -119,11 +119,11 @@ int lustre_msg_early_size(void)
 {
 	static int size;
 	if (!size) {
-		/* Always reply old ptlrpc_body_v2 to keep interoprability
+		/* Always reply old ptlrpc_body_v2 to keep interoperability
 		 * with the old client (< 2.3) which doesn't have pb_jobid
 		 * in the ptlrpc_body.
 		 *
-		 * XXX Remove this whenever we drop interoprability with such
+		 * XXX Remove this whenever we drop interoperability with such
 		 *     client.
 		 */
 		__u32 pblen = sizeof(struct ptlrpc_body_v2);
-- 
1.9.1


