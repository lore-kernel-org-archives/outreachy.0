X-GM-THRID: 6341446809847595008
X-Received: by 10.28.209.67 with SMTP id i64mr77326wmg.4.1476516763012;
        Sat, 15 Oct 2016 00:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.12 with SMTP id t12ls306545wmt.3.canary; Sat, 15 Oct
 2016 00:32:42 -0700 (PDT)
X-Received: by 10.28.152.147 with SMTP id a141mr77030wme.17.1476516762456;
        Sat, 15 Oct 2016 00:32:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r65si120128wmf.3.2016.10.15.00.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 00:32:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,496,1473112800"; 
   d="scan'208";a="240879784"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 09:32:41 +0200
Date: Sat, 15 Oct 2016 09:32:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keila Novo <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Checkpatch.pl error fixed:"Tabstop
 remove".
In-Reply-To: <20161008055753.GA24115@kheixx-VB>
Message-ID: <alpine.DEB.2.20.1610150904390.9280@hadrien>
References: <20161008055753.GA24115@kheixx-VB>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 8 Oct 2016, Keila Novo wrote:

> Checkpatch.pl error fixed:"No tabstop at the init
> of the line"
>
> Signed-off-by: Keila Novo <laurana5@gmail.com>
> ---
>  drivers/staging/nvec/nvec_power.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
> index b16c871..88e6c0e 100644
> --- a/drivers/staging/nvec/nvec_power.c
> +++ b/drivers/staging/nvec/nvec_power.c
> @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_driver = {
>  	.probe = nvec_power_probe,
>  	.remove = nvec_power_remove,
>  	.driver = {
> +<<<<<<< HEAD
>  		 .name = "nvec-power",
> +=======
> +		 .name = nvec_power,
> +>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop

This is not good.

julia

>  	}
>  };
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161008055753.GA24115%40kheixx-VB.
> For more options, visit https://groups.google.com/d/optout.
>

