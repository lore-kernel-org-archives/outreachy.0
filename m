X-GM-THRID: 6330205612337528832
X-Received: by 10.46.5.140 with SMTP id 134mr1811571ljf.6.1473967739149;
        Thu, 15 Sep 2016 12:28:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.71.16 with SMTP id u16ls424039wma.12.gmail; Thu, 15 Sep
 2016 12:28:58 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr1795869wjb.1.1473967738533;
        Thu, 15 Sep 2016 12:28:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y6si128733wmg.0.2016.09.15.12.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:28:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="237012047"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:28:41 +0200
Date: Thu, 15 Sep 2016 21:28:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: comedi: drivers:
 Remove unused functions
In-Reply-To: <CAOH+1jGH+4vvRYvFXEnRVF+FSK3KwEn-duxFLcqFvUNTNEK_4g@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609152128130.3364@hadrien>
References: <1473949424-12322-1-git-send-email-bhumirks@gmail.com> <39752ed1-573d-dbbb-a670-a5ab9fbf287e@mev.co.uk> <CAOH+1jGH+4vvRYvFXEnRVF+FSK3KwEn-duxFLcqFvUNTNEK_4g@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Bhumika Goyal wrote:

> On Thu, Sep 15, 2016 at 8:57 PM, Ian Abbott <abbotti@mev.co.uk> wrote:
> > On 15/09/16 15:23, Bhumika Goyal wrote:
> >>
> >> The functions s626_get_latch_source, s626_get_load_trig,
> >> s626_set_clk_pol and  s626_set_index_src are not used anywhere in
> >> the kernel. Therefore, remove them. The static unused functions were
> >> detected using Coccinelle but the change was done by hand.
> >> Script used :
> >>
> >> @initialize:python@
> >> @@
> >> def display(name,p):
> >>         print(name,p[0].file)
> >>
> >> @r1@
> >> identifier func;
> >> type T;
> >> position p;
> >> @@
> >> static T func@p(...)
> >> {
> >> ...
> >> }
> >>
> >> @r@
> >> identifier r1.func;
> >> @@
> >> func
> >>
> >> @script:python depends on !r@
> >> func << r1.func;
> >> p << r1.p;
> >> @@
> >> display(func,p)
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >> Changes in v2:
> >> *  Simplify coccinelle script by removing func(...)
> >>   and adding spaces around "<<".
> >>
> >>  drivers/staging/comedi/drivers/s626.c | 51
> >> -----------------------------------
> >>  1 file changed, 51 deletions(-)
> >>
> >> diff --git a/drivers/staging/comedi/drivers/s626.c
> >> b/drivers/staging/comedi/drivers/s626.c
> >> index 6d89ca0..670d55c 100644
> >> --- a/drivers/staging/comedi/drivers/s626.c
> >> +++ b/drivers/staging/comedi/drivers/s626.c
> >> @@ -1034,14 +1034,6 @@ static uint16_t s626_get_enable(struct
> >> comedi_device *dev,
> >>  }
> >>  #endif
> >>
> >> -#ifdef unused
> >> -static uint16_t s626_get_latch_source(struct comedi_device *dev,
> >> -                                     unsigned int chan)
> >> -{
> >> -       return S626_GET_CRB_LATCHSRC(s626_debi_read(dev,
> >> S626_LP_CRB(chan)));
> >> -}
> >> -#endif
> >> -
> >>  /*
> >>   * Return/set the event that will trigger transfer of the preload
> >>   * register into the counter.  0=ThisCntr_Index, 1=ThisCntr_Overflow,
> >> @@ -1066,19 +1058,6 @@ static void s626_set_load_trig(struct comedi_device
> >> *dev,
> >>         s626_debi_replace(dev, reg, ~mask, set);
> >>  }
> >>
> >> -#ifdef unused
> >> -static uint16_t s626_get_load_trig(struct comedi_device *dev,
> >> -                                  unsigned int chan)
> >> -{
> >> -       if (chan < 3)
> >> -               return S626_GET_CRA_LOADSRC_A(s626_debi_read(dev,
> >> -
> >> S626_LP_CRA(chan)));
> >> -       else
> >> -               return S626_GET_CRB_LOADSRC_B(s626_debi_read(dev,
> >> -
> >> S626_LP_CRB(chan)));
> >> -}
> >> -#endif
> >> -
> >>  /*
> >>   * Return/set counter interrupt source and clear any captured
> >>   * index/overflow events.  int_source: 0=Disabled, 1=OverflowOnly,
> >> @@ -1168,21 +1147,6 @@ static void s626_set_clk_mult(struct comedi_device
> >> *dev,
> >>  }
> >>
> >>  /*
> >> - * Return/set the clock polarity.
> >> - */
> >> -static void s626_set_clk_pol(struct comedi_device *dev,
> >> -                            unsigned int chan, uint16_t value)
> >> -{
> >> -       uint16_t mode;
> >> -
> >> -       mode = s626_get_mode(dev, chan);
> >> -       mode &= ~S626_STDMSK_CLKPOL;
> >> -       mode |= S626_SET_STD_CLKPOL(value);
> >> -
> >> -       s626_set_mode(dev, chan, mode, false);
> >> -}
> >> -
> >> -/*
> >>   * Return/set the encoder mode.
> >>   */
> >>  static void s626_set_enc_mode(struct comedi_device *dev,
> >> @@ -1203,21 +1167,6 @@ static uint16_t s626_get_index_pol(struct
> >> comedi_device *dev,
> >>         return S626_GET_STD_INDXPOL(s626_get_mode(dev, chan));
> >>  }
> >>
> >> -/*
> >> - * Return/set the index source.
> >> - */
> >> -static void s626_set_index_src(struct comedi_device *dev,
> >> -                              unsigned int chan, uint16_t value)
> >> -{
> >> -       uint16_t mode;
> >> -
> >> -       mode = s626_get_mode(dev, chan);
> >> -       mode &= ~S626_STDMSK_INDXSRC;
> >> -       mode |= S626_SET_STD_INDXSRC(value != 0);
> >> -
> >> -       s626_set_mode(dev, chan, mode, false);
> >> -}
> >> -
> >>  static uint16_t s626_get_index_src(struct comedi_device *dev,
> >>                                    unsigned int chan)
> >>  {
> >>
> >
> > It will be better to get rid of all the #ifdef'ed out functions in one go,
> > rather than just few at a time.  Your commit
> > dda68765d757c7da878b093a87f24d6a1d4cfb64 in February removed a few more
> > unused functions from this driver.
> >
> Ok, I will remove all the #ifdef'ed functions together. But should I
> send a v3 for that or a new patch?
> Thanks for the input.

v3.  Then Greg will know what is the latest version of the patch for this
file.

julia

>
> Thanks,
> Bhumika
> > --
> > -=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
> > -=(                          Web: http://www.mev.co.uk/  )=-
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jGH%2B4vvRYvFXEnRVF%2BFSK3KwEn-duxFLcqFvUNTNEK_4g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

