X-GM-THRID: 6667626897637113856
X-Received: by 2002:a05:6830:208c:: with SMTP id y12mr3809438otq.5.1552428202590;
        Tue, 12 Mar 2019 15:03:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls7009914oth.10.gmail; Tue, 12
 Mar 2019 15:03:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjhE1huxiKSqY4UerrHpNZUbzMYqrG6mo5Ks7waLBKZxdvwioU+UDJVbpITI4Izojn1rkW
X-Received: by 2002:a9d:7d17:: with SMTP id v23mr865427otn.44.1552428201676;
        Tue, 12 Mar 2019 15:03:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552428201; cv=none;
        d=google.com; s=arc-20160816;
        b=027arePDZGuFZdHtJbPkbK7n9CVFGq0s5fhPS3UhARhglhNM4t9YpwZGYNaLOjXupS
         KB4ME4/SvduSLWOe60KTUrPotMFnJP2gNuy47DG79Zo4fbSl38+PG++2ytDmt44qo0bp
         yVdBTH1L27FmFRTkw+SZJd06jTgQ08cH/ZuEZFSqOeXx0dVxxGu2Op/JtLl0UEpEjsMa
         8FKV4QLNAQvV/qmc2DgItStgSP1Knd7KZTPB0RwWLOedQWxDhjfVud8IwMlhkri9ZJrx
         qDH+si52uvXsiAIsHKi6lI2JtrCFJTJ/ob57hWJB9Ft1LUy9s9bapkYcfd51aIeKy3Bt
         C5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gyNjLgOCgdEB6VyAz+0FipmGqG/sZ33ZQLKR2Ha4Kjo=;
        b=yTBXfTD00cQuaegXHn2GCKWC2RpuZtEXymZYHPfIBut1UzaJ3RClFrTG08vaupKP0F
         I+V7Hi+eM1t3HO6NJYErBSEIhRrm49/hKftL5IbfK+LdTgFeVCHg8aqa9t8eSGg8s1bJ
         qv7j3fhJfzMfWq/t3ifvEY1OUzymeyzWK+sp7DTv+9Dc1NMMkwAWW4gDS2PwswaI+Ni9
         qVn0pQChfX9nNoFbUmKWLpDRrngg792f/VUuXk47XQNbMi3Qt/BOk78E+0guCYDygdkP
         g72Yo/iiUkm2RJomT2cr2a/91FGHXngVm9HkcLGdsGPc+GO603VcwS9kxp/jGHvuYGg9
         3N3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LQzlTb75;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f96si331401otb.2.2019.03.12.15.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 15:03:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LQzlTb75;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C3AEF214AE;
	Tue, 12 Mar 2019 22:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552428200;
	bh=eznMWY5G0gUI6G3pGz/rfRwH00oNYtSg1tnCwHZaB3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LQzlTb75YbVFjmyPNAAiA5b5nHL6+Yhu7tuJM1KW3DhdsjcpPlFu+c1GRAhfJHOPv
	 pij3Isvu9RhHhkcRbIueiOrspO6867eGeVdNNr6GhDINnNh+joWbIimyTxPPjjB1n7
	 e4STEfcI84mAh4110Avr7eD4pOnNIR2fs9A5DTLk=
Date: Tue, 12 Mar 2019 15:03:20 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: sm750fb: Remove unnecessary local variables
Message-ID: <20190312220320.GA17305@kroah.com>
References: <20190312215737.29200-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312215737.29200-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 12, 2019 at 04:57:37PM -0500, Madhumitha Prabakaran wrote:
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

Oh wow, that's almost impossible to now read.

Sometimes you want intermediate variables for the programmer, not for
the compiler.  The end result is the same, but please tell me that you
could figure out what that one single return line actually does :(

Remember, we write C code for people to understand first, and the CPU to
understand second as we have to maintain it for the future.

thanks,

greg k-h

