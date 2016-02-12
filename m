X-GM-THRID: 6250348913456316416
X-Received: by 10.13.232.195 with SMTP id r186mr711572ywe.30.1455274466405;
        Fri, 12 Feb 2016 02:54:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.4 with SMTP id f4ls798375iof.72.gmail; Fri, 12 Feb 2016
 02:54:26 -0800 (PST)
X-Received: by 10.50.80.18 with SMTP id n18mr1719421igx.1.1455274466045;
        Fri, 12 Feb 2016 02:54:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id iq8si138648igb.0.2016.02.12.02.54.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:54:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,435,1449529200"; 
   d="scan'208";a="164458826"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Feb 2016 11:54:23 +0100
Date: Fri, 12 Feb 2016 11:54:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: llite: Remove NULL
 check before kfree
In-Reply-To: <1455272748-14400-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602121150300.2055@localhost6.localdomain6>
References: <1455272748-14400-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 12 Feb 2016, Bhumika Goyal wrote:

> NULL check before kfree is unnecessary so remove it.
> Semantic patch used:
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }

Normally, the braces in this rule should not be useful, because the kernel 
coding style is that a single statement in an if branch should not be 
enclosed in braces, at least unless another branch is present and that one 
requires braces.  But here there is no other branch.

However, as you see in your example, when you put a single statement with 
braces, Coccinelle will also consider the case where the braces are not 
there, via an isomoprhism.

> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = NULL; }
> + kfree(E);
> + E = NULL;
> // </smpl>
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/xattr.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
> index 8eb43f1..310e381 100644
> --- a/drivers/staging/lustre/lustre/llite/xattr.c
> +++ b/drivers/staging/lustre/lustre/llite/xattr.c
> @@ -192,11 +192,7 @@ int ll_setxattr_common(struct inode *inode, const char *name,
>  			 valid, name, pv, size, 0, flags,
>  			 ll_i2suppgid(inode), &req);
>  #ifdef CONFIG_FS_POSIX_ACL
> -	if (new_value != NULL)
> -		/*
> -		 * Release the posix ACL space.
> -		 */
> -		kfree(new_value);
> +	kfree(new_value);

I'm not sure that it's a good idea to remove the comment.  Coccinelle has 
a strategy for removing comments, but it is just a heuristic.  There is no 
guarantee that it makes the right decision in all cases.

Concretely, the comment is removed because you remoce both the if header 
and the kfree.  Coccinelle doesn't realize that you added the kfree back.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455272748-14400-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

