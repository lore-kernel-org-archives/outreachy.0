X-GM-THRID: 6529042138324271104
X-Received: by 10.80.202.69 with SMTP id e5mr3338391edi.9.1520164904570;
        Sun, 04 Mar 2018 04:01:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls6778514edc.0.gmail; Sun, 04 Mar
 2018 04:01:43 -0800 (PST)
X-Google-Smtp-Source: AG47ELtVHvGzGqWmX3uLPX6ORsm9JHfJCiduF777bErs6vXebF6RkQxrfVre13KKHLhls9xz1Vn5
X-Received: by 10.80.141.16 with SMTP id s16mr3334504eds.7.1520164903499;
        Sun, 04 Mar 2018 04:01:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520164903; cv=none;
        d=google.com; s=arc-20160816;
        b=bOX5gxZvdll0rGyPpDUs0LXlezTFeWnHvk8OFjTQ2bZRVpa4XNw5wrut3cUMqfe/l5
         FM4g7VA94xQz9b4RaCtt9AzHAn+6ZUBibEgxKukClXpTKqV9WPr7PYO9cWUDPJmmis1J
         YhgPf8YAmGH7YK34DSMbcJ83WowuXshczym4SWLxKOFHSn1QT82uycANkTvKyS+GINk5
         9e4rWIgMntMfgOXfWezSJHbF4UmBzfPmx8pWwUm6OrBE1THXipG6Se2sOxyO1TRhqWRb
         foZVqnq2wp/nbDYXvNsQQyC1JI3IFdWHlIlMEhFkrZBVxt0LWwa6gppVjdV2uG/1lmUb
         bHdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=W8WbPdzrthwY2hAYlj7dPfc+s2OhYRJocqJcRx2fjqA=;
        b=J3hPIObDcKSN94ZvRSxTcYAK4BL/0n1sAYa5YX2ftoO5Khp9/TXWzlUXCgbfRs5gwL
         Vep4zDfNYelwTlRGj76WwDS7IgiDzXV4nkm8FIdNxXr0mXNlr5oP1SYMdHw9f2MZAYQ1
         n5QEjDUdlKhlRETw+C0mp9bAopFnnplCKQGIlCEyBIrBKBWMa572lCHl2IJ/IYtgLnCe
         srjr2wPPpkL3jHJOzB4KSVvmTNwoNXsBqgtXkrpnUJYIkYLkL74KehSCJCQwd6WDXY5G
         vkunBoAsZcvper9gNozTbWjVHgvrPCUpo/L+bE0mtsDL7kNpmXUdtTedVQAR/qMEtzyC
         Vhrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t4si473186edt.2.2018.03.04.04.01.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 04:01:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,422,1515452400"; 
   d="scan'208";a="256897733"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 13:01:42 +0100
Date: Sun, 4 Mar 2018 13:01:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: abbotti@mev.co.uk, H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: "dont" is changed
 to "don't"
In-Reply-To: <20180304105732.GA24762@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803041301210.2223@hadrien>
References: <20180304105732.GA24762@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> "dont" is changed to "don't" in messages, "dont" is not correct
> english.

The change is fine, but please rewrite the commit log in the imperative.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180304105732.GA24762%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

