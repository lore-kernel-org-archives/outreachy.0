X-GM-THRID: 4468779253760
X-Received: by 10.180.39.164 with SMTP id q4mr585941wik.5.1425052853268;
        Fri, 27 Feb 2015 08:00:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.231 with SMTP id bb7ls193693lab.50.gmail; Fri, 27 Feb
 2015 08:00:52 -0800 (PST)
X-Received: by 10.112.161.9 with SMTP id xo9mr2208290lbb.7.1425052852617;
        Fri, 27 Feb 2015 08:00:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si144389wif.0.2015.02.27.08.00.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 08:00:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="123693135"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 17:00:42 +0100
Date: Fri, 27 Feb 2015 17:00:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lustre: osc: Insert
 missing space before '='
In-Reply-To: <1425039336-14907-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271659570.2663@hadrien>
References: <1425039336-14907-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2097441417-1425052842=:2663"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2097441417-1425052842=:2663
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 27 Feb 2015, Hatice ERTÜRK wrote:

> Insert missing space before '=' to improve readability.
>
> This Error found with checkpatch.pl
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/lustre/lustre/osc/osc_lock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/osc/osc_lock.c b/drivers/staging/lustre/lustre/osc/osc_lock.c
> index 4456557..350ad49 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_lock.c
> +++ b/drivers/staging/lustre/lustre/osc/osc_lock.c
> @@ -1010,7 +1010,7 @@ static int osc_lock_enqueue_wait(const struct lu_env *env,
>  	struct cl_lock_descr    *descr   = &lock->cll_descr;
>  	struct cl_object_header *hdr     = cl_object_header(descr->cld_obj);
>  	struct cl_lock	  *scan;
> -	struct cl_lock	  *conflict= NULL;
> +	struct cl_lock	  *conflict = NULL;
>  	int lockless		     = osc_lock_is_lockless(olck);
>  	int rc			   = 0;

The = in this code are pretty randomly placed.  You could fix everything
at once.

julia

>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425039336-14907-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-2097441417-1425052842=:2663--

