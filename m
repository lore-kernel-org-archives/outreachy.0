X-GM-THRID: 6619413531629453312
X-Received: by 2002:a1c:b5cc:: with SMTP id e195-v6mr4096wmf.17.1541228274801;
        Fri, 02 Nov 2018 23:57:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b186:: with SMTP id a128-v6ls625877wmf.13.canary-gmail;
 Fri, 02 Nov 2018 23:57:54 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fp8PDW14iIWD1l2e6Pwe+fot0rubSPtcGyUmPj8Ylj39TucBgSOYmYRxqnT0ikXCKS6glK
X-Received: by 2002:a1c:7a04:: with SMTP id v4-v6mr5042wmc.2.1541228274154;
        Fri, 02 Nov 2018 23:57:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541228274; cv=none;
        d=google.com; s=arc-20160816;
        b=E/ESp0DHtmiq+gZLeDKiXAKX/PYXbXJ52lEGVVysKjPyQ1/RzbK0gJt8qgw7ysQc9O
         8QCFroxPx9G5eOQjxMjEJjOyQswPm36m7gY3yqxwV9MOgUp5aiNTAvEHGYwUpSYVpIUw
         K0C9qJhQWGAcCdvhRm6gpukLaPdjxcjRv/c57OGS7m/GjEDKht8EjZ0ZdO09Kclm8XKv
         wmuF2NzNazaCMcUq8xrAZsdkt6TrV0tVhigLRLIPvPzkCpfkW2TUu6/iDspb+QS+2eu/
         JAXjoTakn4A0u9V3yEPyQ+WYp5Khicgbe1MOreOOSfluLSFieTJg0aeIbN/AZ7uCg+aM
         F9NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JETsIOOeumOyj52KAdDuztvjVAk/TKRoktsSFgWr+z0=;
        b=SgIKctD2J5GmvVh356lSz5cnvHZOxUsDP3T2kzmsiJ9B++BbIwnYbpb+lbBCm2EtPl
         bIByrMopPmEYh8jI3Sr96++QQYGTKfacjJ59utba4tbdMSk+qNCFHVvZIjvt0+uSGVx7
         P91BxIsJfeexHg6PY/BySEymyvyALRM7B4qcAWNNJzMNmMvGQlNzJqhfXQ0PEb0XOTvK
         r1OODtu3/Ldf4fLG8ZQxvxAPjDXZ06pW85h2f8cQ3m7gvafxaZ0TygEawAH5/RYMIs7k
         mE1N6a51QRajO/h9tdx5WOR2Y+jKQEGYwAWhvY/jNMBU1I3OsBFSxx27a6SjlcFjlfCy
         OL7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e5-v6si976159wru.1.2018.11.02.23.57.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 23:57:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,459,1534802400"; 
   d="scan'208";a="284221057"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 07:57:53 +0100
Date: Sat, 3 Nov 2018 07:57:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove extra space
 before tab
In-Reply-To: <20181102234508.GA27353@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811030757170.2922@hadrien>
References: <20181102234508.GA27353@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Remove extra spaces before the tab character inside a comment section.
> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/greybus_protocols.h | 4 ++--

You seem to have sent three patches on this file.  Greg will want them to
be in a series, to reduce ambiguity about how they should be applied.

Likewise for the other files.

julia

>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
> index 5783f715bdc2..429a952c5200 100644
> --- a/drivers/staging/greybus/greybus_protocols.h
> +++ b/drivers/staging/greybus/greybus_protocols.h
> @@ -918,8 +918,8 @@ struct gb_spi_device_config_response {
>   *	0 the default (from @spi_device) is used.
>   * @len: size of rx and tx buffers (in bytes)
>   * @delay_usecs: microseconds to delay after this transfer before (optionally)
> - * 	changing the chipselect status, then starting the next transfer or
> - * 	completing this spi_message.
> + *	changing the chipselect status, then starting the next transfer or
> + *	completing this spi_message.
>   * @cs_change: affects chipselect after this transfer completes
>   * @bits_per_word: select a bits_per_word other than the device default for this
>   *	transfer. If 0 the default (from @spi_device) is used.
> --
> 2.19.1
>
>
> --
> ta
> ioannis
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102234508.GA27353%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

