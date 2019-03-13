X-GM-THRID: 6667904381849960448
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr342439wmh.19.1552506490813;
        Wed, 13 Mar 2019 12:48:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e005:: with SMTP id x5ls391221wmg.2.canary-gmail; Wed,
 13 Mar 2019 12:48:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyl775Yk+DsnKzW+g/YIB+dSanSvgJXASBWGrkAJaxhUHhKhB+HthOoMEBINhPoK0qc9b9Z
X-Received: by 2002:a1c:cfc8:: with SMTP id f191mr329828wmg.17.1552506489910;
        Wed, 13 Mar 2019 12:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552506489; cv=none;
        d=google.com; s=arc-20160816;
        b=vX454kDskrNohV96tw7eC0IdFXyolTORk6ahHgOjkD3XdM2yJpiXbMj5ISpVsFVQx/
         ruj4V5uy+SEijIx7hJ0/KK/irfDnoVj/4KW7ywFbD5Oh7ie+vFWu/anysVsfCL05dlYE
         xmp5PEKIjcaYVMJNIFPGThlBA61Wl+mb6ns39KPhgkFYI6MudgZrfaea08tAMGgLciYi
         950VM/BduryVDRDrXD270jvcfiC+/z2zhbc7DxY5cVuWUfG5zBt1wSbb+peffEgXUpT/
         G6tdKuZ0IVeNRQuU6xOvOR+qGnImGZUSZlcytl5+VF2Q08xHF+iAziD4dnEiUSsTleE2
         qkJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zO6pCQVZejj3K1LMuCnA3NBAi6Ml8rKNr/58GJGLM3E=;
        b=mkql23g9O0cO5YTAh6PnJnX9/9rvNgBDfdBGVy1eAJ5wx76YYr+WqM+keXinJkEDlr
         8qsCtxNh3CUHdMZmqoOAAdZ2mCk6zkOMElBrTfyQVv21DbfTyQ/XplVPyPEaPz72qh+U
         gYGRA/LsKrCRyH2pOogct9buqjqN8GHNbZrFrSYlce9xuaSjhySrYgEjKA7TmR1Lofqw
         i0Div9//WewK+DGb7QCPriDxj7u1g1XLmtuH9/NvtdNaibTLXmIgtXGRDcTR2JFLBxnU
         g3EpR/F+wnERE+d0Z7C3w+CRaYO7EdZ9OvsK2gMD62nPGfrh8DCDpM3zpFcYDX9MwkdH
         3H2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si142wmc.4.2019.03.13.12.48.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 12:48:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,475,1544482800"; 
   d="scan'208";a="373293755"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 20:48:09 +0100
Date: Wed, 13 Mar 2019 20:48:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
In-Reply-To: <20190313155425.5548-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903132045230.2515@hadrien>
References: <20190313155425.5548-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:

> Remove declarations of local variables in functions rtw_init_cmd_priv
> and rtw_init_evt_priv.
> Issue suggested by Coccinelle using ret.cocci.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 91520ca3bbad..814a4b7677a9 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -297,18 +297,12 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
>
>  u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
>  {
> -	u32 res;
> -
> -	res = _rtw_init_cmd_priv(pcmdpriv);
> -	return res;
> +	return _rtw_init_cmd_priv(pcmdpriv);
>  }
>
>  u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
>  {
> -	int	res;
> -
> -	res = _rtw_init_evt_priv(pevtpriv);
> -	return res;
> +	return _rtw_init_evt_priv(pevtpriv);
>  }

I wonder if there is something more drastic that you could do here.  The
functions that these functions call (the ones with the _s) are called only
once.  They have a different return type (sint) than these functions
(u32).  They are declared as extern, but they are only used in the file in
which they are defined.  It looks like things could be greatly simplified.

julia


>
>  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313155425.5548-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

