X-GM-THRID: 6675276130832875520
X-Received: by 2002:a2e:910d:: with SMTP id m13mr2419473ljg.30.1554213741404;
        Tue, 02 Apr 2019 07:02:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:894e:: with SMTP id b14ls1696632ljk.3.gmail; Tue, 02 Apr
 2019 07:02:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQDHaqyx8llzyJRqYVHUp7O/hdHVET6rsnA9h+G+5ljr49aur8Z2Fb2SSz2rjGYBK4jVxU
X-Received: by 2002:a2e:8881:: with SMTP id k1mr2229317lji.7.1554213740057;
        Tue, 02 Apr 2019 07:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554213740; cv=none;
        d=google.com; s=arc-20160816;
        b=EXT3/GpIZpBWkrzUPtvMA8YWXRsf7hHt2/cCccRUAXL49Ij1BgZp/woyddK1UOTbXi
         RN77zpsYYe1vBR3D4HFOvQsLFEo98PRY6XNSg17c0HDhrS+WbbxXuGYqBNRUHl9Exg7J
         dpPf/46NL/90zdyrwmR5jQ+7VrOVusqCODT6PpMBu9wv9/K8NA0CZ5FgYtq2efoQW6l+
         MDbImzklmvZ7cH6Z9X+oYrSKRe9Ndaav+ZgjtyAd/WWfgElgLCkm0J67QTjvpT6jCRgs
         eVPOHCVPu7nYfPMUpENbWtEWVHPJuSRnQ8TY3MYAPFpBvv33Ch5Ll4bYtNNkMElTYyUH
         9QYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AbB9JB17XSec1BrrXFPhOhIAhrjm5rx/1LEWrsKquyI=;
        b=hZMzLNNf1SX6RZnVTHhCnMWECvp9KFAriFhh7Pg8pnF1aBOwLTLCqvcgHSJ8r9wqXF
         HHaUGCfCERdsm/DbNktsJYd1iJ4J93bvTjVQ6+C6Vr2i9QESs8ToQdnABdrnXE2jcVwD
         mBexq4H8Tfiask77QPNKJJlwjt3cn7ZmI8hqFsOXB1Jj2jzjT2h/U6pJ4ZZcjdbqq+nL
         wSJ1IMBHMJga71tUbEmTnTTxLjSUBhiyZxqL/8ILwel3LR59eBajRqECU3Al5u9KGSXD
         3aWnW/1oQYNbqMgBa7MlXneVHzFJgaNGO1tM0XLb+9lxUA+RPfGXBWcD5a4Kl4AdIdAn
         muzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t82si610403lje.3.2019.04.02.07.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:02:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,300,1549926000"; 
   d="scan'208";a="376848516"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2019 16:02:19 +0200
Date: Tue, 2 Apr 2019 16:02:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: rtlwifi: base.c:
 Replace bit shifting with BIT macro
In-Reply-To: <bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.20.1904021601500.3297@hadrien>
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com> <bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 2 Apr 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Prefer using BIT and replace bit shifting with the BIT(x) macro
> and remove cast.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtlwifi/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index 35df2cf..e4e35de 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211_hw *hw,
>  						  IEEE80211_STYPE_ACTION);
>  	action_frame->u.action.category = WLAN_CATEGORY_BACK;
>  	action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
> -	params = (u16)(1 << 11);	/* bit 11 initiator */
> +	params = BIT(11);	/* bit 11 initiator */

It seems that the comments were nicely lined up before, so it would begood
to do that again.

julia

>  	params |= (u16)(tid << 12);	/* bit 15:12 TID number */
>
>  	action_frame->u.action.u.delba.params = cpu_to_le16(params);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bc0ddc96e3352f76c36af42f2bce0230ba528180.1554212525.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

