X-GM-THRID: 6211494140664872960
X-Received: by 10.112.144.105 with SMTP id sl9mr1977788lbb.3.1446227340971;
        Fri, 30 Oct 2015 10:49:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.97 with SMTP id j94ls253735lfi.99.gmail; Fri, 30 Oct
 2015 10:49:00 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr2015721lbc.7.1446227340282;
        Fri, 30 Oct 2015 10:49:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si120821wmb.1.2015.10.30.10.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 10:49:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,219,1444687200"; 
   d="scan'208";a="185255505"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 18:48:59 +0100
Date: Fri, 30 Oct 2015 18:48:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations
In-Reply-To: <20151030172932.GA27324@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1510301845500.2364@hadrien>
References: <20151030172932.GA27324@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 30 Oct 2015, Amitoj Kaur Chawla wrote:

> This patch fixes the following multiple sparse warnings by adding
> __user annotations:

It's puzzling what sparse complains about.  For example, there is this
code:

struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
...
if (copy_from_user(lumv1, lumv1p, sizeof(*lumv1)))
        return -EFAULT;

But you didn't change it, so I guess there was no complaint, even though
there is no __user annotation on lumv1p.

julia

>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got char *<noident>
>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got int *<noident>
>
> warning: incorrect type in argument 1 (different address spaces)
> expected void [noderef] <asn:1>*to got void *<noident>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/dir.c | 38 +++++++++++++++----------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
> index cc6f0f5..6a20e61 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -1259,7 +1259,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		return ll_iocontrol(inode, file, cmd, arg);
>  	case FSFILT_IOC_GETVERSION_OLD:
>  	case FSFILT_IOC_GETVERSION:
> -		return put_user(inode->i_generation, (int *)arg);
> +		return put_user(inode->i_generation, (int __user *)arg);
>  	/* We need to special case any other ioctls we want to handle,
>  	 * to send them to the MDS/OST as appropriate and to properly
>  	 * network encode the arg field.
> @@ -1273,7 +1273,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		if (mdtidx < 0)
>  			return mdtidx;
>
> -		if (put_user((int)mdtidx, (int *)arg))
> +		if (put_user((int)mdtidx, (int __user *)arg))
>  			return -EFAULT;
>
>  		return 0;
> @@ -1429,7 +1429,7 @@ lmv_out_free:
>  		tmp->lum_objects[0].lum_mds = mdtindex;
>  		memcpy(&tmp->lum_objects[0].lum_fid, ll_inode2fid(inode),
>  		       sizeof(struct lu_fid));
> -		if (copy_to_user((void *)arg, tmp, lum_size)) {
> +		if (copy_to_user((void __user *)arg, tmp, lum_size)) {
>  			rc = -EFAULT;
>  			goto free_lmv;
>  		}
> @@ -1643,7 +1643,7 @@ free_lmm:
>  				   NULL);
>  		if (rc) {
>  			CDEBUG(D_QUOTA, "mdc ioctl %d failed: %d\n", cmd, rc);
> -			if (copy_to_user((void *)arg, check,
> +			if (copy_to_user((void __user *)arg, check,
>  					     sizeof(*check)))
>  				CDEBUG(D_QUOTA, "copy_to_user failed\n");
>  			goto out_poll;
> @@ -1653,7 +1653,7 @@ free_lmm:
>  				   NULL);
>  		if (rc) {
>  			CDEBUG(D_QUOTA, "osc ioctl %d failed: %d\n", cmd, rc);
> -			if (copy_to_user((void *)arg, check,
> +			if (copy_to_user((void __user *)arg, check,
>  					     sizeof(*check)))
>  				CDEBUG(D_QUOTA, "copy_to_user failed\n");
>  			goto out_poll;
> @@ -1669,14 +1669,14 @@ out_poll:
>  		if (!qctl)
>  			return -ENOMEM;
>
> -		if (copy_from_user(qctl, (void *)arg, sizeof(*qctl))) {
> +		if (copy_from_user(qctl, (void __user *)arg, sizeof(*qctl))) {
>  			rc = -EFAULT;
>  			goto out_quotactl;
>  		}
>
>  		rc = quotactl_ioctl(sbi, qctl);
>
> -		if (rc == 0 && copy_to_user((void *)arg, qctl, sizeof(*qctl)))
> +		if (rc == 0 && copy_to_user((void __user *)arg, qctl, sizeof(*qctl)))
>  			rc = -EFAULT;
>
>  out_quotactl:
> @@ -1706,7 +1706,7 @@ out_quotactl:
>  		int count, vallen;
>  		struct obd_export *exp;
>
> -		if (copy_from_user(&count, (int *)arg, sizeof(int)))
> +		if (copy_from_user(&count, (int __user *)arg, sizeof(int)))
>  			return -EFAULT;
>
>  		/* get ost count when count is zero, get mdt count otherwise */
> @@ -1719,13 +1719,13 @@ out_quotactl:
>  			return rc;
>  		}
>
> -		if (copy_to_user((int *)arg, &count, sizeof(int)))
> +		if (copy_to_user((int __user *)arg, &count, sizeof(int)))
>  			return -EFAULT;
>
>  		return 0;
>  	}
>  	case LL_IOC_PATH2FID:
> -		if (copy_to_user((void *)arg, ll_inode2fid(inode),
> +		if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
>  				     sizeof(struct lu_fid)))
>  			return -EFAULT;
>  		return 0;
> @@ -1737,16 +1737,16 @@ out_quotactl:
>  		if (!capable(CFS_CAP_SYS_ADMIN))
>  			return -EPERM;
>
> -		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
> +		rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void __user *)arg,
>  				    sizeof(struct ioc_changelog));
>  		return rc;
>  	case OBD_IOC_FID2PATH:
> -		return ll_fid2path(inode, (void *)arg);
> +		return ll_fid2path(inode, (void __user *)arg);
>  	case LL_IOC_HSM_REQUEST: {
>  		struct hsm_user_request	*hur;
>  		ssize_t			 totalsize;
>
> -		hur = memdup_user((void *)arg, sizeof(*hur));
> +		hur = memdup_user((void __user *)arg, sizeof(*hur));
>  		if (IS_ERR(hur))
>  			return PTR_ERR(hur);
>
> @@ -1765,7 +1765,7 @@ out_quotactl:
>  			return -ENOMEM;
>
>  		/* Copy the whole struct */
> -		if (copy_from_user(hur, (void *)arg, totalsize)) {
> +		if (copy_from_user(hur, (void __user *)arg, totalsize)) {
>  			kvfree(hur);
>  			return -EFAULT;
>  		}
> @@ -1801,7 +1801,7 @@ out_quotactl:
>  		struct hsm_progress_kernel	hpk;
>  		struct hsm_progress		hp;
>
> -		if (copy_from_user(&hp, (void *)arg, sizeof(hp)))
> +		if (copy_from_user(&hp, (void __user *)arg, sizeof(hp)))
>  			return -EFAULT;
>
>  		hpk.hpk_fid = hp.hp_fid;
> @@ -1826,12 +1826,12 @@ out_quotactl:
>  		struct hsm_copy	*copy;
>  		int		 rc;
>
> -		copy = memdup_user((char *)arg, sizeof(*copy));
> +		copy = memdup_user((char __user *)arg, sizeof(*copy));
>  		if (IS_ERR(copy))
>  			return PTR_ERR(copy);
>
>  		rc = ll_ioc_copy_start(inode->i_sb, copy);
> -		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
> +		if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
>  			rc = -EFAULT;
>
>  		kfree(copy);
> @@ -1841,12 +1841,12 @@ out_quotactl:
>  		struct hsm_copy	*copy;
>  		int		 rc;
>
> -		copy = memdup_user((char *)arg, sizeof(*copy));
> +		copy = memdup_user((char __user *)arg, sizeof(*copy));
>  		if (IS_ERR(copy))
>  			return PTR_ERR(copy);
>
>  		rc = ll_ioc_copy_end(inode->i_sb, copy);
> -		if (copy_to_user((char *)arg, copy, sizeof(*copy)))
> +		if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151030172932.GA27324%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

