X-GM-THRID: 6211564621691617280
X-Received: by 10.50.142.103 with SMTP id rv7mr509592igb.2.1446242588590;
        Fri, 30 Oct 2015 15:03:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.175 with SMTP id cz15ls328128igc.0.gmail; Fri, 30 Oct
 2015 15:03:08 -0700 (PDT)
X-Received: by 10.50.62.49 with SMTP id v17mr480226igr.1.1446242588053;
        Fri, 30 Oct 2015 15:03:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id sm2si886745pab.0.2015.10.30.15.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so85423805pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 15:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TcxtZIoRTYQHPIKQv517yXqRVyH97slVWFH+T1jxwXU=;
        b=OzUNySaRtKX30WcQgbyPbyazgEbGFy7HranHpxbVJW4z00VOYiLGLY5oyvuLNRTvq0
         nvoKN+bo3xXGABLwSVoXEo61sZZhJFL2Rx+1harjeIvrSOi81xwNlm89PlISA5UkUq0D
         7fPjhNBc5yE2sSveIcy+fY3UIGCYO9+CuyloNhBUSAI20mCp1tGp0PGUUfBBl65S3PRl
         RObUiXkPeUm9TvMZBDuijRjQjYKBEq8z+KqNtT3LbSE2j8c4nc75BjQj0JUJ0xTn7/JQ
         sBsobnjITcniYmnAKUlRaaNeh1BcsT+9v6nBHQ/gD8b3PaGL3s3vGtDchWWJFwr20euV
         ahyw==
X-Received: by 10.66.90.137 with SMTP id bw9mr11221192pab.112.1446242587759;
        Fri, 30 Oct 2015 15:03:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id oi3sm10010059pbb.53.2015.10.30.15.03.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 15:03:06 -0700 (PDT)
Date: Sat, 31 Oct 2015 03:33:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: dir: Add __user annotations to
 remove sparse warnings
Message-ID: <20151030220302.GA3803@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following multiple sparse warnings by adding
__user annotations:

warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got char *<noident>
warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got int *<noident>
warning: incorrect type in argument 1 (different address spaces)
expected void [noderef] <asn:1>*to got void *<noident>
warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got struct lov_user_md_v3
warning: incorrect type in argument 2 (different address spaces)
expected void const [noderef] <asn:1>*from got struct lov_user_md_v1
warning: incorrect type in argument 1 (different address spaces)
expected void const [noderef] <asn:1>*from got const char

After this patch, there are no more sparse warnings for this file.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 71 ++++++++++++++++---------------
 1 file changed, 36 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index cc6f0f5..da91226 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	struct ll_sb_info *sbi = ll_i2sbi(inode);
 	struct obd_ioctl_data *data;
 	int rc = 0;
+	int __user *argi = (int __user *)arg;
+	void __user *argv = (void __user *)arg;
+	char __user *argc = (char __user *)arg;
 
 	CDEBUG(D_VFSTRACE, "VFS Op:inode=%lu/%u(%p), cmd=%#x\n",
 	       inode->i_ino, inode->i_generation, inode, cmd);
@@ -1259,7 +1262,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		return ll_iocontrol(inode, file, cmd, arg);
 	case FSFILT_IOC_GETVERSION_OLD:
 	case FSFILT_IOC_GETVERSION:
