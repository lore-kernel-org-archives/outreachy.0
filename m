X-GM-THRID: 6330205612337528832
X-Received: by 10.194.104.230 with SMTP id gh6mr836790wjb.7.1473880698064;
        Wed, 14 Sep 2016 12:18:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.140 with SMTP id y134ls425143wmd.12.canary; Wed, 14 Sep
 2016 12:18:17 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr895001wme.7.1473880697589;
        Wed, 14 Sep 2016 12:18:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si71396wme.3.2016.09.14.12.18.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:18:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="193194755"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 21:18:16 +0200
Date: Wed, 14 Sep 2016 21:18:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: drivers: Remove
 unused functions
In-Reply-To: <1473865793-20468-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609142116480.3347@hadrien>
References: <1473865793-20468-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Bhumika Goyal wrote:

> The functions s626_get_latch_source, s626_get_load_trig,
> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
> the kernel. Therefore, remove them. The static unused functions were
> detected using Coccinelle but the changes were done by hand.
> Script used :
>
> @initialize:python@
> @@
> def display(name,p):
> 	print(name,p[0].file)
>
> @r1@
> identifier func;
> type T;
> position p;
> @@
> static T func@p(...)
> {
> ...
> }
>
> @r@
> identifier r1.func;
> position p;
> @@
> (
>  func(...)
> |
>  func
> )

This pattern is unnecessarily complex.  The second part (just func), will
also match anything the first part matches.  So you can just put func.

>
> @script:python depends on !r@
> func<<r1.func;
> p<<r1.p;

Perhaps it is just my personal taste, but I always put spaces around <<.

Looks good otherwise.

julia

> @@
> display(func,p)
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/comedi/drivers/s626.c | 51 -----------------------------------
>  1 file changed, 51 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
> index 6d89ca0..670d55c 100644
> --- a/drivers/staging/comedi/drivers/s626.c
> +++ b/drivers/staging/comedi/drivers/s626.c
> @@ -1034,14 +1034,6 @@ static uint16_t s626_get_enable(struct comedi_device *dev,
>  }
>  #endif
>
> -#ifdef unused
> -static uint16_t s626_get_latch_source(struct comedi_device *dev,
> -				      unsigned int chan)
> -{
> -	return S626_GET_CRB_LATCHSRC(s626_debi_read(dev, S626_LP_CRB(chan)));
> -}
> -#endif
> -
>  /*
>   * Return/set the event that will trigger transfer of the preload
>   * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
> @@ -1066,19 +1058,6 @@ static void s626_set_load_trig(struct comedi_device *dev,
>  	s626_debi_replace(dev, reg, ~mask, set);
>  }
>
> -#ifdef unused
> -static uint16_t s626_get_load_trig(struct comedi_device *dev,
> -				   unsigned int chan)
> -{
> -	if (chan < 3)
> -		return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
> -							S626_LP_CRA(chan)));
> -	else
> -		return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
> -							S626_LP_CRB(chan)));
> -}
> -#endif
> -
>  /*
>   * Return/set counter interrupt source and clear any captured
>   * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
> @@ -1168,21 +1147,6 @@ static void s626_set_clk_mult(struct comedi_device *dev,
>  }
>
>  /*
> - * Return/set the clock polarity.
> - */
> -static void s626_set_clk_pol(struct comedi_device *dev,
> -			     unsigned int chan, uint16_t value)
> -{
> -	uint16_t mode;
> -
> -	mode = s626_get_mode(dev, chan);
> -	mode &= ~S626_STDMSK_CLKPOL;
> -	mode |= S626_SET_STD_CLKPOL(value);
> -
> -	s626_set_mode(dev, chan, mode, false);
> -}
> -
> -/*
>   * Return/set the encoder mode.
>   */
>  static void s626_set_enc_mode(struct comedi_device *dev,
> @@ -1203,21 +1167,6 @@ static uint16_t s626_get_index_pol(struct comedi_device *dev,
>  	return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
>  }
>
> -/*
> - * Return/set the index source.
> - */
> -static void s626_set_index_src(struct comedi_device *dev,
> -			       unsigned int chan, uint16_t value)
> -{
> -	uint16_t mode;
> -
> -	mode = s626_get_mode(dev, chan);
> -	mode &= ~S626_STDMSK_INDXSRC;
> -	mode |= S626_SET_STD_INDXSRC(value != 0);
> -
> -	s626_set_mode(dev, chan, mode, false);
> -}
> -
>  static uint16_t s626_get_index_src(struct comedi_device *dev,
>  				   unsigned int chan)
>  {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473865793-20468-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

