X-GM-THRID: 6670803508303757312
X-Received: by 2002:a17:902:9a02:: with SMTP id v2mr5184322plp.201.1553195402607;
        Thu, 21 Mar 2019 12:10:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:164d:: with SMTP id 74ls2657591pfw.7.gmail; Thu, 21 Mar
 2019 12:10:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxm9UqOgYrDhPrJ1p/v01U7spALAgGQv/AXwWZwpC0/bp6xHO2vULPBWJxeKCQc70R0eUIV
X-Received: by 2002:a65:6283:: with SMTP id f3mr4859504pgv.125.1553195401940;
        Thu, 21 Mar 2019 12:10:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553195401; cv=none;
        d=google.com; s=arc-20160816;
        b=fCmLZx+QpmJoVnFO82ZRIUCeGPA+1nyHPP/zm9oL7TNbpPL2rxazC4PBSVXTJaWQLT
         Kt4xWLwbuFRtFUvhUJcVPHlU6XVCJxrMBEP2bmLxhv6wDJnIoTfnJ7CBdyZIIeEPwNVE
         gKyGfD+nYdstKyhSGom3yTD5Q2YDi6tad2DD3JPwNs3gBYNyGHYJiVnFnNMoN6aEKCmr
         jXkQU82nHuP0JjdD7PEWjkcIeW1kg7jeha29ZFz4zoplig1QYNpdCL3zORj3Edp7fATA
         wOx4jiSGQJgBPw5qMuE7utXfKC4wec5Gujg73t2fp983FBoCagE6RB4oC0ex6yiti6Ya
         Qxmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=d7+tH04lEkqJNJQFOMfDYZixq5zTMfLFK6yFNUtDbJs=;
        b=1Lo8PV2Xn4B+J7FPzFIqqMyAUOej3YL2vt4p7uElrVB24iLKYA29ifus4AqDm6IILW
         VBbzNbsJFpB+FqriTkY9N9nNw/v79/Fejz3Bj0vkTlulWTuQkMngND138MqPLiDXRjN+
         ssLzmVVTAkk4Yfm0drC+lR+pQNI9J5XzBLCjuEoyreLvyK1cRcTZ7z6O0jms47bNSdHY
         7r8TY9c3x+WCfrAsy6hT+luOrh+Bcp6kS2XyNzEzvrRqE83DXLql1YpNO12rHsPbTICu
         ge2ki0Gf6Rw7XM3hKFOZD6v/6Y5nuHQuLFreBfixybEODf7EtZdv28JXojIng9gjCWGn
         V7Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="dY/XMlxj";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si371125pgm.2.2019.03.21.12.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="dY/XMlxj";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2D66B218D4;
	Thu, 21 Mar 2019 19:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553195401;
	bh=WYkJGVbUH5+APacfVQi0GLVlhjLAZRY/Kerx4L3PoT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dY/XMlxjkw5tRUE4sAq9sydKcLwf70NH27/vZcgMzTWpZHqdET1wph4wP9SQOKSOH
	 lmzMDwAsWebdSpLeJE8Cjnq7BevkQvnJ7Nb2Po5ihl5/mptQHC3Vivq6/HmGFe8Anq
	 BXbXQ+55REM70UYkdlwVoUcDFbmBL39LsgsDBaW8=
Date: Thu, 21 Mar 2019 20:09:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/3] [Outreachy kernel] staging: sm750fb: avoid camelcase
 variable names
Message-ID: <20190321190959.GA11615@kroah.com>
References: <1553167457-12539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1553167457-12539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 04:54:17PM +0530, Payal Kshirsagar wrote:
> Eliminate camelcase variable names to fix the style issue – ‘avoid
> camelcase’.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index ab21337..5dfa87d 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -14,7 +14,7 @@
>   * in bit 29:27 of Display Control register.
>   */
>  static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,
> -						    unsigned long dispControl)
> +						    unsigned long disp_control)
>  {
>  	unsigned long x, y;
>  
> @@ -35,42 +35,42 @@ static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mod
>  	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
>  
>  	/*
> -	 * Assume common fields in dispControl have been properly set before
> +	 * Assume common fields in disp_control have been properly set before
>  	 * calling this function.
> -	 * This function only sets the extra fields in dispControl.
> +	 * This function only sets the extra fields in disp_control.
>  	 */
>  
>  	/* Clear bit 29:27 of display control register */
> -	dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;
> +	disp_control &= ~CRT_DISPLAY_CTRL_CLK_MASK;
>  
>  	/* Set bit 29:27 of display control register for the right clock */
>  	/* Note that SM750LE only need to supported 7 resolutions. */
>  	if (x == 800 && y == 600)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL41;
>  	else if (x == 1024 && y == 768)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL65;
>  	else if (x == 1152 && y == 864)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
>  	else if (x == 1280 && y == 768)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
>  	else if (x == 1280 && y == 720)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL74;
>  	else if (x == 1280 && y == 960)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
>  	else if (x == 1280 && y == 1024)
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
>  	else /* default to VGA clock */
> -		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;
> +		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL25;
>  
>  	/* Set bit 25:24 of display controller */
> -	dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
> +	disp_control |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
>  
>  	/* Set bit 14 of display controller */
> -	dispControl |= DISPLAY_CTRL_CLOCK_PHASE;
> +	disp_control |= DISPLAY_CTRL_CLOCK_PHASE;
>  
> -	poke32(CRT_DISPLAY_CTRL, dispControl);
> +	poke32(CRT_DISPLAY_CTRL, disp_control);
>  
> -	return dispControl;
> +	return disp_control;
>  }
>  
>  /* only timing related registers will be  programed */

This patch also does not apply :(

