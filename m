X-GM-THRID: 6182590742528
X-Received: by 10.194.11.70 with SMTP id o6mr4505625wjb.6.1425384023537;
        Tue, 03 Mar 2015 04:00:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.207.114 with SMTP id lv18ls104741wic.38.gmail; Tue, 03 Mar
 2015 04:00:23 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr2901688wic.3.1425384023256;
        Tue, 03 Mar 2015 04:00:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si80939wib.3.2015.03.03.04.00.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 04:00:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,681,1418079600"; 
   d="scan'208";a="124152542"
Received: from unknown (HELO hadrien.local) ([207.96.227.9])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Mar 2015 13:00:22 +0100
Date: Tue, 3 Mar 2015 07:00:21 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: Remove if
 condition.
In-Reply-To: <20150303113806.GA8173@localhost>
Message-ID: <alpine.DEB.2.10.1503030658440.2723@hadrien>
References: <20150303113806.GA8173@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Mar 2015, Navya Sri Nizamkari wrote:

> This patch removes a if condition which has a semicolon
> after it. As the conditional check is redundant, the comment
> before it is also changed. The following
> coccinelle script was used to detect the pattern of a
> semicolon after if.
>
> @r1@
> position p;
> @@
> if (...);@p
> @script:python@
> p0 << r1.p;
> @@
> // Emacs org-mode output
> cocci.print_main("", p0)
> cocci.print_secs("", p0)

A simpler way to do this is just

@@
@@

*if (...) ;

You will get a diff in which there is a - in front of each match.  Of
course you don't want to remove the matches, but it highlights the matched
code and shows some context.

julia


> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v2:
>      -Updated the commit subject and message.
>      -Removed the if-condition completely as
>       it was redundant.
>      -Changed the comment about the statements
>       which follow the if-condition.
>
>  drivers/staging/comedi/drivers/das1800.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> index 0790a28..8ffc9d0b 100644
> --- a/drivers/staging/comedi/drivers/das1800.c
> +++ b/drivers/staging/comedi/drivers/das1800.c
> @@ -491,9 +491,7 @@ static void das1800_handle_fifo_not_empty(struct comedi_device *dev,
>
>  	while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
>  		dpnt = inw(dev->iobase + DAS1800_FIFO);
> -		/* convert to unsigned type if we are in a bipolar mode */
> -		if (!unipolar)
> -			;
> +		/* convert to unsigned type */
>  		dpnt = munge_bipolar_sample(dev, dpnt);
>  		comedi_buf_write_samples(s, &dpnt, 1);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150303113806.GA8173%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

