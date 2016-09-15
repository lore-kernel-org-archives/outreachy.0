X-GM-THRID: 6330315387682422784
X-Received: by 10.46.71.207 with SMTP id u198mr1797644lja.2.1473967448270;
        Thu, 15 Sep 2016 12:24:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.131 with SMTP id e3ls397295lji.29.gmail; Thu, 15 Sep 2016
 12:24:07 -0700 (PDT)
X-Received: by 10.25.193.148 with SMTP id r142mr1806704lff.2.1473967447824;
        Thu, 15 Sep 2016 12:24:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si402401wmd.1.2016.09.15.12.24.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:24:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="193588664"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:24:07 +0200
Date: Thu, 15 Sep 2016 21:24:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: vt6656: main_usb: Replace
 data type declaration with variable of same type
In-Reply-To: <CAFrQyDFZ92oTmzrW1k62uyjRowFKbkhmX6jzzcX334kJCzjbuA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609152123290.3364@hadrien>
References: <CAFrQyDHhpXVeYyQGb=kwRp=4ToJw-9i6Y2KiwxVTb=21Wtxb9Q@mail.gmail.com> <alpine.DEB.2.10.1609150718460.6078@hadrien> <20160915180849.GA6416@namrata-HP-Pavilion-g6-Notebook-PC> <CAFrQyDFZ92oTmzrW1k62uyjRowFKbkhmX6jzzcX334kJCzjbuA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-232574300-1473967447=:3364"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-232574300-1473967447=:3364
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

> On Thu, Sep 15, 2016 at 07:19:23AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
> >
> > > This patch fixes checkpatch issue:
> > > -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)
> > > -Replacing sizeof(struct vnt_rcb) with sizeof(*priv->rcb[ii])
> > > The replacements are of the type they are replaced with hence size
> > > remains same.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/main_usb.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > >         for (ii = 0; ii < priv->num_tx_context; ii++) {
> > > -               tx_context = kmalloc(sizeof(struct
> vnt_usb_send_context),
> > > +               tx_context = kmalloc(sizeof(*tx_context),
> > >                                                                
> GFP_KERNEL);
> >
> > The GFP_KERNEL argument should not be left way out on the right like that.
> > Now it could be on the sam line as the kmalloc.
> >
> > julia
> >
>
> Will that change come in the same patch? or should I create a new patch
> for the same?

I think you could put the whole thing in one patch. The need to move the
GFP_KERNEL comes because you changed the sizeof argument.

julia

>
> Thanks,
> Namrata
>
> On Thu, Sep 15, 2016 at 11:38 PM, Namrata A Shettar
> <namrataashettar@gmail.com> wrote:
>       On Thu, Sep 15, 2016 at 07:19:23AM +0200, Julia Lawall wrote:
>       >
>       >
>       > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
>       >
>       > > This patch fixes checkpatch issue:
>       > > -Replacing sizeof(struct vnt_usb_send_context) with
>       sizeof(*tx_context)
>       > > -Replacing sizeof(struct vnt_rcb) with
>       sizeof(*priv->rcb[ii])
>       > > The replacements are of the type they are replaced with
>       hence size
>       > > remains same.
>       > >
>       > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
>       > > ---
>       > >  drivers/staging/vt6656/main_usb.c | 4 ++--
>       > >  1 file changed, 2 insertions(+), 2 deletions(-)
>       > >
>       > >         for (ii = 0; ii < priv->num_tx_context; ii++) {
>       > > -               tx_context = kmalloc(sizeof(struct
>       vnt_usb_send_context),
>       > > +               tx_context = kmalloc(sizeof(*tx_context),
>       > >                                                            
>           GFP_KERNEL);
>       >
>       > The GFP_KERNEL argument should not be left way out on the
>       right like that.
>       > Now it could be on the sam line as the kmalloc.
>       >
>       > julia
>       >
>
>       Will that change come in the same patch? or should I create a
>       new patch
>       for the same?
>
>       Thanks,
>       Namrata
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDFZ92oTmzrW1k62uyj
> RowFKbkhmX6jzzcX334kJCzjbuA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-232574300-1473967447=:3364--

