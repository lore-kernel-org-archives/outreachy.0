X-GM-THRID: 7448435884032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bb1187e4a703feb6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.234 with SMTP id p70mr57014728yhd.56.1426414860887;
        Sun, 15 Mar 2015 03:21:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.98 with SMTP id rv2ls676231igb.34.gmail; Sun, 15 Mar
 2015 03:21:00 -0700 (PDT)
X-Received: by 10.50.26.40 with SMTP id i8mr60477774igg.8.1426414860659;
        Sun, 15 Mar 2015 03:21:00 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si1240242pac.2.2015.03.15.03.21.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:21:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2CEB58CF;
	Sun, 15 Mar 2015 10:20:58 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:20:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unneeded
 variable and replace its uses
Message-ID: <20150315102056.GA29660@kroah.com>
References: <20150310134242.GA9593@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150310134242.GA9593@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 10, 2015 at 07:12:42PM +0530, Vatika Harlalka wrote:
> Variable dotdot is only used as a function parameter and
> can be replaced there directly to improve code compactness.
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

Why did you delete this whole function call?  That does not seem to
match up with what you said this patch did.

I can't take this as-is, sorry.

greg k-h

