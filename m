X-GM-THRID: 6392907056098050048
X-Received: by 10.46.20.72 with SMTP id 8mr2131659lju.19.1488465400382;
        Thu, 02 Mar 2017 06:36:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.36.212 with SMTP id k203ls1115954wmk.8.gmail; Thu, 02 Mar
 2017 06:36:39 -0800 (PST)
X-Received: by 10.223.177.213 with SMTP id r21mr474434wra.11.1488465399513;
        Thu, 02 Mar 2017 06:36:39 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si791250wmn.2.2017.03.02.06.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 06:36:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,231,1484002800"; 
   d="scan'208";a="262835225"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 15:36:39 +0100
Date: Thu, 2 Mar 2017 15:36:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: marvin24@gmx.de, gregkh@linuxfoundation.org, ac100@lists.launchpad.net, 
    linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: nvec: cleanup USLEEP_RANGE
 checkpatch checks
In-Reply-To: <20170302142418.GA16773@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703021535500.3414@hadrien>
References: <20170302142418.GA16773@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, simran singhal wrote:

> Resolve strict checkpatch USLEEP_RANGE checks by converting delays and
> sleeps as described in ./Documentation/timers/timers-howto.txt.
>
> CHECK: usleep_range is preferred over udelay; see Documentation/
> timers/timers-howto.txt
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/nvec/nvec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index c1feccf..cd35e64 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  		break;
>  	case 2:		/* first byte after command */
>  		if (status == (I2C_SL_IRQ | RNW | RCVD)) {
> -			udelay(33);
> +			usleep_range(33, 100);

How did you choose the upper limit.

I believe that Greg previously suggested not to make these changes if you
have no way to test them.

julia


>  			if (nvec->rx->data[0] != 0x01) {
>  				dev_err(nvec->dev,
>  					"Read without prior read command\n");
> @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
>  	 * We experience less incomplete messages with this delay than without
>  	 * it, but we don't know why. Help is appreciated.
>  	 */
> -	udelay(100);
> +	usleep_range(100, 200);
>
>  	return IRQ_HANDLED;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170302142418.GA16773%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

