X-GM-THRID: 6747349178842611712
X-Received: by 2002:a2e:9d56:: with SMTP id y22mr16416098ljj.37.1570989976848;
        Sun, 13 Oct 2019 11:06:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5f55:: with SMTP id a21ls1099941lfj.0.gmail; Sun, 13 Oct
 2019 11:06:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRdzHi1nzX+eTk5OMtHtHesNQtoGePdeHLNF1Vos81TC3rXnkU9/hiZnO2ZTZhulS2ICDo
X-Received: by 2002:a05:6512:219:: with SMTP id a25mr15263049lfo.61.1570989976032;
        Sun, 13 Oct 2019 11:06:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570989976; cv=none;
        d=google.com; s=arc-20160816;
        b=L3sERMAIkbLtZd6R0pcqIr6toeb9goHgTpY8z5D3W8gs+yQb8eI2z51ouC39uss37P
         zkbPYMO48cqbUGk0JakfFnygZG5/3bDlq41fXDLtcdtEGEwbAW1vYA3lhSIoYx8p86fH
         kCURKqaornrnfQdZk71vXqdcOSMwXFZQM3Yap5TuduFrB2gU9ftn+mU2H+M43244SyuL
         IEQLM7z5GnmDglyMa1X6Ca5rcOD9+zyyxlG3igcW/VJfn9VlfrPrPnz+lpCxwYfC4k3p
         7gbH+YsXs2N8vmybm8pq1qKRzuZ7hwA7fzxEfnszQ8fPyROlI3LDuxPF9ew1oZcOXzyD
         8LUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9ynqPh6joa0YVVDFF8aTI3yQdG0vTNli2Vi2zUpaDwE=;
        b=ME1F92yZJE93kuekndeYBr6/ApBkVGqFG72cUWLj1n2qSqovR4xrJhzssLPQQdF5Or
         eZGWUTTPUSBWox4TX8Yz3jxm63oPkDbETdS6GvGqrrEGgYFOAN7nbXHv1/C4eBO6z7bu
         Y0BCvQDTlOaT7IG82s7xKvr1YDW3WfHkII78vk9TgTaRSj+cWbXTjYJX4HuZJJ8De9PH
         1SeXyXenyV88s9Vv+5h0tWOFpeboUVmTTGcpLBJz5181IE3lTuwVOaV8cVLyLCY73Ny5
         GAgKRl/0hJnWEzWhyjeZE4B3qEZBTApj5WAzn4m3Xy7uusdbPxKyCJC6gOTnEsVkURBD
         rwkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k2si329170ljj.1.2019.10.13.11.06.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Oct 2019 11:06:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,292,1566856800"; 
   d="scan'208";a="322545345"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2019 20:06:14 +0200
Date: Sun, 13 Oct 2019 20:06:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wambui Karuga <wambui.karugax@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: use DIV_ROUND_UP
 helper macro
In-Reply-To: <20191013180033.31882-1-wambui.karugax@gmail.com>
Message-ID: <alpine.DEB.2.21.1910132005330.2565@hadrien>
References: <20191013180033.31882-1-wambui.karugax@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 13 Oct 2019, Wambui Karuga wrote:

> Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
> to improve readability.
> Issue found using coccinelle:
> @@
> expression n,d;
> @@
> (
> - ((n + d - 1) / d)
> + DIV_ROUND_UP(n,d)
> |
> - ((n + (d - 1)) / d)
> + DIV_ROUND_UP(n,d)
> )
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index 87535a4c2e14..74312e8bb32e 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -4158,7 +4158,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
>
>  			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
>  			/*  is getting the upper integer. */

It's a nice change.  Maybe the above comment could also be dropped, since
the code is more understandable now.

julia

> -			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
> +			usNavUpper = DIV_ROUND_UP(usNavUpper,
> +						  HAL_NAV_UPPER_UNIT_8723B);
>  			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
>  		}
>  		break;
> --
> 2.23.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191013180033.31882-1-wambui.karugax%40gmail.com.
>

