X-GM-THRID: 6205587481887244288
X-Received: by 10.107.27.7 with SMTP id b7mr4646072iob.30.1444850935669;
        Wed, 14 Oct 2015 12:28:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.227 with SMTP id z3ls1837517igl.16.canary; Wed, 14 Oct
 2015 12:28:55 -0700 (PDT)
X-Received: by 10.107.151.77 with SMTP id z74mr4516305iod.8.1444850935396;
        Wed, 14 Oct 2015 12:28:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si995499pac.2.2015.10.14.12.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so62489318pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vgDOjRbwHn39RvViBhMrj3TSw1ZNekvz2DximMLQ68Y=;
        b=uPFeiN6iZ/DnwrDlewGgrUaTDGYzk8SWFbi/QVI7uLCRk1ZxNv/r8wMya5B91kTRGI
         WTUzf6ZzoEkJ48GpnY3/pw8zeTXKfYwsGSgU8fQSQxR/fzuyDeLs50/ZoQu90aIFJ2iY
         su7IEWeQQ5MWLrj8y+ihPJnxKWwb5dgrr0F3bJyfHxHYKFDdwsq9+8VKiT2US2eAHP8l
         3RTaoXoYE9mOLxnnaXjPv5KwiUYvjA/muHU2TpYInxBUoqu5u5xIAYVmBhISsPFAJTZ/
         6m4/GG3aSxP6nG1rqMSl0YlqK3crfbewPVdlRJfXyycK2kDXJyuxOCzWnRRn7os6Cv0v
         k62Q==
X-Received: by 10.66.184.203 with SMTP id ew11mr5253758pac.24.1444850935278;
        Wed, 14 Oct 2015 12:28:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:28:54 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 03/12] Staging: lustre: obdclass: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:21 +0530
Message-Id: <1444850910-11408-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACF6.000E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

Semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 6 +++---
 drivers/staging/lustre/lustre/obdclass/obd_config.c     | 4 ++--
 drivers/staging/lustre/lustre/obdclass/obd_mount.c      | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 7cc4b55..3228fee 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -612,7 +612,7 @@ int lprocfs_rd_import(struct seq_file *m, void *data)
 {
 	struct lprocfs_counter		ret;
 	struct lprocfs_counter_header	*header;
-	struct obd_device		*obd	= (struct obd_device *)data;
+	struct obd_device		*obd	= data;
 	struct obd_import		*imp;
 	struct obd_import_conn		*conn;
 	int				j;
@@ -757,7 +757,7 @@ EXPORT_SYMBOL(lprocfs_rd_import);
 
 int lprocfs_rd_state(struct seq_file *m, void *data)
 {
-	struct obd_device *obd = (struct obd_device *)data;
+	struct obd_device *obd = data;
 	struct obd_import *imp;
 	int j, k;
 
@@ -797,7 +797,7 @@ EXPORT_SYMBOL(lprocfs_at_hist_helper);
 /* See also ptlrpc_lprocfs_rd_timeouts */
 int lprocfs_rd_timeouts(struct seq_file *m, void *data)
 {
-	struct obd_device *obd = (struct obd_device *)data;
+	struct obd_device *obd = data;
 	struct obd_import *imp;
 	unsigned int cur, worst;
 	time64_t now, worstt;
diff --git a/drivers/staging/lustre/lustre/obdclass/obd_config.c b/drivers/staging/lustre/lustre/obdclass/obd_config.c
index 64e2d1b..38e5e13 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_config.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_config.c
@@ -88,7 +88,7 @@ static int class_match_param(char *buf, char *key, char **valp)
 
 static int parse_nid(char *buf, void *value, int quiet)
 {
-	lnet_nid_t *nid = (lnet_nid_t *)value;
+	lnet_nid_t *nid = value;
 
 	*nid = libcfs_str2nid(buf);
 	if (*nid != LNET_NID_ANY)
@@ -101,7 +101,7 @@ static int parse_nid(char *buf, void *value, int quiet)
 
 static int parse_net(char *buf, void *value)
 {
-	__u32 *net = (__u32 *)value;
+	__u32 *net = value;
 
 	*net = libcfs_str2net(buf);
 	CDEBUG(D_INFO, "Net %s\n", libcfs_net2str(*net));
diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index 0d324cc..149c838 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
@@ -1100,7 +1100,7 @@ static int lustre_fill_super(struct super_block *sb, void *data, int silent)
 	obd_zombie_barrier();
 
 	/* Figure out the lmd from the mount options */
-	if (lmd_parse((char *)(lmd2->lmd2_data), lmd)) {
+	if (lmd_parse((lmd2->lmd2_data), lmd)) {
 		lustre_put_lsi(sb);
 		rc = -EINVAL;
 		goto out;
-- 
2.1.4


