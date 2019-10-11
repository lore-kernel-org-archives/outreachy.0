X-GM-THRID: 6746366281949118464
X-Received: by 2002:a9d:3476:: with SMTP id v109mr10917635otb.347.1570767892101;
        Thu, 10 Oct 2019 21:24:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:bd44:: with SMTP id n65ls1171210oif.6.gmail; Thu, 10 Oct
 2019 21:24:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw7wSH6NB+QbwsPxrPOVqgnuM9AnOA3GqGp8t5UwZyDmT5yYrLGo5dGjta1BQzcpqnG7cS7
X-Received: by 2002:aca:5202:: with SMTP id g2mr10740679oib.155.1570767891028;
        Thu, 10 Oct 2019 21:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570767891; cv=none;
        d=google.com; s=arc-20160816;
        b=W9LXu90/Qna84YhWAA5OtDr5e2b8m40x5RuHd+Kl+JjC4o0njlab2Pt6CholYw0+qj
         lxeShLqOPg8PJfHr5X4DFhPGYmycXkBuve/Bru6HWuTRw2WtAwIaDlcHeNI8QzkdeUVx
         jArYu5+flaielFxf7G8H1PTk6QSzEef736zo0flF7tbIj/odMY1FKrg4CgtWPUO6DCqT
         NKvVRt3+jSqznwKVaPTbeYgIxsmTatBAVvjxmK6JASsrMG7kZ7b94JAujDGgjRFYybxb
         CHJ3AkBPLtOUrb0/dI0aIx/Mq0lDFCz3D0kAaMaxpMB3FAPNRS31L70m0lL8T3FfDpq1
         hWrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gbrHCK2PCGlibRn9dyhhVh6fvaadNL035cRMIkUzxnU=;
        b=WBZgAbCtGaG0ROfqnmXc4SunIAcfKo8y8KERNR6VnhN0nq1O/ZqWpIuXsooJhhKaM/
         f+gkbIGlkP/FO7JQ7aK1FGowbGMVPnV0+Qk8HPXqwE16Nw3f4YdA8mr4GfaUu2QN6wvB
         QhH8CQX4QRHfsSgkkslkTTLtr1KV83Tfi33Q2zcjit9/uq3jJbBwHexuYfwBqXk1lrtA
         xvDxImPJ0HHrQK7Hpi+lDTVw61Z5lzM5rr6WnOd3nT/zSfj2eYMRhrB9kjcGio1+9xc4
         +L8iIhPzpJ0M1wZwIOYaUcct7NGWPaZRM0bybpQxouXpkECvzPEJzIc5cuSNt3CyxRg3
         PuHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="iA/QQcz+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k184si34834oih.0.2019.10.10.21.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 21:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="iA/QQcz+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3BE72089F;
	Fri, 11 Oct 2019 04:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570767890;
	bh=X7l1c+LY1LFPkuCeoFfXdL0Wf1WtSTVpHYSLubMv9V0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iA/QQcz+sG+fd1xSqZDH/A6S1ZhNXO7DWDhDjw1wjQiDO8UIrkDlmhcdx3l3QFix2
	 ntKYXfVNxFG0Aw/XQbH1/emAqttouhdf8yKep3SKBR2Nm6ty1aLj5wimONYTxH6DZr
	 ii28qrSF69dK6CnTCdr96OYFV/D7vQcFZOEAUPf8=
Date: Fri, 11 Oct 2019 06:24:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com, Andrea.Parri@microsoft.com,
	Boqun.Feng@microsoft.com
Subject: Re: [PATCH] staging: greybus: Fix line over 80 characters issues
Message-ID: <20191011042446.GA938845@kroah.com>
References: <20191011022640.GA3449@jamal-XPS-13-9343>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011022640.GA3449@jamal-XPS-13-9343>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 10, 2019 at 07:26:40PM -0700, Jamal Shareef wrote:
> Fix line over 80 characters coding style issues. Issue found by
> checkpatch.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index eebf0deb39f5..8cf12616bc53 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
>  	struct gpio_desc *svc_reset;
>  	bool is_reset_act_hi;
>  	struct gpio_desc *svc_sysboot;
> -	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> +	struct gpio_desc *wake_detect;
> +	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */

The comment should be above the line, if you really want to do this.  I
would just leave this alone, sorry

>  	enum arche_platform_state state;
>  
> @@ -168,10 +169,10 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  		 */
>  		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
>  			if (time_before(jiffies,
> -					arche_pdata->wake_detect_start +
> -					msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> -				arche_platform_set_wake_detect_state(arche_pdata,
> -								     WD_STATE_IDLE);
> +				arche_pdata->wake_detect_start +
> +				msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> +				arche_platform_set_wake_detect_state
> +					(arche_pdata, WD_STATE_IDLE);

I think you will get different errors from checkpatch now, right?

This alignment makes the code harder to understand.

>  			} else {
>  				/*
>  				 * Check we are not in middle of irq thread
> @@ -179,8 +180,10 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  				 */
>  				if (arche_pdata->wake_detect_state !=
>  						WD_STATE_COLDBOOT_START) {
> -					arche_platform_set_wake_detect_state(arche_pdata,
> -									     WD_STATE_COLDBOOT_TRIG);
> +					arche_platform_set_wake_detect_state
> +						(arche_pdata,
> +						 WD_STATE_COLDBOOT_TRIG);

Same here :(

> +
>  					spin_unlock_irqrestore(
>  						&arche_pdata->wake_lock,
>  						flags);
> @@ -200,7 +203,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  			 * to standby boot.
>  			 */
>  			arche_platform_set_wake_detect_state(arche_pdata,
> -							     WD_STATE_BOOT_INIT);
> +							WD_STATE_BOOT_INIT);

And here :(

I think this file really can't be fixed up anymore for line-lengths,
sorry.

greg k-h

