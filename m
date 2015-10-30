X-GM-THRID: 6211564621691617280
X-Received: by 10.112.151.9 with SMTP id um9mr2187304lbb.19.1446243223439;
        Fri, 30 Oct 2015 15:13:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.3.2 with SMTP id 2ls249678lfd.4.gmail; Fri, 30 Oct 2015
 15:13:42 -0700 (PDT)
X-Received: by 10.112.148.202 with SMTP id tu10mr2180401lbb.12.1446243222588;
        Fri, 30 Oct 2015 15:13:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si154525wmb.3.2015.10.30.15.13.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:13:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,220,1444687200"; 
   d="scan'208";a="185279725"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 23:13:42 +0100
Date: Fri, 30 Oct 2015 23:13:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations to remove sparse warnings
In-Reply-To: <20151030220302.GA3803@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1510302312140.2057@localhost6.localdomain6>
References: <20151030220302.GA3803@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 31 Oct 2015, Amitoj Kaur Chawla wrote:

> This patch fixes the following multiple sparse warnings by adding
> __user annotations:
> 
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got char *<noident>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got int *<noident>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got void *<noident>
> warning: incorrect type in argument 2 (different address spaces)
> expected void const [noderef] <asn:1>*from got struct lov_user_md_v3
> warning: incorrect type in argument 2 (different address spaces)
> expected void const [noderef] <asn:1>*from got struct lov_user_md_v1
> warning: incorrect type in argument 1 (different address spaces)
> expected void const [noderef] <asn:1>*from got const char
> 
> After this patch, there are no more sparse warnings for this file.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/dir.c | 71 ++++++++++++++++---------------
>  1 file changed, 36 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
> index cc6f0f5..da91226 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  	struct ll_sb_info *sbi = ll_i2sbi(inode);
>  	struct obd_ioctl_data *data;
>  	int rc = 0;
> +	int __user *argi = (int __user *)arg;
> +	void __user *argv = (void __user *)arg;
> +	char __user *argc = (char __user *)arg;

I don't think you need three different variables.  A void * should be good 
everywhere?  argv is also sort of a strange name.  Maybe buf?

julia

