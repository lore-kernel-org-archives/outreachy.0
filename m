X-GM-THRID: 6473410411176656896
X-Received: by 10.98.202.8 with SMTP id n8mr525814pfg.1.1507208350215;
        Thu, 05 Oct 2017 05:59:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.93.142 with SMTP id n14ls3201476pfj.9.gmail; Thu, 05 Oct
 2017 05:59:09 -0700 (PDT)
X-Received: by 10.99.123.26 with SMTP id w26mr149925pgc.58.1507208349397;
        Thu, 05 Oct 2017 05:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208349; cv=none;
        d=google.com; s=arc-20160816;
        b=ChTY2a681LeJRsjhls+S+9OIuMK+7D1Ym2a1vPRe+4aDBgNwyEC5hULy6V4VuAQJiO
         sz4V3JV+KMOcgdk62GjSk0A0NPpNy4iiWZjwyhFA8QNYvl6uC/9oPOAUvY1OJHCpPBh5
         +uPF0H7RUCmT4JwjVKh0JTK6iADbClQmMgP+3yGU52HZkQbCQJImDhtwfv+43HoypZIe
         vp08D94dQYAlS3AlJMJNkLO+myPXbtEUuWG5veDaJZCuVA6POkwqEa0GfFn3DiUhd3qC
         PA/FWhObe1/x3N7cBdO4IgOv+LbZ/VnAeBJ8VXVCjJs87c0dj9uOMd5el0Yjevotx5js
         ueOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qzdKbW+CgiuldrEPK0iWAX2MkBRHAU0g/yFtyyFlt/8=;
        b=xWGG5fVrRn/TgiWLe9zrP3MsJHIrUkxPFdkfiPm4ItX9I/KtsQjHLN7IUxIdUnZCpJ
         zS6+3B51Y1P5U3eIyPRQYhOTkjEjwo47xdapL33DIu0CmJ1x5/eamld6agTT3fw2ojY7
         A8Bsym53kx68CCpIn7jLbXweb6FCD6h8FPfEwKgpc6iR+bMPJwDqYVwyTw0BeCp2Uwm7
         MaI2BnYLc9S0cBfinhMJem1vg15Be6J6Co9fDVPuZNN8MoYbw4czcDwEt84aMfEwsKPZ
         5pAAs2S8eu5p3EvU9uTbLEe2OllWr6Wn5aTbNdW7pK8xI/5o5khL/l5g+E9Rptdfc8HK
         XsFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYo8ttIA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w11si1860574pfk.4.2017.10.05.05.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 05:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYo8ttIA;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so14589134pfe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 05:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qzdKbW+CgiuldrEPK0iWAX2MkBRHAU0g/yFtyyFlt/8=;
        b=GYo8ttIAPtyJrcCx59iKMwMM23m9EZCUYw4veIY2clBwz+f3z19ejuiA415RqV6FaX
         /5Ijms7zrZd8zp+MVZmUU5TW4TkC3Ag+XnYh84zUTHBAdx1XpyH15ujNQjEqKo/A1JyF
         +rHEDK6sKWFP2Bj25SQ6oDzpmmhKYLJpiiJVoU3iuoYgCmjsQJrMiVrv8RZEZTJ7Erk1
         3QfA+lyKbjMx7g3YdOjlVSZ0okHefzdfVuk2uAE30Vu8q2VR5ZEjBYvDQWfcJJHpQys3
         GW4VAN4Zt7qVPvM4BEGsBF6ouGb2wZy1d4tBOdXML1LNShqB3TS801ni8KtYdYh+Sov1
         FC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qzdKbW+CgiuldrEPK0iWAX2MkBRHAU0g/yFtyyFlt/8=;
        b=Cnsn+uS0mhEi9phQ+6DW1w6+AgNahIfRkqHTNTwIeNenqbWZgix8zGkpQxN7Qzk30x
         Y0ZZmRV8sd2PW0XD8JWOGIF/+c+wDhDd2ZUJSuYsbr4E9BweD+tDKKWQNWVU0PxEKWqZ
         4DDO/81uaAeYOkJ/3HdTxgslcAKefgM/lmdCTHyolP0ci8RfPuDCYFvsw4Hn3Fz24KJe
         tqO1OXHLIyhiGRxNBHIDlKrRo2QX95oGCt3OprN11UnSQBm01+JOETjiif4EB8qi3P2y
         81WyN9HCmIEF16dUdcPIC/gxtfLNJtYUe6YEKlVcvnZASSJesaaupuYkCgfTVZxSrcGc
         m8hw==
X-Gm-Message-State: AMCzsaU+wNP6iGjOwUdwJVvjRd1t0tZgzaC4/TWOGT6eQk33XUOLKSFe
	LwUqG+wo7GTx6A5B6crW6/M=
