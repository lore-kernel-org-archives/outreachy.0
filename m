X-GM-THRID: 6809913191851622400
X-Received: by 2002:a50:8b41:: with SMTP id l59mr7451933edl.44.1585730514536;
        Wed, 01 Apr 2020 01:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:748:: with SMTP id p8ls3840050edy.8.gmail; Wed, 01
 Apr 2020 01:41:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWkrlxSlpzhCsbdqLrjzRXPgjd12gEjfiFfwWRr5V/l+mQsJWoaXsN13F9q8NDTmx4Hf87
X-Received: by 2002:aa7:c359:: with SMTP id j25mr19687454edr.85.1585730512981;
        Wed, 01 Apr 2020 01:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585730512; cv=none;
        d=google.com; s=arc-20160816;
        b=nG53+vF3Jehg3Yc0HDLTmIjv0LsxPn5feSIqr7Rw2pddI6rEKn9i0zB95y4JCiY2rk
         IIHidvwrRq6k/93D0vkFFZ5+OUAAt/Otts1mkrB8n0O0kkcyAYdIUpAZJ7nJ1TeI4bkV
         3m7VQ6Z3VO+vfYx1Cn1ggKFR4Nkpd7/qG/3HaxJg3Q73Kdme9XznWIK0BsqkpqqkPWyg
         KQ5Dpk0ds5kVmsmsk6TPBaSkmZ0jqU0vx8lbmRQhrj5sSflzlj2hMNt372j7IxoS7vQw
         Vump0pQu7JA4XFeLnhfZPek/we2wSJOdmRAqGDAErx7mhXfA19USdHBf6ZZbYfh4Ga22
         q1VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wavYth5cFnwmuDB2lQ3f7V2Du88Xec75XHv9GBrKGks=;
        b=STPO5ruAg4z1TKxLI9IUJQVkAT0anaqpGnY86ga1CTfecGOtHCIt78bIO3+XAq3wJg
         b+SO88pv2kMl7or7BJZpbmCqLW/rhBLOwPcTtqSjGg5DORMxWYmQrd6KcXzxZkz7D6/H
         hAQolCgUtYJSetxdYp8UPwlsIAjLXaMo/m7/qrBNVgXHYWx9XEYMEgg9z7iXtG3N3t+P
         x8tlESWUbkW0epYlt8dgacBRtcP3sTye516jVrVhPJK4FQw2jjjZQNA+HvEbdpnjY4M2
         FyGikf9BuJSb/RgqpQZ9iyqtLD7zsV1T+KymWDVy/u2vJuPRhBQFwR3MZS77pRa/EC00
         y0yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a10si77066edq.5.2020.04.01.01.41.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 01:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,331,1580770800"; 
   d="scan'208";a="344552803"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2020 10:41:52 +0200
Date: Wed, 1 Apr 2020 10:41:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH v2 2/3] staging: rtl8188eu:
 Line over 80 characters
In-Reply-To: <20200401075902.GA18430@ubuntu>
Message-ID: <alpine.DEB.2.21.2004011038290.2342@hadrien>
References: <20200331183201.18386-1-debsoumyajit100@gmail.com> <20200331183201.18386-3-debsoumyajit100@gmail.com> <20200401044838.4f8a0ba9@elisabeth> <20200401075902.GA18430@ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Apr 2020, Soumyajit Deb wrote:

> On Wed, Apr 01, 2020 at 04:48:38AM +0200, Stefano Brivio wrote:
> > On Wed,  1 Apr 2020 00:02:00 +0530
> > Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> >
> > > @@ -445,7 +455,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > >  		tx_ra_bitmap = 0xf;
> > >
> > >  		raid = networktype_to_raid(network_type);
> > > -		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
> > > +		init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) &
> > > +							      0x3f;
> >
> > Hmm, no, wait, what is 0x3f bit-wise intersected with?
> >
> > a = lol;
> >
> > a = lol *
> >     2;
> >
> > a = (lol + foo) *
> >     2;
> >
> > a = lol + foo *
> >           2;
> >
> > but not:
> >
> > a = (lol + foo) *
> >          2;
> >
> > ...right?
> >
>
> I am sorry but I couldn't understand what you mean.
>
> As much I can see, a bitwise AND operation is being done between 0x3f and the
> return value of get_highest_rate_idx() function. The first & operation
> is between the arguments of get_highest_rate_idx() function.

Putting the 0x3 underneath the middle of the argument list of the left
argument of the & is very strange.  get_highest_rate_idx is going to take
its argument and produce some value.  That value will be &ed with 0x3f.
There is no interaction between the arguments of this function and 0x3f,
so it is misleading to try to associate them in some way.  Lining up the
left side of get_highest_rate_idx (left argument of &) with the left side
of 0x3f (right argument of &) could be fine.

>
> If the current alignment is wrong, should I place 0x3f someplace else?
>
> But as you suggested previously in this thread, that I should place 0x3f
> below the start of first & operand.

There may have been a confusion because there are two &s in this code.

julia

>
> > >
> > >  		/* ap mode */
> > >  		rtw_hal_set_odm_var(padapter, HAL_ODM_STA_INFO, psta, true);
> > > @@ -456,7 +467,8 @@ static void update_bmc_sta(struct adapter *padapter)
> > >  			arg = psta->mac_id & 0x1f;
> > >  			arg |= BIT(7);
> > >  			tx_ra_bitmap |= ((raid << 28) & 0xf0000000);
> > > -			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__, tx_ra_bitmap, arg);
> > > +			DBG_88E("%s, mask = 0x%x, arg = 0x%x\n", __func__,
> > > +				tx_ra_bitmap, arg);
> > >
> > >  			/* bitmap[0:27] = tx_rate_bitmap */
> > >  			/* bitmap[28:31]= Rate Adaptive id */
> > > @@ -647,7 +659,8 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
> > >  	rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
> > >
> > >  	/* Beacon Control related register */
> > > -	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL, (u8 *)(&bcn_interval));
> > > +	rtw_hal_set_hwreg(padapter, HW_VAR_BEACON_INTERVAL,
> > > +			  (u8 *)(&bcn_interval));
> >
> > This is another pair of parentheses that you could remove: &a == (&a).
> >
> > --
> > Stefano
>
> I noticed those parentheses while removing other extra parentheses
> but I didn't remove these as most of these parentheses are present
> after a type cast.
> Will it not look confusing if I remove these paretheses?
> If not, I will remove them :)
>
> Thank you.
>
> --
> Soumyajit
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200401075902.GA18430%40ubuntu.
>

