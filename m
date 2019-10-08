X-GM-THRID: 6745542225820647424
X-Received: by 2002:a5d:4689:: with SMTP id u9mr28718066wrq.78.1570569225211;
        Tue, 08 Oct 2019 14:13:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9e01:: with SMTP id u1ls4257wre.15.gmail; Tue, 08 Oct
 2019 14:13:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAfclS0JouSQyc5oABD4GF6a7/aDVcYP6+zRkIfVc1f7X5MIlK0nGBMl/5QBq8s2hRzPTR
X-Received: by 2002:adf:ec85:: with SMTP id z5mr30125387wrn.374.1570569224419;
        Tue, 08 Oct 2019 14:13:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570569224; cv=none;
        d=google.com; s=arc-20160816;
        b=UxU0lFoRi5p00FRpP9iF6++65bzuV82ud0DYKJ/SkSKNUJi05asd3Yw1PGAQBJVdaH
         LiiqlFAHwEh8UYa/0I/ciuKbVkksr+OuIYOGxXCIklSUEfiD9rYpdsPTIz5+uZT9y6M5
         jrioItw9NMzxb4vjcmPCCtDnUTrUbuSdnFXCsUkMtdZjc0TMCo7zmd68X8EwQMVuH7ua
         oRvkJCiJsS8zwDvOSiSGi2b/+Up7BfMj8HVcmOVmJaObeAGNrJIU7QoacULYMW/+LOti
         HdXY5nTuorOkKgMm5vzUJY351wqxfHZJ9KjNwVo13730e8WbO5V+PxUzfQNR8SV309qB
         06ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0RbIVhaA6v8Y2e0jUHvZsEOljcOkQuFFgXW4+pLHdMk=;
        b=BnWHG1Xpd4Jp/tL4IZS5HXAW2lJO7EQDg3CBc8WJpjERwmN0E2YiBgMyyyyxe5MMJb
         1Cj5UFYJ+phN+8IWSD4HRS/igyFPJQs5/hTZKmWirfgJYn5eTxqDYb5G2poc8rhS2NW+
         ld9iBeaSB7ZaDw5nbXl56lrAJ9i3CW5oX5t0bHSkwJmw9OtUVo8PEmfH5yihBtTPOkuE
         GVTr8QY4C16UgkXwjnDGwOtuFlOrxbfGlDLW8rx+Moy0/o/titIa2dJ39UvZPXh9HF2j
         PDmThtRlX5ttCGCtX3/lmRlleyHArWIt9us+VfDeN15VtRhz7jhlHtLDjVbGXIrM6TMC
         9dKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q185si4382wme.1.2019.10.08.14.13.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:13:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,272,1566856800"; 
   d="scan'208";a="322066880"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 23:13:43 +0200
Date: Tue, 8 Oct 2019 23:13:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Fix line over 80
 characters
In-Reply-To: <20191008210850.ldgx5n3sahpdauvu@gmail.com>
Message-ID: <alpine.DEB.2.21.1910082313180.2704@hadrien>
References: <20191008210850.ldgx5n3sahpdauvu@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 8 Oct 2019, Javier F. Arias wrote:

> Break last two function call arguments into two separate lines.
> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index 6d18d23acdc0..43af76b9fa49 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -217,7 +217,8 @@ void expire_timeout_chk(struct adapter *padapter)
>  	#ifdef DBG_EXPIRATION_CHK
>  	if (phead != plist) {
>  		DBG_871X(FUNC_NDEV_FMT" auth_list, cnt:%u\n"
> -			, FUNC_NDEV_ARG(padapter->pnetdev), pstapriv->auth_list_cnt);
> +			, FUNC_NDEV_ARG(padapter->pnetdev)
> +			, pstapriv->auth_list_cnt);

It's not normal in the kernel to put the commas at the beginning of the
line like that.

julia

>  	}
>  	#endif
>  	while (phead != plist) {
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191008210850.ldgx5n3sahpdauvu%40gmail.com.
>

