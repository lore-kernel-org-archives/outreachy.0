X-GM-THRID: 6526261510442844160
X-Received: by 10.25.141.7 with SMTP id p7mr448412lfd.29.1519547443000;
        Sun, 25 Feb 2018 00:30:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.221.210 with SMTP id w79ls1054553lfi.12.gmail; Sun, 25 Feb
 2018 00:30:41 -0800 (PST)
X-Google-Smtp-Source: AG47ELtufo7hK50pw1l5VyT2f+dZO55j3h9RjPryuUqP9RhOu0izsj7SP0LYcw/MEHxcFbMKKe0F
X-Received: by 10.25.242.3 with SMTP id q3mr80875lfh.7.1519547441661;
        Sun, 25 Feb 2018 00:30:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519547441; cv=none;
        d=google.com; s=arc-20160816;
        b=RqTKEbCPm0pzm8R0JcdJ3ZkfLHTKwPcB7l0kyprGheAU2CqjQMsD01s7B2JVZKJf4a
         KLIdZkyTbgeNjhjrHvf+dupDquEoy0NVvUx8VKJE2EJFvAXexaGk6w0rvGvtplY2+tKx
         gobQapfMVU071cj3tE9YiBOw6/O4QOG4woOFl6oD8QCyrvdr5ZlfjYOloneiO/EoDLnp
         8YMf5kBbU2knejjSMmW/CtzcBpYHHtwky4mjKS7Z8bFNFqcmk6VfAH/IIr+SAmDbtKmH
         Xyq2IlSeo4sR44Gz3h8Y48sYkcLSqo+DDU2FKfVbhq2luiTPjYmcADuu+0D/hFi3osEm
         xl1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ugywkl5ZNyxMV2BX6QfjTdcW1CEZordyRJ6bHsgy+QA=;
        b=WhZGleLI6934ovJSGdocAx6SMk5yjFhb/5m5sWajMBURF1TZI4avDWBYf8jH8VzYvq
         KF27PVy5yd+ItBtw7Hijwz5AsdDWxxUamF/nYsqgQEY8ZzkJpGQJGATOFcBgOJd17MG3
         LQEsRUHQQbgG/e91d8o0pGdSZBo4rxa4r6VJJ5kRnOhLQsBBonpo1zSfWOxu0djWGr01
         XZDnirNbZmVEs2k7A6VPJeFKMi+z2Zu78uZAUVZQJ24oDSqI4FS6g8ZtD/qNaJfIh9U1
         dcrOvmHTftnrel80b2D4EOFZpdcKvoi/ZmxI99zbllVz/Ie50fKrUl5E1rAYh80GnHXg
         94pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h24si306507ljc.0.2018.02.25.00.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 00:30:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,392,1515452400"; 
   d="scan'208";a="315179193"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2018 09:30:40 +0100
Date: Sun, 25 Feb 2018 09:30:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: remove else after
 return statement
In-Reply-To: <1519513659-12304-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802250929320.2531@hadrien>
References: <1519513659-12304-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Santha Meena Ramamoorthy wrote:

> Remove else after a return statement as it is not useful. Issue found
> using checkpatch.

I have the impression that the else branch is there to be parallel to the
then branch, and then the return is pushed into the branch because an else
branch with just a comment would look silly.

But Greg or the maintainers can decide is the patch should be taken.

julia


>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 9e96a8e..93707e5 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -1193,13 +1193,12 @@ static int ll_update_lsm_md(struct inode *inode, struct lustre_md *md)
>  			lmv_free_memmd(lli->lli_lsm_md);
>  			lli->lli_lsm_md = NULL;
>  			return 0;
> -		} else {
> -			/*
> -			 * The lustre_md from req does not include stripeEA,
> -			 * see ll_md_setattr
> -			 */
> -			return 0;
>  		}
> +		/*
> +		 * The lustre_md from req does not include stripeEA,
> +		 * see ll_md_setattr
> +		 */
> +		return 0;
>  	}
>
>  	/* set the directory layout */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519513659-12304-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

