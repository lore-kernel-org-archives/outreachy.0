X-GM-THRID: 2273030701056
X-Received: by 10.194.178.234 with SMTP id db10mr594338wjc.2.1424587664094;
        Sat, 21 Feb 2015 22:47:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.70 with SMTP id c6ls353841wie.1.canary; Sat, 21 Feb
 2015 22:47:43 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr557320wid.1.1424587663770;
        Sat, 21 Feb 2015 22:47:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si619619wia.0.2015.02.21.22.47.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 22:47:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,623,1418079600"; 
   d="scan'208";a="100892367"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 07:47:43 +0100
Date: Sun, 22 Feb 2015 07:47:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gulsah Kose <gulsah.1004@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: lustre: lnet: klnds:
 o2iblnd: Deleted unnecessary brackets.
In-Reply-To: <9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004@gmail.com>
Message-ID: <alpine.DEB.2.02.1502220744080.2047@localhost6.localdomain6>
References: <cover.1424574336.git.gulsah.1004@gmail.com> <9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You don't have to put the whole path for the subject line.  The subject 
line should be read quickly.  staging: lustre: is fine.

Use the imperative in your subject line and commit message, as described 
in http://kernelnewbies.org/PatchPhilosophy.  Here you could say "Delete 
unnecessary braces".  And then in the commit message: "Remove braces 
around a single statement.  This problem was found by checkpatch."

julia

On Sun, 22 Feb 2015, Gulsah Kose wrote:

> Brackets were removed from the expression that containing single
> statement. Removed following checkpatch.pl warnings:
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> index 3d1ecf2..0592b57 100644
> --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> @@ -2740,9 +2740,8 @@ kiblnd_base_shutdown(void)
>  	case IBLND_INIT_ALL:
>  	case IBLND_INIT_DATA:
>  		LASSERT(kiblnd_data.kib_peers != NULL);
> -		for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++) {
> +		for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++)
>  			LASSERT(list_empty(&kiblnd_data.kib_peers[i]));
> -		}
>  		LASSERT(list_empty(&kiblnd_data.kib_connd_zombies));
>  		LASSERT(list_empty(&kiblnd_data.kib_connd_conns));
>  
> @@ -2884,9 +2883,8 @@ kiblnd_base_startup(void)
>  	LIBCFS_ALLOC(kiblnd_data.kib_peers,
>  		     sizeof(struct list_head) *
>  			    kiblnd_data.kib_peer_hash_size);
> -	if (kiblnd_data.kib_peers == NULL) {
> +	if (kiblnd_data.kib_peers == NULL)
>  		goto failed;
> -	}
>  	for (i = 0; i < kiblnd_data.kib_peer_hash_size; i++)
>  		INIT_LIST_HEAD(&kiblnd_data.kib_peers[i]);
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

