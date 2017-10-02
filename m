X-GM-THRID: 6472277834533437440
X-Received: by 10.28.230.198 with SMTP id e67mr1620880wmi.24.1506944912239;
        Mon, 02 Oct 2017 04:48:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.195.40 with SMTP id n37ls2280334wrf.2.gmail; Mon, 02 Oct
 2017 04:48:31 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA9aChB43UQSCj/y+CVXr2LuRsfa28wgtx8gvqNEygRFyf742Cfw4vve4VdvigZP8YsMZZQ
X-Received: by 10.28.131.14 with SMTP id f14mr1669637wmd.25.1506944911411;
        Mon, 02 Oct 2017 04:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506944911; cv=none;
        d=google.com; s=arc-20160816;
        b=dcCPLmom+0PJNaxnQsFnEbKuan+5vejqW1jtysBR0+lztG3km1EfypzxxBxhQMpYgh
         /VhcVfPBlLOU95/dgoHFRUmeqjqiAUXv9Lk4ekxQbGLFL4luAwyv/9BNlnAq7BYICcTq
         WX9qTXaAaqqQCy4gq1Zz80/R7ImAxQkla34naQ/byQH5HX1088YsVI9qoy5fiYxVZ94d
         OI2CsJ7mnqkBmPp/HvAKSpyVLlmeaS3rJPk0AevpdhhQvzcWOiL1KEJtxIcCLu92YC0l
         Q6o08yXp51pr/jny75Cmk2pgPObxeWTD9SYCNxKGq3yMIoln0EJVa9ldTg2zzFX2o9zS
         iD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=i3xyB4VdNelBmtcnIMzyPWNT5qZiYBzjp0fSKpbLqIc=;
        b=gDZlmA0Meb0VTyRoduAey6KbZ93uiaDNEc3gE2rY2woInk3y0Vvt/43AjXyeQDaDkB
         /nUx+iEbT/7eoalbAvfO/Wp8S8Ujjb+jCXE5mb52xwFbHk/l6sX50X4OQGkNevrHfxl8
         uxN3n7ihwq46ASQF0PkauihYzWGZHLPa9SUU1Tifd/KDd2I24jj+BBD0kSugkIcpBnVt
         6peJpTBy57XQqgsGB9hdukRGsFAm4J4LrP7EE1M3GQfJ37vVcwq3FIt2v/DTvp5ubV8G
         trrO2n0a+NGq0G17brccUhLHqLutYkUpdvVguMZjYU25BimDgzRnT+CRSs9OCkyrkrqg
         AUYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h17si1258340wmd.0.2017.10.02.04.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 04:48:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,469,1500933600"; 
   d="scan'208";a="293723710"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2017 13:48:31 +0200
Date: Mon, 2 Oct 2017 13:48:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: use usleep_range
 instead of udelay
In-Reply-To: <20171002114322.GA8908@manoharreddy>
Message-ID: <alpine.DEB.2.20.1710021347340.3515@hadrien>
References: <20171002114322.GA8908@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Oct 2017, Keerthi Reddy wrote:

> Since a its a slow device, allow a small range of 100

How do you know that it is a slow device?

Try to make the commit log message more self contained, not a continuation
of the subject line, and use the imperative.

julia

>
> Signed-off-by: Keerthi Reddy <Keerthigd4990@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_card.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
> index a6b7bff..418e29d 100644
> --- a/drivers/staging/rts5208/rtsx_card.c
> +++ b/drivers/staging/rts5208/rtsx_card.c
> @@ -825,7 +825,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
>  	}
>
>  	if (sd_vpclk_phase_reset) {
> -		udelay(200);
> +		usleep_range(200, 300);
>  		retval = rtsx_write_register(chip, SD_VPCLK0_CTL,
>  					     PHASE_NOT_RESET, PHASE_NOT_RESET);
>  		if (retval) {
> @@ -838,7 +838,7 @@ int switch_normal_clock(struct rtsx_chip *chip, int clk)
>  			rtsx_trace(chip);
>  			return retval;
>  		}
> -		udelay(200);
> +		usleep_range(200, 300);
>  	}
>  	retval = rtsx_write_register(chip, CLK_CTL, 0xFF, 0);
>  	if (retval) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171002114322.GA8908%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

