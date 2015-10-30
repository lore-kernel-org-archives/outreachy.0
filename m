X-GM-THRID: 6211494140664872960
X-Received: by 10.182.58.105 with SMTP id p9mr6885684obq.21.1446226178206;
        Fri, 30 Oct 2015 10:29:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.1.203 with SMTP id 194ls138837iob.48.gmail; Fri, 30 Oct
 2015 10:29:37 -0700 (PDT)
X-Received: by 10.50.61.168 with SMTP id q8mr1768131igr.10.1446226177736;
        Fri, 30 Oct 2015 10:29:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si854307pbb.0.2015.10.30.10.29.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 10:29:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id z6so80008488pas.2
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 10:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HlZG1+IvunbxGkIXrMSZrycpWXnQwoM/mG9O6ikJY9Q=;
        b=alGna8utT2BKcWIrwjr4aoNDveh3JQyjkPu/FxQ4Ah1o11boCMzJXxlZ7Csr4pz6Gz
         bryxxV5k1+QXmRax7/y+OTT2XpgUCZYfaK3Evm++lFMvnyJU8+d5CpOiRq8Dtpa5diNA
         hPMlCcdQnDzTXbdPzqJHk3IWGVoO01PHaIsopGYtXIbF+em8hedv0jnZnY+cHKI/Umw9
         Ik8wMYjT/5Z5aEKgXo/g/bMZ0PqOAqwryYPGGjgROYHyLMsaPDDiylO++w5eQGScRzgs
         38z3MfIvtrhS4fUnuYdqx/dPsJF/ZivQEa5C3iJCWQYwR49akSYp53l5ZetA9SWsluli
         vq1g==
X-Received: by 10.66.156.1 with SMTP id wa1mr10256462pab.84.1446226177568;
        Fri, 30 Oct 2015 10:29:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.182.136])
        by smtp.gmail.com with ESMTPSA id yi8sm9301364pab.22.2015.10.30.10.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 10:29:37 -0700 (PDT)
Date: Fri, 30 Oct 2015 22:59:32 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: dir: Add __user annotations
Message-ID: <20151030172932.GA27324@amitoj-Inspiron-3542>
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

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 38 +++++++++++++++----------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index cc6f0f5..6a20e61 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -1259,7 +1259,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		return ll_iocontrol(inode, file, cmd, arg);
 	case FSFILT_IOC_GETVERSION_OLD:
 	case FSFILT_IOC_GETVERSION:
-		return put_user(inode->i_generation, (int *)arg);
+		return put_user(inode->i_generation, (int __user *)arg);
 	/* We need to special case any other ioctls we want to handle,
 	 * to send them to the MDS/OST as appropriate and to properly
 	 * network encode the arg field.
@@ -1273,7 +1273,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		if (mdtidx < 0)
 			return mdtidx;
 
-		if (put_user((int)mdtidx, (int *)arg))
+		if (put_user((int)mdtidx, (int __user *)arg))
 			return -EFAULT;
 
 		return 0;
@@ -1429,7 +1429,7 @@ lmv_out_free:
 		tmp->lum_objects[0].lum_mds = mdtindex;
 		memcpy(&tmp->lum_objects[0].lum_fid, ll_inode2fid(inode),
 		       sizeof(struct lu_fid));
-		if (copy_to_user((void *)arg, tmp, lum_size)) {
+		if (copy_to_user((void __user *)arg, tmp, lum_size)) {
 			rc = -EFAULT;
 			goto free_lmv;
 		}
@@ -1643,7 +1643,7 @@ free_lmm:
 				   NULL);
 		if (rc) {
 			CDEBUG(D_QUOTA, "mdc ioctl %d failed: %d\n", cmd, rc);
-			if (copy_to_user((void *)arg, check,
+			if (copy_to_user((void __user *)arg, check,
 					     sizeof(*check)))
 				CDEBUG(D_QUOTA, "copy_to_user failed\n");
 			goto out_poll;
@@ -1653,7 +1653,7 @@ free_lmm:
 				   NULL);
 		if (rc) {
 			CDEBUG(D_QUOTA, "osc ioctl %d failed: %d\n", cmd, rc);
-			if (copy_to_user((void *)arg, check,
+			if (copy_to_user((void __user *)arg, check,
 					     sizeof(*check)))
 				CDEBUG(D_QUOTA, "copy_to_user failed\n");
 			goto out_poll;
@@ -1669,14 +1669,14 @@ out_poll:
 		if (!qctl)
 			return -ENOMEM;
 
-		if (copy_from_user(qctl, (void *)arg, sizeof(*qctl))) {
+		if (copy_from_user(qctl, (void __user *)arg, sizeof(*qctl))) {
 			rc = -EFAULT;
 			goto out_quotactl;
 		}
 
 		rc = quotactl_ioctl(sbi, qctl);
 
-		if (rc == 0 && copy_to_user((void *)arg, qctl, sizeof(*qctl)))
+		if (rc == 0 && copy_to_user((void __user *)arg, qctl, sizeof(*qctl)))
 			rc = -EFAULT;
 
 out_quotactl:
@@ -1706,7 +1706,7 @@ out_quotactl:
 		int count, vallen;
 		struct obd_export *exp;
 
-		if (copy_from_user(&count, (int *)arg, sizeof(int)))
+		if (copy_from_user(&count, (int __user *)arg, sizeof(int)))
 			return -EFAULT;
 
 		/* get ost count when count is zero, get mdt count otherwise */
