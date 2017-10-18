X-GM-THRID: 6473410411176656896
X-Received: by 10.157.50.19 with SMTP id t19mr8371574otc.76.1508328911584;
        Wed, 18 Oct 2017 05:15:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.51 with SMTP id 48ls1103655ote.12.gmail; Wed, 18 Oct
 2017 05:15:10 -0700 (PDT)
X-Received: by 10.202.252.6 with SMTP id a6mr8520930oii.28.1508328910854;
        Wed, 18 Oct 2017 05:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508328910; cv=none;
        d=google.com; s=arc-20160816;
        b=bmEsbuLbt3hnle4hMZGXSOUFMplNsGStM5gzTbj5FVgDE0N4R+Cp85Ab5monsCsVLb
         WqJcuHEQjmzJPCyFARfvdVI+RhNp1DFnH4HRpjgY17aAFRGmmM5Bujtod1nKSLH7uono
         VHSvKRYTyXnOLP6lfvy7yqBxmj3CTwDhdyGQLgyCQ7RPDGeTUyRCwY9rPq3QY5LnZbPW
         dPgmi9BlNgEEXzg6qZx4ZqhgmHHklOMUjAEKIR9ERziWeM+H/VY9O+5zJLMY5KI+JhET
         R/SjErwUL9dn6PG77OLmp9P3S/GXhcMWX9Jz0heCmbit0N3fOV+H8pbY3hrTRyGRn0uK
         0t2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=0j7bLT3xBcOB5Dc+eGWB9m/BYo9Eh39WBe0p31rgzTg=;
        b=t5BbQRDm0ne9y6MT9cdTBPC20sAfH4C4qa7urrWjxBJIjkmftBb+wBBDZ8XiUvEC/b
         1eunHkWxhDyM12vXhH3tVxLSY/wwFg5vSnUpHSw3+7wfhrpIiQGg/hvnm5xumo1vPuWP
         3E80IQZxE/r8rHhifdGPh+OwdDL8v5W/hznlInrJZInsLpQlIxTJyGa+kFXAEjxBX2To
         KXW3nw4loNrP+vFLDnhk1bY6/VvW8IITaqbICl1twa//XPQlnXIDHblrB+g2ik8fpGmG
         vOc1aC/Mbp8XCp6TKpknCGZ4GLFFopTqy0T/w41Cwr3ElHOI3hO/NCS4krO4XIcNdm2E
         AYdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZXEN3PbX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id t9si705933ote.1.2017.10.18.05.15.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:15:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZXEN3PbX;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b85so3820853pfj.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 05:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0j7bLT3xBcOB5Dc+eGWB9m/BYo9Eh39WBe0p31rgzTg=;
        b=ZXEN3PbXAD+M/kHEnjrbNkpOIti4oXe1bZBw0pGWvJPEwg1DoZJC+w62URRzfcvzRY
         xba/X8bh0k0iELvmGrUlUkKdjc/2pdgDvNxqB5cPwgw/HaBSdmmwfN3IBZdrw1tq1T0y
         /JZ/Ii57OWExl32Yaf3es/DtCCV1w3ACu6PZqhsCgNjUdgiEmqgd6k77Lg0ABup4rj81
         K08uhbWc6PIVQenfkk6n3w4XSnTehO8nV6tVWKTDPr0SIUyVV4UEDEeVEPS3nSYglxw5
         fRn3nxuZr0riOBh5xffxdK/2pwpeCrtzyFK9tbPqcdevVrzzerGDCOVVtI3LaPQxnhzO
         GuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0j7bLT3xBcOB5Dc+eGWB9m/BYo9Eh39WBe0p31rgzTg=;
        b=mbXek3Ff9gmNhVlPxHASJX2Qk+MJv7tEVNSLEVoRHFtswY0ju+PVBjo+h8W1drrC4o
         DDW4tbk27MHPUujn+hblC+MZkIFZa6iaagiM6VO4xdRHwZxD0/eKb2zjjRjaP4UJ+hjJ
         mEe/98PYaoNk5VpLnu+d7IBYhUbd7gAqG8G3Ph8watDR1TtwEgY1UnsuaD8NhQznC37h
         /416z+BQ5Ylk1Cqhd7mesPIQNiJXVgNZCBjKWr+slBoLpRYiSdFGEREZ/rTiOOzlewcS
         GnEdHdyZdwvmxQ/64GYNHnz4RFct5qJjObVpy0b2Ngw9eESMBW1VrMOF2WO2FgXLclg4
         0d1w==
