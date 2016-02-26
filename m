X-GM-THRID: 6255520477727424512
X-Received: by 10.182.72.137 with SMTP id d9mr248559obv.31.1456476914626;
        Fri, 26 Feb 2016 00:55:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.202 with SMTP id 68ls866533qgn.3.gmail; Fri, 26 Feb
 2016 00:55:14 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr239643ywp.33.1456476914026;
        Fri, 26 Feb 2016 00:55:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r75si250979pfr.0.2016.02.26.00.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 00:55:13 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id t66so103019pfb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 00:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QA6E+eeXgLj85YpDRb42H7u/vix2ARptPkkui2DP45s=;
        b=Vmh7oSALdutXXf9mJxfH/doAe52zPjXC9v9CLmkYgbA5Anc7Xq2al4XYx5RPk3wiDn
         sjzjb17Sn/C9ycx/ciVZ+znYQbySPmZ+jKd9ttzKeYjOEELIMkjy6ST4KhVK5RqWPxGd
         WZ/NEntHJb4o+FWWXoc31WIu7tkTelKamm1eJYiWIMDZcc9oqcYpaw6hmvwc/n1iKQ+K
         H59Bp2Pty7cFNoYpnF4qKlYz4Hz29twuLdioG4ERTrIWkYcYEzF/od3/w6Oy3WHr8cPD
         1ujapuCp7tQRnnSa04MXkYuzWAKWDC+cBMiceqMPjgCqMZNiaposLaV6/nbVyHYAU7rq
         Zd7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QA6E+eeXgLj85YpDRb42H7u/vix2ARptPkkui2DP45s=;
        b=FtP2nNwJQ0nE/KDUdJRUrM7XClBbhLeO9BOVHwwJNVG/0TxbKPnVWTLMe0DbEeGqef
         kFaD5Up+mja3uwm6kcyFz0ZBZOnwqnOZUBGcPU0gOYKtisJZ7bVg4SNTm+rhhO4F8jiY
         bbPaz/uNkIrH5C42C7ZgqA13HCZaQfeL6044TnNvh7nItdPdczBVDqhty/a6l0lUKToP
         /ojnxiavpriEoKN6eDzBc6y+tkiMO+mjYlCdVTfTvRpG9yYzOwvgYpbnHi9Tb8j1Frip
         PN0I11CEjzatHhJwjk4bq9k4/yulGLuxgNcdCk/KJHOsvWvIQR/2DTTXuOZdEykTcT2T
         1Ggg==
X-Gm-Message-State: AD7BkJJxXf/DXORW9+NgDQDhNs0tNl+OU3gaf6JpRDXpMh2noIR6+Z8P8kx2H7s2qRLzeg==
X-Received: by 10.98.17.75 with SMTP id z72mr456873pfi.16.1456476913705;
        Fri, 26 Feb 2016 00:55:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id 144sm17563937pfa.83.2016.02.26.00.55.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 00:55:13 -0800 (PST)
Date: Fri, 26 Feb 2016 14:25:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 8/8] staging: lustre: llite: Replace kmem_cache_alloc with
 kmem_cache_zalloc
Message-ID: <bc395c09cfd45aaffc95dff086542c0be178ccec.1456475758.git.amitoj1606@gmail.com>
References: <cover.1456475758.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456475758.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Use kmem_cache_zalloc instead of manually setting kmem_cache_alloc
with flag GFP_ZERO since kmem_alloc_zalloc sets allocated memory
to zero.

The Coccinelle semantic patch used to make this change is as
follows:
// <smpl>
@@ 
expression e,f;
@@
- kmem_cache_alloc(e, f |__GFP_ZERO)
+ kmem_cache_zalloc(e, f)
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c        | 4 ++--
 drivers/staging/lustre/lustre/llite/llite_close.c | 2 +-
 drivers/staging/lustre/lustre/llite/llite_lib.c   | 3 +--
 drivers/staging/lustre/lustre/llite/namei.c       | 2 +-
 drivers/staging/lustre/lustre/llite/remote_perm.c | 4 ++--
 drivers/staging/lustre/lustre/llite/super25.c     | 2 +-
 drivers/staging/lustre/lustre/llite/vvp_dev.c     | 4 ++--
 drivers/staging/lustre/lustre/llite/xattr_cache.c | 2 +-
 8 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 4c25cf2..8acde52 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -64,7 +64,7 @@ static struct ll_file_data *ll_file_data_get(void)
 {
 	struct ll_file_data *fd;
 
-	fd = kmem_cache_alloc(ll_file_data_slab, GFP_NOFS | __GFP_ZERO);
+	fd = kmem_cache_zalloc(ll_file_data_slab, GFP_NOFS);
 	if (!fd)
 		return NULL;
 	fd->fd_write_failed = false;
@@ -1278,7 +1278,7 @@ static int ll_lov_recreate(struct inode *inode, struct ost_id *oi, u32 ost_idx)
 	int rc = 0;
 	struct lov_stripe_md *lsm = NULL, *lsm2;
 
-	oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+	oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 	if (!oa)
 		return -ENOMEM;
 
diff --git a/drivers/staging/lustre/lustre/llite/llite_close.c b/drivers/staging/lustre/lustre/llite/llite_close.c
index fcb6657..624015e 100644
--- a/drivers/staging/lustre/lustre/llite/llite_close.c
+++ b/drivers/staging/lustre/lustre/llite/llite_close.c
@@ -226,7 +226,7 @@ int ll_som_update(struct inode *inode, struct md_op_data *op_data)
 		       inode->i_ino, inode->i_generation,
 		       lli->lli_flags);
 
