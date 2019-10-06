X-GM-THRID: 6744681878871080960
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr24633274edv.158.1570370306281;
        Sun, 06 Oct 2019 06:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:daca:: with SMTP id x10ls3643304eds.13.gmail; Sun, 06
 Oct 2019 06:58:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8wzOiGToCcKaLu633XHBjEM2ydcNAE0udWIkQMU0g4pcozifBIrfiABcTRuX/MsLESrpv
X-Received: by 2002:a05:6402:750:: with SMTP id p16mr24960594edy.188.1570370305045;
        Sun, 06 Oct 2019 06:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570370305; cv=none;
        d=google.com; s=arc-20160816;
        b=f1ap8Km262DQ6IV946qE4CmiGnuhbiglp6o3A5sb8U/KHyYC5RW/Pgcoa9TQ6bnfkg
         Gr3x4lwpcFR+HurD6R6uPQ9aks+p4bQGk1RFuF37sWkjOgA9Ox1uxmNEqc4Tp6ThxMmM
         hbOl7qrF5Ydkw13u7P1rgDKXiRw+UqaeMf2gr2SdDFzLEYK5LdzYzS41kYDFaJRStOj4
         0jipb5gzvX22h7hjKvNOPOCs5yGgpzIEXr7EzLRQEyYUmcBymE/9Dw+vK4S0lK6w9ZpX
         d5eTv+7zHwOkN/6YYjAc1h0hs36rGs8UrA1RrKa+eCZ42AFvgOVPQyoOItMX0YRZe2rW
         yhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Gfz5mw30f+/RtRqom/yC2COaguJEjF1D2xX4QEGFdYk=;
        b=x3Y/m1ex5nwGG4pblrO8Da1C7YKKM8yakkyBLNVG5SCwNvR7Nk5oMIKIDuBZrASUmv
         ZlLQbspwbLHCniXKQt8KPNOJPhhs1rKDONk7nnA35QLqtFTn9kiope6qtRwv+5cxOc9r
         oxwRoE4ECN/f1Ujc6GEgwlcG5uxMD1jg+biYQYO/JEmdqjDc8+eXhoqYKiPNP1WYKLuj
         U6bmQw/RSxfTb1vijNuH6/DYj9s4JoUSuE4UQkrIaYON/DK0vo2QQjtri8nOp5e6AF0j
         fzeVxDuNomdoQECgXpoZ8zEMzupwrGS9+paAAFalqaSFY/yyr2Ag6oMbmn9uyj5lXjnU
         S8Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a15si589754ejj.0.2019.10.06.06.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 06:58:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,263,1566856800"; 
   d="scan'208";a="321767636"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2019 15:58:24 +0200
Date: Sun, 6 Oct 2019 15:58:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 braces
In-Reply-To: <20191006133016.GA22297@gmail.com>
Message-ID: <alpine.DEB.2.21.1910061557170.2515@hadrien>
References: <20191006133016.GA22297@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Javier F. Arias wrote:

> Remove unnecessary braces for single statement block.
> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

The patch looks fine.  To go further with this code, you could see whether
the function can return more standdard kernel return values: typically 0
for succes and -ENOMEM etc for various kinds of failure.

julia

> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index b5dcb78fb4f4..29acbb1ee869 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -3022,9 +3022,8 @@ int rtw_sctx_wait(struct submit_ctx *sctx, const char *msg)
>  		status = sctx->status;
>  	}
>
> -	if (status == RTW_SCTX_DONE_SUCCESS) {
> +	if (status == RTW_SCTX_DONE_SUCCESS)
>  		ret = _SUCCESS;
> -	}
>
>  	return ret;
>  }
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191006133016.GA22297%40gmail.com.
>

