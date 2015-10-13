X-GM-THRID: 6202672545102036992
X-Received: by 10.112.140.202 with SMTP id ri10mr6185594lbb.10.1444737131650;
        Tue, 13 Oct 2015 04:52:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.149.7 with SMTP id x7ls631401lfd.51.gmail; Tue, 13 Oct 2015
 04:52:11 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr6773749lbb.17.1444737131107;
        Tue, 13 Oct 2015 04:52:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si707127wif.2.2015.10.13.04.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 04:52:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,677,1437429600"; 
   d="scan'208";a="182540543"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 13:52:10 +0200
Date: Tue, 13 Oct 2015 13:52:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Ioana Ciornei <ciorneiioana@gmail.com>, 
    Julia Lawall <julia.lawall@lip6.fr>, 
    Daniel Baluta <daniel.baluta@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/9] staging: iio: adc: properly
 indent to match open paranthesis
In-Reply-To: <20151013115101.GA8378@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510131351370.2391@hadrien>
References: <cover.1444419393.git.ciorneiioana@gmail.com> <9e336af188b6ce1cf21d0a4959672db4f84afc0a.1444419393.git.ciorneiioana@gmail.com> <CAEnQRZCHUZvcVU-oRzbddfp=oDrb+kJvwkTnZPBFj4J1OBWFDQ@mail.gmail.com> <CAHWJYFn-cd5tCRRjU-vV72-x5HM+=u5uojF6cYFT3XjqyjKE8g@mail.gmail.com>
 <alpine.DEB.2.10.1510131155580.2391@hadrien> <CAHWJYFnB=o_UYGcT=B4LYZ+jwcERBsHDSc1_dJ=n+kaTBkgSiw@mail.gmail.com> <20151013115101.GA8378@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Oct 2015, Sudip Mukherjee wrote:

> On Tue, Oct 13, 2015 at 01:05:58PM +0300, Ioana Ciornei wrote:
> > On Tue, Oct 13, 2015 at 12:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > >
> > > On Tue, 13 Oct 2015, Ioana Ciornei wrote:
> > >
> > >> On Mon, Oct 12, 2015 at 6:14 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> > >> >
> > >> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> > >> > > Indent parameters and arguments passed to function calls to match
> > >> > > open paranthesis
> > >> > >
> > >> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > >> > > ---
> > >> > > Changes in v2:
> > >> > >     - nothing
> > >> > > Changes in v3:
> > >> > >     - rework changes in order to avoid introducing new checkpatch warnings
> > >> > >
> > >> >
> > >> > <snip>
> > >> >
> > >> > > @@ -565,10 +565,11 @@ static int ad7280_attr_init(struct ad7280_state *st)
> > >> > >                         st->iio_attr[cnt].dev_attr.store =
> > >> > >                                 ad7280_store_balance_sw;
> > >> > >                         st->iio_attr[cnt].dev_attr.attr.name =
> > >> > > -                               kasprintf(GFP_KERNEL,
> > >> >
> > >> > This line looks good to me as it is. Is there any particular reason
> > >> > for which you we want GFP_KERNEL to be moved on the next line?
> > >> >
> > >>
> > >> I chose to move kasprintf on the next line and all the others
> > >> arguments also in order to improve readability.
> > >> I had to choose between leaving the kasprintf where it was and
> > >> properly align the arguments to match the open bracket but
> > >> cross the 80 char limit or moving the kasprintf call on the next line
> > >> so the arguments are somewhat distinguishable.
> > >>
> > >> Was this a bad call?
> > >
> > > It's not really normal to see the first argument on a different line.
> > > Do the other arguments not fit if they are lines up with the right side of
> > > the (?  Perhaps it is possible to break up the longer arguments more so
> > > that they fit better?
> > >
> >
> > The first argument fits, the problem is with the other ones.
> > Well, now that I think of... yes there is a solution to this.
> > If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
> > the problems would be solved.
> >
> > Is this a proper way to handle it?
>
> Today morning Greg said in a review of one patch "No need to create a
> whole new variable when you only use it once."

It would be used twice, actually :)

julia

> reference at: https://lkml.org/lkml/2015/10/13/27
>
> regards
> sudip
>