X-Google-Smtp-Source: AOwi7QCmhS7Bx3UJzKB7ANOZzhOPiw+PIco8eej+Dpe587Jmn9oxrBZoJp5aUJCMEoaTAF+fB5bZkQ==
X-Received: by 10.84.215.145 with SMTP id l17mr16122347pli.191.1507208348705;
        Thu, 05 Oct 2017 05:59:08 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id a78sm32943643pfl.39.2017.10.05.05.59.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 05:59:08 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 09/11] staging: lustre: llite: fix lines over 80 characters in llite files
Date: Thu,  5 Oct 2017 18:28:21 +0530
Message-Id: <1507208303-17615-10-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>

This fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 +++--
 drivers/staging/lustre/lustre/llite/dir.c          | 24 +++++++-----
 drivers/staging/lustre/lustre/llite/file.c         | 12 ++++--
 .../staging/lustre/lustre/llite/llite_internal.h   | 20 +++++++---
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++++--------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++++----
 drivers/staging/lustre/lustre/llite/rw.c           | 12 ++++--
 drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
 drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++----
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 13 files changed, 117 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/staging/lustre/lustre/llite/dcache.c
index 3670fca..ed7dbbd 100644
--- a/drivers/staging/lustre/lustre/llite/dcache.c
+++ b/drivers/staging/lustre/lustre/llite/dcache.c
@@ -141,7 +141,8 @@ void ll_intent_drop_lock(struct lookup_intent *it)
 
 		handle.cookie = it->it_lock_handle;
 
