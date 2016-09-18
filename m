X-GM-THRID: 6331679421130342400
X-Received: by 10.46.32.91 with SMTP id g88mr442345ljg.27.1474211695162;
        Sun, 18 Sep 2016 08:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.156 with SMTP id f28ls586127lji.31.gmail; Sun, 18 Sep
 2016 08:14:53 -0700 (PDT)
X-Received: by 10.46.0.83 with SMTP id 80mr2846753lja.4.1474211693533;
        Sun, 18 Sep 2016 08:14:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si1072748wmg.0.2016.09.18.08.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 08:14:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,357,1470693600"; 
   d="scan'208";a="237273215"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 17:14:52 +0200
Date: Sun, 18 Sep 2016 17:14:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: klnds: socklnd:
 Remove unnecessary line continuations
In-Reply-To: <20160918142937.GA8801@life-desktop>
Message-ID: <alpine.DEB.2.10.1609181714270.3204@hadrien>
References: <20160918142937.GA8801@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Anchal Jain wrote:

> Fixes checkpatch warning:
>
> WARNING: Avoid unnecessary line continuations
>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> index 1bdf962..f9f0088 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> @@ -35,7 +35,7 @@ ksocknal_alloc_tx(int type, int size)
>  		spin_lock(&ksocknal_data.ksnd_tx_lock);
>
>  		if (!list_empty(&ksocknal_data.ksnd_idle_noop_txs)) {
> -			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs. \
> +			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs.
>  					    next, struct ksock_tx, tx_list);

It would be better to put next, up on the previous line.

julia

>  			LASSERT(tx->tx_desc_size == size);
>  			list_del(&tx->tx_list);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918142937.GA8801%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

