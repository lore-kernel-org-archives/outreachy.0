X-GM-THRID: 4958820761600
X-Received: by 10.112.219.102 with SMTP id pn6mr2383781lbc.12.1425079996079;
        Fri, 27 Feb 2015 15:33:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.221.41 with SMTP id qb9ls213487wic.16.canary; Fri, 27 Feb
 2015 15:33:14 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr2410419wjb.1.1425079994790;
        Fri, 27 Feb 2015 15:33:14 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si208874wib.3.2015.02.27.15.33.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 15:33:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,663,1418079600"; 
   d="scan'208";a="101597085"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 00:33:14 +0100
Date: Sat, 28 Feb 2015 00:33:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Adding spaces around
 '='
In-Reply-To: <1425078899-3052-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502280032560.2764@hadrien>
References: <1425078899-3052-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 28 Feb 2015, Dilek Uzulmez wrote:

> Fix checkpatch.pl error:
> ERROR: spaces required around that ':' (ctx:VxW)
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/console.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
> index 1e0afc2..44dc237 100644
> --- a/drivers/staging/lustre/lnet/selftest/console.c
> +++ b/drivers/staging/lustre/lnet/selftest/console.c
> @@ -527,7 +527,7 @@ lstcon_group_add(char *name)
>  	lstcon_group_t *grp;
>  	int	     rc;
>
> -	rc = (lstcon_group_find(name, &grp) == 0)? -EEXIST: 0;
> +	rc = (lstcon_group_find(name, &grp) == 0)? -EEXIST : 0;

There should be a space before ? too.

julia

>  	if (rc != 0) {
>  		/* find a group with same name */
>  		lstcon_group_put(grp);
> @@ -816,7 +816,7 @@ lstcon_group_info(char *name, lstcon_ndlist_ent_t *gents_p,
>  		LST_NODE_STATE_COUNTER(ndl->ndl_node, gentp);
>
>  	rc = copy_to_user(gents_p, gentp,
> -			      sizeof(lstcon_ndlist_ent_t)) ? -EFAULT: 0;
> +			      sizeof(lstcon_ndlist_ent_t)) ? -EFAULT : 0;
>
>  	LIBCFS_FREE(gentp, sizeof(lstcon_ndlist_ent_t));
>
> @@ -847,7 +847,7 @@ lstcon_batch_add(char *name)
>  	int	       i;
>  	int	       rc;
>
> -	rc = (lstcon_batch_find(name, &bat) == 0)? -EEXIST: 0;
> +	rc = (lstcon_batch_find(name, &bat) == 0)? -EEXIST : 0;
>  	if (rc != 0) {
>  		CDEBUG(D_NET, "Batch %s already exists\n", name);
>  		return rc;
> @@ -911,7 +911,7 @@ lstcon_batch_list(int index, int len, char *name_up)
>  	list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
>  		if (index-- == 0) {
>  			return copy_to_user(name_up, bat->bat_name, len) ?
> -			       -EFAULT: 0;
> +			       -EFAULT : 0;
>  		}
>  	}
>
> @@ -956,7 +956,7 @@ lstcon_batch_info(char *name, lstcon_test_batch_ent_t *ent_up, int server,
>  				  &test->tes_dst_grp->grp_ndl_list;
>
>  	if (dents_up != NULL) {
> -		rc = lstcon_nodes_getent((server ? srvlst: clilst),
> +		rc = lstcon_nodes_getent((server ? srvlst : clilst),
>  					 index_p, ndent_p, dents_up);
>  		return rc;
>  	}
> @@ -1683,7 +1683,7 @@ int
>  lstcon_session_match(lst_sid_t sid)
>  {
>  	return (console_session.ses_id.ses_nid   == sid.ses_nid &&
> -		console_session.ses_id.ses_stamp == sid.ses_stamp) ?  1: 0;
> +		console_session.ses_id.ses_stamp == sid.ses_stamp) ?  1 : 0;
>  }
>
>  static void
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425078899-3052-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

