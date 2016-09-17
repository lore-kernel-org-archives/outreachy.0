X-GM-THRID: 6331355639575478272
X-Received: by 10.46.69.213 with SMTP id s204mr300509lja.18.1474140282206;
        Sat, 17 Sep 2016 12:24:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.203.14 with SMTP id b14ls1244909wmg.18.gmail; Sat, 17 Sep
 2016 12:24:41 -0700 (PDT)
X-Received: by 10.194.74.131 with SMTP id t3mr305465wjv.21.1474140281713;
        Sat, 17 Sep 2016 12:24:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si129974wmb.1.2016.09.17.12.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 12:24:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,352,1470693600"; 
   d="scan'208";a="237222842"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 21:24:40 +0200
Date: Sat, 17 Sep 2016 21:24:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: namei: Remove
 exceptional & on function name
In-Reply-To: <a3cc0b4ea1581aa6c4e6de29128d668b7fc55af3.1474093197.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1609172121320.3124@hadrien>
References: <cover.1474093197.git.bankarsandhya512@gmail.com> <a3cc0b4ea1581aa6c4e6de29128d668b7fc55af3.1474093197.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Sep 2016, Sandhya Bankar wrote:

> The function names is itself used as pointers without &.

The message is not very grammatical.  "names" is plural, but "is" is
singular.  And "used as pointers" should I guess be "used as a pointer".
Overall, you could try "A function name is already a pointer, and does not
need &".

> This changes made by below coccinelle script:

This change is made by the following coccinelle script

> // <smpl>
> @r@
> identifier f;
> @@
>
> f(...) { ... }
> @@
> identifier r.f;
> @@
>
> - &f
> + f

Actually, I would tend to put a blank line between rules, but if it is
useful to save vertical space, I would drop the blank line after the
second @@ in each rule.

julia

> // </smpl>
>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/namei.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
> index b7d448f..aa10e7c 100755
> --- a/drivers/staging/lustre/lustre/llite/namei.c
> +++ b/drivers/staging/lustre/lustre/llite/namei.c
> @@ -551,7 +551,7 @@ static struct dentry *ll_lookup_it(struct inode *parent, struct dentry *dentry,
>  		it->it_create_mode &= ~current_umask();
>
>  	rc = md_intent_lock(ll_i2mdexp(parent), op_data, it, &req,
> -			    &ll_md_blocking_ast, 0);
> +			    ll_md_blocking_ast, 0);
>  	ll_finish_md_op_data(op_data);
>  	if (rc < 0) {
>  		retval = ERR_PTR(rc);
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a3cc0b4ea1581aa6c4e6de29128d668b7fc55af3.1474093197.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

