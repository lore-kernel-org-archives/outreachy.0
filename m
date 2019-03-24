X-GM-THRID: 6671539899637694464
X-Received: by 2002:a02:1b54:: with SMTP id l81mr13377139jad.87.1553417882144;
        Sun, 24 Mar 2019 01:58:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls5427870ioc.3.gmail; Sun, 24 Mar
 2019 01:58:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUbWTNOH8PC+X87aGDmViSUMfzG4BTgWYaFz1n5MlWDmZO9xfWGjiFIHnS+EXv7CsESOgb
X-Received: by 2002:a6b:5810:: with SMTP id m16mr4371959iob.274.1553417881420;
        Sun, 24 Mar 2019 01:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417881; cv=none;
        d=google.com; s=arc-20160816;
        b=P+/SiOpO4Ylvle3iX+ZU368YiIY+lljCAQuB24oOxLOAexaOeqG7P2LjF34hEFEqZr
         ReXmz9H8JKzXH/Z1Ku3uuqKI9Eu7X5vVKOAY8A0+a4GOUCw/Nn04D1AoKbkK/BYVcRQj
         G6/UphpeIy/Bsi4PQcKytWBVAB2D7GCnlTD8hO30lxZMDTurJuePR6Go4h5G73OnmHNg
         xofOdQTBWdHsmaPHDTfX2SAxdvNhgQLOrXSiQD4ApOfXnxNPOzjAzeqFPUcwrXBxR+D0
         IbFswU5TZyJ0B8DZDot9fPwWxMNFXr8o6NALW6/gjd2jcupeWCIJiormc0cNNBOhR0y0
         293g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SYCKL23GCoFMUMACutoykwMsEXcwzBFzl6yO33qOnT8=;
        b=Gpr5yKLG7/aw0F1/DuV+uGwEelofzn46tYj1n7lBLoP2XlTLj9IbKi+frksw4jjED3
         0yKpo2sUxGENDrkR3ruWx4t3hpU1ugCRDow2i7ZMSHi5nznQgW3atMZJmEFERk4cPwUi
         M8ibBwxF+Y000XlHLAIqPRqU+M3hgXT0rlPcgOF8xjEtA2LY3Cb8xQ4377jRkaKxp0s0
         dNPSpkjOW4Vf7zUwwBVQId1ukWOkaqWoZdT7Bqq+EoGiFIx/wJ0xfz4gerhZrjCkHBu3
         NfG1/9hRhu8X4y67JbTJ36IMErryqVhLomq53yQ9wY/r7jQnzAE4qNaf6Ostbz9zL1hD
         KSKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7FyBx2R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si701069iok.3.2019.03.24.01.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7FyBx2R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D8D12171F;
	Sun, 24 Mar 2019 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417880;
	bh=7OPR0rxq3f0+jh0SDapeL3/cgNDRUsHfDEByfG/diGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=z7FyBx2RpdIIWfJRXYjIBm2BImdMYUnWCaigCfPCJtdMUGv1VS1niUGKLINAkQmrP
	 ES9drNum3oZzXikWZ/Mgu5PxLyv8ApGnllb9GWWvWpJCiA6VCeGmPJioRB/9xiBV6E
	 I33H5bGO3oz4VcHbWzsEEJCStXGGpPXZjUlTPZVY=
Date: Sun, 24 Mar 2019 09:57:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: anushkacharu9@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: greybus: arche-platform.c: fix line over 80
 characters
Message-ID: <20190324085753.GC21361@kroah.com>
References: <anushkacharu9@gmail.com>
 <20190323110155.6386-1-anushkacharu9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190323110155.6386-1-anushkacharu9@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 04:31:55PM +0530, anushkacharu9@gmail.com wrote:
> From: Anushka Shukla <anushkacharu9@gmail.com>
> 
> Fix line over 80 characters according to Linux kernel coding style
> 
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index 1e8fd48bedf9..970a11ccf578 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -180,8 +180,9 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  				 */
>  				if (arche_pdata->wake_detect_state !=
>  						WD_STATE_COLDBOOT_START) {
> -					arche_platform_set_wake_detect_state(arche_pdata,
> -									     WD_STATE_COLDBOOT_TRIG);
> +					arche_platform_set_wake_detect_state(
> +						arche_pdata,
> +						WD_STATE_COLDBOOT_TRIG);

The original is fine here, thanks.

greg k-h

