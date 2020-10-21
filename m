X-GM-THRID: 6885903856141598720
X-Received: by 2002:a2e:b5d7:: with SMTP id g23mr917692ljn.61.1603266832645;
        Wed, 21 Oct 2020 00:53:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b5b7:: with SMTP id f23ls812410ljn.2.gmail; Wed, 21 Oct
 2020 00:53:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjUAbK+n14paCc/d5Rm6TW2wldOQxoaeFvx33/x7X7euXQeQ+bxGe+WRjC4uBnvjYbtjJe
X-Received: by 2002:a2e:97d6:: with SMTP id m22mr789728ljj.328.1603266830120;
        Wed, 21 Oct 2020 00:53:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603266830; cv=none;
        d=google.com; s=arc-20160816;
        b=Dnyk7L5QS6k9yYr9L3d8EXe5tD1rTE0ugtw7cG3XcCAonPqP1FT9yBxP3GKYb8IOa0
         Z7NCJBlZxoffA7N2sSpKwQkXwNUeiL5u9+39gtlJIWXuBKhqVH1vWx63R4Gu1TFXxlDV
         GjBCXeDgytGRCT6vcKZj/N5KSnXu5gvZkDe7LJVVSul49HHAiyMJiS1Gm9U/BWTZuLjB
         itD7qHbXBdDN0ocecJIdD4T+C0kIMrRUubIV6gqb35ElPKRdmXpwL2/g2rov2t3ix+pW
         b6fOag5evZOLmXaieqa9c3VLBm2Q5iSlwzpp/zz+AtZX6TU5xDlehmdA/lgI7zxW8qSM
         dipQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KqmHpNrEANUnjKidfTGRR4l450uKWeO3ttp+iZldVsg=;
        b=uOApTtDh3vqd0/LAsT873N/JiyeDlFmNOjbSgf4BlGgurbO4a0NRZF4ueIPqmO24FM
         tSwEKLKDSQvk4Yf1SeAlXHhLdLc70N8YY3dK3EkBy3gn9e7XT+rZa5Hx9z9bGbzdjzwu
         m9ZoCjV17V1PeTqISo/gkWwbQeumSk8ewg6A1ZEe3Kj6DUOSWMfUdzxhVnkCE++sbH0f
         UKHdnxZTEw7za+dG0q+IipJ+kMsKtn+Lplpinsov4+D2SupYRGugSqWXkz8u2Mr4cS+M
         PYMcrKyv+oC1MVxt+qFOKFWKtchGXgJ/HzHERFSCFK9fsawREJbCHGV47Vuv3gR0F7fo
         OxvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q11si31407lfo.8.2020.10.21.00.53.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:53:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,400,1596492000"; 
   d="scan'208";a="473616714"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Oct 2020 09:53:49 +0200
Date: Wed, 21 Oct 2020 09:53:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: kpc2000: Use BIT macro
 instead of bit masking
In-Reply-To: <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010210953280.8475@hadrien>
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com> <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 21 Oct 2020, Deepak R Varma wrote:

> Replace bit masking by BIT macro. This resolves checkpatch issue

Replace bit masking by the BIT macro. This resolves the checkpatch issue

> "CHECK: Prefer using the BIT macro"
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> index 8bc78be3c259..613c4898f65e 100644
> --- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> +++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
> @@ -8,13 +8,13 @@
>  #define KPC_DMA_ENGINE_SIZE         0x0100
>  #define ENGINE_CAP_PRESENT_MASK     0x1
>
> -#define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
> -#define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
> -#define KPC_DMA_CARD_IRQ_PENDING                (1 << 2)
> -#define KPC_DMA_CARD_IRQ_MSI                    (1 << 3)
> -#define KPC_DMA_CARD_USER_INTERRUPT_MODE        (1 << 4)
> -#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      (1 << 5)
> -#define KPC_DMA_CARD_IRQ_MSIX_MODE              (1 << 6)
> +#define KPC_DMA_CARD_IRQ_ENABLE                 BIT(0)
> +#define KPC_DMA_CARD_IRQ_ACTIVE                 BIT(1)
> +#define KPC_DMA_CARD_IRQ_PENDING                BIT(2)
> +#define KPC_DMA_CARD_IRQ_MSI                    BIT(3)
> +#define KPC_DMA_CARD_USER_INTERRUPT_MODE        BIT(4)
> +#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      BIT(5)
> +#define KPC_DMA_CARD_IRQ_MSIX_MODE              BIT(6)
>  #define KPC_DMA_CARD_MAX_PAYLOAD_SIZE_MASK      0x0700
>  #define KPC_DMA_CARD_MAX_READ_REQUEST_SIZE_MASK 0x7000
>  #define KPC_DMA_CARD_S2C_INTERRUPT_STATUS_MASK  0x00FF0000
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825%40gmail.com.
>

