X-GM-THRID: 6667435589118197760
X-Received: by 2002:a0c:bd83:: with SMTP id n3mr20947227qvg.5.1552392870089;
        Tue, 12 Mar 2019 05:14:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls5878961qvc.7.gmail; Tue, 12 Mar
 2019 05:14:29 -0700 (PDT)
X-Received: by 2002:a0c:b10f:: with SMTP id q15mr21842345qvc.0.1552392869609;
        Tue, 12 Mar 2019 05:14:29 -0700 (PDT)
Received: by 2002:a37:6a42:0:0:0:0:0 with SMTP id f63msqkc;
        Tue, 12 Mar 2019 03:18:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyF4NuZHQrYBwWkZXOhdBGoPrmMh5Xb1yippjpCukxVOsmK2JkMApSu6x1R+tFuZnB3s7cS
X-Received: by 2002:a2e:c41:: with SMTP id o1mr2080365ljd.19.1552385925312;
        Tue, 12 Mar 2019 03:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552385925; cv=none;
        d=google.com; s=arc-20160816;
        b=RLo1CvTwXxjbgC21z5Eldmdg2+OlAP7IUykbnvUkYms+4yc2VSw48U6SWD6Atfk97M
         BsKTM42TYszaKV/34HBx1eN61bk1k7CUgBEZfLI1Cv4pouUA5q9/lBP+LVFmm3lQ9e4W
         o24dIMK5EnbV+li/LnzghuhFVoSjM6l8LSnIzsYHug/wxCmSC5nMtlS7SH9WO6td+Jlp
         Src3Ao7fPJT/zlEF4C7AZMfiTP44z9NUFgLTu7pT5qt8nufxywV3aCUuU5TXl61c4QAm
         e8DQSm93PJgzFsaG3atSz7E1Muy2vmGWPXadr0MTr7ZJg4FeX/ZGuxM1A6J+rfsej2iq
         KdxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uYmRrgeB3+uEmSUmK24xtstUYGpKMsX/fWVE/R54G3A=;
        b=rKxwHji3M4Fcp46tv6Xit5fw1dRFxGuumgEdqVRx0BvECGzIx6qq/cp/4gFdzarNIV
         sxDWMbbiOk8OiaU5clkBrvsvDNU5RF2vtsQB4gv9K0qo3ie91SVVd3W21oPHuf2DS6WK
         RInbprBy33P0kpO5WoKUU26iDuygj24SaYKoQPgUbnMnbss8nVGwgzjp+sFLNqnkKQzN
         G/8cMu1yjU+PhqenC4nya31Wb0GM9YBX2uTjE3DRknpd3h2amuDHditjoGmZvQzZ9Okj
         0fyFcDL4gGC9HgEbgIqan3wOCCxNLdc8m+73Z3v98BgoUWFMjiGsRkjHixc63A1XobTE
         9h/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n21si283475lfl.2.2019.03.12.03.18.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 03:18:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="373008433"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 11:18:44 +0100
Date: Tue, 12 Mar 2019 11:18:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: netlogic: Remove unnecessary
 'out of memory' message
In-Reply-To: <20190312093511.3789-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.20.1903121117030.4097@hadrien>
References: <20190312093511.3789-1-etsai042@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2019, Wentao Cai wrote:

> Remove unnecessary 'out of memory' message to silence checkpatch.pl
> warning:
> WARNING: Possible unnecessary 'out of memory' message

A better log message would explain why the message is not necessary.  I
guess that if you unfold this, you will end up at kmalloc, which provides
a backtrace on failure, so the message is not very useful.  But you should
trace thrugh the definition to see that this is actually what happens.

julia

>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 8554fcf4321b..10f14a5cf490 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -185,10 +185,8 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
>
>  	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
>  		skb_data = xlr_alloc_skb();
> -		if (!skb_data) {
> -			netdev_err(ndev, "SKB allocation failed\n");
> +		if (!skb_data)
>  			return -ENOMEM;
> -		}
>  		send_to_rfr_fifo(priv, skb_data);
>  	}
>  	netdev_info(ndev, "Rx ring setup done\n");
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

