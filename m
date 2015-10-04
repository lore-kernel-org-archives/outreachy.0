X-GM-THRID: 6201835486956224512
X-Received: by 10.112.26.212 with SMTP id n20mr4527303lbg.2.1443980160127;
        Sun, 04 Oct 2015 10:36:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.210 with SMTP id 79ls417451lfq.12.gmail; Sun, 04 Oct
 2015 10:35:59 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr4533476lbb.16.1443980159505;
        Sun, 04 Oct 2015 10:35:59 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si215934wiz.0.2015.10.04.10.35.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 10:35:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,634,1437429600"; 
   d="scan'208";a="180998806"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 19:35:59 +0200
Date: Sun, 4 Oct 2015 18:35:57 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Add kernel-doc for
 function
In-Reply-To: <1443977338-86936-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.10.1510041835380.2672@hadrien>
References: <1443977338-86936-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 4 Oct 2015, Cristina Moraru wrote:

> Add kernel-doc comment for function cvm_oct_set_mac_filter
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 798aa6c..eb3b12c 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -363,7 +363,12 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
>  			       gmx_cfg.u64);
>  	}
>  }
> -
> +/**
> + * cvm_oct_set_mac_filter - set the MAC filter for a device
> + * @dev:    The device in question.
> + *
> + * Returns Zero on success

Is it more common to put 0?

julia

> + */
>  static int cvm_oct_set_mac_filter(struct net_device *dev)
>  {
>  	struct octeon_ethernet *priv = netdev_priv(dev);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443977338-86936-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