X-Gm-Message-State: AMCzsaXSoKIHmWsfUP9UJVoG9Jq4id2OcGRLiJMQLMiFKSpdAlRPeFqX
	kJ7oNs215WWQ/XFmRtBNrWI=
X-Google-Smtp-Source: AOwi7QDLjT4szlkd66I3I7+Occr++alYJKGEWFLuvKP8K2CVEY1nzcl+vmk+f0pxLmbeM1BixB7kqA==
X-Received: by 10.99.140.8 with SMTP id m8mr13785181pgd.23.1508328909896;
        Wed, 18 Oct 2017 05:15:09 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id t25sm8228596pfh.67.2017.10.18.05.15.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 05:15:09 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3 08/10] staging: lustre: llite: fix lines over 80 characters in llite files
Date: Wed, 18 Oct 2017 17:44:28 +0530
Message-Id: <1508328870-9416-9-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508328870-9416-1-git-send-email-aastha.gupta4104@gmail.com>

This fixes checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++++---
 drivers/staging/lustre/lustre/llite/dir.c          |  9 ++++---
 drivers/staging/lustre/lustre/llite/file.c         |  9 ++++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 13 ++++++----
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 29 ++++++++++++++--------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 ++-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 ++-
 drivers/staging/lustre/lustre/llite/namei.c        | 15 +++++++----
 drivers/staging/lustre/lustre/llite/rw.c           | 14 +++++++----
 drivers/staging/lustre/lustre/llite/statahead.c    |  3 ++-
 drivers/staging/lustre/lustre/llite/super25.c      |  3 ++-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 ++-
 12 files changed, 74 insertions(+), 39 deletions(-)

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
index 1db3e7f..58d832d 100644
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
 
