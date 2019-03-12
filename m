X-GM-THRID: 6667435589118197760
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr4477906ejt.4.1552406290529;
        Tue, 12 Mar 2019 08:58:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a98:: with SMTP id p24ls4140322ejr.7.gmail; Tue, 12
 Mar 2019 08:58:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPDtC8bIKuruHlrFs/52WZ3Un73NEuD1YFmr5QEpBaeXcTPGAW1LI5OcKc0+fVEQrydFkW
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr4481965ejg.9.1552406289749;
        Tue, 12 Mar 2019 08:58:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552406289; cv=none;
        d=google.com; s=arc-20160816;
        b=EAH9jpDdoNDNLk4e7Yw5E6QxFnn+WMwvEZ7t7Vcq8zCTSppnBKGEpT12wxGArkC58G
         OM20J867UA+rGupkpluJtA3OEnB7JTDxuGr5SwyCz+fc8W+Jq0q0IfMx9sqdLxyhN+vV
         pVyxZPb8RJ5j50RVNNNZK9FhzhaGyW015NclXU8+tQf2ts9IHqpDWwpRGXtuhYB1bomA
         olettDanbLzp+SXog9Z16ov3xnxiPi3OirDsYoIG1nJ6QbB++RUcM6bxQCLmhfGFHkXX
         Ux35rEtolo+/kOu60GaYDEvxlrz/BD7lnWpWrt5QmC4iRT3UCsPUuipwiUcAYazxS261
         NgKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JyeCz8o8COkvGktZKUXivXpbbutDq7LqHidHVsHos6s=;
        b=WgTzUrFxh/BWCZG+q8sw4EalCPW4KhHq3tkn5vcdkVgUuJNgbUoN6niPa1Y2spHHZk
         zxffciNs0WerArqbQOd3xj9iYl5mzUly4yic5h0CYVtK+ri9kzJg06/CnK6AHTgE1Cg9
         utJWzOeklTQHFCEhArjS36RWg2dR0Ga9Qw2cxp5C1f5jC1MAlW7dzYh3w8kwoJO40pn4
         ipB6NadVCeiYeNa8usx1S+PK84snPD9ak0UyeVpuScZD4ZmY4lDz91n5CZSVQiBYd6yV
         VAy6Uz2kmSFDb+i2cM0+minqQ3WuNoZrG4f6KVDNOAKaAdHgSxkiJZKT4W0rMco6fPA/
         lnpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si555757ejx.1.2019.03.12.08.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 08:58:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="299008509"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 16:58:08 +0100
Date: Tue, 12 Mar 2019 16:58:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: netlogic: Remove unnecessary
 'out of memory' message
In-Reply-To: <c09680e5-0bce-4c70-b601-4dd1a6b0d215@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903121657110.4097@hadrien>
References: <20190312093511.3789-1-etsai042@gmail.com> <alpine.DEB.2.20.1903121117030.4097@hadrien> <c09680e5-0bce-4c70-b601-4dd1a6b0d215@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_2812_1907279965.1552404626738"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

------=_Part_2812_1907279965.1552404626738
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 12 Mar 2019, etsai042@gmail.com wrote:

>
>
> On Tuesday, March 12, 2019 at 5:14:30 AM UTC-7, Julia Lawall wrote:
>
>
>       A better log message would explain why the message is not necessary. �I
>       guess that if you unfold this, you will end up at kmalloc, which provides
>       a backtrace on failure, so the message is not very useful. �But you should
>       trace thrugh the definition to see that this is actually what happens.�
>
>
> I traced down the memory alloc function to�alloc_skb (network buffer alloc), all the way down to kmem_cache_alloc, which had a�trace_kmem_cache_alloc function to provide a skb alloc trace.
> I understand that "out of memory" message can be found in the stack dump done by the memory subsystem. Thus this "out of memory" error is unnecessary. But I don't know how to present this in log message.
> Is "Delete�netdev_err�since generic message can be found in stack dump" good for this?

OK, I'm not really sure where the backtrace is actually generated.
Perhaps it would be better to say nothing than something incorrect.

julia

>
> Wentao
> ���
> �
>       julia
>
>       >
>       > Signed-off-by: Wentao Cai <etsa...@gmail.com>
>       > ---
>       > �drivers/staging/netlogic/xlr_net.c | 4 +---
>       > �1 file changed, 1 insertion(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
>       > index 8554fcf4321b..10f14a5cf490 100644
>       > --- a/drivers/staging/netlogic/xlr_net.c
>       > +++ b/drivers/staging/netlogic/xlr_net.c
>       > @@ -185,10 +185,8 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
>       >
>       > ���������for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
>       > �����������������skb_data = xlr_alloc_skb();
>       > -����������������if (!skb_data) {
>       > -������������������������netdev_err(ndev, "SKB allocation failed\n");
>       > +����������������if (!skb_data)
>       > �������������������������return -ENOMEM;
>       > -����������������}
>       > �����������������send_to_rfr_fifo(priv, skb_data);
>       > ���������}
>       > ���������netdev_info(ndev, "Rx ring setup done\n");
>       > --
>       > 2.11.0
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsai042%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c09680e5-0bce-4c70-b601-4dd1a6b0d215%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_2812_1907279965.1552404626738--

