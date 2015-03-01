X-GM-THRID: 5258052894720
X-Received: by 10.112.9.65 with SMTP id x1mr3380710lba.16.1425249481977;
        Sun, 01 Mar 2015 14:38:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls382762lab.107.gmail; Sun, 01
 Mar 2015 14:38:01 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr3330877lan.1.1425249481561;
        Sun, 01 Mar 2015 14:38:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si559994wix.0.2015.03.01.14.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:38:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="101719355"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:38:00 +0100
Date: Sun, 1 Mar 2015 16:37:57 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Remove semicolon
 after if.
In-Reply-To: <20150228220347.GA5430@localhost>
Message-ID: <alpine.DEB.2.10.1503011637440.2545@hadrien>
References: <20150228220347.GA5430@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:

> This patch removes a semicolon after if and encloses
> statements related to that if in brackets. The following
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
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/comedi/drivers/das1800.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> index 0790a28..c759a84 100644
> --- a/drivers/staging/comedi/drivers/das1800.c
> +++ b/drivers/staging/comedi/drivers/das1800.c
> @@ -492,11 +492,11 @@ static void das1800_handle_fifo_not_empty(struct comedi_device *dev,
>  	while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
>  		dpnt = inw(dev->iobase + DAS1800_FIFO);
>  		/* convert to unsigned type if we are in a bipolar mode */
> -		if (!unipolar)
> -			;
> -		dpnt = munge_bipolar_sample(dev, dpnt);
> +		if (!unipolar) {
> +		dpnt = mungef_bipolar_sample(dev, dpnt);

You need some indentation here.

julia

>  		comedi_buf_write_samples(s, &dpnt, 1);
> -
> +		}
> +
>  		if (cmd->stop_src == TRIG_COUNT &&
>  		    s->async->scans_done >= cmd->stop_arg)
>  			break;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150228220347.GA5430%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

