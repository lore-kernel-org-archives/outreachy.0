X-GM-THRID: 6667626897637113856
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr4644308eja.10.1552428572351;
        Tue, 12 Mar 2019 15:09:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:160f:: with SMTP id f15ls814345edv.9.gmail; Tue, 12
 Mar 2019 15:09:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzA4zLWQCIyjT/N+K//GhZ7wK1WYBKUJNZd6sqxnq4HjQ18D0Ebp1jwmwgXl0Pwnip9DMXo
X-Received: by 2002:a50:cb0d:: with SMTP id g13mr839413edi.12.1552428571553;
        Tue, 12 Mar 2019 15:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552428571; cv=none;
        d=google.com; s=arc-20160816;
        b=QAnZrY3B6Rh+4/M7l+m7YDWDpFNoGv/0hD5NXFc3fKX9yvP7dhzuqbu/ZjIi4KLLz8
         SXtGtBjhg64k660rdNLFK8VJ87YXb8hA/w6WrIhJAPURnYgk9LtxEA+o8fxnaze6BdsN
         KUlkwOMrLvxwgBMMs1nya3ufWlFs4LmrnsyHv5ArB7q4p3wPhu1vUOuvYVkqRn+5t3Zl
         64HdTMWgeVB8Vt0ncCh/PykYxC8xP+bf98SuPjpyEU9UlzuNrBz3AOI9/k/6fQOcB88P
         6/P+HeZsRt4rodHov6gsdgvcelA0KC53o1ywtwLVH3kkie+MkIbcSDZMeQNFHrgRDl0r
         AtJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=h1L3e3ccdtE9rYz0scgAj3WqH78DlF63eakt82VuZzk=;
        b=x5xKrMUD9s2QS6ThkYKyKmBHoFcyvy6wJS70y+tRP0ncmtHA45TcpsaRAUfSKyXMSL
         IURySZ7gdS4NSv3EImqcHIm9eC7gn2pvKVrdZEFxZVwccdgeCvXFO6DmEub+QDcdIERR
         ec7nDeoH/9Hm/JHOaA0yHkvIvpp6+bXHDx8lX53J/b/rVWgM39UwdnBHF4FDKD25bBa9
         ktNEMij9ouxV9sQ3X5sY11Twn5EdjLyxcB07z1BoZWMnic6xx0+MSo2jCHo7i9glpugU
         4pf/6DmzK96hRUgMyIQzyb9p7GdJi0KDhNQncDO5foKpCks2NbZxK2Lw0OWPqNfzWKrk
         7fLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si1136edb.1.2019.03.12.15.09.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 15:09:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="299040098"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 23:09:30 +0100
Date: Tue, 12 Mar 2019 23:09:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove unnecessary
 local variables
In-Reply-To: <20190312215737.29200-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903122306020.2722@hadrien>
References: <20190312215737.29200-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:

> Remove unnecessary local variables in function get_mxclk_freq.
> Issue found by Coccinelle using ret.cocci.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 90f5480304f4..d0462f21fe36 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -33,19 +33,16 @@ void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
>
>  static unsigned int get_mxclk_freq(void)
>  {
> -	unsigned int pll_reg;
> -	unsigned int M, N, OD, POD;
> -
>  	if (sm750_get_chip_type() == SM750LE)
>  		return MHz(130);
>
> -	pll_reg = peek32(MXCLK_PLL_CTRL);
> -	M = (pll_reg & PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT;
> -	N = (pll_reg & PLL_CTRL_N_MASK) >> PLL_CTRL_N_SHIFT;
> -	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
> -	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
> -
> -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> +	return DEFAULT_INPUT_CLOCK * (peek32(MXCLK_PLL_CTRL) &
> +	       PLL_CTRL_M_MASK) >> PLL_CTRL_M_SHIFT /
> +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_N_MASK) >>
> +	       PLL_CTRL_N_SHIFT / (1 << (peek32(MXCLK_PLL_CTRL) &
> +	       PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT) / (1 <<
> +	       (peek32(MXCLK_PLL_CTRL) & PLL_CTRL_POD_MASK) >>
> +	       PLL_CTRL_POD_SHIFT);

I'm not sure what you are doing here. The proposed semantic patch doesn't
do this.  It only matches cases where there is an assignment to a variable
and then a return of exactly that variable.

I have the impression that you are looking at the files that are handled
by Coccinelle, then searching in those files for something that looks
relevant, and then making the transformation by hand.  You shouldn't do
that.  Coccinelle will find the proper places and make the transformation
for you.  You will have an appropriate patchon standard output. You can
then apply it to your code, check that it compiles, check that the format
is OK and checkpatch is happy, etc.

julia



>  }
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312215737.29200-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

