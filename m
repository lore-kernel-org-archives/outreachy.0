X-GM-THRID: 6388169805845757952
X-Received: by 10.28.148.132 with SMTP id w126mr303884wmd.10.1487363104899;
        Fri, 17 Feb 2017 12:25:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls247868ljb.3.gmail; Fri, 17 Feb 2017
 12:25:04 -0800 (PST)
X-Received: by 10.25.210.76 with SMTP id j73mr1000289lfg.15.1487363103990;
        Fri, 17 Feb 2017 12:25:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si157818wmd.0.2017.02.17.12.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 12:25:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,173,1484002800"; 
   d="scan'208";a="261008238"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 21:25:03 +0100
Date: Fri, 17 Feb 2017 21:25:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: rtl8712: Remove space
 after a cast.
In-Reply-To: <58a75696.49ca620a.c5fe1.0764@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702172124340.2118@hadrien>
References: <cover.1487359493.git.varshar186@gmail.com> <58a75696.49ca620a.c5fe1.0764@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Varsha Rao wrote:

> This patch fixes the following checkpatch issue:
>
> CHECK: No space is necessary after a cast
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8712/os_intfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index f5526a1..1141ab3 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -164,7 +164,7 @@ static void loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
>  	registry_par->ampdu_enable = (u8)ampdu_enable;
>  	registry_par->rf_config = (u8)rf_config;
>  	registry_par->low_power = (u8)low_power;
> -	registry_par->wifi_test = (u8) wifi_test;
> +	registry_par->wifi_test = (u8)wifi_test;
>  	r8712_initmac = initmac;
>  }
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58a75696.49ca620a.c5fe1.0764%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

