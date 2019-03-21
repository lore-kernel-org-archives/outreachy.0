X-GM-THRID: 6670726051308503040
X-Received: by 2002:ac2:4856:: with SMTP id 22mr144850lfy.12.1553159379749;
        Thu, 21 Mar 2019 02:09:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls608373lji.14.gmail; Thu, 21 Mar
 2019 02:09:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz7O/J7XdVwsKJgxlGuzibHzXvF0IQh+nS+aXqu174cPjoe3jtNW2lkG3pKxGzpkJIue77u
X-Received: by 2002:a2e:909a:: with SMTP id l26mr114220ljg.1.1553159378797;
        Thu, 21 Mar 2019 02:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553159378; cv=none;
        d=google.com; s=arc-20160816;
        b=zlz7rPndR4emC7rvkcDIDZIKwKMBoIInPh38X8cX+4RJYXqF+KP3q4QZOvbmO65Jte
         lC64XK1MgB8sSXRBHPSO34DSrZ8JEn2R8LEOH8obi7zOmgHxzcONBPY7e/87Ra1BxJm/
         7rPKhOTW2ywOgYgED2MGokI6qzs56j3+a3rDm7FYnQLHCeoowi3x87Y/CBFKdoscdRPv
         u4bkusWA2lEbGm6z9SLzFJCl85W37VxYDafpjDkC1zfLl5PAbqwtsZCLCagRwJ4x+DhD
         4IW705aA1fxOm3l9e91y9Nfjl/5G5n8Dr8h4Ev6hwHgUR+xwJqVErscf+mOVC/ztJ/X1
         QKCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Hm6SnBYWaY8dSpKMZeFaWH+aR9OPFatcice1NRe4gbA=;
        b=RUd7pTTgw1rAHLmhmdHhGF1jdZIA5C1midP0Ehe/vuT1Ej1V8Nh5GaGQjC90x/CPgr
         zu5TxoeGwBP7r0AYuu6lCmTSlMPRDVMCJ+KobqoHtEez5qmVa2r3McSO/A1QxvmcBtJj
         x9pA1fCpLJWT7gIzlQv66JM6A9QX2eNunt1oi/7tL25QAQa23GSatV1xYBpQmDnpk2dD
         wNbEk+o+n06uKoLS814/XjDd7q0dxONLXOfrQfZn7TXkYfa37bZ1ou8nm6SoXz28AFvy
         VKc9GU4AD6hHKXBREI15aW00wuthTQObnThDc2lJsJx25PUMBnNcGyaFR700HuciCSfS
         qaxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m17si44350lfl.0.2019.03.21.02.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:09:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,252,1549926000"; 
   d="scan'208";a="300208263"
Received: from wifi-eduroam-85-116.paris.inria.fr ([128.93.85.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 10:09:37 +0100
Date: Thu, 21 Mar 2019 10:09:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] [Outreachy kernel] staging: vt6655: spaces around
 operators
In-Reply-To: <1553159257-3568-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.20.1903211008360.5292@hadrien>
References: <1553159257-3568-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Payal Kshirsagar wrote:

> Add spaces around operators
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
>
> In v1, prefer spaces around operator.
> In v2, 'prefer' changed to 'add'
> and in v3, changes are mentioned.

This v2, etc stuff goes below the --.  That way it will get dropped hen
the patch is committed.  The previous versions aren't present in git, so
the history about them isn't interesting any more.

julia

> ---
>  drivers/staging/vt6655/device_main.c |  2 +-
>  drivers/staging/vt6655/rf.c          | 26 ++++++++++++--------------
>  2 files changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index b370985..866d794 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private *priv)
>  			goto err_free_rd;
>  		}
>
> -		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
> +		desc->next = &priv->aRD1Ring[(i + 1) % priv->opts.rx_descs1];
>  		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553159257-3568-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