@@ -1719,13 +1719,13 @@ out_quotactl:
 			return rc;
 		}
 
-		if (copy_to_user((int *)arg, &count, sizeof(int)))
+		if (copy_to_user((int __user *)arg, &count, sizeof(int)))
 			return -EFAULT;
 
 		return 0;
 	}
 	case LL_IOC_PATH2FID:
-		if (copy_to_user((void *)arg, ll_inode2fid(inode),
+		if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
 				     sizeof(struct lu_fid)))
 			return -EFAULT;
 		return 0;
@@ -1737,16 +1737,16 @@ out_quotactl:
 		if (!capable(CFS_CAP_SYS_ADMIN))
 			return -EPERM;
 
-		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
+		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void __user *)arg,
 				    sizeof(struct ioc_changelog));
 		return rc;
 	case OBD_IOC_FID2PATH:
-		return ll_fid2path(inode, (void *)arg);
+		return ll_fid2path(inode, (void __user *)arg);
 	case LL_IOC_HSM_REQUEST: {
 		struct hsm_user_request	*hur;
 		ssize_t			 totalsize;
 
-		hur = memdup_user((void *)arg, sizeof(*hur));
+		hur = memdup_user((void __user *)arg, sizeof(*hur));
 		if (IS_ERR(hur))
 			return PTR_ERR(hur);
 
@@ -1765,7 +1765,7 @@ out_quotactl:
 			return -ENOMEM;
 
 		/* Copy the whole struct */
-		if (copy_from_user(hur, (void *)arg, totalsize)) {
+		if (copy_from_user(hur, (void __user *)arg, totalsize)) {
 			kvfree(hur);
 			return -EFAULT;
 		}
@@ -1801,7 +1801,7 @@ out_quotactl:
 		struct hsm_progress_kernel	hpk;
 		struct hsm_progress		hp;
 
-		if (copy_from_user(&hp, (void *)arg, sizeof(hp)))
+		if (copy_from_user(&hp, (void __user *)arg, sizeof(hp)))
 			return -EFAULT;
 
 		hpk.hpk_fid = hp.hp_fid;
@@ -1826,12 +1826,12 @@ out_quotactl:
 		struct hsm_copy	*copy;
 		int		 rc;
 
-		copy = memdup_user((char *)arg, sizeof(*copy));
+		copy = memdup_user((char __user *)arg, sizeof(*copy));
 		if (IS_ERR(copy))
 			return PTR_ERR(copy);
 
 		rc = ll_ioc_copy_start(inode->i_sb, copy);
-		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
+		if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
 			rc = -EFAULT;
 
 		kfree(copy);
@@ -1841,12 +1841,12 @@ out_quotactl:
 		struct hsm_copy	*copy;
 		int		 rc;
 
-		copy = memdup_user((char *)arg, sizeof(*copy));
+		copy = memdup_user((char __user *)arg, sizeof(*copy));
 		if (IS_ERR(copy))
 			return PTR_ERR(copy);
 
 		rc = ll_ioc_copy_end(inode->i_sb, copy);
-		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
+		if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
 			rc = -EFAULT;
 
 		kfree(copy);
-- 
1.9.1


