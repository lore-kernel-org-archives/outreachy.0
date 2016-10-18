X-GM-THRID: 6342321503270338560
X-Received: by 10.129.21.214 with SMTP id 205mr332401ywv.164.1476768410527;
        Mon, 17 Oct 2016 22:26:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.130.39 with SMTP id e39ls4160630iod.11.gmail; Mon, 17 Oct
 2016 22:26:49 -0700 (PDT)
X-Received: by 10.66.217.196 with SMTP id pa4mr287392pac.16.1476768409910;
        Mon, 17 Oct 2016 22:26:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si4502923vkd.0.2016.10.17.22.26.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 22:26:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,508,1473112800"; 
   d="scan'208";a="197110855"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2016 07:26:48 +0200
Date: Tue, 18 Oct 2016 07:26:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: constify
 local structure
In-Reply-To: <20161017222305.GB2705@localhost>
Message-ID: <alpine.DEB.2.20.1610180720220.2038@hadrien>
References: <20161017064620.GA21653@localhost> <alpine.DEB.2.20.1610171124120.1921@hadrien> <20161017222305.GB2705@localhost>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 17 Oct 2016, Elizabeth Ferdman wrote:

> On Mon, Oct 17, 2016 at 11:26:11AM +0200, Julia Lawall wrote:
> >
> >
> > On Sun, 16 Oct 2016, Elizabeth Ferdman wrote:
> >
> > > Constify the static struct RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.
> > >
> > > The only other instance was one of its properties being assigned to a
> > > variable:
> > > Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
> > >
> > > Therefore this is a good candidate for constification.
> > >
> > > Running size did not show any difference:
> > > Before/After:
> > > text    data     bss     dec     hex filename
> > > 44122     408    2974   47504    b990
> >
> > This is not a good sign.  It suggests that you have not actually compiled
> > the lines of code that you changed.
> >
>
> That is indeed strange, I don't understand why that happened. I tried it
> again, and got this:
>
> Before:
>  text    data     bss     dec     hex filename
>   44122     408    2974   47504    b990
>
> After:
> text    data     bss     dec     hex filename
>  68238     408    5398   74044   1213c

This is even odder.  Now the data size has not changed (it should go down)
and the other numbers have changed massively.

julia

>
> > It is a little bit strange that a structure is declared to only contain
> > the number 3.
> >
>
> Yeah, this is how it's defined:
>
> struct rt_channel_plan_map {
>        unsigned char   Index2G;
> };
>
> Is it unconventional to have a struct with
> only one member? I guess it could just be an unsigned char. Perhaps it
> is to differentiate it from the other variable that is also called
> Index2G so maybe he's using it as a namespace.
>
> if (RT_CHANNEL_DOMAIN_REALTEK_DEFINE == ChannelPlIndex2G)
> 	Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
> else
> 	Index2G = RTW_ChannelPlanMap[ChannelPlan].Index2G;
>
>
> > I wonder if something else is going on?
> >
> > julia
> >
> > >
> > > Lastly, break up the long line to fix the checkpatch warning and conform
> > > to kernel coding style.
> > >
> > > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > index fb13df5..c94700c 100644
> > > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > @@ -133,7 +133,9 @@ static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
> > >  	{0x03},	/* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
> > >  };
> > >
> > > -static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
> > > +static const struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {
> > > +	0x03
> > > +}; /* use the combination for max channel numbers */
> > >
> > >  /*
> > >   * Search the @param channel_num in given @param channel_set
> > > --
> > > 2.1.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017064620.GA21653%40localhost.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017222305.GB2705%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

