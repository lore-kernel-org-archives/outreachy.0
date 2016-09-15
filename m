X-GM-THRID: 6330198991314092032
X-Received: by 10.194.178.166 with SMTP id cz6mr1591408wjc.0.1473949283543;
        Thu, 15 Sep 2016 07:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.16 with SMTP id 16ls83866lja.9.gmail; Thu, 15 Sep 2016
 07:21:22 -0700 (PDT)
X-Received: by 10.46.0.83 with SMTP id 80mr1593625lja.4.1473949282739;
        Thu, 15 Sep 2016 07:21:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si274879wmd.1.2016.09.15.07.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 07:21:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,339,1470693600"; 
   d="scan'208";a="236977594"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 16:21:22 +0200
Date: Thu, 15 Sep 2016 16:21:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: netlogic: Remove unused
 function
In-Reply-To: <1473949038-12108-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609151621100.3045@hadrien>
References: <1473949038-12108-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Bhumika Goyal wrote:

> The function xlr_wakeup_queue is not used anywhere in the kernel.
> Therefore, remove it. The static unused functions were detected
> using Coccinelle but the change was done by hand.
> Script used:
>
> @initialize:python@
> @@
> def display(name,p):
> 	print(name,p[0].file)
>
> @r1@
> identifier func;
> type T;
> position p;
> @@
> static T func@p(...)
> {
> ...
> }
>
> @r@
> identifier r1.func;
> @@
> func
>
> @script:python depends on !r@
> func << r1.func;
> p << r1.p;
> @@
> display(func,p)

It looks better now.

julia

>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
> Changes in v2:
> * Simplify coccinelle script by removing func(...)
>   and adding spaces around "<<"
>
>  drivers/staging/netlogic/xlr_net.c | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 7db88aa..552a7dc 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -269,16 +269,6 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
>  	msg->msg3 = 0;
>  }
>
> -static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
> -{
> -	struct net_device *ndev = (struct net_device *)dev;
> -	struct xlr_net_priv *priv = netdev_priv(ndev);
> -	struct phy_device *phydev = xlr_get_phydev(priv);
> -
> -	if (phydev->link)
> -		netif_tx_wake_queue(netdev_get_tx_queue(ndev, priv->wakeup_q));
> -}
> -
>  static netdev_tx_t xlr_net_start_xmit(struct sk_buff *skb,
>  				      struct net_device *ndev)
>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473949038-12108-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

