X-GM-THRID: 6201691543779147776
X-Received: by 10.66.159.194 with SMTP id xe2mr19406438pab.13.1443943856946;
        Sun, 04 Oct 2015 00:30:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.112 with SMTP id a103ls2293930qge.94.gmail; Sun, 04 Oct
 2015 00:30:56 -0700 (PDT)
X-Received: by 10.31.7.70 with SMTP id 67mr20572807vkh.2.1443943856296;
        Sun, 04 Oct 2015 00:30:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si2885565pbb.0.2015.10.04.00.30.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ex6so145748072pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gicjBOs7gTflDkqp+pJzRnjfGzgB5NVXrg6czqV/OpI=;
        b=nq98BIwdlAU5vG8mGdbgpr4OE8Ye5yRTfdmU4LdJKtodqHb+hVAZ19sDqlP434VC2e
         lHRsmpcVhIz7s1RSE+dTn87UMaqnLPGUts/bAxcp/BpMVvPR+5nwO3E1bqzADv0xPwtt
         DdNo5+LRI7NFJmFKvtRT4QOKKlOQFgLiH7lD74b53gx8MoRxd3RpvsACV8LDstxA61fj
         mYSs1hlO2FhBfMqw/zXcpY36TV0eKR0Ur5EhZMXzYpbqyreHLPhhSYbxg29po8bucmJ/
         g6UFIR5jKbQsMsXhLiP6GfNPLFUzaljEUGrpAdJU9IyGGGKNIcOYkQNflezeiMGSjosV
         TMFA==
X-Received: by 10.66.246.162 with SMTP id xx2mr30950128pac.144.1443943856141;
        Sun, 04 Oct 2015 00:30:56 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 8/8] Staging: lustre: obdclass: obd_mount: Declare as static
Date: Sun,  4 Oct 2015 13:00:16 +0530
Message-Id: <1443943816-21546-9-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D5AE.0091,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lustre_fs_type, do_lcfg, lustre_fill_super, lustre_put_lsi,
lustre_init_lsi, lustre_start_simple, server_name2index and
server_name2fsname as static since they are used only in this
particular file.Also remove corresponding declarations from header
files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../staging/lustre/lustre/include/lustre_disk.h    |  5 -----
 .../staging/lustre/lustre/include/lustre_param.h   |  3 ---
 drivers/staging/lustre/lustre/obdclass/obd_mount.c | 25 +++++++++++-----------
 3 files changed, 12 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
