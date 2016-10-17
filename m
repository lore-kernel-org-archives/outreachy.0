X-GM-THRID: 6342317350126092288
X-Received: by 10.107.136.70 with SMTP id k67mr6671088iod.3.1476695060681;
        Mon, 17 Oct 2016 02:04:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls13007651otg.13.gmail; Mon, 17 Oct
 2016 02:04:17 -0700 (PDT)
X-Received: by 10.157.33.137 with SMTP id s9mr6165044otb.53.1476695057071;
        Mon, 17 Oct 2016 02:04:17 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x14si3939442vkd.3.2016.10.17.02.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 02:04:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,357,1473112800"; 
   d="scan'208";a="241034631"
Received: from laptop-147-210-128-79.labri.fr ([147.210.128.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2016 11:04:15 +0200
Date: Mon, 17 Oct 2016 11:04:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: wilc1000: Replace the
 name of a variable
In-Reply-To: <CANRJjP0j8T1NAXPXo+D3kQ2ARn8Teue+u3V265cR5Y0Y0rK3sg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1610171103380.1921@hadrien>
References: <20161017063027.GA6200@domino-MS-16Y1> <20161017065902.GA24896@kroah.com> <CANRJjP1tM-D53CpC2NjXa1-ho=P1XJ6kO43rV3VHcpcwnKXf3Q@mail.gmail.com> <CANRJjP0j8T1NAXPXo+D3kQ2ARn8Teue+u3V265cR5Y0Y0rK3sg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1327692405-1476695055=:1921"

--8323329-1327692405-1476695055=:1921
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 17 Oct 2016, Muraru Mihaela wrote:

>
> On 17 Oct 2016 10:34, "Muraru Mihaela" <mihaela.muraru21@gmail.com> wrote:
> >
> > On 17 Oct 2016 09:58, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> wrote:
> > >
> > > On Mon, Oct 17, 2016 at 09:30:27AM +0300, Mihaela Muraru wrote:
> > > > This patch replace the name '*Error' variable with 'err'.
> > >
> > > This says what you are doing, but I don't understand why you want to
> > > replace a variable name like this.
> >
> Julia asked my  to replace it.
> >
> > > Also you have an odd extra space in your subject line :(
> I will resend it later, I don't have acces to my computer now.
> > >
> > > >
> > > > Found and solve with Coccinelle:
> > > > @r1@
> > > > type s;
> > > > identifier sn =~ "Error";
> > > > identifier f;
> > > > type p;
> > > > expression c;
> > > > @@
> > > >
> > > > f(...) {
> > > >
> > > > <...
> > > > (
> > > > -p sn = c;
> > > > +p err = c;
> > > > |
> > > > -sn
> > > > +err
> > > > )
> > > > ...>
> > > > }
> > > >
> > > > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > > > ---
> > > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 138
> +++++++++++-----------
> > > >  1 file changed, 69 insertions(+), 69 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > index 483a6b6..8c47558 100644
> > > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > > @@ -603,7 +603,7 @@ static int scan(struct wiphy *wiphy, struct
> cfg80211_scan_request *request)
> > > >  {
> > > >       struct wilc_priv *priv;
> > > >       u32 i;
> > > > -     s32 s32Error = 0;
> > > > +     s32 err = 0;
> > >
> > > Also, shouldn't this just be 'int'?
> No.
> I just modify the name, not the type.

I think you could do both at once.

julia


> >
> > > thanks,
> > >
> > > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANRJjP0j8T1NAXPXo%2BD3k
> Q2ARn8Teue%2Bu3V265cR5Y0Y0rK3sg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1327692405-1476695055=:1921--

