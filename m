X-GM-THRID: 6670798321118871552
X-Received: by 2002:a02:6a2c:: with SMTP id l44mr1576263jac.63.1553195386587;
        Thu, 21 Mar 2019 12:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls2324746jad.0.gmail; Thu, 21 Mar
 2019 12:09:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRI8R3ZuuvB5zdUIbg4XCDX7iMQBB5yA8fBtQTfoOwH1Lx+liXR5+/trCl00VCzJBqexlw
X-Received: by 2002:a02:1ac3:: with SMTP id 186mr4047381jai.96.1553195385931;
        Thu, 21 Mar 2019 12:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195385; cv=none;
        d=google.com; s=arc-20160816;
        b=zpsqLZZW6UgllMvAqv8+lbV0Xd90G3+o2OPGpSFue5BadZXRH3r3wSCWmAU0iPLX33
         BwKTEIqBJtXSuQDBPzRFUCMVSzUf2x4WVPc+VnII69gpW+sAlbxDudJN7vdc6gkhs9Qc
         7jFcVtijU1k9o6vVO8DHZRDBGdqRbRNoIRETwL//+/dupGY3j1L5N51Rz24tMcOkJrUo
         wrg/pR0Rq0FPyWPpVclYJsREFFR+sQWKkM9TPUZQIwVJA3GjPr+R0l+QHs7JCWSP9hL5
         N76jz98qMCZ5aUbpXh9zd8gu5loj6mSCNpI18RvQbvRqbuYeLlgoC1yAydc0HATW4sdG
         SSMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=x2KkvJlhOL7Qcm/wTx5L6KinaIsZIfTzGl+NBGSVvvs=;
        b=go2mgOqH4zi9O9qDYAsZaGub0RmquaSa1NKnUxO/xh2LD7oblyj6IA2rqyvyGkQjUF
         ylc+8lH45gZAM6I9Q0g35nrbaUyLFVHUBVkGNsK4cs23OFqms3hvheuCy0ibQq9Q/zoE
         Nh6Mw7Sp/qh5Yjwca6Sj3kAONgKpWDvlwFFmF8/atAGfF64EKH5DNHTcjZD0TroUfIua
         ehngODnz1w62BKgy3j65PSOGc3nv7MkuWojbAYanPwRFnchD8KjPJVCtdJt7YpfbPxTI
         VozoLCFbvOFD7DVmIiq8tX/Li/Nx25CwBIWq0svfBtRyJuEkXMgcofO7ryV0wsUvkijN
         tdNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BKKtPSQS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t17si527080itb.2.2019.03.21.12.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BKKtPSQS;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BD425218D4;
	Thu, 21 Mar 2019 19:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195385;
	bh=0ph8E7gdyrVV1PZnF5LisK+7navA3CyCJwM/t3IoUsI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BKKtPSQSAsq6ElFqC9MEGhqwnyYKu66q9OxNLRodxh3cS/mA9lWake0lfRP3Ol073
	 5D8Z/ebPFd7/tN+MABSTgOYOiEOK4gaH+vq83wO7tXxJSbbxrTbCg9pV8jGH8q9OPJ
	 hwd5YtHzNcSbHZCNVhrzkdgMdKsbQ7rmFFpYnArI=
Date: Thu, 21 Mar 2019 20:09:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] [Outreachy kernel] staging: sm750fb: avoid camelcase
 function names
Message-ID: <20190321190942.GA11406@kroah.com>
References: <1553166249-12004-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1553166249-12004-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 04:34:09PM +0530, Payal Kshirsagar wrote:
> Eliminate camelcase function names to fix the style issue – 'avoid
> camelcase'.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index 1256b13..5e35fec 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -13,8 +13,8 @@
>   * HW only supports 7 predefined pixel clocks, and clock select is
>   * in bit 29:27 of Display Control register.
>   */
> -static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
> -						  unsigned long dispcontrol)
> +static unsigned long display_control_adjust_SM750LE(struct mode_parameter *pModeParam,
> +						    unsigned long dispcontrol)
>  {
>  	unsigned long x, y;
>  
> @@ -124,7 +124,7 @@ static int program_mode_registers(struct mode_parameter *pModeParam,
>  			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
>  
>  		if (sm750_get_chip_type() == SM750LE) {
> -			displayControlAdjust_SM750LE(pModeParam, tmp);
> +			display_control_adjust_SM750LE(pModeParam, tmp);
>  		} else {
>  			reg = peek32(CRT_DISPLAY_CTRL) &
>  				~(DISPLAY_CTRL_VSYNC_PHASE |

This patch does not apply to my tree at all :(

Please rebase and resend it.

thanks,

greg k-h

