X-GM-THRID: 7448435884032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bb1187e4a703feb6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr4660684lbb.14.1425995269959;
        Tue, 10 Mar 2015 06:47:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.116 with SMTP id jv20ls27713lab.34.gmail; Tue, 10 Mar
 2015 06:47:48 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr3055043lbb.6.1425995268428;
        Tue, 10 Mar 2015 06:47:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si75187wib.3.2015.03.10.06.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 06:47:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,374,1422918000"; 
   d="scan'208";a="102767744"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Mar 2015 14:47:47 +0100
Date: Tue, 10 Mar 2015 14:47:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unneeded
 variable and replace its uses
In-Reply-To: <20150310134242.GA9593@akanksha>
Message-ID: <alpine.DEB.2.10.1503101447311.5257@hadrien>
References: <20150310134242.GA9593@akanksha>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 10 Mar 2015, Vatika Harlalka wrote:

> Variable dotdot is only used as a function parameter and
> can be replaced there directly to improve code compactness.

How did you find it?  (Just curious).

julia

>
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_nfs.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
> index 6a67e71..b8ced3d 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
> @@ -287,7 +287,6 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
>  	struct ll_sb_info     *sbi;
>  	struct dentry	 *result = NULL;
>  	struct mdt_body       *body;
> -	static const char	   dotdot[] = "..";
>  	struct md_op_data     *op_data;
>  	int		   rc;
>  	int		      lmmsize;
> @@ -303,8 +302,8 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
>  	if (rc != 0)
>  		return ERR_PTR(rc);
>
> -	op_data = ll_prep_md_op_data(NULL, dir, NULL, dotdot,
> -				     strlen(dotdot), lmmsize,
> +	op_data = ll_prep_md_op_data(NULL, dir, NULL, "..",
> +				     2, lmmsize,
>  				     LUSTRE_OPC_ANY, NULL);
>  	if (IS_ERR(op_data))
>  		return (void *)op_data;
> @@ -321,7 +320,7 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
>  	CDEBUG(D_INFO, "parent for "DFID" is "DFID"\n",
>  		PFID(ll_inode2fid(dir)), PFID(&body->fid1));
>
> -	result = ll_iget_for_nfs(dir->i_sb, &body->fid1, NULL);
> +
>
>  	ptlrpc_req_finished(req);
>  	return result;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150310134242.GA9593%40akanksha.
> For more options, visit https://groups.google.com/d/optout.
>

