X-GM-THRID: 6201831238329696256
X-Received: by 10.180.210.212 with SMTP id mw20mr1643660wic.3.1443980370176;
        Sun, 04 Oct 2015 10:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.153.196 with SMTP id b187ls419502lfe.80.gmail; Sun, 04 Oct
 2015 10:39:29 -0700 (PDT)
X-Received: by 10.112.138.170 with SMTP id qr10mr4550723lbb.4.1443980369646;
        Sun, 04 Oct 2015 10:39:29 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id xl3si365351wib.1.2015.10.04.10.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 10:39:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,634,1437429600"; 
   d="scan'208";a="180999012"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Oct 2015 19:39:29 +0200
Date: Sun, 4 Oct 2015 18:39:27 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Moraru <cristina.moraru09@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Move comment to
 correct location
In-Reply-To: <1443976340-86703-1-git-send-email-cristina.moraru09@gmail.com>
Message-ID: <alpine.DEB.2.10.1510041836340.2672@hadrien>
References: <1443976340-86703-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Oct 2015, Cristina Moraru wrote:

> Remove 'Excess function parameter 'addr' description in
> 'cvm_oct_set_mac_filter'' kernel-doc warning by moving
> the desciption to the correct function: cvm_oct_common_set_mac_address
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 7274fda..798aa6c 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -364,13 +364,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
>  	}
>  }
>
> -/**
> - * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
> - * @dev:    The device in question.
> - * @addr:   Address structure to change it too.
> -
> - * Returns Zero on success
> - */
>  static int cvm_oct_set_mac_filter(struct net_device *dev)
>  {
>  	struct octeon_ethernet *priv = netdev_priv(dev);
> @@ -413,6 +406,13 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
>  	return 0;
>  }
>
> +/**
> + * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
> + * @dev:    The device in question.
> + * @addr:   Address structure to change it too.

too -> to

I don't think that the address is a structure.  It could be helpfu to look
at the kerneldoc information for eth_mac_addr, since that takes the same
arguments as this function.

julia

> + *
> + * Returns Zero on success
> + */
>  static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
>  {
>  	int r = eth_mac_addr(dev, addr);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443976340-86703-1-git-send-email-cristina.moraru09%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

