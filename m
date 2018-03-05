X-GM-THRID: 6529312870526615552
X-Received: by 10.25.158.145 with SMTP id h139mr988154lfe.30.1520234493356;
        Sun, 04 Mar 2018 23:21:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.82 with SMTP id m18ls1578869lfj.9.gmail; Sun, 04 Mar
 2018 23:21:31 -0800 (PST)
X-Google-Smtp-Source: AG47ELu3fGNHA8lZ4G9Fqd94l0RTup8wKyhKF60ejTNoedis0NGv/XFe5RCuJpWR0nWxa113s7S2
X-Received: by 10.25.43.133 with SMTP id r127mr993347lfr.22.1520234491975;
        Sun, 04 Mar 2018 23:21:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520234491; cv=none;
        d=google.com; s=arc-20160816;
        b=F0798kiqnLovaoifF+f36FVzHx67LlE0+25tSCMt6RLXoRJG/LjEzO5A3VaJ/zRNod
         s15spgN2eGXlwrJF+dmFixvqE8beFZkWZGPVY0yMtA9D2wbldEu91WC57lJcv63jfcHF
         z+9UmGIUy2FoidxXX4L1nwQ+U8Mzau79L3Vk36ppgdiYcFfzS4Nw7osvNepN/eCgiT4d
         GGgbESMaHHq2kOfkaLkWY85xxbdreq75lI9Y1O+1jAqtV7l7OBS5LMQVNPin2WlPntWV
         oBKaA/4YEvvbOmr+0eAEqHnHUjQai9AxiTSPZN9QGe2B/Q7EuOqzXV7S2b/382zQ6QQi
         E96Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=X0T7fCmoYGVHMids7JcnDvlf8aW2L2Wv0O6uLwT0DkQ=;
        b=pn1jmof76YcrtPHXCnf6ne0t0gssUEN9RMKGnCsKUEUGYhfJaafPxyPuHRZNlOeG2n
         PhNG1oLfBruMw1zkp8Qy2BlqrXkijQIwHQR3M5VdvkLg/1EQkfLhm1Uu0ROM/rAT/TJg
         ZeF7RI8fGZ1RcMVKZpHZVpa2xr7PW+eEYq7RqMr5uGAZCsuUVywEZ/ceAT2VFncpXmyQ
         rItPuQ807lQPRFjYdAOxYhHLKlr0AzLtGopEqEena0LBMza5Sh7O2xp4yUcwwPRDmai/
         mxsnoiDDz37RBo7s17weL0GaOCICkRRls+1M/W0YDJPavh07U/NYNBAzzOuulZzW4MQE
         c0Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j4si490806lja.1.2018.03.04.23.21.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 23:21:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,426,1515452400"; 
   d="scan'208";a="256958399"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2018 08:21:30 +0100
Date: Mon, 5 Mar 2018 08:21:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: abbotti@mev.co.uk, H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: Replace "dont"
 with "don't
In-Reply-To: <20180305042808.GA24032@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803050821190.2306@hadrien>
References: <20180305042808.GA24032@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Mar 2018, Arushi Singhal wrote:

> Replace "dont" with "don't".
> "Dont" is not same as "Do not" or "Don't".
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> changes in v2
> *Commit log is rewrite in the imperative.
>
>  drivers/staging/comedi/drivers/cb_pcidas64.c | 2 +-
>  drivers/staging/comedi/drivers/das16.c       | 2 +-
>  drivers/staging/comedi/drivers/das16m1.c     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index c007500..ceef905 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1700,7 +1700,7 @@ static void i2c_write(struct comedi_device *dev, unsigned int address,
>  	 * eeprom and i2c bus
>  	 */
>
> -	/* make sure we dont send anything to eeprom */
> +	/* make sure we don't send anything to eeprom */
>  	devpriv->plx_control_bits &= ~PLX_CNTRL_EECS;
>
>  	i2c_stop(dev);
> diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
> index 74ff204..81eb51b 100644
> --- a/drivers/staging/comedi/drivers/das16.c
> +++ b/drivers/staging/comedi/drivers/das16.c
> @@ -619,7 +619,7 @@ static int das16_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
>
>  	/* Step 2b : and mutually compatible */
>
> -	/*  make sure scan_begin_src and convert_src dont conflict */
> +	/*  make sure scan_begin_src and convert_src don't conflict */
>  	if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == TRIG_NOW)
>  		err |= -EINVAL;
>  	if (cmd->scan_begin_src != TRIG_FOLLOW && cmd->convert_src != TRIG_NOW)
> diff --git a/drivers/staging/comedi/drivers/das16m1.c b/drivers/staging/comedi/drivers/das16m1.c
> index 72f8ed2..4e36377 100644
> --- a/drivers/staging/comedi/drivers/das16m1.c
> +++ b/drivers/staging/comedi/drivers/das16m1.c
> @@ -407,7 +407,7 @@ static void das16m1_handler(struct comedi_device *dev, unsigned int status)
>  		if (num_samples > cmd->stop_arg * cmd->chanlist_len)
>  			num_samples = cmd->stop_arg * cmd->chanlist_len;
>  	}
> -	/*  make sure we dont try to get too many points if fifo has overrun */
> +	/*  make sure we don't try to get too many points if fifo has overrun */
>  	if (num_samples > DAS16M1_AI_FIFO_SZ)
>  		num_samples = DAS16M1_AI_FIFO_SZ;
>  	insw(dev->iobase, devpriv->ai_buffer, num_samples);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180305042808.GA24032%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

