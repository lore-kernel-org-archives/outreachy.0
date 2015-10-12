X-GM-THRID: 6204754090721804288
X-Received: by 10.25.152.7 with SMTP id a7mr145917lfe.7.1444678494033;
        Mon, 12 Oct 2015 12:34:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.140 with SMTP id q134ls612142lfe.23.gmail; Mon, 12 Oct
 2015 12:34:53 -0700 (PDT)
X-Received: by 10.112.159.4 with SMTP id wy4mr4080981lbb.15.1444678493417;
        Mon, 12 Oct 2015 12:34:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si582123wib.2.2015.10.12.12.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 12:34:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,674,1437429600"; 
   d="scan'208";a="182415757"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 21:34:52 +0200
Date: Mon, 12 Oct 2015 21:34:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: Arnd Bergmann <arnd@arndb.de>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] Staging: wilc1000: host_interface:
 Remove useless cast
In-Reply-To: <CAKHNQQGS3mmm5aDbfuviH2F-5a+GgM4JG0qCwTb3e6xE_t=u2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1510122134040.2057@localhost6.localdomain6>
References: <cover.1444670615.git.shivanib134@gmail.com> <aa140d8daabc374f3cc6bfc12625164e47b37acb.1444670615.git.shivanib134@gmail.com> <31296892.7kyR2l26jl@wuerfel> <CAKHNQQGS3mmm5aDbfuviH2F-5a+GgM4JG0qCwTb3e6xE_t=u2Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:

> On Tue, Oct 13, 2015 at 12:19 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Monday 12 October 2015 23:02:53 Shivani Bhardwaj wrote:
> >> @@ -573,7 +573,6 @@ static s32 Handle_SetChannel(tstrWILC_WFIDrv *drvHandler,
> >>
> >>         s32 s32Error = 0;
> >>         tstrWID strWID;
> >> -       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
> >>
> >>         /*prepare configuration packet*/
> >>         strWID.u16WIDid = (u16)WID_CURRENT_CHANNEL;
> >>
> >
> > In the code I'm looking at, the variable is still used, just the cast
> > can be removed. I haven't checked the other variables, but I'd guess
> > that the same is true for them, because gcc tends to warn otherwise.
> >
> >         Arnd
> >
> Yes, Arnd. I've just removed the cast throughout the code. The
> variable is still used in the code. Unused code removal is given in
> other patch of same series.

Shivani, the whole thing disappeared somehow.  You should have a + line 
with the variable declaration.

julia


> Thank you
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/31296892.7kyR2l26jl%40wuerfel.
> > For more options, visit https://groups.google.com/d/optout.
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGS3mmm5aDbfuviH2F-5a%2BGgM4JG0qCwTb3e6xE_t%3Du2Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

