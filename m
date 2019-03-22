X-GM-THRID: 6671279616502530048
X-Received: by 2002:a24:3d8f:: with SMTP id n137mr2868114itn.96.1553284435855;
        Fri, 22 Mar 2019 12:53:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:3cc8:: with SMTP id m191ls2049340ita.1.gmail; Fri, 22
 Mar 2019 12:53:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxgZNph4rF/cj1eZyahxrKg3+mcYSfDOoev3ofX7IRcjeQulR4Dxq4w3B0Mt2FFamUFz467
X-Received: by 2002:a24:c2c1:: with SMTP id i184mr570286itg.82.1553284434949;
        Fri, 22 Mar 2019 12:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553284434; cv=none;
        d=google.com; s=arc-20160816;
        b=rjGrRyEJHfd/ozVbjqDg8su/CaUJbdYPcbkApgMwjcqFVu8s7zRrR0+Cama/4iUvN5
         vfDqKHbSpyzW4y1V6q2gcgv75Krge/hvW1cHfAPNYaI5qyUGvtUapxwgWyqpo1YEYN2k
         IoSz16sWcU0NLPKZHmcbIkC+VgoviWnfvH203XGz8JXVqsEi2I9mEhU8UsCtXVP5o313
         MMZB2gKDnVn74Z8UhUY0flFaxuohVWyG1LZTmAx4s5Ymoi+tKhi6wTJZ5hBU/xioabeE
         c/btzghcYwqouE4hVtLWUCur0mXxFxMamSs17e6QT7GpTJ47FjzJNVY4qKTWUL/fWZoA
         +mpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ps9qD6MeQUics1+KpdeuYe5TWEfCcaJR1RXjU2/5kfk=;
        b=zUo0gBVvI+eO9prIkisjQPyJmtb155CUsWNUtI8WoC/DDoRpU9yPeY78bCsTeIC0gu
         zTsXXGkQIcxLedO6A3uKd0l14OJ9tsnfYv1ej9Zdm8jJip2q6hL98+7ZfCBHf6YnYlVF
         Ph8IxqoJA9uDwjnOtmX8+PBPukBgun1iasaDTN9WsIseUt5vzBxTurqVuY5YzBV3/Gx4
         eAH4jxpLpKUY7hgWTHVl5IgTtpKdpTSZnS7IuMF8Ai7rfg/CWWVB5f/VWsnteZmD//Zz
         Xi1BaJ/kpsWDmsAEhrswaQJPraDxGby5bScPTVGpQQHVk2RWSHZiXTaiaGWmGeLO+CeJ
         Xsbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NZh5kawv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r17si236494itb.4.2019.03.22.12.53.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 12:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NZh5kawv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B637121841;
	Fri, 22 Mar 2019 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553284434;
	bh=ObRDATq996lgdTLQoN5c41qInD7T4i4JvPXSqQV/LgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NZh5kawvoEtmbChEaMnop36WS2+I3b0HHm6492IHhuFbM8VaohrtZbgVaQR1c02J6
	 coIlosOGQ6jy/QtPFXXxDbbslPiLvHuerjuj1BbdjzxIUuX3yvvkXuz+YRhVndyCmu
	 PPoq3nl3azGQtAwgMxfqpXBwRnan4G68JSVBhs8Q=
Date: Fri, 22 Mar 2019 20:53:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert macros into
 inline functions
Message-ID: <20190322195351.GG17603@kroah.com>
References: <20190322181202.6289-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190322181202.6289-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 01:12:02PM -0500, Madhumitha Prabakaran wrote:
> Convert macros into inline functions, as inline functions are perferable
> to macros resembling function based on documentation of linux kernel
> coding style.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> index 4685d64016de..fe608be00154 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> @@ -166,8 +166,15 @@ struct vpfe_ipipeif_device {
>  #define IPIPEIF_RSZ_MIN			16
>  #define IPIPEIF_RSZ_MAX			112
>  #define IPIPEIF_RSZ_CONST		16
> -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> +static inline void set_bit(u32 *reg, int bit)
> +{
> +	*reg |= (0x00000001 << bit);
> +}
> +
> +static inline void clear_bit(u32 *reg, int bit)
> +{
> +	*reg &= ~(0x00000001 << bit);
> +}

Did you try to build this and see if you use this function what happens?
The compiler should complain :(

As Julia said, I asked that you _use_ those functions as the kernel
already provides them (and does it better), these macros should not be
needed at all.

thanks,

greg k-h

