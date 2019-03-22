X-GM-THRID: 6671279616502530048
X-Received: by 2002:a1c:3944:: with SMTP id g65mr3792222wma.34.1553278417386;
        Fri, 22 Mar 2019 11:13:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls2199087wrp.7.gmail; Fri, 22 Mar
 2019 11:13:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyAbopg+6MW+6zizieT0d1bHB2gVKoctFeSa8hyxZiWuURgLdSpR/Q0gpn9JyrYvAzgAV3G
X-Received: by 2002:adf:f04e:: with SMTP id t14mr7574276wro.263.1553278416578;
        Fri, 22 Mar 2019 11:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553278416; cv=none;
        d=google.com; s=arc-20160816;
        b=UusaDh/qp11JCO2DdOmhapipXq71B4aa9zWQgUKMhsht2yid9lcJz4Q9cQtc1nHU3C
         rxLo3r6CrgY8kcGMUYcYMD2VWaWBLZvO56rnrPjL+QX/wgTVJouS4SYiAAb50/mCIY+W
         2BRepsLbGcJeUpgysU2vYt5h6jmbOKMu2hZyS1TtKlevh9giKkjZd30+DZd+SMl0uik/
         IDODqS+UaiYa90OSPt1SxGsWy0XrEhWLmfspV9Xp0czjkpEDFrFa3oerXfzI1/qkWi1R
         Bc3rb9EmPdqzOriNI31fSrYjb6xzIdr82//P2IPKQMHgqnJWpORqVfaBt3XUsqHY3HlZ
         z1zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ITwxohDaByZVnZnbtwkDe5KuOZ9qKcJzTQgP3j2Q/oo=;
        b=spDl+icWMziWFv649tHoHOx74A/olqoFNBF6l1o29ei8l2xG77tToFUT2iershOvvq
         Ue1VMWki12R0WYzyhjaHSKLkNIwAr5/sr6xwUHUBdAjgqgqir4RrNd5o9TbEKhPUQ2Hx
         gf7SPevyM9It+haCqk19y2Z01HTwQpqbxDqv7FCQMWktk9sDxwSbFqqfehOVa/dXBQsn
         cxTymGXWox4c6AHxVv9oXq6ZUvHi4H7/TzWNzPv6JGWXRqVeZ5dKJsCPQ1FRuAbhY5Vq
         drsRXMK0jPahCbWor64ukZs1FnWNYDWTtJ3G2Bc84eUwkBo4N6Mj+/pSxGgyPPFjUxSv
         clbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m1si357819wrj.4.2019.03.22.11.13.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 11:13:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375353690"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 19:13:36 +0100
Date: Fri, 22 Mar 2019 19:13:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: davinci_vpfe:
 Convert macros into inline functions
In-Reply-To: <20190322181202.6289-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.20.1903221912550.14339@hadrien>
References: <20190322181202.6289-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:

> Convert macros into inline functions, as inline functions are perferable
> to macros resembling function based on documentation of linux kernel
> coding style.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index 4685d64016de..fe608be00154 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -166,8 +166,15 @@ struct vpfe_ipipeif_device {
>  #define IPIPEIF_RSZ_MIN			16
>  #define IPIPEIF_RSZ_MAX			112
>  #define IPIPEIF_RSZ_CONST		16
> -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> +static inline void set_bit(u32 *reg, int bit)
> +{
> +	*reg |= (0x00000001 << bit);
> +}

No, Greg suggested that you use the set_bit and clear_bit that
already exist in the kernel.

julia

> +
> +static inline void clear_bit(u32 *reg, int bit)
> +{
> +	*reg &= ~(0x00000001 << bit);
> +}
>
>  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
>  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322181202.6289-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

