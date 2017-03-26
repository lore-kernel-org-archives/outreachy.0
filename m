X-GM-THRID: 6401831328540524544
X-Received: by 10.25.202.9 with SMTP id a9mr2220903lfg.3.1490542895102;
        Sun, 26 Mar 2017 08:41:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.198.77 with SMTP id w74ls969725lff.26.gmail; Sun, 26 Mar
 2017 08:41:33 -0700 (PDT)
X-Received: by 10.25.104.21 with SMTP id d21mr2218161lfc.31.1490542893425;
        Sun, 26 Mar 2017 08:41:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si817636wmh.1.2017.03.26.08.41.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:41:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,227,1486422000"; 
   d="scan'208";a="218086719"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2017 17:41:32 +0200
Date: Sun, 26 Mar 2017 17:41:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: mawilcox@microsoft.com, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] kernel: pid: Replace unsigned
 with unsigned int.
In-Reply-To: <58d7dfaa.c65b620a.68c66.766e@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703261741060.2204@hadrien>
References: <cover.1490542214.git.rvarsha016@gmail.com> <58d7dfaa.c65b620a.68c66.766e@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Mar 2017, Varsha Rao wrote:

> Replace unsigned with unsigned int, to fix the checkpatch issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  kernel/pid.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/pid.c b/kernel/pid.c
> index 0b0aad4..c022239 100644
> --- a/kernel/pid.c
> +++ b/kernel/pid.c
> @@ -125,7 +125,7 @@ static int pid_before(int base, int a, int b)
>  	 * (a - base + MAXUINT) % MAXUINT < (b - base + MAXUINT) % MAXUINT
>  	 * and that mapping orders 'a' and 'b' with respect to 'base'.
>  	 */
> -	return (unsigned)(a - base) < (unsigned)(b - base);
> +	return (unsigned int)(a - base) < (unsigned int)(b - base);
>  }

Unrelatedly, it looks like bool would be a more natural return type.

julia

>
>  /*
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58d7dfaa.c65b620a.68c66.766e%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