-	oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+	oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 	if (!oa) {
 		CERROR("can't allocate memory for Size-on-MDS update.\n");
 		return -ENOMEM;
diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 1f3e8e8..deb0495 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1793,8 +1793,7 @@ int ll_iocontrol(struct inode *inode, struct file *file,
 			return 0;
 		}
 
-		oinfo.oi_oa = kmem_cache_alloc(obdo_cachep,
-					       GFP_NOFS | __GFP_ZERO);
+		oinfo.oi_oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 		if (!oinfo.oi_oa) {
 			ccc_inode_lsm_put(inode, lsm);
 			return -ENOMEM;
diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
index 56d2d1d..647c81f 100644
--- a/drivers/staging/lustre/lustre/llite/namei.c
+++ b/drivers/staging/lustre/lustre/llite/namei.c
@@ -887,7 +887,7 @@ int ll_objects_destroy(struct ptlrpc_request *request, struct inode *dir)
 	}
 	LASSERT(rc >= sizeof(*lsm));
 
-	oa = kmem_cache_alloc(obdo_cachep, GFP_NOFS | __GFP_ZERO);
+	oa = kmem_cache_zalloc(obdo_cachep, GFP_NOFS);
 	if (!oa) {
 		rc = -ENOMEM;
 		goto out_free_memmd;
diff --git a/drivers/staging/lustre/lustre/llite/remote_perm.c b/drivers/staging/lustre/lustre/llite/remote_perm.c
index fe4a722..e9d2531 100644
--- a/drivers/staging/lustre/lustre/llite/remote_perm.c
+++ b/drivers/staging/lustre/lustre/llite/remote_perm.c
@@ -61,7 +61,7 @@ static inline struct ll_remote_perm *alloc_ll_remote_perm(void)
 {
 	struct ll_remote_perm *lrp;
 
-	lrp = kmem_cache_alloc(ll_remote_perm_cachep, GFP_KERNEL | __GFP_ZERO);
+	lrp = kmem_cache_zalloc(ll_remote_perm_cachep, GFP_KERNEL);
 	if (lrp)
 		INIT_HLIST_NODE(&lrp->lrp_list);
 	return lrp;
@@ -82,7 +82,7 @@ static struct hlist_head *alloc_rmtperm_hash(void)
 	struct hlist_head *hash;
 	int i;
 
-	hash = kmem_cache_alloc(ll_rmtperm_hash_cachep, GFP_NOFS | __GFP_ZERO);
+	hash = kmem_cache_zalloc(ll_rmtperm_hash_cachep, GFP_NOFS);
 	if (!hash)
 		return NULL;
 
diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
index 63f090a..8733e4a 100644
--- a/drivers/staging/lustre/lustre/llite/super25.c
+++ b/drivers/staging/lustre/lustre/llite/super25.c
@@ -53,7 +53,7 @@ static struct inode *ll_alloc_inode(struct super_block *sb)
 	struct ll_inode_info *lli;
 
 	ll_stats_ops_tally(ll_s2sbi(sb), LPROC_LL_ALLOC_INODE, 1);
-	lli = kmem_cache_alloc(ll_inode_cachep, GFP_NOFS | __GFP_ZERO);
+	lli = kmem_cache_zalloc(ll_inode_cachep, GFP_NOFS);
 	if (!lli)
 		return NULL;
 
diff --git a/drivers/staging/lustre/lustre/llite/vvp_dev.c b/drivers/staging/lustre/lustre/llite/vvp_dev.c
index 6075ccf..282b70b 100644
--- a/drivers/staging/lustre/lustre/llite/vvp_dev.c
+++ b/drivers/staging/lustre/lustre/llite/vvp_dev.c
@@ -79,7 +79,7 @@ static void *vvp_key_init(const struct lu_context *ctx,
 {
 	struct vvp_thread_info *info;
 
-	info = kmem_cache_alloc(vvp_thread_kmem, GFP_NOFS | __GFP_ZERO);
+	info = kmem_cache_zalloc(vvp_thread_kmem, GFP_NOFS);
 	if (!info)
 		info = ERR_PTR(-ENOMEM);
 	return info;
@@ -98,7 +98,7 @@ static void *vvp_session_key_init(const struct lu_context *ctx,
 {
 	struct vvp_session *session;
 
-	session = kmem_cache_alloc(vvp_session_kmem, GFP_NOFS | __GFP_ZERO);
+	session = kmem_cache_zalloc(vvp_session_kmem, GFP_NOFS);
 	if (!session)
 		session = ERR_PTR(-ENOMEM);
 	return session;
diff --git a/drivers/staging/lustre/lustre/llite/xattr_cache.c b/drivers/staging/lustre/lustre/llite/xattr_cache.c
index 460b7c5..44488af 100644
--- a/drivers/staging/lustre/lustre/llite/xattr_cache.c
+++ b/drivers/staging/lustre/lustre/llite/xattr_cache.c
@@ -114,7 +114,7 @@ static int ll_xattr_cache_add(struct list_head *cache,
 		return -EPROTO;
 	}
 
-	xattr = kmem_cache_alloc(xattr_kmem, GFP_NOFS | __GFP_ZERO);
+	xattr = kmem_cache_zalloc(xattr_kmem, GFP_NOFS);
 	if (!xattr) {
 		CDEBUG(D_CACHE, "failed to allocate xattr\n");
 		return -ENOMEM;
-- 
1.9.1