-		return put_user(inode->i_generation, (int *)arg);
+		return put_user(inode->i_generation, argi);
 	/* We need to special case any other ioctls we want to handle,
 	 * to send them to the MDS/OST as appropriate and to properly
 	 * network encode the arg field.
@@ -1273,7 +1276,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		if (mdtidx < 0)
 			return mdtidx;
 
-		if (put_user((int)mdtidx, (int *)arg))
+		if (put_user((int)mdtidx, argi))
 			return -EFAULT;
 
 		return 0;
@@ -1370,8 +1373,8 @@ lmv_out_free:
 	case LL_IOC_LOV_SETSTRIPE: {
 		struct lov_user_md_v3 lumv3;
 		struct lov_user_md_v1 *lumv1 = (struct lov_user_md_v1 *)&lumv3;
-		struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
-		struct lov_user_md_v3 *lumv3p = (struct lov_user_md_v3 *)arg;
+		struct lov_user_md_v1 __user *lumv1p = argv;
+		struct lov_user_md_v3 __user *lumv3p = argv;
 
 		int set_default = 0;
 
@@ -1396,7 +1399,7 @@ lmv_out_free:
 		return rc;
 	}
 	case LL_IOC_LMV_GETSTRIPE: {
-		struct lmv_user_md *lump = (struct lmv_user_md *)arg;
+		struct lmv_user_md __user *lump = argv;
 		struct lmv_user_md lum;
 		struct lmv_user_md *tmp;
 		int lum_size;
@@ -1429,7 +1432,7 @@ lmv_out_free:
 		tmp->lum_objects[0].lum_mds = mdtindex;
 		memcpy(&tmp->lum_objects[0].lum_fid, ll_inode2fid(inode),
 		       sizeof(struct lu_fid));
-		if (copy_to_user((void *)arg, tmp, lum_size)) {
+		if (copy_to_user(argv, tmp, lum_size)) {
 			rc = -EFAULT;
 			goto free_lmv;
 		}
@@ -1446,7 +1449,7 @@ free_lmv:
 	case IOC_MDC_GETFILEINFO:
 	case IOC_MDC_GETFILESTRIPE: {
 		struct ptlrpc_request *request = NULL;
-		struct lov_user_md *lump;
+		struct lov_user_md __user *lump;
 		struct lov_mds_md *lmm = NULL;
 		struct mdt_body *body;
 		char *filename = NULL;
@@ -1454,7 +1457,7 @@ free_lmv:
 
 		if (cmd == IOC_MDC_GETFILEINFO ||
 		    cmd == IOC_MDC_GETFILESTRIPE) {
-			filename = ll_getname((const char *)arg);
+			filename = ll_getname((const char __user *)arg);
 			if (IS_ERR(filename))
 				return PTR_ERR(filename);
 
@@ -1483,11 +1486,11 @@ free_lmv:
 
 		if (cmd == IOC_MDC_GETFILESTRIPE ||
 		    cmd == LL_IOC_LOV_GETSTRIPE) {
-			lump = (struct lov_user_md *)arg;
+			lump = argv;
 		} else {
-			struct lov_user_mds_data *lmdp;
+			struct lov_user_mds_data __user *lmdp;
 
-			lmdp = (struct lov_user_mds_data *)arg;
+			lmdp = argv;
 			lump = &lmdp->lmd_lmm;
 		}
 		if (copy_to_user(lump, lmm, lmmsize)) {
@@ -1499,7 +1502,7 @@ free_lmv:
 		}
 skip_lmm:
 		if (cmd == IOC_MDC_GETFILEINFO || cmd == LL_IOC_MDC_GETINFO) {
-			struct lov_user_mds_data *lmdp;
+			struct lov_user_mds_data __user *lmdp;
 			lstat_t st = { 0 };
 
 			st.st_dev     = inode->i_sb->s_dev;
@@ -1516,7 +1519,7 @@ skip_lmm:
 			st.st_ctime   = body->ctime;
 			st.st_ino     = inode->i_ino;
 
-			lmdp = (struct lov_user_mds_data *)arg;
+			lmdp = argv;
 			if (copy_to_user(&lmdp->lmd_st, &st, sizeof(st))) {
 				rc = -EFAULT;
 				goto out_req;
@@ -1530,14 +1533,14 @@ out_req:
 		return rc;
 	}
 	case IOC_LOV_GETINFO: {
-		struct lov_user_mds_data *lumd;
+		struct lov_user_mds_data __user *lumd;
 		struct lov_stripe_md *lsm;
-		struct lov_user_md *lum;
+		struct lov_user_md __user *lum;
 		struct lov_mds_md *lmm;
 		int lmmsize;
 		lstat_t st;
 
-		lumd = (struct lov_user_mds_data *)arg;
+		lumd = argv;
 		lum = &lumd->lmd_lmm;
 
 		rc = ll_get_max_mdsize(sbi, &lmmsize);
@@ -1643,8 +1646,7 @@ free_lmm:
 				   NULL);
 		if (rc) {
 			CDEBUG(D_QUOTA, "mdc ioctl %d failed: %d\n", cmd, rc);
-			if (copy_to_user((void *)arg, check,
-					     sizeof(*check)))
+			if (copy_to_user(argv, check, sizeof(*check)))
 				CDEBUG(D_QUOTA, "copy_to_user failed\n");
 			goto out_poll;
 		}
@@ -1653,8 +1655,7 @@ free_lmm:
 				   NULL);
 		if (rc) {
 			CDEBUG(D_QUOTA, "osc ioctl %d failed: %d\n", cmd, rc);
-			if (copy_to_user((void *)arg, check,
-					     sizeof(*check)))
+			if (copy_to_user(argv, check, sizeof(*check)))
 				CDEBUG(D_QUOTA, "copy_to_user failed\n");
 			goto out_poll;
 		}
@@ -1669,14 +1670,14 @@ out_poll:
 		if (!qctl)
 			return -ENOMEM;
 
-		if (copy_from_user(qctl, (void *)arg, sizeof(*qctl))) {
+		if (copy_from_user(qctl, argv, sizeof(*qctl))) {
 			rc = -EFAULT;
 			goto out_quotactl;
 		}
 
 		rc = quotactl_ioctl(sbi, qctl);
 
-		if (rc == 0 && copy_to_user((void *)arg, qctl, sizeof(*qctl)))
+		if (rc == 0 && copy_to_user(argv, qctl, sizeof(*qctl)))
 			rc = -EFAULT;
 
 out_quotactl:
@@ -1706,7 +1707,7 @@ out_quotactl:
 		int count, vallen;
 		struct obd_export *exp;
 
-		if (copy_from_user(&count, (int *)arg, sizeof(int)))
+		if (copy_from_user(&count, argi, sizeof(int)))
 			return -EFAULT;
 
 		/* get ost count when count is zero, get mdt count otherwise */