index 4178c85..f1dc967 100644
--- a/drivers/staging/lustre/lustre/include/lustre_disk.h
+++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
@@ -383,12 +383,7 @@ struct lustre_mount_info {
 /****************** prototypes *********************/
 
 /* obd_mount.c */
-int server_name2fsname(const char *svname, char *fsname, const char **endptr);
-int server_name2index(const char *svname, __u32 *idx, const char **endptr);
 
-int lustre_put_lsi(struct super_block *sb);
-int lustre_start_simple(char *obdname, char *type, char *uuid,
-			char *s1, char *s2, char *s3, char *s4);
 int lustre_start_mgc(struct super_block *sb);
 void lustre_register_client_fill_super(int (*cfs)(struct super_block *sb,
 						  struct vfsmount *mnt));
diff --git a/drivers/staging/lustre/lustre/include/lustre_param.h b/drivers/staging/lustre/lustre/include/lustre_param.h
index de49b41..ded2c41 100644
--- a/drivers/staging/lustre/lustre/include/lustre_param.h
+++ b/drivers/staging/lustre/lustre/include/lustre_param.h
@@ -59,9 +59,6 @@ int class_find_param(char *buf, char *key, char **valp);
 int class_match_param(char *buf, char *key, char **valp);
 int class_parse_nid(char *buf, lnet_nid_t *nid, char **endh);
 int class_parse_nid_quiet(char *buf, lnet_nid_t *nid, char **endh);
-/* obd_mount.c */
-int do_lcfg(char *cfgname, lnet_nid_t nid, int cmd,
-	    char *s1, char *s2, char *s3, char *s4);
 
 
 
diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index bc15e15..de42acd 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
@@ -143,8 +143,8 @@ EXPORT_SYMBOL(lustre_end_log);
 /** lustre_cfg_bufs are a holdover from 1.4; we can still set these up from
  * lctl (and do for echo cli/srv.
  */
-int do_lcfg(char *cfgname, lnet_nid_t nid, int cmd,
-	    char *s1, char *s2, char *s3, char *s4)
+static int do_lcfg(char *cfgname, lnet_nid_t nid, int cmd,
+		   char *s1, char *s2, char *s3, char *s4)
 {
 	struct lustre_cfg_bufs bufs;
 	struct lustre_cfg     *lcfg = NULL;
@@ -169,13 +169,12 @@ int do_lcfg(char *cfgname, lnet_nid_t nid, int cmd,
 	lustre_cfg_free(lcfg);
 	return rc;
 }
-EXPORT_SYMBOL(do_lcfg);
 
 /** Call class_attach and class_setup.  These methods in turn call
  * obd type-specific methods.
  */
-int lustre_start_simple(char *obdname, char *type, char *uuid,
-			char *s1, char *s2, char *s3, char *s4)
+static int lustre_start_simple(char *obdname, char *type, char *uuid,
+			       char *s1, char *s2, char *s3, char *s4)
 {
 	int rc;
 	CDEBUG(D_MOUNT, "Starting obd %s (typ=%s)\n", obdname, type);
@@ -488,7 +487,7 @@ out:
 
 /***************** lustre superblock **************/
 
-struct lustre_sb_info *lustre_init_lsi(struct super_block *sb)
+static struct lustre_sb_info *lustre_init_lsi(struct super_block *sb)
 {
 	struct lustre_sb_info *lsi;
 
@@ -547,7 +546,7 @@ static int lustre_free_lsi(struct super_block *sb)
 
 /* The lsi has one reference for every server that is using the disk -
    e.g. MDT, MGS, and potentially MGC */
-int lustre_put_lsi(struct super_block *sb)
+static int lustre_put_lsi(struct super_block *sb)
 {
 	struct lustre_sb_info *lsi = s2lsi(sb);
 
@@ -577,7 +576,8 @@ int lustre_put_lsi(struct super_block *sb)
  * @param [out] endptr if endptr isn't NULL it is set to end of fsname
  * rc < 0  on error
  */
-int server_name2fsname(const char *svname, char *fsname, const char **endptr)
+static int server_name2fsname(const char *svname, char *fsname,
+			      const char **endptr)
 {
 	const char *dash;
 
@@ -597,13 +597,13 @@ int server_name2fsname(const char *svname, char *fsname, const char **endptr)
 
 	return 0;
 }
-EXPORT_SYMBOL(server_name2fsname);
 
 /* Get the index from the obd name.
    rc = server type, or
    rc < 0  on error
    if endptr isn't NULL it is set to end of name */
-int server_name2index(const char *svname, __u32 *idx, const char **endptr)
+static int server_name2index(const char *svname, __u32 *idx,
+			     const char **endptr)
 {
 	unsigned long index;
 	int rc;
@@ -642,7 +642,6 @@ int server_name2index(const char *svname, __u32 *idx, const char **endptr)
 
 	return rc;
 }
-EXPORT_SYMBOL(server_name2index);
 
 /*************** mount common between server and client ***************/
 
@@ -1074,7 +1073,7 @@ struct lustre_mount_data2 {
  * and this is where we start setting things up.
  * @param data Mount options (e.g. -o flock,abort_recov)
  */
-int lustre_fill_super(struct super_block *sb, void *data, int silent)
+static int lustre_fill_super(struct super_block *sb, void *data, int silent)
 {
 	struct lustre_mount_data *lmd;
 	struct lustre_mount_data2 *lmd2 = data;
@@ -1185,7 +1184,7 @@ static void lustre_kill_super(struct super_block *sb)
 
 /** Register the "lustre" fs type
  */
-struct file_system_type lustre_fs_type = {
+static struct file_system_type lustre_fs_type = {
 	.owner	= THIS_MODULE,
 	.name	 = "lustre",
 	.mount	= lustre_mount,
-- 
2.1.4


