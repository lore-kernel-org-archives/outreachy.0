X-GM-THRID: 6949956774560530432
X-Received: by 2002:a05:6512:2182:: with SMTP id b2mr17693371lft.284.1618163039995;
        Sun, 11 Apr 2021 10:43:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls668638lfm.2.gmail; Sun, 11 Apr
 2021 10:43:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzcvJvKY5CLh1wRxhrekBJyp5ORnQDk20nhJBzQGuqpiUktf2XNMTbQQhCHjPrThaEpQc69
X-Received: by 2002:a05:6512:2108:: with SMTP id q8mr14654868lfr.153.1618163038111;
        Sun, 11 Apr 2021 10:43:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618163038; cv=none;
        d=google.com; s=arc-20160816;
        b=EgjRuVds+Dd0LcEfINKzRA3DnLId2zeVkt1QvRayPe/0u9v02BCL6b1Tgq46gAXYWB
         G9IdG7MymPEHFCv0hyivMLumZ8eSAPstnCMDSD/WX6iv9W2qgh0MtvXoxDITdZEJj+2J
         vfdAHpGW3wm9aVhEcQeTuvYosB/4oTuhsmgALWLbcbQBKdhcEt+P/3Pih81ITnYssuUn
         cmC6WyEgaE0S55dlWxIcp/TH7x3dEXWEnsP5tELnKBxRYo3cZG8fyqCa0bT8AsvqtDRy
         NKgkT7exIOVuGQDkOENjhHUNQ5clyGvDy/gEQtfV6MwTDm8Gh0F99sYHmjGAFqS/RFWD
         lqBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=/hcAXXLDx0/GaWEQNUkny5kGdOZa3nl0ZIh/xSc9Zx4=;
        b=zsn4jE/pZpA59+gsr7Pe3Pg9XbLiaXKxlZPQ6vywooNLPfxwB0RlZ2JlfUu5OsjcPi
         WFiZ09qSTHOMSBXU6B3fNsuzdlnIhvxBCkeIV/UGTMVUPfFz5FKxjSIIvpMXlhvUtzdR
         pvt36cZWvWqMwmThSY+72EyPNFu/mKYw/9Kg43e896i3/OBag0kNkV3iHzpVSmyjQExj
         bAWgVIU3IRvD8ZHjS2zDwMAXwSL9c03EugeeBecGf/iI8VUk/o7i88C7rIMspmw/w3Km
         nrbZIjyMEQ/3wieW3ML7X2J0wEnporRly0iGnJxR88C7GTunHcAIf093J7Eqxrvf6dDT
         Nc7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q9si537203ljm.3.2021.04.11.10.43.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 10:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A/sAHzqox4kFOsYnWyKQfke0aV5v8LNV00zAX?=
 =?us-ascii?q?/kB9WHVpW+SCncGvg/gXkTfo4QxhGU0Is9aGJaWGXDfg7pZz+4YcJvOPWwPhtW?=
 =?us-ascii?q?uuIuhZnPff6hfnHDDz8fMY6Ld4f8FFeb/NJHVZreK/zwm8Dto6qePnzImEp8f7?=
 =?us-ascii?q?i01sQwZjdr16425CajqzP0VqSGB9dP4EPbeb4sJGoBitaTAsbsq9DmQYROSrnb?=
 =?us-ascii?q?P2vb78ehgcHVob7mC1/EaVwZHgFRzw5GZ8bxprwa0+tUDfmQ34+anLiYD09jb4?=
 =?us-ascii?q?13XPq7VbncKJ8KoJOOWoitIJbhXg4zzYLLhJfr2ZoXQSvuai8z8R4ZbxijIhJd?=
 =?us-ascii?q?k20nXKYwiO0FfQ8izhyitr0WPo01WCgXDuyPaJDg4SLspamMZkdQHE4FArp9F2?=
 =?us-ascii?q?3Mtwri+knr5aFwnJkii4x9WgbWAOqmOMunYpneMeiHZSOLFuHM4nkaUl8ElYEI?=
 =?us-ascii?q?gNEUvBgehNeoUAMOjm6O9SYRemaRnizxlS6eahWXk+BX69Mz4/k/aI2Dtblm0R?=
 =?us-ascii?q?9Tpo+OUjmB47hfUAYqgBz/jYM6huibFFRtIXa6U4Ou8bRsuxBAX2LC7kASa4IU?=
 =?us-ascii?q?fuE68OUki91qLf0fER4ueyEaZ4v6caqdDkcHd18UYvZkTlD8qQ0IZX/h2lehTD?=
 =?us-ascii?q?YR3djudE55Z4vbX4AIDsLTaIRBQPqqKb0pMiK/yeYPq1MI9bGLvYIXDwFZ1v1w?=
 =?us-ascii?q?nzMqMiU0U2YYkvttEyRl6U5vjTIonBvvDAfJ/oVcHQOAdhYW/5CmYOR3zIPc1F?=
 =?us-ascii?q?1EqsQXOQummoZ1rdPnfy+ppsHLOfxfEazLIRPpBB2zJl8GiR14WwJSVfvqs9cC?=
 =?us-ascii?q?JFUcHau5L+mmGy/WvB8mVuPV5XHi9ukcvdekIPoglPO1j/cLYdt7ykCClv4Ec?=
 =?us-ascii?q?=3D?=
X-IronPort-AV: E=Sophos;i="5.82,214,1613430000"; 
   d="scan'208";a="502645845"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Apr 2021 19:43:57 +0200
Date: Sun, 11 Apr 2021 19:43:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove variable
 set but not used
In-Reply-To: <20210411174143.31618-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104111943230.11703@hadrien>
References: <20210411174143.31618-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:

> Remove variable "int ret" which is instantiated but not used.

instantiated -> declared?  I thought instantiated could mean initialized,
but that doesn't seem to be the case.

julia

>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index f48186a89fa1..30055de66239 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
>  				   int rate)
>  {
>  	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
> -	int ret;
>  	unsigned long flags;
>  	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
>  	u8 queue_index = tcb_desc->queue_index;
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210411174143.31618-1-fmdefrancesco%40gmail.com.
>

