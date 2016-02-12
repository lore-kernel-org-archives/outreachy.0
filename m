X-GM-THRID: 6250348913456316416
X-Received: by 10.112.169.5 with SMTP id aa5mr291251lbc.12.1455288223673;
        Fri, 12 Feb 2016 06:43:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.195 with SMTP id m186ls131076wmb.27.gmail; Fri, 12 Feb
 2016 06:43:42 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr292663wjc.6.1455288222936;
        Fri, 12 Feb 2016 06:43:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w197si108391wmw.3.2016.02.12.06.43.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:43:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,436,1449529200"; 
   d="scan'208";a="164489484"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 15:43:18 +0100
Date: Fri, 12 Feb 2016 15:43:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: llite: Remove
 NULL check before kfree
In-Reply-To: <1455287874-18123-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602121542530.2510@hadrien>
References: <1455272748-14400-1-git-send-email-bhumirks@gmail.com> <1455287874-18123-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 12 Feb 2016, Bhumika Goyal wrote:

> NULL check before kfree is unnecessary so remove it.
> Semantic patch used:
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = NULL; }
> + kfree(E);
> + E = NULL;
> // </smpl>
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
> Changes since v1:
> *Add the comment before kfree back.
> ---

The --- below your comemnt is not necessary.

julia

>  drivers/staging/lustre/lustre/llite/xattr.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
> index 8eb43f1..fa477e7 100644
> --- a/drivers/staging/lustre/lustre/llite/xattr.c
> +++ b/drivers/staging/lustre/lustre/llite/xattr.c
> @@ -192,11 +192,10 @@ int ll_setxattr_common(struct inode *inode, const char *name,
>  			 valid, name, pv, size, 0, flags,
>  			 ll_i2suppgid(inode), &req);
>  #ifdef CONFIG_FS_POSIX_ACL
> -	if (new_value != NULL)
> -		/*
> -		 * Release the posix ACL space.
> -		 */
> -		kfree(new_value);
> +	/*
> +	 * Release the posix ACL space.
> +	 */
> +	kfree(new_value);
>  	if (acl != NULL)
>  		lustre_ext_acl_xattr_free(acl);
>  #endif
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455287874-18123-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

