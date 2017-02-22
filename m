X-GM-THRID: 6389640527251243008
X-Received: by 10.46.22.68 with SMTP id 4mr3367766ljw.14.1487759064779;
        Wed, 22 Feb 2017 02:24:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.213 with SMTP id y204ls49926lfc.30.gmail; Wed, 22 Feb
 2017 02:24:23 -0800 (PST)
X-Received: by 10.25.217.24 with SMTP id q24mr3506366lfg.26.1487759063798;
        Wed, 22 Feb 2017 02:24:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si81776wmn.2.2017.02.22.02.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 02:24:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="214329118"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 11:24:22 +0100
Date: Wed, 22 Feb 2017 11:24:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: Johan Hovold <johan@kernel.org>, outreachy-kernel@googlegroups.com, 
    Greg KH <gregkh@linuxfoundation.org>, elder@kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus: loopback_test:
 fix device-name leak
In-Reply-To: <CAOCi2DHkHpakjYezcnCXF35ViB5+LW174r_=AYMCt22OYg3X5g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702221118270.3145@hadrien>
References: <1487703983-19655-1-git-send-email-gs051095@gmail.com> <20170221195059.GF10245@localhost> <CAOCi2DHkHpakjYezcnCXF35ViB5+LW174r_=AYMCt22OYg3X5g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-497881178-1487759057=:3145"

--8323329-497881178-1487759057=:3145
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 22 Feb 2017, Gargi Sharma wrote:

> On Wed, Feb 22, 2017 at 1:20 AM, Johan Hovold <johan@kernel.org> wrote:
> >
> > On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:
> > > Change array index from the loop bound variable to loop index.
> > > Memory leak was occuring whenever there was more than one
> > > loopback device. The pointer to dirent structures must be
> > > individually freed before freeing the pointer array.
> > >
> > > Coccinelle Script:
> > > @@
> > > expression arr,ex1,ex2;
> > > @@
> > >
> > > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> > >   arr[
> > > - ex2
> > > + ex1
> > >   ]
> > >   ...> }
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > > Changes in v2:
> > >       -Made the commit message clearer.
> > > ---
> > >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/tools/loopback_test.c
> b/drivers/staging/greybus/tools/loopback_test.c
> > > index 18d7a3d..1c01833 100644
> > > --- a/drivers/staging/greybus/tools/loopback_test.c
> > > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> > >       ret = 0;
> > >  done:
> > >       for (i = 0; i < n; i++)
> > > -             free(namelist[n]);
> > > +             free(namelist[i]);
> > >       free(namelist);
> > >  baddir:
> > >       return ret;
> >
>
> > Oh, there's an illegal free here, which probably was what Julia was
> > referring to. Yeah, not sure why things haven't blown up, perhaps there
> > happens to be NULL pointer after?
> >
> > So we are in fact always leaking the device name here.
> >
>
> Um, should I assign null pointers to device names before freeing them? That 
> should fix illegal free I believe.

No, your change eliminates the illegal free.

scandir is returning an array of n elements.  In such an array, the
elements have numbers 0 .. n-1.  namelist[n] doesn't exist.  If one is
very lucky, there is a NULL after the end of the array, and then the free
does nothing.  But doing nothing is not the goal here.  The goal is to
free the elements 0 .. n-1.  They have all been allocated, according to
how scandir works, so it will be fine to free them.

julia

>
> > No need to resend, unless you prefer. You can add my Reviewed-by tag if
> > so.
> Not sure what this means. I can send a v3 with the above suggested changes
> if they are correct.
>
> Thanks,
> Gargi
> >
> > Thanks,
> > Johan
> >
> > --
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DHkHpakjYezcnCXF35
> ViB5%2BLW174r_%3DAYMCt22OYg3X5g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-497881178-1487759057=:3145--

