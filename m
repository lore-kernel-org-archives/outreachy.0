X-GM-THRID: 6606665477713297408
X-Received: by 2002:a7b:c145:: with SMTP id z5-v6mr1127113wmi.2.1538234677215;
        Sat, 29 Sep 2018 08:24:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4dd0:: with SMTP id f16-v6ls3232780wru.15.gmail; Sat, 29
 Sep 2018 08:24:36 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60X9xsSH52uVJMB5ulWxwUrC87+zxSOiRebhcw69qtrlvaErxKtg3NDtCClAPtEu5bwo6k6
X-Received: by 2002:a5d:52c1:: with SMTP id r1-v6mr365218wrv.0.1538234676309;
        Sat, 29 Sep 2018 08:24:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538234676; cv=none;
        d=google.com; s=arc-20160816;
        b=Qio3X17Xfz7fYPyyn/K1T2CTjnO4a5No8QJHTQwAl8rYgeewSFKfMRaHqcnX9yNYHg
         seqb6/qGqqInm4170JhjpJAAJSo7LwOXtQZHYKdscLSzvrUkpzCk7Y5UVD7odsTvIo6h
         6BSSkPM/XoHdZa6F6r+aUP1xYJ+9/kqeJlgXS/viJuzIN8ea+hH/UIfzX5ek/t1sSx4y
         dLmyg28zdwRWYHhyD5BHNn+rQoZ5LuUUgNi+BLkE20w8VzwgK+zvswndiRuq/ciALmQ8
         TCYBd2FqTEowOrQaiabDONVoYOg/RQi3lLm2nWYxtwVJ2Iyj9dasKie38OXjvvjVqi+G
         y5Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Eqt/LWy+gT5v7zYN/fOD+mpFg++LHjQbIjW7wCN1M8Q=;
        b=XMTvIgXMg8V/CcFA+2+JRjxNBebDVo2QDA5rwo3MZrdGqIyCMUUpPDZw4PxLByEEPW
         lI6QGno3AiwVLbKlTQmbkSRFASz0qfKfz1NpsMSjXZV1mv9QjaLfQMfci9XNrRM/QHuE
         +5UaYcUPm3AH6j0GgWis/So7KCLZ5vT/XA0GH83f3xYOFVPek9AjGrzhWdJZi/ZDjRLR
         JZh0D9x4DPFVCpIYQytSivrPJbJANaEqOAZ+jIrgKyEqXeCUv1Uwf0IYOIHVQr3xrqPu
         jBO4b6AKSEVFgpSnq8G/dCVTZQXord0q7tRp1pYzL4G/FeHmnkYN4+uQuSLQFoSUxEkI
         af6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t23-v6si202448wmh.4.2018.09.29.08.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 08:24:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,320,1534802400"; 
   d="scan'208";a="348585741"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2018 17:24:35 +0200
Date: Sat, 29 Sep 2018 17:24:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Remove unnecessary
 parentheses
In-Reply-To: <20180929151608.25401-1-dafna3@gmail.com>
Message-ID: <alpine.DEB.2.21.1809291723110.2447@hadrien>
References: <20180929151608.25401-1-dafna3@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 29 Sep 2018, Dafna Hirschfeld wrote:

> Remove unnecessary parentheses between 'address-of' operators
> and a struct members.

There is a small confusion about singular and plural here.  Perhaps the
simplest would be "and struct members".

Welcome back and good jon on remembering how all the pieces of a patch fit
together :)

julia


> Issues found with checkpatch.pl
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_io.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
> index 3a10940db9b7..1f55704d55fb 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.c
> +++ b/drivers/staging/rtl8712/rtl871x_io.c
> @@ -68,7 +68,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
>  	set_intf_option(&pintf_hdl->intf_option);
>  	set_intf_funs(pintf_hdl);
>  	set_intf_ops(&pintf_hdl->io_ops);
> -	pintf_priv->intf_dev = (u8 *)&(padapter->dvobjpriv);
> +	pintf_priv->intf_dev = (u8 *)&padapter->dvobjpriv;
>  	if (init_intf_priv(pintf_priv) == _FAIL)
>  		goto _init_intf_hdl_fail;
>  	return _SUCCESS;
> @@ -92,7 +92,7 @@ static uint register_intf_hdl(u8 *dev, struct intf_hdl *pintfhdl)
>
>  	pintfhdl->intf_option = 0;
>  	pintfhdl->adapter = dev;
> -	pintfhdl->intf_dev = (u8 *)&(adapter->dvobjpriv);
> +	pintfhdl->intf_dev = (u8 *)&adapter->dvobjpriv;
>  	if (!_init_intf_hdl(adapter, pintfhdl))
>  		goto register_intf_hdl_fail;
>  	return _SUCCESS;
> @@ -135,7 +135,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
>  		list_add_tail(&pio_req->list, &pio_queue->free_ioreqs);
>  		pio_req++;
>  	}
> -	if ((register_intf_hdl((u8 *)adapter, &(pio_queue->intf))) == _FAIL)
> +	if ((register_intf_hdl((u8 *)adapter, &pio_queue->intf)) == _FAIL)
>  		goto alloc_io_queue_fail;
>  	adapter->pio_queue = pio_queue;
>  	return _SUCCESS;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180929151608.25401-1-dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

