X-GM-THRID: 6210349176655446016
X-Received: by 10.112.140.202 with SMTP id ri10mr9598185lbb.10.1445959739348;
        Tue, 27 Oct 2015 08:28:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.70 with SMTP id g67ls790238lfi.13.gmail; Tue, 27 Oct
 2015 08:28:58 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr9664306lbb.17.1445959738845;
        Tue, 27 Oct 2015 08:28:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bn7si623658wib.0.2015.10.27.08.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 08:28:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,205,1444687200"; 
   d="scan'208";a="184690400"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Oct 2015 16:28:58 +0100
Date: Tue, 27 Oct 2015 16:28:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: change IRQ_HANDLED to
 IRQ_WAKE_THREAD
In-Reply-To: <1445959587-25953-1-git-send-email-ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.10.1510271627540.2370@hadrien>
References: <1445959587-25953-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 27 Oct 2015, Ioana Ciornei wrote:

> This patch changes the return value of the primary interrupt handler to
> IRQ_WAKE_THREAD in order to wake the kernel thread represented by the
> iio_simple_dummy_event_handler function and continue handling the event.

Can you give some more justification about why that is the right thing to
do?  Is it for example what other IIO drivers do in this situation?

julia

> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/iio/iio_simple_dummy_events.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/iio_simple_dummy_events.c b/drivers/staging/iio/iio_simple_dummy_events.c
> index bfbf1c5..6eb600f 100644
> --- a/drivers/staging/iio/iio_simple_dummy_events.c
> +++ b/drivers/staging/iio/iio_simple_dummy_events.c
> @@ -159,7 +159,7 @@ static irqreturn_t iio_simple_dummy_get_timestamp(int irq, void *private)
>  	struct iio_dummy_state *st = iio_priv(indio_dev);
>
>  	st->event_timestamp = iio_get_time_ns();
> -	return IRQ_HANDLED;
> +	return IRQ_WAKE_THREAD;
>  }
>
>  /**
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1445959587-25953-1-git-send-email-ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

