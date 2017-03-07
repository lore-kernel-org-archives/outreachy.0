X-GM-THRID: 6394738986789634048
X-Received: by 10.25.210.146 with SMTP id j140mr161412lfg.10.1488901936188;
        Tue, 07 Mar 2017 07:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.94 with SMTP id j91ls12519lfi.11.gmail; Tue, 07 Mar 2017
 07:52:15 -0800 (PST)
X-Received: by 10.46.8.90 with SMTP id g26mr194975ljd.16.1488901935610;
        Tue, 07 Mar 2017 07:52:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si346924wmg.3.2017.03.07.07.52.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 07:52:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="215907231"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 16:52:15 +0100
Date: Tue, 7 Mar 2017 16:52:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, Marc Dietrich <marvin24@gmx.de>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: Replace udelay by
 usleep_range
In-Reply-To: <20170307125256.3998-1-sreyamittal5@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071651160.3150@hadrien>
References: <20170307125256.3998-1-sreyamittal5@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Sreya Mittal wrote:

> Replace udelay by usleep_range.
> Fixes the checkpatch issue:
> usleep_range is preferred over udelay
>
> In Documentation/timers/timers-howto.txt,
> it is mentioned that udelay should be used
> for a few microseconds(less than 10), and
> usleep_range should be preferred for 10
> microseconds to 20 milliseconds.
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index c1feccf..5fab241 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  		break;
>  	case 2:		/* first byte after command */
>  		if (status == (I2C_SL_IRQ | RNW | RCVD)) {
> -			udelay(33);
> +			usleep_range(33, 43);

The key point is how do you choose the upper bound.  If you don't have a
good rationale for your choice, it would be better not to make the change.

julia

>  			if (nvec->rx->data[0] != 0x01) {
>  				dev_err(nvec->dev,
>  					"Read without prior read command\n");
> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  	 * We experience less incomplete messages with this delay than without
>  	 * it, but we don't know why. Help is appreciated.
>  	 */
> -	udelay(100);
> +	usleep_range(100,200);
>
>  	return IRQ_HANDLED;
>  }
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307125256.3998-1-sreyamittal5%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

