X-GM-THRID: 2273030701056
X-Received: by 10.180.182.44 with SMTP id eb12mr636247wic.4.1424603202258;
        Sun, 22 Feb 2015 03:06:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.39 with SMTP id cz7ls371541wib.36.gmail; Sun, 22 Feb
 2015 03:06:42 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr160644wiy.6.1424603201994;
        Sun, 22 Feb 2015 03:06:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ew5si468320wid.1.2015.02.22.03.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 03:06:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,624,1418079600"; 
   d="scan'208";a="122864735"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 12:06:41 +0100
Date: Sun, 22 Feb 2015 12:06:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gulsah Kose <gulsah.1004@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: lustre: lnet: klnds:
 o2iblnd: Deleted unnecessary brackets.
In-Reply-To: <9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221203280.2612@hadrien>
References: <cover.1424574336.git.gulsah.1004@gmail.com> <9a2b8d0ca35d5ac508ac9f7600ccb3e3a742cf13.1424574336.git.gulsah.1004@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Gulsah Kose wrote:

> Brackets were removed from the expression that containing single
> statement.

The terminology is not really correct here.  And expression is something
that returns a value.  Like 3 + 4.  Expressions don't normally contain
statements.  Here the point is just that there are braces around a single
statement.

julia

> Removed following checkpatch.pl warnings:
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

