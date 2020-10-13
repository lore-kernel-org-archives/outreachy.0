X-GM-THRID: 6883028084998537216
X-Received: by 2002:a2e:8545:: with SMTP id u5mr10147945ljj.224.1602581667733;
        Tue, 13 Oct 2020 02:34:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls781294lff.0.gmail; Tue, 13 Oct
 2020 02:34:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUDbD6l/93YeOQJIiqCSXua5kh71gQcaefqzlwJiSO9xe/wNz/rtvscZTJv1A1u7BaK+AQ
X-Received: by 2002:a05:6512:1083:: with SMTP id j3mr10276337lfg.587.1602581665184;
        Tue, 13 Oct 2020 02:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602581665; cv=none;
        d=google.com; s=arc-20160816;
        b=VQy12TnR+LHvr5lI6lWIGxnRupQA+N3uQ677CV46d/YhVhGlwplrm2YoeUD0gKpr04
         1jBgEhv8AxTPVbmu+La8+m0+MSxLYsoliwaWwQy617Pt98Mu83bi8yUovM6JnTXGuImI
         ooY5tS1DzleexrDq+nNJTBjadun1tY8Dq8BxX5j95jEyMuIUB02PxYISGwwBaIQliBM/
         2IhAQKqToNy64ID5Y7yTjn3kbd0Em7dZtQKUmpJXGo/KdngxtdYIFh2DK8UeUPohuVaD
         IwuZY1p/U5pu+thZzXhC82yQ5ruNHhF7QDkrjJuKtcW6NzGL178c2YenbGhwvNGUH+OH
         OltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=i3jK67/3AMQRAz/m4ZvcxRqm9OlssNGTEwgRPsXDObs=;
        b=wI77fvEZLiVEfFZ6XTW7yTJzoJ63+Nrc3gngeUflli16i3F0UFt+fAdYFmLm4qjis/
         8Gp+xQA5KoViZRduW1Oc9ItWEXAGJ8DCDaAIRk07rAwOKHDBJqrbrYhDRuBwWIJg9ozK
         LxTj/uFKJJMvMrCs3sPRCrMlhMSKjOvasK5p3E+FG+C1x90MI3hxR4pcgHDJoe0z9jC9
         1k9EaAlbPoPKY3SH4AedFHhID4LEgS18T3C4FOYFIC+4raKRttAglfj/e3qhmc+zrf+6
         1opbBf/4U4c0GzBZ8zJ58j31qJ8Icm25jp8cMdhJYTTzXFPVVDJtfGQjcp9sZHZvI1gs
         sEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a16si63192lfr.5.2020.10.13.02.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 02:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,369,1596492000"; 
   d="scan'208";a="472326373"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2020 11:34:24 +0200
Date: Tue, 13 Oct 2020 11:34:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Steve Longerbeam <slongerbeam@gmail.com>, 
    Philipp Zabel <p.zabel@pengutronix.de>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
    Pengutronix Kernel Team <kernel@pengutronix.de>, 
    Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: imx: remove
 unnecessary variable use
In-Reply-To: <fe845478640c3b498fe2fd9a815e65dbb720701e.1602579668.git.mh12gx2825@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010131133080.2674@hadrien>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602579668.git.mh12gx2825@gmail.com> <fe845478640c3b498fe2fd9a815e65dbb720701e.1602579668.git.mh12gx2825@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Oct 2020, Deepak R Varma wrote:

> Variable vc_num usage is unnecessary as it appears to be used as a
> constant and least used. Assigned value can directly be used in place of
> the variable.

In the log message, I don't understand "least used".  "appears to be used"
is also not very convincing.  If you are proposaing a patch for something
you should know that it is correct, and "appears to be" implies some
doubt.

julia


>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-csi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 9320e3974d86..db77fef07654 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  	priv->upstream_ep = upstream_ep;
>  	is_csi2 = !is_parallel_bus(&upstream_ep);
>  	if (is_csi2) {
> -		int vc_num = 0;
>  		/*
>  		 * NOTE! It seems the virtual channels from the mipi csi-2
>  		 * receiver are used only for routing by the video mux's,
> @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  		 * enters the CSI's however, they are treated internally
>  		 * in the IPU as virtual channel 0.
>  		 */
> -		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> +		ipu_csi_set_mipi_datatype(priv->csi, 0,
>  					  &priv->format_mbus[CSI_SINK_PAD]);
>  	}
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fe845478640c3b498fe2fd9a815e65dbb720701e.1602579668.git.mh12gx2825%40gmail.com.
>

