X-GM-THRID: 6211472827821850624
X-Received: by 10.28.173.83 with SMTP id w80mr873909wme.0.1446221359257;
        Fri, 30 Oct 2015 09:09:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.198 with SMTP id 189ls166288wms.11.gmail; Fri, 30 Oct
 2015 09:09:18 -0700 (PDT)
X-Received: by 10.28.55.209 with SMTP id e200mr652531wma.1.1446221358741;
        Fri, 30 Oct 2015 09:09:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l1si109098wmb.1.2015.10.30.09.09.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 09:09:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,219,1444687200"; 
   d="scan'208";a="185240723"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 17:09:18 +0100
Date: Fri, 30 Oct 2015 17:09:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Add __iomem
 annotations
In-Reply-To: <20151030160650.GA13665@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1510301709020.2364@hadrien>
References: <20151030160650.GA13665@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 30 Oct 2015, Amitoj Kaur Chawla wrote:

> This patch fixes following sparse warnings by adding __iomem
> annotations:

It looks like it is __user annotations?

julia

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
>  drivers/staging/lustre/lustre/llite/file.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
> index 51b6bc5..112da6f 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -2245,7 +2245,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		struct file *file2;
>  		struct lustre_swap_layouts lsl;
>
> -		if (copy_from_user(&lsl, (char *)arg,
> +		if (copy_from_user(&lsl, (char __user *)arg,
>  				       sizeof(struct lustre_swap_layouts)))
>  			return -EFAULT;
>
> @@ -2292,7 +2292,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  	case LL_IOC_FLUSHCTX:
>  		return ll_flush_ctx(inode);
>  	case LL_IOC_PATH2FID: {
> -		if (copy_to_user((void *)arg, ll_inode2fid(inode),
> +		if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
>  				 sizeof(struct lu_fid)))
>  			return -EFAULT;
>
> @@ -2304,13 +2304,13 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		struct ioc_data_version	idv;
>  		int			rc;
>
> -		if (copy_from_user(&idv, (char *)arg, sizeof(idv)))
> +		if (copy_from_user(&idv, (char __user *)arg, sizeof(idv)))
>  			return -EFAULT;
>
>  		rc = ll_data_version(inode, &idv.idv_version,
>  				!(idv.idv_flags & LL_DV_NOFLUSH));
>
> -		if (rc == 0 && copy_to_user((char *) arg, &idv, sizeof(idv)))
> +		if (rc == 0 && copy_to_user((char __user *) arg, &idv, sizeof(idv)))
>  			return -EFAULT;
>
>  		return rc;
> @@ -2323,7 +2323,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		if (mdtidx < 0)
>  			return mdtidx;
>
> -		if (put_user((int)mdtidx, (int *)arg))
> +		if (put_user((int)mdtidx, (int __user *)arg))
>  			return -EFAULT;
>
>  		return 0;
> @@ -2350,7 +2350,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
>  				   op_data, NULL);
>
> -		if (copy_to_user((void *)arg, hus, sizeof(*hus)))
> +		if (copy_to_user((void __user *)arg, hus, sizeof(*hus)))
>  			rc = -EFAULT;
>
>  		ll_finish_md_op_data(op_data);
> @@ -2361,7 +2361,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		struct hsm_state_set	*hss;
>  		int			 rc;
>
> -		hss = memdup_user((char *)arg, sizeof(*hss));
> +		hss = memdup_user((char __user *)arg, sizeof(*hss));
>  		if (IS_ERR(hss))
>  			return PTR_ERR(hss);
>
> @@ -2389,7 +2389,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
>  				   op_data, NULL);
>
> -		if (copy_to_user((char *)arg, hca, sizeof(*hca)))
> +		if (copy_to_user((char __user *)arg, hca, sizeof(*hca)))
>  			rc = -EFAULT;
>
>  		ll_finish_md_op_data(op_data);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151030160650.GA13665%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