>  
>  	CDEBUG(D_VFSTRACE, "VFS Op:inode=%lu/%u(%p), cmd=%#x\n",
>  	       inode->i_ino, inode->i_generation, inode, cmd);
> @@ -1259,7 +1262,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		return ll_iocontrol(inode, file, cmd, arg);
>  	case FSFILT_IOC_GETVERSION_OLD:
>  	case FSFILT_IOC_GETVERSION:
> -		return put_user(inode->i_generation, (int *)arg);
> +		return put_user(inode->i_generation, argi);
>  	/* We need to special case any other ioctls we want to handle,
>  	 * to send them to the MDS/OST as appropriate and to properly
>  	 * network encode the arg field.
> @@ -1273,7 +1276,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		if (mdtidx < 0)
>  			return mdtidx;
>  
> -		if (put_user((int)mdtidx, (int *)arg))
> +		if (put_user((int)mdtidx, argi))
>  			return -EFAULT;
>  
>  		return 0;
> @@ -1370,8 +1373,8 @@ lmv_out_free:
>  	case LL_IOC_LOV_SETSTRIPE: {
>  		struct lov_user_md_v3 lumv3;
>  		struct lov_user_md_v1 *lumv1 = (struct lov_user_md_v1 *)&lumv3;
> -		struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
> -		struct lov_user_md_v3 *lumv3p = (struct lov_user_md_v3 *)arg;
> +		struct lov_user_md_v1 __user *lumv1p = argv;
> +		struct lov_user_md_v3 __user *lumv3p = argv;
>  
>  		int set_default = 0;
>  
> @@ -1396,7 +1399,7 @@ lmv_out_free:
>  		return rc;
>  	}
>  	case LL_IOC_LMV_GETSTRIPE: {
> -		struct lmv_user_md *lump = (struct lmv_user_md *)arg;
> +		struct lmv_user_md __user *lump = argv;
>  		struct lmv_user_md lum;
>  		struct lmv_user_md *tmp;
>  		int lum_size;
> @@ -1429,7 +1432,7 @@ lmv_out_free:
>  		tmp->lum_objects[0].lum_mds = mdtindex;
>  		memcpy(&tmp->lum_objects[0].lum_fid, ll_inode2fid(inode),
>  		       sizeof(struct lu_fid));
> -		if (copy_to_user((void *)arg, tmp, lum_size)) {
> +		if (copy_to_user(argv, tmp, lum_size)) {
>  			rc = -EFAULT;
>  			goto free_lmv;
>  		}
> @@ -1446,7 +1449,7 @@ free_lmv:
>  	case IOC_MDC_GETFILEINFO:
>  	case IOC_MDC_GETFILESTRIPE: {
>  		struct ptlrpc_request *request = NULL;
> -		struct lov_user_md *lump;
> +		struct lov_user_md __user *lump;
>  		struct lov_mds_md *lmm = NULL;
>  		struct mdt_body *body;
>  		char *filename = NULL;
> @@ -1454,7 +1457,7 @@ free_lmv:
>  
>  		if (cmd == IOC_MDC_GETFILEINFO ||
>  		    cmd == IOC_MDC_GETFILESTRIPE) {
> -			filename = ll_getname((const char *)arg);
> +			filename = ll_getname((const char __user *)arg);
>  			if (IS_ERR(filename))
>  				return PTR_ERR(filename);
>  
> @@ -1483,11 +1486,11 @@ free_lmv:
>  
>  		if (cmd == IOC_MDC_GETFILESTRIPE ||
>  		    cmd == LL_IOC_LOV_GETSTRIPE) {
> -			lump = (struct lov_user_md *)arg;
> +			lump = argv;
>  		} else {
> -			struct lov_user_mds_data *lmdp;
> +			struct lov_user_mds_data __user *lmdp;
>  
> -			lmdp = (struct lov_user_mds_data *)arg;
> +			lmdp = argv;
>  			lump = &lmdp->lmd_lmm;
>  		}
>  		if (copy_to_user(lump, lmm, lmmsize)) {
> @@ -1499,7 +1502,7 @@ free_lmv:
>  		}
>  skip_lmm:
>  		if (cmd == IOC_MDC_GETFILEINFO || cmd == LL_IOC_MDC_GETINFO) {
> -			struct lov_user_mds_data *lmdp;
> +			struct lov_user_mds_data __user *lmdp;
>  			lstat_t st = { 0 };
>  
>  			st.st_dev     = inode->i_sb->s_dev;
> @@ -1516,7 +1519,7 @@ skip_lmm:
>  			st.st_ctime   = body->ctime;
>  			st.st_ino     = inode->i_ino;
>  
> -			lmdp = (struct lov_user_mds_data *)arg;
> +			lmdp = argv;
>  			if (copy_to_user(&lmdp->lmd_st, &st, sizeof(st))) {
>  				rc = -EFAULT;
>  				goto out_req;
> @@ -1530,14 +1533,14 @@ out_req:
>  		return rc;
>  	}
>  	case IOC_LOV_GETINFO: {
> -		struct lov_user_mds_data *lumd;
> +		struct lov_user_mds_data __user *lumd;
>  		struct lov_stripe_md *lsm;
> -		struct lov_user_md *lum;
> +		struct lov_user_md __user *lum;
>  		struct lov_mds_md *lmm;
>  		int lmmsize;
>  		lstat_t st;
>  
> -		lumd = (struct lov_user_mds_data *)arg;
> +		lumd = argv;
>  		lum = &lumd->lmd_lmm;
>  
>  		rc = ll_get_max_mdsize(sbi, &lmmsize);
> @@ -1643,8 +1646,7 @@ free_lmm:
>  				   NULL);
>  		if (rc) {
>  			CDEBUG(D_QUOTA, "mdc ioctl %d failed: %d\n", cmd, rc);
> -			if (copy_to_user((void *)arg, check,
> -					     sizeof(*check)))
> +			if (copy_to_user(argv, check, sizeof(*check)))
>  				CDEBUG(D_QUOTA, "copy_to_user failed\n");
>  			goto out_poll;
>  		}
> @@ -1653,8 +1655,7 @@ free_lmm:
>  				   NULL);
>  		if (rc) {
>  			CDEBUG(D_QUOTA, "osc ioctl %d failed: %d\n", cmd, rc);
> -			if (copy_to_user((void *)arg, check,
> -					     sizeof(*check)))
> +			if (copy_to_user(argv, check, sizeof(*check)))
>  				CDEBUG(D_QUOTA, "copy_to_user failed\n");
>  			goto out_poll;
>  		}
> @@ -1669,14 +1670,14 @@ out_poll:
>  		if (!qctl)
>  			return -ENOMEM;
>  
> -		if (copy_from_user(qctl, (void *)arg, sizeof(*qctl))) {
> +		if (copy_from_user(qctl, argv, sizeof(*qctl))) {
>  			rc = -EFAULT;
>  			goto out_quotactl;
>  		}
>  
>  		rc = quotactl_ioctl(sbi, qctl);
>  
> -		if (rc == 0 && copy_to_user((void *)arg, qctl, sizeof(*qctl)))
> +		if (rc == 0 && copy_to_user(argv, qctl, sizeof(*qctl)))
>  			rc = -EFAULT;
>  
>  out_quotactl:
> @@ -1706,7 +1707,7 @@ out_quotactl:
>  		int count, vallen;
>  		struct obd_export *exp;
>  
> -		if (copy_from_user(&count, (int *)arg, sizeof(int)))
> +		if (copy_from_user(&count, argi, sizeof(int)))
>  			return -EFAULT;
>  
>  		/* get ost count when count is zero, get mdt count otherwise */
> @@ -1719,13 +1720,13 @@ out_quotactl:
>  			return rc;
>  		}
>  
> -		if (copy_to_user((int *)arg, &count, sizeof(int)))
> +		if (copy_to_user(argi, &count, sizeof(int)))
>  			return -EFAULT;
>  
>  		return 0;
>  	}
>  	case LL_IOC_PATH2FID:
> -		if (copy_to_user((void *)arg, ll_inode2fid(inode),
> +		if (copy_to_user(argv, ll_inode2fid(inode),
>  				     sizeof(struct lu_fid)))
>  			return -EFAULT;
>  		return 0;
> @@ -1737,16 +1738,16 @@ out_quotactl:
>  		if (!capable(CFS_CAP_SYS_ADMIN))
>  			return -EPERM;
>  
> -		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
> +		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, argv,
>  				    sizeof(struct ioc_changelog));
>  		return rc;
>  	case OBD_IOC_FID2PATH:
> -		return ll_fid2path(inode, (void *)arg);
> +		return ll_fid2path(inode, argv);
>  	case LL_IOC_HSM_REQUEST: {
>  		struct hsm_user_request	*hur;
>  		ssize_t			 totalsize;
>  
> -		hur = memdup_user((void *)arg, sizeof(*hur));
> +		hur = memdup_user(argv, sizeof(*hur));
>  		if (IS_ERR(hur))
>  			return PTR_ERR(hur);
>  
> @@ -1765,7 +1766,7 @@ out_quotactl:
>  			return -ENOMEM;
>  
>  		/* Copy the whole struct */
> -		if (copy_from_user(hur, (void *)arg, totalsize)) {
> +		if (copy_from_user(hur, argv, totalsize)) {
>  			kvfree(hur);
>  			return -EFAULT;
>  		}
> @@ -1801,7 +1802,7 @@ out_quotactl:
>  		struct hsm_progress_kernel	hpk;
>  		struct hsm_progress		hp;
>  
> -		if (copy_from_user(&hp, (void *)arg, sizeof(hp)))
> +		if (copy_from_user(&hp, argv, sizeof(hp)))
>  			return -EFAULT;
>  
>  		hpk.hpk_fid = hp.hp_fid;
> @@ -1818,7 +1819,7 @@ out_quotactl:
>  		return rc;
>  	}
>  	case LL_IOC_HSM_CT_START:
> -		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
> +		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, argv,
>  				    sizeof(struct lustre_kernelcomm));
>  		return rc;
>  
> @@ -1826,12 +1827,12 @@ out_quotactl:
>  		struct hsm_copy	*copy;
>  		int		 rc;
>  
> -		copy = memdup_user((char *)arg, sizeof(*copy));
> +		copy = memdup_user(argc, sizeof(*copy));
>  		if (IS_ERR(copy))
>  			return PTR_ERR(copy);
>  
>  		rc = ll_ioc_copy_start(inode->i_sb, copy);
> -		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
> +		if (copy_to_user(argc, copy, sizeof(*copy)))
>  			rc = -EFAULT;
>  
>  		kfree(copy);
> @@ -1841,12 +1842,12 @@ out_quotactl:
>  		struct hsm_copy	*copy;
>  		int		 rc;
>  
> -		copy = memdup_user((char *)arg, sizeof(*copy));
> +		copy = memdup_user(argc, sizeof(*copy));
>  		if (IS_ERR(copy))
>  			return PTR_ERR(copy);
>  
>  		rc = ll_ioc_copy_end(inode->i_sb, copy);
> -		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
> +		if (copy_to_user(argc, copy, sizeof(*copy)))
>  			rc = -EFAULT;
>  
>  		kfree(copy);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151030220302.GA3803%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

