X-GM-THRID: 6402003753150447616
X-Received: by 10.223.183.26 with SMTP id l26mr1175067wre.20.1490592649980;
        Sun, 26 Mar 2017 22:30:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.208 with SMTP id w199ls1164732wmd.4.canary-gmail; Sun,
 26 Mar 2017 22:30:49 -0700 (PDT)
X-Received: by 10.223.152.100 with SMTP id v91mr958844wrb.12.1490592649233;
        Sun, 26 Mar 2017 22:30:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si932482wmh.1.2017.03.26.22.30.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 22:30:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,229,1486422000"; 
   d="scan'208";a="266298011"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2017 07:30:45 +0200
Date: Mon, 27 Mar 2017 07:30:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: mawilcox@microsoft.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] kernel: pid: Change function
 return value to bool.
In-Reply-To: <58d87c7c.c240630a.d8622.c768@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703270729300.2488@hadrien>
References: <cover.1490581288.git.rvarsha016@gmail.com> <58d87c7c.c240630a.d8622.c768@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Mar 2017, Varsha Rao wrote:

> Remove unsign cast and add bool as return type for pid_before()
> function.

unsign -> unsigned.  But are you sure that the change is correct?  For
example -1 < 1 but (unsigned) -1 > (unsigned) 1.

julia

> As the function is called only once in condition for do
> while loop. This patch fixes the checkpatch issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v2:
> - Modified commit message.
> - Changed return type of pid_before() function.
>
>  kernel/pid.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/kernel/pid.c b/kernel/pid.c
> index 0b0aad4..c6f7b89 100644
> --- a/kernel/pid.c
> +++ b/kernel/pid.c
> @@ -117,7 +117,7 @@ static void free_pidmap(struct upid *upid)
>  /*
>   * If we started walking pids at 'base', is 'a' seen before 'b'?
>   */
> -static int pid_before(int base, int a, int b)
> +static bool pid_before(int base, int a, int b)
>  {
>  	/*
>  	 * This is the same as saying
> @@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
>  	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
>  	 * and that mapping orders 'a' and 'b' with respect to 'base'.
>  	 */
> -	return (unsigned)(a - base) < (unsigned)(b - base);
> +	return (a - base) < (b - base);
>  }
>
>  /*
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58d87c7c.c240630a.d8622.c768%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

