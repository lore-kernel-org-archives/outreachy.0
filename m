X-GM-THRID: 6250792352904904704
X-Received: by 10.112.157.164 with SMTP id wn4mr959426lbb.5.1455389779196;
        Sat, 13 Feb 2016 10:56:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.180.70 with SMTP id d67ls313386wmf.9.canary; Sat, 13 Feb
 2016 10:56:18 -0800 (PST)
X-Received: by 10.28.226.132 with SMTP id z126mr363989wmg.2.1455389778609;
        Sat, 13 Feb 2016 10:56:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si259223wme.0.2016.02.13.10.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 10:56:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,441,1449529200"; 
   d="scan'208";a="164599126"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2016 19:56:17 +0100
Date: Sat, 13 Feb 2016 19:56:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Use
 IS_ERR_OR_NULL
In-Reply-To: <20160213150641.GA26097@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1602131956050.2068@localhost6.localdomain6>
References: <20160213150641.GA26097@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Amitoj Kaur Chawla wrote:

> Use macro IS_ERR_OR_NULL in place of tests for NULL and IS_ERR.
> 
> The Coccinelle semantic patch used to make the change is as follows:
> 
> //<smpl>
> @@
> expression e;
> @@
> 
> - e == NULL || IS_ERR(e)
> + IS_ERR_OR_NULL(e)

Nice :)

julia

> //</smpl>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
> index 446e4b8..5a32f9f 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
>  	md_free_lustre_md(sbi->ll_md_exp, &lmd);
>  	ptlrpc_req_finished(request);
>  
> -	if (root == NULL || IS_ERR(root)) {
> +	if (IS_ERR_OR_NULL(root)) {
>  		if (lmd.lsm)
>  			obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
>  #ifdef CONFIG_FS_POSIX_ACL
> @@ -1965,7 +1965,7 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
>  		*inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
>  					     sbi->ll_flags & LL_SBI_32BIT_API),
>  				 &md);
> -		if (*inode == NULL || IS_ERR(*inode)) {
> +		if (IS_ERR_OR_NULL(*inode)) {
>  #ifdef CONFIG_FS_POSIX_ACL
>  			if (md.posix_acl) {
>  				posix_acl_release(md.posix_acl);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160213150641.GA26097%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 

