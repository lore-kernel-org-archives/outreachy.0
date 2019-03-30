X-GM-THRID: 6674050971501330432
X-Received: by 2002:a17:906:3086:: with SMTP id 6mr1086473ejv.16.1553928086633;
        Fri, 29 Mar 2019 23:41:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3643:: with SMTP id r3ls900410ejb.4.gmail; Fri, 29
 Mar 2019 23:41:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHQ4550AtBGD/uXXPr6Pzz0raWp0eepPjErSoqNIR5w59TYr5d3znFOn7RZh9iCIe6+Pz4
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr2821415eje.7.1553928085911;
        Fri, 29 Mar 2019 23:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553928085; cv=none;
        d=google.com; s=arc-20160816;
        b=x01VY2l47as1dPP7dLLvG1Px5knvvSj0Oi1YQtLnGNi4eXvzdIsj3TWzDyQuB32R6L
         q7UBX5rm61MkUdqPlapOwkhr0b+WCWJs4RM1skrwKQPY4X1CTk7Gswl6nd0Sa1cl8+28
         45IAg+A6sb8oX/zZKmqoHWA+MuEO6nLuAxYLx0Fm8onLe4IsKg6LS+GpPwzKN1vxgms+
         0d94KDQgpFmW+qlnyRtXTb2sPFUVnarTMV7jInEFGlBdA/I2tt4VfFzO5V0HY36atJqn
         3sr65Od9JVdkqCloSL16xQkWZvzkNW2ngzTE2yVYXToaI3yoYzbjNi77y5sPMLRyE+nL
         66Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BW/S2KE10jO9UxYALAKpITe4OdKwGIh13ODmmHcARJ8=;
        b=ch3LZke0WwzaAgWoZyHOzKEiSF0laLvj24an9Nx5bLEfebnoWmU8K+QTkXxqIhopks
         9xAPFHXWZNRwf6Uc8PHKgmfU8oZdUbcaO94CgerFmEYn+YMwEMTLkqkLh5mhMxAlc/MU
         g1KZFVa8C0CwBfCsyC4mQF7DmaXJEU/F08tBDtzjW9dkAJwovOO+sC14l6MMpZJJOHQv
         faQoLAvl7qtFxNnkLW5hzq+hkq4pR1T9iIvmmOJ0NUJ9SIXyMZPwtBIN1cX+nEy7tL/H
         tynpB6zcAKjmm31eJP3vH5bKlKRW7QfZhsrE+TJ7YUZ+2rpsq3pjZh/K9Wx3EkSrrRq0
         gmzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a38si203392edd.0.2019.03.29.23.41.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 23:41:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,287,1549926000"; 
   d="scan'208";a="376435276"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 07:41:25 +0100
Date: Sat, 30 Mar 2019 07:41:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: Compress two lines
 into one line
In-Reply-To: <1553923565-12066-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903300740450.2817@hadrien>
References: <1553923565-12066-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Return value directly without saving it in a variable.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d3..a748eb8 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);

Many people have proposed this already and the maintainer prefers that the
code is left as it is, with input = over and over, for uniformity.

julia

>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553923565-12066-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

