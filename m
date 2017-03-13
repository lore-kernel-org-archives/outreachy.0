X-GM-THRID: 6395629856318554112
X-Received: by 10.46.81.66 with SMTP id b2mr4890899lje.3.1489385427868;
        Sun, 12 Mar 2017 23:10:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls1453018lji.30.gmail; Sun, 12 Mar
 2017 23:10:27 -0700 (PDT)
X-Received: by 10.25.156.74 with SMTP id f71mr4362575lfe.26.1489385426993;
        Sun, 12 Mar 2017 23:10:26 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b186si537873wme.1.2017.03.12.23.10.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 23:10:26 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,157,1486422000"; 
   d="scan'208";a="264243486"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 07:10:26 +0100
Date: Mon, 13 Mar 2017 07:10:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: wilc1000: Remove
 unnecessary brackets
In-Reply-To: <20170312235113.GC14759@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703130709060.2096@hadrien>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com> <20170312211518.3172-4-diaconita.tamara@gmail.com> <20170312235113.GC14759@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Alison Schofield wrote:

> On Sun, Mar 12, 2017 at 11:15:18PM +0200, Tamara Diaconita wrote:
> > Improved code readability by removing unnecessary brackets and
> > deleted tabs to indent.
>
> Tamara, I'm not so sure about the 'deleted tabs to indent' phrase.
>
> Remove unnecessary brackets to properly indent code.  The code
> is now more readable.

Actually, "Remove unnecessary brackets to properly indent code." doesn't
work for me, since the removing doesn't itself affect the indentation.
Remove unnecessary brackets and correspondingly unindent code might be
clearer.

julia

>
> >
> > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_spi.c | 38 +++++++++++++++++--------------------
> >  1 file changed, 17 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
> > index 9cde575..f63aaca 100644
> > --- a/drivers/staging/wilc1000/wilc_spi.c
> > +++ b/drivers/staging/wilc1000/wilc_spi.c
> > @@ -956,31 +956,27 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
> >  		}
> >  		tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
> >
> > -		{
> > -			j = 0;
> > -			do {
> > -				happened = 0;
> > +		j = 0;
> > +		do {
> > +			happened = 0;
> >
> > -				wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> > -				tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
> > +			wilc_spi_read_reg(wilc, 0x1a90, &irq_flags);
> > +			tmp |= ((irq_flags >> 27) << IRG_FLAGS_OFFSET);
> >
> > -				if (g_spi.nint > 5) {
> > -					wilc_spi_read_reg(wilc, 0x1a94,
> > -							  &irq_flags);
> > -					tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> > -				}
> > +			if (g_spi.nint > 5) {
> > +				wilc_spi_read_reg(wilc, 0x1a94,
> > +						  &irq_flags);
> > +				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
> > +			}
> >
> > -				{
> > -					unknown_mask = ~((1ul << g_spi.nint) - 1);
> > +			unknown_mask = ~((1ul << g_spi.nint) - 1);
> >
> > -					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
> > -						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
> > -						happened = 1;
> > -					}
> > -				}
> > -				j++;
> > -			} while (happened);
> > -		}
> > +			if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
> > +				dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
> > +				happened = 1;
> > +			}
> > +			j++;
> > +		} while (happened);
> >
> >  		*int_status = tmp;
> >  	}
> > --
> > 2.9.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-4-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312235113.GC14759%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