-		CDEBUG(D_DLMTRACE, "releasing lock with cookie %#llx from it %p\n",
+		CDEBUG(D_DLMTRACE,
+		       "releasing lock with cookie %#llx from it %p\n",
 		       handle.cookie, it);
 		ldlm_lock_decref(&handle, it->it_lock_mode);
 
@@ -152,7 +153,8 @@ void ll_intent_drop_lock(struct lookup_intent *it)
 		if (it->it_remote_lock_mode != 0) {
 			handle.cookie = it->it_remote_lock_handle;
 
-			CDEBUG(D_DLMTRACE, "releasing remote lock with cookie%#llx from it %p\n",
+			CDEBUG(D_DLMTRACE,
+			       "releasing remote lock with cookie%#llx from it %p\n",
 			       handle.cookie, it);
 			ldlm_lock_decref(&handle,
 					 it->it_remote_lock_mode);
@@ -185,7 +187,8 @@ void ll_invalidate_aliases(struct inode *inode)
 
 	spin_lock(&inode->i_lock);
 	hlist_for_each_entry(dentry, &inode->i_dentry, d_u.d_alias) {
-		CDEBUG(D_DENTRY, "dentry in drop %pd (%p) parent %p inode %p flags %d\n",
+		CDEBUG(D_DENTRY,
+		       "dentry in drop %pd (%p) parent %p inode %p flags %d\n",
 		       dentry, dentry, dentry->d_parent,
 		       d_inode(dentry), dentry->d_flags);
 
diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 1db3e7f..b81aab4 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -303,7 +303,8 @@ static int ll_readdir(struct file *filp, struct dir_context *ctx)
 	struct md_op_data *op_data;
 	int			rc;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID "(%p) pos/size %lu/%llu 32bit_api %d\n",
+	CDEBUG(D_VFSTRACE,
+	       "VFS Op:inode=" DFID "(%p) pos/size %lu/%llu 32bit_api %d\n",
 	       PFID(ll_inode2fid(inode)), inode, (unsigned long)pos,
 	       i_size_read(inode), api32);
 
@@ -419,7 +420,8 @@ static int ll_dir_setdirstripe(struct inode *parent, struct lmv_user_md *lump,
 	if (unlikely(lump->lum_magic != LMV_USER_MAGIC))
 		return -EINVAL;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID "(%p) name %s stripe_offset %d, stripe_count: %u\n",
+	CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID
+	       "(%p) name %s stripe_offset %d, stripe_count: %u\n",
 	       PFID(ll_inode2fid(parent)), parent, dirname,
 	       (int)lump->lum_stripe_offset, lump->lum_stripe_count);
 
@@ -502,7 +504,8 @@ int ll_dir_setstripe(struct inode *inode, struct lov_user_md *lump,
 			break;
 		}
 		default: {
-			CDEBUG(D_IOCTL, "bad userland LOV MAGIC: %#08x != %#08x nor %#08x\n",
+			CDEBUG(D_IOCTL,
+			       "bad userland LOV MAGIC: %#08x != %#08x nor %#08x\n",
 			       lump->lmm_magic, LOV_USER_MAGIC_V1,
 			       LOV_USER_MAGIC_V3);
 			return -EINVAL;
@@ -732,10 +735,11 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc != 0) {
-			CDEBUG(D_HSM, "Could not read file data version of "
-				      DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			CDEBUG(D_HSM,
+			       "Could not read file data version of " DFID
+			       " (rc = %d). Archive request (%#llx) could not be done.\n",
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
@@ -816,7 +820,8 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc) {
-			CDEBUG(D_HSM, "Could not read file data version. Request could not be confirmed.\n");
+			CDEBUG(D_HSM,
+			       "Could not read file data version. Request could not be confirmed.\n");
 			if (hpk.hpk_errval == 0)
 				hpk.hpk_errval = -rc;
 			goto progress;
@@ -832,7 +837,8 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		 */
 		if ((copy->hc_hai.hai_action == HSMA_ARCHIVE) &&
 		    (copy->hc_data_version != data_version)) {
-			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. "
+			CDEBUG(D_HSM,
+			       "File data version mismatched. File content was changed during archiving. "
 			       DFID ", start:%#llx current:%#llx\n",
 			       PFID(&copy->hc_hai.hai_fid),
 			       copy->hc_data_version, data_version);
diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index be66545..bd17b38 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -605,7 +605,8 @@ int ll_file_open(struct inode *inode, struct file *file)
 			 * to get file with different fid.
 			 */
 			it->it_flags |= MDS_OPEN_LOCK | MDS_OPEN_BY_FID;
-			rc = ll_intent_file_open(file->f_path.dentry, NULL, 0, it);
+			rc = ll_intent_file_open(file->f_path.dentry,
+				NULL, 0, it);
 			if (rc)
 				goto out_openerr;
 
@@ -1119,7 +1120,8 @@ ll_file_io_generic(const struct lu_env *env, struct vvp_io_args *args,
 	cl_io_fini(env, io);
 
 	if ((!rc || rc == -ENODATA) && count > 0 && io->ci_need_restart) {
-		CDEBUG(D_VFSTRACE, "%s: restart %s from %lld, count:%zu, result: %zd\n",
+		CDEBUG(D_VFSTRACE,
+		       "%s: restart %s from %lld, count:%zu, result: %zd\n",
 		       file_dentry(file)->d_name.name,
 		       iot == CIT_READ ? "read" : "write",
 		       *ppos, count, result);
@@ -2507,7 +2509,8 @@ ll_file_flock(struct file *file, int cmd, struct file_lock *file_lock)
 	if (IS_ERR(op_data))
 		return PTR_ERR(op_data);
 
-	CDEBUG(D_DLMTRACE, "inode=" DFID ", pid=%u, flags=%#llx, mode=%u, start=%llu, end=%llu\n",
+	CDEBUG(D_DLMTRACE, "inode=" DFID
+	       ", pid=%u, flags=%#llx, mode=%u, start=%llu, end=%llu\n",
 	       PFID(ll_inode2fid(inode)), flock.l_flock.pid, flags,
 	       einfo.ei_mode, flock.l_flock.start, flock.l_flock.end);
 
@@ -3455,7 +3458,8 @@ static int ll_layout_lock_set(struct lustre_handle *lockh, enum ldlm_mode mode,
 		if (rc == 0)
 			rc = -EAGAIN;
 
-		CDEBUG(D_INODE, "%s: file=" DFID " waiting layout return: %d.\n",
+		CDEBUG(D_INODE,
+		       "%s: file=" DFID " waiting layout return: %d.\n",
 		       ll_get_fsname(inode->i_sb, NULL, 0),
 		       PFID(&lli->lli_fid), rc);
 	}
diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index 0287c75..c31d98d 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -84,7 +84,9 @@ struct ll_dentry_data {
 
 struct ll_getname_data {
 	struct dir_context ctx;
-	char	    *lgd_name;      /* points to a buffer with NAME_MAX+1 size */
+	char	    *lgd_name;      /* points to a buffer with
+				     * NAME_MAX+1 size
+				     */
 	struct lu_fid    lgd_fid;       /* target fid we are looking for */
 	int	      lgd_found;     /* inode matched? */
 };
@@ -637,7 +639,8 @@ static inline int ll_need_32bit_api(struct ll_sb_info *sbi)
 #if BITS_PER_LONG == 32
 	return 1;
 #elif defined(CONFIG_COMPAT)
-	return unlikely(in_compat_syscall() || (sbi->ll_flags & LL_SBI_32BIT_API));
+	return unlikely(in_compat_syscall() ||
+		(sbi->ll_flags & LL_SBI_32BIT_API));
 #else
 	return unlikely(sbi->ll_flags & LL_SBI_32BIT_API);
 #endif
@@ -1065,7 +1068,9 @@ struct ll_statahead_info {
 					     * hidden entries
 					     */
 				sai_agl_valid:1,/* AGL is valid for the dir */
-				sai_in_readpage:1;/* statahead is in readdir() */
+				sai_in_readpage:1;/* statahead is in
+						   * readdir()
+						   */
 	wait_queue_head_t	sai_waitq;      /* stat-ahead wait queue */
 	struct ptlrpc_thread    sai_thread;     /* stat-ahead thread */
 	struct ptlrpc_thread    sai_agl_thread; /* AGL thread */
@@ -1253,7 +1258,8 @@ static inline void ll_set_lock_data(struct obd_export *exp, struct inode *inode,
 		 */
 		if (it->it_remote_lock_mode) {
 			handle.cookie = it->it_remote_lock_handle;
-			CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for remote lock %#llx\n",
+			CDEBUG(D_DLMTRACE, "setting l_data to inode "
+			       DFID "%p for remote lock %#llx\n",
 			       PFID(ll_inode2fid(inode)), inode,
 			       handle.cookie);
 			md_set_lock_data(exp, &handle, inode, NULL);
@@ -1261,7 +1267,8 @@ static inline void ll_set_lock_data(struct obd_export *exp, struct inode *inode,
 
 		handle.cookie = it->it_lock_handle;
 
-		CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for lock %#llx\n",
+		CDEBUG(D_DLMTRACE,
+		       "setting l_data to inode " DFID "%p for lock %#llx\n",
 		       PFID(ll_inode2fid(inode)), inode, handle.cookie);
 
 		md_set_lock_data(exp, &handle, inode, &it->it_lock_bits);
@@ -1284,7 +1291,8 @@ static inline int d_lustre_invalid(const struct dentry *dentry)
  */
 static inline void d_lustre_invalidate(struct dentry *dentry, int nested)
 {
-	CDEBUG(D_DENTRY, "invalidate dentry %pd (%p) parent %p inode %p refc %d\n",
+	CDEBUG(D_DENTRY,
+	       "invalidate dentry %pd (%p) parent %p inode %p refc %d\n",
 	       dentry, dentry,
 	       dentry->d_parent, d_inode(dentry), d_count(dentry));
 
diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 25393e3..51919bb 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -231,7 +231,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	err = obd_connect(NULL, &sbi->ll_md_exp, obd, &sbi->ll_sb_uuid,
 			  data, NULL);
 	if (err == -EBUSY) {
-		LCONSOLE_ERROR_MSG(0x14f, "An MDT (md %s) is performing recovery, of which this client is not a part. Please wait for recovery to complete, abort, or time out.\n",
+		LCONSOLE_ERROR_MSG(0x14f,
+				   "An MDT (md %s) is performing recovery, of which this client is not a part. Please wait for recovery to complete, abort, or time out.\n",
 				   md);
 		goto out;
 	} else if (err) {
@@ -279,7 +280,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 		}
 		obd_connect_flags2str(buf, PAGE_SIZE,
 				      valid ^ CLIENT_CONNECT_MDT_REQD, ",");
-		LCONSOLE_ERROR_MSG(0x170, "Server %s does not support feature(s) needed for correct operation of this client (%s). Please upgrade server or downgrade client.\n",
+		LCONSOLE_ERROR_MSG(0x170,
+				   "Server %s does not support feature(s) needed for correct operation of this client (%s). Please upgrade server or downgrade client.\n",
 				   sbi->ll_md_exp->exp_obd->obd_name, buf);
 		kfree(buf);
 		err = -EPROTO;
@@ -380,7 +382,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	if (sbi->ll_flags & LL_SBI_ALWAYS_PING)
 		data->ocd_connect_flags &= ~OBD_CONNECT_PINGLESS;
 
-	CDEBUG(D_RPCTRACE, "ocd_connect_flags: %#llx ocd_version: %d ocd_grant: %d\n",
+	CDEBUG(D_RPCTRACE,
+	       "ocd_connect_flags: %#llx ocd_version: %d ocd_grant: %d\n",
 	       data->ocd_connect_flags,
 	       data->ocd_version, data->ocd_grant);
 
@@ -392,7 +395,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	err = obd_connect(NULL, &sbi->ll_dt_exp, obd, &sbi->ll_sb_uuid, data,
 			  NULL);
 	if (err == -EBUSY) {
-		LCONSOLE_ERROR_MSG(0x150, "An OST (dt %s) is performing recovery, of which this client is not a part.  Please wait for recovery to complete, abort, or time out.\n",
+		LCONSOLE_ERROR_MSG(0x150,
+				   "An OST (dt %s) is performing recovery, of which this client is not a part.  Please wait for recovery to complete, abort, or time out.\n",
 				   dt);
 		goto out_md;
 	} else if (err) {
@@ -540,7 +544,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 		err = ldebugfs_register_mountpoint(llite_root, sb, dt, md);
 		if (err < 0) {
 			CERROR("%s: could not register mount in debugfs: "
-			       "rc = %d\n", ll_get_fsname(sb, NULL, 0), err);
+			       "rc = %d\n", ll_get_fsname(sb, NULL, 0),
+			       err);
 			err = 0;
 		}
 	}
@@ -915,7 +920,8 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
 	/* Profile set with LCFG_MOUNTOPT so we can find our mdc and osc obds */
 	lprof = class_get_profile(profilenm);
 	if (!lprof) {
-		LCONSOLE_ERROR_MSG(0x156, "The client profile '%s' could not be read from the MGS.  Does that filesystem exist?\n",
+		LCONSOLE_ERROR_MSG(0x156,
+				   "The client profile '%s' could not be read from the MGS.  Does that filesystem exist?\n",
 				   profilenm);
 		err = -EINVAL;
 		goto out_free;
@@ -1042,7 +1048,8 @@ struct inode *ll_inode_from_resource_lock(struct ldlm_lock *lock)
 		} else {
 			inode = lock->l_resource->lr_lvb_inode;
 			LDLM_DEBUG_LIMIT(inode->i_state & I_FREEING ?  D_INFO :
-					 D_WARNING, lock, "lr_lvb_inode %p is bogus: magic %08x",
+					 D_WARNING, lock,
+					 "lr_lvb_inode %p is bogus: magic %08x",
 					 lock->l_resource->lr_lvb_inode,
 					 lli->lli_inode_magic);
 			inode = NULL;
@@ -1419,7 +1426,8 @@ int ll_setattr_raw(struct dentry *dentry, struct iattr *attr, bool hsm_import)
 	struct md_op_data *op_data = NULL;
 	int rc = 0;
 
-	CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID "(%p) from %llu to %llu, valid %x, hsm_import %d\n",
+	CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID
+	       "(%p) from %llu to %llu, valid %x, hsm_import %d\n",
 	       ll_get_fsname(inode->i_sb, NULL, 0), PFID(&lli->lli_fid), inode,
 	       i_size_read(inode), attr->ia_size, attr->ia_valid, hsm_import);
 
@@ -1744,7 +1752,8 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
 	}
 	if (body->mbo_valid & OBD_MD_FLMTIME) {
 		if (body->mbo_mtime > LTIME_S(inode->i_mtime)) {
-			CDEBUG(D_INODE, "setting ino %lu mtime from %lu to %llu\n",
+			CDEBUG(D_INODE,
+			       "setting ino %lu mtime from %lu to %llu\n",
 			       inode->i_ino, LTIME_S(inode->i_mtime),
 			       body->mbo_mtime);
 			LTIME_S(inode->i_mtime) = body->mbo_mtime;
@@ -1783,7 +1792,8 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
 		/* FID shouldn't be changed! */
 		if (fid_is_sane(&lli->lli_fid)) {
 			LASSERTF(lu_fid_eq(&lli->lli_fid, &body->mbo_fid1),
-				 "Trying to change FID " DFID " to the " DFID ", inode " DFID "(%p)\n",
+				 "Trying to change FID " DFID " to the " DFID
+				 ", inode " DFID "(%p)\n",
 				 PFID(&lli->lli_fid), PFID(&body->mbo_fid1),
 				 PFID(ll_inode2fid(inode)), inode);
 		} else {
@@ -1870,8 +1880,8 @@ void ll_delete_inode(struct inode *inode)
 
 	truncate_inode_pages_final(&inode->i_data);
 
-	LASSERTF(!inode->i_data.nrpages,
-		 "inode=" DFID "(%p) nrpages=%lu, see http://jira.whamcloud.com/browse/LU-118\n",
+	LASSERTF(!inode->i_data.nrpages, "inode=" DFID
+		 "(%p) nrpages=%lu, see http://jira.whamcloud.com/browse/LU-118\n",
 		 PFID(ll_inode2fid(inode)), inode, inode->i_data.nrpages);
 
 	ll_clear_inode(inode);
@@ -2254,7 +2264,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
 		return -EINVAL;
 	sb = (void *)x;
 	/* This better be a real Lustre superblock! */
-	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic == LMD_MAGIC);
+	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic ==
+		LMD_MAGIC);
 
 	/* Note we have not called client_common_fill_super yet, so
 	 * proc fns must be able to handle that!
@@ -2441,7 +2452,8 @@ void ll_dirty_page_discard_warn(struct page *page, int ioret)
 	}
 
 	CDEBUG(D_WARNING,
-	       "%s: dirty page discard: %s/fid: " DFID "/%s may get corrupted (rc %d)\n",
+	       "%s: dirty page discard: %s/fid: " DFID
+	       "/%s may get corrupted (rc %d)\n",
 	       ll_get_fsname(page->mapping->host->i_sb, NULL, 0),
 	       s2lsi(page->mapping->host->i_sb)->lsi_lmd->lmd_dev,
 	       PFID(&obj->vob_header.coh_lu.loh_fid),
@@ -2571,8 +2583,9 @@ static int ll_linkea_decode(struct linkea_data *ldata, unsigned int linkno,
  *
  * \param[in]	  file	- File descriptor against which to perform the operation
  * \param[in,out] arg	- User-filled structure containing the linkno to operate
- *			  on and the available size. It is eventually filled with
- *			  the requested information or left untouched on error
+ *			  on and the available size. It is eventually filled
+ *			  with the requested information or left untouched on
+ *			  error
  *
  * \retval - 0 on success
  * \retval - Appropriate negative error code on failure
diff --git a/drivers/staging/lustre/lustre/llite/llite_mmap.c b/drivers/staging/lustre/lustre/llite/llite_mmap.c
index ccc7ae1..61a4bed 100644
--- a/drivers/staging/lustre/lustre/llite/llite_mmap.c
+++ b/drivers/staging/lustre/lustre/llite/llite_mmap.c
@@ -208,7 +208,8 @@ static int ll_page_mkwrite0(struct vm_area_struct *vma, struct page *vmpage,
 			 */
 			unlock_page(vmpage);
 
-			CDEBUG(D_MMAP, "Race on page_mkwrite %p/%lu, page has been written out, retry.\n",
+			CDEBUG(D_MMAP,
+			       "Race on page_mkwrite %p/%lu, page has been written out, retry.\n",
 			       vmpage, vmpage->index);
 
 			*retry = true;
diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
index e50c637..b04d456 100644
--- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
+++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
@@ -127,7 +127,8 @@ struct lustre_nfs_fid {
 };
 
 static struct dentry *
-ll_iget_for_nfs(struct super_block *sb, struct lu_fid *fid, struct lu_fid *parent)
+ll_iget_for_nfs(struct super_block *sb,
+		struct lu_fid *fid, struct lu_fid *parent)
 {
 	struct inode  *inode;
 	struct dentry *result;
diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index 5cc2b32..0b3649b 100644
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -204,7 +204,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
 
 		if (!fid_res_name_eq(ll_inode2fid(inode),
 				     &lock->l_resource->lr_name)) {
-			LDLM_ERROR(lock, "data mismatch with object " DFID "(%p)",
+			LDLM_ERROR(lock,
+				   "data mismatch with object " DFID "(%p)",
 				   PFID(ll_inode2fid(inode)), inode);
 			LBUG();
 		}
@@ -273,7 +274,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
 		if ((bits & MDS_INODELOCK_UPDATE) && S_ISDIR(inode->i_mode)) {
 			struct ll_inode_info *lli = ll_i2info(inode);
 
-			CDEBUG(D_INODE, "invalidating inode " DFID " lli = %p, pfid  = " DFID "\n",
+			CDEBUG(D_INODE, "invalidating inode " DFID
+			       " lli = %p, pfid  = " DFID "\n",
 			       PFID(ll_inode2fid(inode)), lli,
 			       PFID(&lli->lli_pfid));
 
@@ -289,7 +291,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
 				 * we have to invalidate the negative children
 				 * on master inode
 				 */
-				CDEBUG(D_INODE, "Invalidate s" DFID " m" DFID "\n",
+				CDEBUG(D_INODE,
+				       "Invalidate s" DFID " m" DFID "\n",
 				       PFID(ll_inode2fid(inode)),
 				       PFID(&lli->lli_pfid));
 
@@ -683,7 +686,8 @@ static int ll_atomic_open(struct inode *dir, struct dentry *dentry,
 	struct dentry *de;
 	int rc = 0;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID "(%p),file %p,open_flags %x,mode %x opened %d\n",
+	CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID
+	       "(%p),file %p,open_flags %x,mode %x opened %d\n",
 	       dentry, PFID(ll_inode2fid(dir)), dir, file, open_flags, mode,
 	       *opened);
 
@@ -736,7 +740,8 @@ static int ll_atomic_open(struct inode *dir, struct dentry *dentry,
 
 			*opened |= FILE_CREATED;
 		}
-		if (d_really_is_positive(dentry) && it_disposition(it, DISP_OPEN_OPEN)) {
+		if (d_really_is_positive(dentry) &&
+			it_disposition(it, DISP_OPEN_OPEN)) {
 			/* Open dentry. */
 			if (S_ISFIFO(d_inode(dentry)->i_mode)) {
 				/* We cannot call open here as it might
@@ -980,7 +985,8 @@ static int ll_create_nd(struct inode *dir, struct dentry *dentry,
 {
 	int rc;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID "(%p), flags=%u, excl=%d\n",
+	CDEBUG(D_VFSTRACE,
+	       "VFS Op:name=%pd, dir=" DFID "(%p), flags=%u, excl=%d\n",
 	       dentry, PFID(ll_inode2fid(dir)), dir, mode, want_excl);
 
 	rc = ll_mknod(dir, dentry, mode, 0);
@@ -1101,7 +1107,8 @@ static int ll_link(struct dentry *old_dentry, struct inode *dir,
 	struct md_op_data *op_data;
 	int err;
 
-	CDEBUG(D_VFSTRACE, "VFS Op: inode=" DFID "(%p), dir=" DFID "(%p), target=%pd\n",
+	CDEBUG(D_VFSTRACE,
+	       "VFS Op: inode=" DFID "(%p), dir=" DFID "(%p), target=%pd\n",
 	       PFID(ll_inode2fid(src)), src, PFID(ll_inode2fid(dir)), dir,
 	       new_dentry);
 
@@ -1136,7 +1143,8 @@ static int ll_rename(struct inode *src, struct dentry *src_dchild,
 		return -EINVAL;
 
 	CDEBUG(D_VFSTRACE,
-	       "VFS Op:oldname=%pd, src_dir=" DFID "(%p), newname=%pd, tgt_dir=" DFID "(%p)\n",
+	       "VFS Op:oldname=%pd, src_dir=" DFID
+	       "(%p), newname=%pd, tgt_dir=" DFID "(%p)\n",
 	       src_dchild, PFID(ll_inode2fid(src)), src,
 	       tgt_dchild, PFID(ll_inode2fid(tgt)), tgt);
 
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index e720905..9fdd104 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -297,7 +297,8 @@ stride_pg_count(pgoff_t st_off, unsigned long st_len, unsigned long st_pgs,
 	else
 		pg_count = start_left + st_pgs * (end - start - 1) + end_left;
 
-	CDEBUG(D_READA, "st_off %lu, st_len %lu st_pgs %lu off %lu length %lu pgcount %lu\n",
+	CDEBUG(D_READA,
+	       "st_off %lu, st_len %lu st_pgs %lu off %lu length %lu pgcount %lu\n",
 	       st_off, st_len, st_pgs, off, length, pg_count);
 
 	return pg_count;
@@ -404,7 +405,8 @@ ll_read_ahead_pages(const struct lu_env *env, struct cl_io *io,
 			 * forward read-ahead, it will be fixed when backward
 			 * read-ahead is implemented
 			 */
-			LASSERTF(page_idx >= ria->ria_stoff, "Invalid page_idx %lu rs %lu re %lu ro %lu rl %lu rp %lu\n",
+			LASSERTF(page_idx >= ria->ria_stoff,
+				 "Invalid page_idx %lu rs %lu re %lu ro %lu rl %lu rp %lu\n",
 				 page_idx,
 				 ria->ria_start, ria->ria_end, ria->ria_stoff,
 				 ria->ria_length, ria->ria_pages);
@@ -670,7 +672,8 @@ static void ras_stride_increase_window(struct ll_readahead_state *ras,
 
 	LASSERT(ras->ras_stride_length > 0);
 	LASSERTF(ras->ras_window_start + ras->ras_window_len
-		 >= ras->ras_stride_offset, "window_start %lu, window_len %lu stride_offset %lu\n",
+		 >= ras->ras_stride_offset,
+		 "window_start %lu, window_len %lu stride_offset %lu\n",
 		 ras->ras_window_start,
 		 ras->ras_window_len, ras->ras_stride_offset);
 
@@ -766,7 +769,8 @@ static void ras_update(struct ll_sb_info *sbi, struct inode *inode,
 			    PAGE_SHIFT;
 
 		CDEBUG(D_READA, "kmsp %llu mwp %lu mp %lu\n", kms_pages,
-		       ra->ra_max_read_ahead_whole_pages, ra->ra_max_pages_per_file);
+		       ra->ra_max_read_ahead_whole_pages,
+		       ra->ra_max_pages_per_file);
 
 		if (kms_pages &&
 		    kms_pages <= ra->ra_max_read_ahead_whole_pages) {
diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
index 3619cd8..d1a1899 100644
--- a/drivers/staging/lustre/lustre/llite/rw26.c
+++ b/drivers/staging/lustre/lustre/llite/rw26.c
@@ -327,7 +327,8 @@ static ssize_t ll_direct_IO_26(struct kiocb *iocb, struct iov_iter *iter)
 	if ((file_offset & ~PAGE_MASK) || (count & ~PAGE_MASK))
 		return -EINVAL;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID "(%p), size=%zd (max %lu), offset=%lld=%llx, pages %zd (max %lu)\n",
+	CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID
+	       "(%p), size=%zd (max %lu), offset=%lld=%llx, pages %zd (max %lu)\n",
 	       PFID(ll_inode2fid(inode)), inode, count, MAX_DIO_SIZE,
 	       file_offset, file_offset, count >> PAGE_SHIFT,
 	       MAX_DIO_SIZE >> PAGE_SHIFT);
diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
index ea9d59f..3969c9c3 100644
--- a/drivers/staging/lustre/lustre/llite/statahead.c
+++ b/drivers/staging/lustre/lustre/llite/statahead.c
@@ -1008,7 +1008,8 @@ static int ll_statahead_thread(void *arg)
 		sai->sai_in_readpage = 0;
 		if (IS_ERR(page)) {
 			rc = PTR_ERR(page);
-			CDEBUG(D_READA, "error reading dir " DFID " at %llu/%llu: opendir_pid = %u: rc = %d\n",
+			CDEBUG(D_READA, "error reading dir " DFID
+			       " at %llu/%llu: opendir_pid = %u: rc = %d\n",
 			       PFID(ll_inode2fid(dir)), pos, sai->sai_index,
 			       lli->lli_opendir_pid, rc);
 			break;
@@ -1082,7 +1083,8 @@ static int ll_statahead_thread(void *arg)
 					struct ll_inode_info *clli;
 
 					clli = list_entry(sai->sai_agls.next,
-							  struct ll_inode_info, lli_agl_list);
+							  struct ll_inode_info,
+							  lli_agl_list);
 					list_del_init(&clli->lli_agl_list);
 					spin_unlock(&lli->lli_agl_lock);
 
@@ -1105,7 +1107,8 @@ static int ll_statahead_thread(void *arg)
 		if (sa_low_hit(sai)) {
 			rc = -EFAULT;
 			atomic_inc(&sbi->ll_sa_wrong);
-			CDEBUG(D_READA, "Statahead for dir " DFID " hit ratio too low: hit/miss %llu/%llu, sent/replied %llu/%llu, stopping statahead thread: pid %d\n",
+			CDEBUG(D_READA, "Statahead for dir " DFID
+			       " hit ratio too low: hit/miss %llu/%llu, sent/replied %llu/%llu, stopping statahead thread: pid %d\n",
 			       PFID(&lli->lli_fid), sai->sai_hit,
 			       sai->sai_miss, sai->sai_sent,
 			       sai->sai_replied, current_pid());
@@ -1274,7 +1277,8 @@ static int is_first_dirent(struct inode *dir, struct dentry *dentry)
 			struct ll_inode_info *lli = ll_i2info(dir);
 
 			rc = PTR_ERR(page);
-			CERROR("%s: error reading dir " DFID " at %llu: opendir_pid = %u : rc = %d\n",
+			CERROR("%s: error reading dir " DFID
+			       " at %llu: opendir_pid = %u : rc = %d\n",
 			       ll_get_fsname(dir->i_sb, NULL, 0),
 			       PFID(ll_inode2fid(dir)), pos,
 			       lli->lli_opendir_pid, rc);
@@ -1447,7 +1451,7 @@ static int revalidate_statahead_dentry(struct inode *dir,
 	if (entry->se_state == SA_ENTRY_SUCC && entry->se_inode) {
 		struct inode *inode = entry->se_inode;
 		struct lookup_intent it = { .it_op = IT_GETATTR,
-					    .it_lock_handle = entry->se_handle };
+					    .it_lock_handle = entry->se_handle};
 		__u64 bits;
 
 		rc = md_revalidate_lock(ll_i2mdexp(dir), &it,
@@ -1470,8 +1474,8 @@ static int revalidate_statahead_dentry(struct inode *dir,
 				entry->se_inode = NULL;
 			} else if ((*dentryp)->d_inode != inode) {
 				/* revalidate, but inode is recreated */
-				CDEBUG(D_READA,
-				       "%s: stale dentry %pd inode " DFID ", statahead inode " DFID "\n",
+				CDEBUG(D_READA, "%s: stale dentry %pd inode "
+				       DFID ", statahead inode " DFID "\n",
 				       ll_get_fsname((*dentryp)->d_inode->i_sb,
 						     NULL, 0),
 				       *dentryp,
diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
index 0da4af8..5a52595 100644
--- a/drivers/staging/lustre/lustre/llite/super25.c
+++ b/drivers/staging/lustre/lustre/llite/super25.c
@@ -88,7 +88,8 @@ static int __init lustre_init(void)
 	struct timespec64 ts;
 	int i, rc, seed[2];
 
-	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) != LUSTRE_VOLATILE_HDR_LEN + 1);
+	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=
+		LUSTRE_VOLATILE_HDR_LEN + 1);
 
 	/* print an address of _any_ initialized kernel symbol from this
 	 * module, to allow debugging with gdb that doesn't support data
diff --git a/drivers/staging/lustre/lustre/llite/xattr_cache.c b/drivers/staging/lustre/lustre/llite/xattr_cache.c
index 80ee392..dbf9be2 100644
--- a/drivers/staging/lustre/lustre/llite/xattr_cache.c
+++ b/drivers/staging/lustre/lustre/llite/xattr_cache.c
@@ -364,7 +364,8 @@ static int ll_xattr_cache_refill(struct inode *inode, struct lookup_intent *oit)
 	}
 
 	if (oit->it_status < 0) {
-		CDEBUG(D_CACHE, "getxattr intent returned %d for fid " DFID "\n",
+		CDEBUG(D_CACHE,
+		       "getxattr intent returned %d for fid " DFID "\n",
 		       oit->it_status, PFID(ll_inode2fid(inode)));
 		rc = oit->it_status;
 		/* xattr data is so large that we don't want to cache it */
-- 
2.7.4


