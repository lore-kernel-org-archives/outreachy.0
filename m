X-GM-THRID: 6804291594898898944
X-Received: by 2002:aa7:dcc5:: with SMTP id w5mr20748202edu.119.1584259533571;
        Sun, 15 Mar 2020 01:05:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:de0a:: with SMTP id h10ls4953723edv.11.gmail; Sun, 15
 Mar 2020 01:05:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDhf5czQBZ4iKCwm0cRQdDt5kweDr4MCyzcukMIZaYbLsWfCtOXu/bq5RKsrWEnUfUb1Hu
X-Received: by 2002:aa7:d318:: with SMTP id p24mr21644817edq.386.1584259532092;
        Sun, 15 Mar 2020 01:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584259532; cv=none;
        d=google.com; s=arc-20160816;
        b=O8C6gqVbPBHYZHTkVzsKw/pKl6Zpp4NVXBxDHtbtXYjPNxjQh1sKJh0t8/0+vQYgvJ
         eDs2J7BAtDux8XvqmoXnKS31EmWo+MJLxKskO+KtzjJgw+fJDY4kwS3Aw1iKIciyZkwp
         GrCFc8NNYmJSJ24IZ2QJ1XGVOU+QC8DpQdVLmbq4oro6ERH3EEbv3gEFsbHm4WCo4CjR
         iqAFHVo3HhuRLYNRcl14pF3pVnnIAykIzrHe7W0tJ2y15FdFkx1wUdAm8MgLLrrGvAAT
         8gxMWojOiwyUs089gbbwyBswzo2MV3S4kvj2HZPk8KNmYjjFbhqX/2SY1hfyC1AJVMTR
         oNJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qTIVDgcZZ5IgoVi4/5NyxNEZu2VADB/Muo/RHXYZbAw=;
        b=OCCzYDLzg9hjtAV0m3/YulVl2JlLvPRxbxmlq8l4CSmYWufIMFYBR8vDz9aY/I1YTr
         9j3Tm/Y9v4egshL8Q1YHa8WtzLFFkb+1P0u9LDO/K2K4pDNpoPt9tZWlzyKm39S1qN97
         DNxHiFkytrW2vGKeCPvJfdE6Gk6Z6nBHWLtKyEatu16N+TmuQR/2YFgXg9qMhGUuJ/lo
         VSSezs5++iSJowb/tW0PFK4HqM3A2vbTkviGrVkK2oX/GDEFAfFqKWYPvXxQvzDItBar
         g6WHI4QoaTIdOG5xH7t3f9n4PD7ZLND+nDrMHzczAR69L6M7RURLDDp+MRr4dKCIkKCv
         NUnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e19si486918edr.3.2020.03.15.01.05.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 01:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,555,1574118000"; 
   d="scan'208";a="342394177"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2020 09:05:02 +0100
Date: Sun, 15 Mar 2020 09:05:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: device_main: switch
 multiple assignment for one assignment per line
In-Reply-To: <20200315044620.14104-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003150856010.2645@hadrien>
References: <20200315044620.14104-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Mar 2020, Lourdes Pedrajas wrote:

> One assignment per line is preferred, instead of multiple assignments.
> To prevent possible undefined behavior.

There is no possible undefined behavior.  The C semantics provides a
definition of what this means.  On the other hand, people don't seem to be
so familiar with what this semantics is.  Looking quickly with Google, I
find some pages that think that it is the value of the left side
expression and some pages that this that it is the value of the right side
expression.  This can have an impact if the types are different and the
assignment involves an implicit cast.  Here all the types are the same.

I'm not really sure which would be preferred.  The original code is a bit
more concise.  The modified code is a bit more clear, because one can find
what is assigned by just looking in one standard place, ie the left side
of the code.

> Issue found with checkpath.

checkpatch :)

julia

>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/vt6655/device_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 0442f71494b2..c271e3937125 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -708,7 +708,8 @@ static int device_init_td1_ring(struct vnt_private *priv)
>
>  	if (i > 0)
>  		priv->apTD1Rings[i - 1].next_desc = cpu_to_le32(priv->td1_pool_dma);
> -	priv->apTailTD[1] = priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	priv->apCurrTD[1] = &priv->apTD1Rings[0];
> +	priv->apTailTD[1] = &priv->apTD1Rings[0];
>
>  	return 0;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200315044620.14104-1-lu%40pplo.net.
>

