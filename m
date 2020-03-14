X-GM-THRID: 6804152716629114880
X-Received: by 2002:a05:6402:214:: with SMTP id t20mr20341345edv.78.1584215847942;
        Sat, 14 Mar 2020 12:57:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls7723679ejj.1.gmail; Sat, 14
 Mar 2020 12:57:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtowf7oLzZIjp4+SdgS9EMHlbjIq0y8zB/aXxL8jkcrj0xhlPIa/BzOspc+cmXNXgR+AXaY
X-Received: by 2002:a17:906:bcc4:: with SMTP id lw4mr17460201ejb.228.1584215846004;
        Sat, 14 Mar 2020 12:57:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584215846; cv=none;
        d=google.com; s=arc-20160816;
        b=PBie6N12m7uPILDj4/LOu2eW585vFzueKEh67hGd3MOLiOPD4w85MfO0KE5QBXyWbK
         XWOsxJ0NHr7KyPlIJ24nG27GsR1iIitRUzT0TIBdsyefR82sgW+L1YZZE4E+phgqIgQf
         onX0zmtylNJdaXJZ7OSDcprS/E4Zp/jKi+1C14lXSovaLN4/xk9T6PWiM8IkWcXcnkyI
         Xh1X2CirKFfQKJ04RMIL5L1cp3rNQvHa0MBnH3P/PR3mP4fi4FgipzcWT29twg5FtAiy
         Sp3kiyvtoYQbdimW+6Y9NNjYp42XFvyyptHiI+5tWBm2XMwnPb+Q7Vv8QR8oO8g2RqKY
         m5zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EqW4BllvOeYiCNNDH/43w/EouFtqSyZYUsmc7NAA8j0=;
        b=gwVA89Sx6G6AIw10Nagj8brn5Zqt+9aH7PaQSiCtgAJsN3glkAaHxCuE/I1YKKtQ32
         fNVtNz1qoHndK9aeuiY2ilwwGFu1WrZIDa7INsrMYWFXUEoYSWeKqMB3pk3L/dXoYI0k
         gkphyCqAsZWNx3HNK/miyDFayfxzLlQkkFKaHKQF9wuNzV+ArvNqt7tVzPXjAwc+LMsF
         NTF1U9nN+IRlT3rOACxNCp13A8UvhFVfYP8xGG0upgKAe5bTVSx9NNL3xfe5vhPi2Shw
         lH8jVngsO0435OwQHzYdk/qvGP/qGGflwYdjLQEySl6Uit5eI+xpE/X6ZB1HBgzChdi/
         E1sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d7si632989edo.5.2020.03.14.12.57.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 12:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="440339563"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 20:57:25 +0100
Date: Sat, 14 Mar 2020 20:57:25 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, 
    abbotti@mev.co.uk, hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: ni_mio_common: Code
 reformat and re-indentation
In-Reply-To: <20200314194724.GA2711@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003142054110.2293@hadrien>
References: <20200314194724.GA2711@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Mar 2020, Deepak R Varma wrote:

> Resolve general code indentation problems as detected by checkpatch script.
> Implement code reformat and re-indentation as per coding style to
> improve readability.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  .../staging/comedi/drivers/ni_mio_common.c    | 62 ++++++++++---------
>  1 file changed, 32 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index b72a40a79930..48e20de3ebcf 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -2198,10 +2198,10 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  			   NISTC_AI_TRIG_START1_SEL(0);
>  		break;
>  	case TRIG_EXT:
> -		ai_trig |= NISTC_AI_TRIG_START1_SEL(
> -			ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
> -					       NI_AI_StartTrigger,
> -					       &devpriv->routing_tables, 1));
> +		ai_trig |= NISTC_AI_TRIG_START1_SEL(ni_get_reg_value_roffs(
> +					CR_CHAN(cmd->start_arg),
> +					NI_AI_StartTrigger,
> +					&devpriv->routing_tables, 1));

These may have been better as they were.  At least the two function calls
are more visible in the original.

[...]

> @@ -3079,12 +3081,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
>  	 * zero out these bit fields to be set below. Does an ao-reset do this
>  	 * automatically?
>  	 */
> -	devpriv->ao_mode1 &= ~(
> -	  NISTC_AO_MODE1_UI_SRC_MASK         |
> -	  NISTC_AO_MODE1_UI_SRC_POLARITY     |
> -	  NISTC_AO_MODE1_UPDATE_SRC_MASK     |
> -	  NISTC_AO_MODE1_UPDATE_SRC_POLARITY
> -	);
> +	devpriv->ao_mode1 &= ~(NISTC_AO_MODE1_UI_SRC_MASK          |
> +				NISTC_AO_MODE1_UI_SRC_POLARITY     |
> +				NISTC_AO_MODE1_UPDATE_SRC_MASK     |
> +				NISTC_AO_MODE1_UPDATE_SRC_POLARITY);

This looks like an improveemnt.  Are the subsequent NISTCs lines up with
the right side of the (?  It doesn't look like it, but the +s can change
the appearance of the indentation.


>  	if (cmd->scan_begin_src == TRIG_TIMER) {
>  		unsigned int trigvar;
> @@ -3133,10 +3133,10 @@ static void ni_ao_cmd_set_update(struct comedi_device *dev,
>  	} else { /* TRIG_EXT */
>  		/* FIXME:  assert scan_begin_arg != 0, ret failure otherwise */
>  		devpriv->ao_cmd2  |= NISTC_AO_CMD2_BC_GATE_ENA;
> -		devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(
> -			ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
> -					 NI_AO_SampleClock,
> -					 &devpriv->routing_tables));
> +		devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(ni_get_reg_value(
> +						CR_CHAN(cmd->scan_begin_arg),
> +						NI_AO_SampleClock,
> +						&devpriv->routing_tables));
>  		if (cmd->scan_begin_arg & CR_INVERT)
>  			devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC_POLARITY;
>  	}
> @@ -3672,13 +3672,15 @@ static int ni_cdio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  	 */
>  	cdo_mode_bits = NI_M_CDO_MODE_FIFO_MODE |
>  			NI_M_CDO_MODE_HALT_ON_ERROR |
> -			NI_M_CDO_MODE_SAMPLE_SRC(
> -				ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
> -						 NI_DO_SampleClock,
> -						 &devpriv->routing_tables));
> +			NI_M_CDO_MODE_SAMPLE_SRC(ni_get_reg_value(
> +						CR_CHAN(cmd->scan_begin_arg),
> +						NI_DO_SampleClock,
> +						&devpriv->routing_tables));

These like the earlier ones are probably better left as is.

>  	if (cmd->scan_begin_arg & CR_INVERT)
>  		cdo_mode_bits |= NI_M_CDO_MODE_POLARITY;
> +
>  	ni_writel(dev, cdo_mode_bits, NI_M_CDO_MODE_REG);
> +

I'm not sure what motivated adding these blank lines, but it doesn't seem
to be the same issue as what is done in the rest of the patch.

julia

>  	if (s->io_bits) {
>  		ni_writel(dev, s->state, NI_M_CDO_FIFO_DATA_REG);
>  		ni_writel(dev, NI_M_CDO_CMD_SW_UPDATE, NI_M_CDIO_CMD_REG);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200314194724.GA2711%40deeUbuntu.
>

