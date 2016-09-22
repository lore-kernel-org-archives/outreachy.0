X-GM-THRID: 6332957936966434816
X-Received: by 10.25.130.147 with SMTP id e141mr17214lfd.16.1474524503639;
        Wed, 21 Sep 2016 23:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.198.67 with SMTP id w64ls117559wmf.21.canary; Wed, 21 Sep
 2016 23:08:23 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr17996wjc.2.1474524503094;
        Wed, 21 Sep 2016 23:08:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si2483267wme.3.2016.09.21.23.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 23:08:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,377,1470693600"; 
   d="scan'208";a="194245073"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Sep 2016 08:08:21 +0200
Date: Thu, 22 Sep 2016 08:08:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, Alison Schofield <amsfield22@gmail.com>, 
    daniel.baluta@intel.com, lidza.louina@gmail.com, markh@compro.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Break up long
 comment
In-Reply-To: <20160922011045.GA3636@localhost>
Message-ID: <alpine.DEB.2.10.1609220804360.3472@hadrien>
References: <20160922011045.GA3636@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 21 Sep 2016, Elizabeth Ferdman wrote:

> This patch splits a long comment up into two lines; error found by checkpatch
>
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index e794056..cb63351 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -996,7 +996,8 @@ static irqreturn_t neo_intr(int irq, void *voidbrd)
>
>   case UART_17158_TXRDY:
>   /*
> - * TXRDY interrupt clears after reading ISR register for the UART channel.
> + * TXRDY interrupt clears after reading
> + * ISR register for the UART channel.

The form of the patch is OK, but I don't think that he change is an
improvement.  I guess it was one character over before, or something like
that, because even with the added character at the front for the change,
the line looks fine.  But the main problem with the change is that the
lines now look visually similar in a way that doesn't correspond to the
semantics of the comment.  One has the impression that there are two
independent points, one about TXRDY and one about ISR, and that a period
was incorrectly omitted at the end of the first line.  But this is not the
case.  TXRDY is the subject and ISR is the object.

julia

>   */
>
>   /*
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922011045.GA3636%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