@@ -1719,13 +1720,13 @@ out_quotactl:
 			return rc;
 		}
 
-		if (copy_to_user((int *)arg, &count, sizeof(int)))
+		if (copy_to_user(argi, &count, sizeof(int)))
 			return -EFAULT;
 
 		return 0;
 	}
 	case LL_IOC_PATH2FID:
-		if (copy_to_user((void *)arg, ll_inode2fid(inode),
+		if (copy_to_user(argv, ll_inode2fid(inode),
 				     sizeof(struct lu_fid)))
 			return -EFAULT;
 		return 0;
@@ -1737,16 +1738,16 @@ out_quotactl:
 		if (!capable(CFS_CAP_SYS_ADMIN))
 			return -EPERM;
 
-		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
+		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, argv,
 				    sizeof(struct ioc_changelog));
 		return rc;
 	case OBD_IOC_FID2PATH:
-		return ll_fid2path(inode, (void *)arg);
+		return ll_fid2path(inode, argv);
 	case LL_IOC_HSM_REQUEST: {
 		struct hsm_user_request	*hur;
 		ssize_t			 totalsize;
 
-		hur = memdup_user((void *)arg, sizeof(*hur));
+		hur = memdup_user(argv, sizeof(*hur));
 		if (IS_ERR(hur))
 			return PTR_ERR(hur);
 
@@ -1765,7 +1766,7 @@ out_quotactl:
 			return -ENOMEM;
 
 		/* Copy the whole struct */
-		if (copy_from_user(hur, (void *)arg, totalsize)) {
+		if (copy_from_user(hur, argv, totalsize)) {
 			kvfree(hur);
 			return -EFAULT;
 		}
@@ -1801,7 +1802,7 @@ out_quotactl:
 		struct hsm_progress_kernel	hpk;
 		struct hsm_progress		hp;
 
-		if (copy_from_user(&hp, (void *)arg, sizeof(hp)))
+		if (copy_from_user(&hp, argv, sizeof(hp)))
 			return -EFAULT;
 
 		hpk.hpk_fid = hp.hp_fid;
@@ -1818,7 +1819,7 @@ out_quotactl:
 		return rc;
 	}
 	case LL_IOC_HSM_CT_START:
-		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
+		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, argv,
 				    sizeof(struct lustre_kernelcomm));
 		return rc;
 
@@ -1826,12 +1827,12 @@ out_quotactl:
 		struct hsm_copy	*copy;
 		int		 rc;
 
-		copy = memdup_user((char *)arg, sizeof(*copy));
+		copy = memdup_user(argc, sizeof(*copy));
 		if (IS_ERR(copy))
 			return PTR_ERR(copy);
 
 		rc = ll_ioc_copy_start(inode->i_sb, copy);
-		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
+		if (copy_to_user(argc, copy, sizeof(*copy)))
 			rc = -EFAULT;
 
 		kfree(copy);
@@ -1841,12 +1842,12 @@ out_quotactl:
 		struct hsm_copy	*copy;
 		int		 rc;
 
-		copy = memdup_user((char *)arg, sizeof(*copy));
+		copy = memdup_user(argc, sizeof(*copy));
 		if (IS_ERR(copy))
 			return PTR_ERR(copy);
 
 		rc = ll_ioc_copy_end(inode->i_sb, copy);
-		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
+		if (copy_to_user(argc, copy, sizeof(*copy)))
 			rc = -EFAULT;
 
 		kfree(copy);
-- 
1.9.1


