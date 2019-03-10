X-GM-THRID: 6666547009386708992
X-Received: by 2002:a17:906:c9d2:: with SMTP id hk18mr1489518ejb.5.1552201280756;
        Sat, 09 Mar 2019 23:01:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f5a3:: with SMTP id u32ls673767edm.2.gmail; Sat, 09 Mar
 2019 23:01:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhmlKlDxUEvmoJ2PItZK5JOKiw6qWiTQ7F5RpCD+RcFfdTP1+FNOpbGPYU8r6CdTYlr0zJ
X-Received: by 2002:aa7:d914:: with SMTP id a20mr180365edr.10.1552201279991;
        Sat, 09 Mar 2019 23:01:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552201279; cv=none;
        d=google.com; s=arc-20160816;
        b=LLGc1ef6PeYpBl9hj0a1Z6F+0f8wshXdHDLqVrbAT6OiLQ/VharUzO6SkEF9KeyhvZ
         dXd6JAaHyXb7w+GmLriFk1rLHzBgcLBrgoEL1Xof79jE/TAJw8h4lFYi/6qCTF/WtAKQ
         OvMdKPZS112cTWLsJQC1LWWRPtLmDtyvrQCbv+0uwAgHNqNMCub6BbtTr/3D0X2/qpu+
         tuiO7rhyHKnFUxtH4MQS+47r80jUQrpb23zIRbK1ZAHgV4lgxmKr9cVDnd1kb/ldPoxA
         DgEPLpgt8cRTbCuicU8I6YTxHd10t9OCSxzb2gKNg4/5uKrjysz81YnJ2uUAwwrefX9t
         llQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=FlCcMSTum83dQ2V9NJd6EVGN36ssNGV1J33PxIrWwKI=;
        b=DRRntb7WA2rhbdtgobmTw+cQxyhys03YaKQDYxwBvzsnikn+W/LkE4IUUMEiTmVJKd
         Jah48uuqaUG1mLEsjgiO63uAhz6mGgYwEpVZtpOw+QZbzoDhrDoRyMlWeYXGdwzIyfUy
         e37viNlrjNh6faJiMpCP/OQjlPo9ePkrQ+J3L5VfzWJBtan2StCjlbzS6NEc1EHgeMjI
         ieqj+4RP8Kanvsws1qfYo9b5t3fJE4qOGPwmvc5L1ymYsCatP3p15PSDXQobrMDhb1Wf
         73Jem7TzdsxkAh+jlkcFwdg7fgrMVqSY4zAGAI+90AB6b6jpV5RsAligMBTrcNNh6Mzp
         2EVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si681131edb.1.2019.03.09.23.01.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 23:01:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,463,1544482800"; 
   d="scan'208";a="372668805"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 08:01:19 +0100
Date: Sun, 10 Mar 2019 08:01:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Lines should not
 end with a '('
In-Reply-To: <20190310000638.4559-1-brandonbonaby94@gmail.com>
Message-ID: <alpine.DEB.2.21.1903100801080.2556@hadrien>
References: <20190310000638.4559-1-brandonbonaby94@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Branden Bonaby wrote:

> Start function arguments immediately after opening bracket.
> CHECK: Lines should not end with a '('.
>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/octeon/ethernet-tx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
> index 317c9720467c..f89b309ffa6f 100644
> --- a/drivers/staging/octeon/ethernet-tx.c
> +++ b/drivers/staging/octeon/ethernet-tx.c
> @@ -413,8 +413,8 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
>  		queue_type = QUEUE_HW;
>  	}
>  	if (USE_ASYNC_IOBDMA)
> -		cvmx_fau_async_fetch_and_add32(
> -				CVMX_SCR_SCRATCH, FAU_TOTAL_TX_TO_CLEAN, 1);
> +		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
> +					       FAU_TOTAL_TX_TO_CLEAN, 1);
>
>  	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310000638.4559-1-brandonbonaby94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

