X-GM-THRID: 6526024412200697856
X-Received: by 10.25.199.80 with SMTP id x77mr347571lff.14.1519483583204;
        Sat, 24 Feb 2018 06:46:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.84 with SMTP id j81ls917694ljb.3.gmail; Sat, 24 Feb 2018
 06:46:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELv97mMR7s1jfaJicou3thYGkmfG188Yi/clmZBKu304Y84Ks4hXB7zxvCBoibJekZxrL3JA
X-Received: by 10.46.93.143 with SMTP id v15mr306916lje.1.1519483581200;
        Sat, 24 Feb 2018 06:46:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519483581; cv=none;
        d=google.com; s=arc-20160816;
        b=uTRye9M8rlGelgUCk3y9HeliJuGQnLiobzpS5uGAgSj7C9luXrGIiiPg/SHsyFry8u
         ZIoOIZ6MPGMBTuAx7tzKVeY/mecP3ZWnnv9BXD76Mz2nK0//xgT+yjnNQZE2Rs1Qp11B
         X/iuVQCqec0UuMURoHRqdFhEHARYCERqd0MnRloHieJnLCnfwfDpf0HH7S7I9HhRbQSC
         r06UXFxKefapC/PnYTM06G6Qq6L5CTYuhAhF9fdLWb4P5x6zqlMMduewJO2ZbhEfAeLa
         h8/e2ppXbMkOt1rIugm/an3SbVuHAwHzd/NPgJoB+f2wq8ohK56M9HqRAnnSyL3uo/iC
         P4kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=hedC3koPkm35jbqEX9yzs/Jc8jJXgmdYANM8eXr9sXI=;
        b=h8v9K6NI6hfzYuHSrLtQ/nIfccl36g2g2SflrDoC8U2x+RcjOUhBsi8GHyo1wnS4YS
         7KRVCS1B/BiQsM9FKWa84Et5o5crF3monCACngEGFyOzgdjTt7+tbarzg5Euvp1nFyo3
         B8pYEpm4crvrbQU35qA7id5BsdHdary+V/fqksAT4eqcM/JC3FKB8ficDdLGS4W/GZ2U
         nRpikqvQYQs6ACNdpGa9yEQ/BT/qXl1Ii9H2d1xn7KyYJRSVEX6oSrn5IZIFBNAjaDV4
         tgcTGsu+PTNvfqsFB9KYZeBkPURntLn2j3S93gjb4w2gU1VXqIYF/hwQb8qqrMboBa0o
         kJjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u16si212678lfc.3.2018.02.24.06.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 06:46:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,388,1515452400"; 
   d="scan'208";a="315139253"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 15:46:20 +0100
Date: Sat, 24 Feb 2018 15:46:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: merge 'if'
 statements that test the same condition
In-Reply-To: <20180224102722.GA11743@gmail.com>
Message-ID: <alpine.DEB.2.20.1802241544300.2314@hadrien>
References: <20180224102722.GA11743@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:

> Merge the instructions of two 'if' statements that test the same
> condition and move a 'memcpy' instruction related to a different variable.
> Issue found with coccicheck.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

OK, on a wide screen, the code looks nice...

This code is under an if, that is pushing it off to the right.  But just
below there is another sequences of lines of code that is in a { } for no
reason at all.  Perhaps that could be removed, moving all the code in the
block left by one tab space.

julia

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>
> Changes in v2:
> Grouping instructions that relate to the same variables.
>
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 621810d..557ab99 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -959,18 +959,14 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
>  				}
>
>  				kfree(priv->wilc_ptk[key_index]->key);
> -
>  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
> +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
>
>  				kfree(priv->wilc_ptk[key_index]->seq);
> -
> -				if (params->seq_len > 0)
> +				if (params->seq_len > 0) {
>  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> -
> -				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> -
> -				if (params->seq_len > 0)
>  					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
> +				}
>
>  				priv->wilc_ptk[key_index]->cipher = params->cipher;
>  				priv->wilc_ptk[key_index]->key_len = params->key_len;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180224102722.GA11743%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