@@ -502,7 +503,8 @@ int ll_dir_setstripe(struct inode *inode, struct lov_user_md *lump,
 			break;
 		}
 		default: {
-			CDEBUG(D_IOCTL, "bad userland LOV MAGIC: %#08x != %#08x nor %#08x\n",
+			CDEBUG(D_IOCTL,
+			       "bad userland LOV MAGIC: %#08x != %#08x nor %#08x\n",
 			       lump->lmm_magic, LOV_USER_MAGIC_V1,
 			       LOV_USER_MAGIC_V3);
 			return -EINVAL;
@@ -816,7 +818,8 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc) {
-			CDEBUG(D_HSM, "Could not read file data version. Request could not be confirmed.\n");
+			CDEBUG(D_HSM,
+			       "Could not read file data version. Request could not be confirmed.\n");
 			if (hpk.hpk_errval == 0)
 				hpk.hpk_errval = -rc;
 			goto progress;
diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index be66545..eee9bed 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -605,7 +605,8 @@ int ll_file_open(struct inode *inode, struct file *file)
 			 * to get file with different fid.
 			 */
 			it->it_flags |= MDS_OPEN_LOCK | MDS_OPEN_BY_FID;
-			rc = ll_intent_file_open(file->f_path.dentry, NULL, 0, it);
+			rc = ll_intent_file_open(file->f_path.dentry,
+						 NULL, 0, it);
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
@@ -3455,7 +3457,8 @@ static int ll_layout_lock_set(struct lustre_handle *lockh, enum ldlm_mode mode,
 		if (rc == 0)
 			rc = -EAGAIN;
 
-		CDEBUG(D_INODE, "%s: file=" DFID " waiting layout return: %d.\n",
+		CDEBUG(D_INODE,
+		       "%s: file=" DFID " waiting layout return: %d.\n",
 		       ll_get_fsname(inode->i_sb, NULL, 0),
 		       PFID(&lli->lli_fid), rc);
 	}
diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index 0287c75..fc1d3f5 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -84,7 +84,7 @@ struct ll_dentry_data {
 
 struct ll_getname_data {
 	struct dir_context ctx;
-	char	    *lgd_name;      /* points to a buffer with NAME_MAX+1 size */
+	char	    *lgd_name;      /* points to buffer with NAME_MAX+1 size */
 	struct lu_fid    lgd_fid;       /* target fid we are looking for */
 	int	      lgd_found;     /* inode matched? */
 };
@@ -637,7 +637,8 @@ static inline int ll_need_32bit_api(struct ll_sb_info *sbi)
 #if BITS_PER_LONG == 32
 	return 1;
 #elif defined(CONFIG_COMPAT)
-	return unlikely(in_compat_syscall() || (sbi->ll_flags & LL_SBI_32BIT_API));
+	return unlikely(in_compat_syscall() ||
+			(sbi->ll_flags & LL_SBI_32BIT_API));
 #else
 	return unlikely(sbi->ll_flags & LL_SBI_32BIT_API);
 #endif
@@ -1065,7 +1066,7 @@ struct ll_statahead_info {
 					     * hidden entries
 					     */
 				sai_agl_valid:1,/* AGL is valid for the dir */
-				sai_in_readpage:1;/* statahead is in readdir() */
+				sai_in_readpage:1;/* statahead in readdir() */
 	wait_queue_head_t	sai_waitq;      /* stat-ahead wait queue */
 	struct ptlrpc_thread    sai_thread;     /* stat-ahead thread */
 	struct ptlrpc_thread    sai_agl_thread; /* AGL thread */
@@ -1261,7 +1262,8 @@ static inline void ll_set_lock_data(struct obd_export *exp, struct inode *inode,
 
 		handle.cookie = it->it_lock_handle;
 
-		CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for lock %#llx\n",
+		CDEBUG(D_DLMTRACE,
+		       "setting l_data to inode " DFID "%p for lock %#llx\n",
 		       PFID(ll_inode2fid(inode)), inode, handle.cookie);
 
 		md_set_lock_data(exp, &handle, inode, &it->it_lock_bits);
@@ -1284,7 +1286,8 @@ static inline int d_lustre_invalid(const struct dentry *dentry)
  */
 static inline void d_lustre_invalidate(struct dentry *dentry, int nested)
 {
-	CDEBUG(D_DENTRY, "invalidate dentry %pd (%p) parent %p inode %p refc %d\n",
+	CDEBUG(D_DENTRY,
+	       "invalidate dentry %pd (%p) parent %p inode %p refc %d\n",
 	       dentry, dentry,
 	       dentry->d_parent, d_inode(dentry), d_count(dentry));
 
diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 25393e3..4ddf3230 100644
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
@@ -915,7 +919,8 @@ int ll_fill_super(struct super_block *sb, struct vfsmount *mnt)
 	/* Profile set with LCFG_MOUNTOPT so we can find our mdc and osc obds */
 	lprof = class_get_profile(profilenm);
 	if (!lprof) {
-		LCONSOLE_ERROR_MSG(0x156, "The client profile '%s' could not be read from the MGS.  Does that filesystem exist?\n",
+		LCONSOLE_ERROR_MSG(0x156,
+				   "The client profile '%s' could not be read from the MGS.  Does that filesystem exist?\n",
 				   profilenm);
 		err = -EINVAL;
 		goto out_free;
@@ -1042,7 +1047,8 @@ struct inode *ll_inode_from_resource_lock(struct ldlm_lock *lock)
 		} else {
 			inode = lock->l_resource->lr_lvb_inode;
 			LDLM_DEBUG_LIMIT(inode->i_state & I_FREEING ?  D_INFO :
-					 D_WARNING, lock, "lr_lvb_inode %p is bogus: magic %08x",
+					 D_WARNING, lock,
+					 "lr_lvb_inode %p is bogus: magic %08x",
 					 lock->l_resource->lr_lvb_inode,
 					 lli->lli_inode_magic);
 			inode = NULL;
@@ -1744,7 +1750,8 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
 	}
 	if (body->mbo_valid & OBD_MD_FLMTIME) {
 		if (body->mbo_mtime > LTIME_S(inode->i_mtime)) {
-			CDEBUG(D_INODE, "setting ino %lu mtime from %lu to %llu\n",
+			CDEBUG(D_INODE,
+			       "setting ino %lu mtime from %lu to %llu\n",
 			       inode->i_ino, LTIME_S(inode->i_mtime),
 			       body->mbo_mtime);
 			LTIME_S(inode->i_mtime) = body->mbo_mtime;
@@ -2254,7 +2261,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
 		return -EINVAL;
 	sb = (void *)x;
 	/* This better be a real Lustre superblock! */
-	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic == LMD_MAGIC);
+	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic ==
+		LMD_MAGIC);
 
 	/* Note we have not called client_common_fill_super yet, so
 	 * proc fns must be able to handle that!
@@ -2571,8 +2579,9 @@ static int ll_linkea_decode(struct linkea_data *ldata, unsigned int linkno,
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
index 5cc2b32..b3b5df7 100644
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
@@ -289,7 +290,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
 				 * we have to invalidate the negative children
 				 * on master inode
 				 */
-				CDEBUG(D_INODE, "Invalidate s" DFID " m" DFID "\n",
+				CDEBUG(D_INODE,
+				       "Invalidate s" DFID " m" DFID "\n",
 				       PFID(ll_inode2fid(inode)),
 				       PFID(&lli->lli_pfid));
 
@@ -736,7 +738,8 @@ static int ll_atomic_open(struct inode *dir, struct dentry *dentry,
 
 			*opened |= FILE_CREATED;
 		}
-		if (d_really_is_positive(dentry) && it_disposition(it, DISP_OPEN_OPEN)) {
+		if (d_really_is_positive(dentry) &&
+		    it_disposition(it, DISP_OPEN_OPEN)) {
 			/* Open dentry. */
 			if (S_ISFIFO(d_inode(dentry)->i_mode)) {
 				/* We cannot call open here as it might
@@ -980,7 +983,8 @@ static int ll_create_nd(struct inode *dir, struct dentry *dentry,
 {
 	int rc;
 
-	CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID "(%p), flags=%u, excl=%d\n",
+	CDEBUG(D_VFSTRACE,
+	       "VFS Op:name=%pd, dir=" DFID "(%p), flags=%u, excl=%d\n",
 	       dentry, PFID(ll_inode2fid(dir)), dir, mode, want_excl);
 
 	rc = ll_mknod(dir, dentry, mode, 0);
@@ -1101,7 +1105,8 @@ static int ll_link(struct dentry *old_dentry, struct inode *dir,
 	struct md_op_data *op_data;
 	int err;
 
-	CDEBUG(D_VFSTRACE, "VFS Op: inode=" DFID "(%p), dir=" DFID "(%p), target=%pd\n",
+	CDEBUG(D_VFSTRACE,
+	       "VFS Op: inode=" DFID "(%p), dir=" DFID "(%p), target=%pd\n",
 	       PFID(ll_inode2fid(src)), src, PFID(ll_inode2fid(dir)), dir,
 	       new_dentry);
 
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index e720905..b6371c4 100644
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
@@ -669,8 +671,9 @@ static void ras_stride_increase_window(struct ll_readahead_state *ras,
 	unsigned long stride_len;
 
 	LASSERT(ras->ras_stride_length > 0);
-	LASSERTF(ras->ras_window_start + ras->ras_window_len
-		 >= ras->ras_stride_offset, "window_start %lu, window_len %lu stride_offset %lu\n",
+	LASSERTF(ras->ras_window_start + ras->ras_window_len >=
+		 ras->ras_stride_offset,
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
diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
index ea9d59f..99cc1cb 100644
--- a/drivers/staging/lustre/lustre/llite/statahead.c
+++ b/drivers/staging/lustre/lustre/llite/statahead.c
@@ -1082,7 +1082,8 @@ static int ll_statahead_thread(void *arg)
 					struct ll_inode_info *clli;
 
 					clli = list_entry(sai->sai_agls.next,
-							  struct ll_inode_info, lli_agl_list);
+							  struct ll_inode_info,
+							  lli_agl_list);
 					list_del_init(&clli->lli_agl_list);
 					spin_unlock(&lli->lli_agl_lock);
 
diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
index 0da4af8..8938713 100644
--- a/drivers/staging/lustre/lustre/llite/super25.c
+++ b/drivers/staging/lustre/lustre/llite/super25.c
@@ -88,7 +88,8 @@ static int __init lustre_init(void)
 	struct timespec64 ts;
 	int i, rc, seed[2];
 
-	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) != LUSTRE_VOLATILE_HDR_LEN + 1);
+	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=
+		     LUSTRE_VOLATILE_HDR_LEN + 1);
 
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


