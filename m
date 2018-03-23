X-GM-THRID: 6536210357179908096
X-Received: by 10.46.53.4 with SMTP id z4mr1890753ljz.22.1521830337629;
        Fri, 23 Mar 2018 11:38:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.211 with SMTP id h80ls209604lji.13.gmail; Fri, 23 Mar
 2018 11:38:56 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt4MEJBMcMrJ7kkM0DHIVia3tfzbBgzi81Im9iEr6nGm5OG5TzyYn1WN061KBBxQcLnUqWU
X-Received: by 10.46.92.3 with SMTP id q3mr465883ljb.19.1521830336266;
        Fri, 23 Mar 2018 11:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830336; cv=none;
        d=google.com; s=arc-20160816;
        b=LXYQqnXfFUC8zae9yAXX3hgAkZ1iPl8yFyMW7PP2NwuJyjGP6lcR76wSCT1xzQHLn4
         w/ZgIjVcSUUiUUegg9DosGfTnzx3QMRB/nVS04xtA1ctRJiN5tZSXp53mkcIlLbYP8sE
         hhuz00xlm86zNqkgu5RO9tMFzHek8mVx+SthGfFtpx64pywrWn20rsC2xxtRyXvBoA86
         IWaVabie3jAwL4rfsqYdiDZpDMZeav8E1S8ccF6+xK9uBsdC4vJG9PdjAKXjYKK/lXse
         9Fpt2oWsPUuEHiGQH8ewG7OyNCp1Gz4H+zM624Qa7tSY+Ck5xWyzFniCD7Xm0zPupANX
         Mpzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=hPdBRE54H2FbT33FTTAKaAy7bd+Gqp0q3QYDB4+apCM=;
        b=WwTWsThC/qP27Tt3aZGg2tK4N7SB/5mELQEDMteavZvVr1p/t+T/6S60Muyuf1F6er
         QzZQYdbZd9Rk4uILSV3+EtRWvQaIbaMDyNXePLhUneQfO+uC2nRaZP3oSEFiIBo9+AvS
         5nRCbJ5shr07piw47rWfqHBmd2e+2L2fTkRF1gxoSRYOQZyaKB2Vf1JQ05zbaP6zFJJt
         WmdLazglEZAki0c9/jEsgCwz8Yo7ntJFpUZcUMoDsX2qoYg4ewneoO/z7xbRLShyPHJQ
         PyBmj0NjnOyZnS0YBEDG3FZib1+iWyGmrVuBNQzWEDm1XC40brXrSaVIl0yFee6Tkpbq
         tDyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a132-v6si303530lfb.4.2018.03.23.11.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:38:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,351,1517871600"; 
   d="scan'208";a="319675784"
Received: from nat-tvwna-outside-visitornet2-c-77.princeton.org (HELO nat-tvwna-inside-visitornet101-d-15021.princeton.org) ([66.180.182.89])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2018 19:38:52 +0100
Date: Fri, 23 Mar 2018 14:38:51 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] staging: vt6655: Change
 _chip_type from typedef enum to enum
In-Reply-To: <1521830040-7138-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803231437560.2450@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521830040-7138-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Mar 2018, Nishka Dasgupta wrote:

> Change _chip_type from typedef enum to enum.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Make subject and commit message clear.
>
>  drivers/staging/vt6655/device_cfg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
> index 3972881..2f38634 100644
> --- a/drivers/staging/vt6655/device_cfg.h
> +++ b/drivers/staging/vt6655/device_cfg.h
> @@ -51,8 +51,8 @@ struct version {
>
>  #define PKT_BUF_SZ          2390
>
> -typedef enum  _chip_type {
> +enum CHIP_TYPE {
>  	VT3253 = 1
> -} CHIP_TYPE, *PCHIP_TYPE;
> +};

I don't think that a type name in all capital letters is such a good idea.
But maybe this type is never used?  If it is not used, it should be
removed.

julia

>
>  #endif
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-4-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

