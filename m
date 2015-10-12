X-GM-THRID: 6204754090721804288
X-Received: by 10.112.159.4 with SMTP id wy4mr3770354lbb.15.1444660079128;
        Mon, 12 Oct 2015 07:27:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.20 with SMTP id k20ls496029lfe.88.gmail; Mon, 12 Oct
 2015 07:27:58 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr5030306lbb.10.1444660078426;
        Mon, 12 Oct 2015 07:27:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si348991wib.1.2015.10.12.07.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 07:27:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,673,1437429600"; 
   d="scan'208";a="182360334"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 16:27:58 +0200
Date: Mon, 12 Oct 2015 16:27:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: host_interface:
 Remove unused code
In-Reply-To: <CAKHNQQGJM7VqEQnwgPjKBqQQGf8ukrB4_JX=t21F5phcf3NnAw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510121624330.2652@hadrien>
References: <cover.1444655924.git.shivanib134@gmail.com> <d8f8cff7018b0c9905df40eaa754b53e8164324e.1444655924.git.shivanib134@gmail.com> <alpine.DEB.2.10.1510121542430.2652@hadrien> <CAKHNQQGJM7VqEQnwgPjKBqQQGf8ukrB4_JX=t21F5phcf3NnAw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> On Mon, Oct 12, 2015 at 7:24 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:
> >
> >> Remove declaration and initialization of variables that are not used
> >> anywhere in the code.
> >> Issue found using coccinelle.
> >>
> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >> ---
> >>  drivers/staging/wilc1000/host_interface.c | 4 ----
> >>  1 file changed, 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> >> index b6eea9a..9e8bbc1 100644
> >> --- a/drivers/staging/wilc1000/host_interface.c
> >> +++ b/drivers/staging/wilc1000/host_interface.c
> >> @@ -4894,7 +4894,6 @@ s32 host_int_set_join_req(tstrWILC_WFIDrv *hWFIDrv, u8 *pu8bssid,
> >>       s32 s32Error = 0;
> >>       tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
> >>       struct host_if_msg msg;
> >> -     tenuScanConnTimer enuScanConnTimer;
> >
> > Got grep shows me only three uses of "tenuScanConnTimer".  One is the
> > typedef, and the other two are removed by your patch.  So you could redo
> > the patch and get rid of the typedef as well.
> >
> > Looking a bit more at the code, I see the following, which looks strange:
> >
> > tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)hWFIDrv;
> >
> > As far as I can tell, hWFIDrv already has type tstrWILC_WFIDrv, so the
> > cast is not necessary.  And it seems strange to have the two tests, first
> >
> > if (pstrWFIDrv == NULL || pfConnectResult == NULL)
> >
> > and then
> >
> > if (hWFIDrv == NULL)
> >
> > because the second one tests a subset of what the first one tests.
> >
> > Greg would also say that we don't need the type names embedded in the
> > variable names either, but that would be a lot to change, especially since
> > it impacts the field names too.
> >
> > In Coccinelle, you can make an expression metavariable that matches
> > expressions of a particular type.  So
> >
> > @@
> > type T;
> > T e;
> > identifier x;
> > @@
> >
> > * T x = (T)e;
> >
> > will highlight initializations with useless casts.
> >
> > julia
> >
>
> Thanks so much, Julia. I'm applying all of this. Thank you for the
> coccinelle script. Also, I want to know that I've been notified about
> one of the patch of this series that it was sent before and has not
> been applied. So, should I send an entirely new patch series removing
> that one or even parts of the series can be applied to the tree?

Since it is all on one file, maybe the best is to send a v2 of the series
with the redundant patch removed, the patch that removes the variable
declaration updated to remove the type too, and as much of the rest as you
want to do in the short term.

julia

