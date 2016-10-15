X-GM-THRID: 6341446809847595008
X-Received: by 10.28.209.67 with SMTP id i64mr141746wmg.4.1476537234403;
        Sat, 15 Oct 2016 06:13:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.8.202 with SMTP id 193ls380699wmi.5.gmail; Sat, 15 Oct 2016
 06:13:53 -0700 (PDT)
X-Received: by 10.194.88.7 with SMTP id bc7mr121725wjb.13.1476537233850;
        Sat, 15 Oct 2016 06:13:53 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f1si213430wmf.2.2016.10.15.06.13.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 06:13:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,497,1473112800"; 
   d="scan'208";a="196882728"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2016 15:13:52 +0200
Date: Sat, 15 Oct 2016 15:13:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: keila novo <laurana5@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Marc Dietrich <marvin24@gmx.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Checkpatch.pl error fixed:"Tabstop
 remove".
In-Reply-To: <CACrt6MJ_rFuv3APG8+Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D=Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1610151513100.9280@hadrien>
References: <20161008055753.GA24115@kheixx-VB> <20161015112905.GC11674@kroah.com> <CACrt6MJ_rFuv3APG8+Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D=Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-822713451-1476537233=:9280"

--8323329-822713451-1476537233=:9280
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 15 Oct 2016, keila novo wrote:

>
> El 15 oct. 2016 13:28, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> escribió:
> >
> > On Sat, Oct 08, 2016 at 07:57:53AM +0200, Keila Novo wrote:
> > > Checkpatch.pl error fixed:"No tabstop at the init
> > > of the line"
> > >
> > > Signed-off-by: Keila Novo <laurana5@gmail.com>
> > > ---
> > >  drivers/staging/nvec/nvec_power.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/drivers/staging/nvec/nvec_power.c
> b/drivers/staging/nvec/nvec_power.c
> > > index b16c871..88e6c0e 100644
> > > --- a/drivers/staging/nvec/nvec_power.c
> > > +++ b/drivers/staging/nvec/nvec_power.c
> > > @@ -441,7 +441,11 @@ static struct platform_driver nvec_power_driver
> = {
> > >       .probe = nvec_power_probe,
> > >       .remove = nvec_power_remove,
> > >       .driver = {
> > > +<<<<<<< HEAD
> > >                .name = "nvec-power",
> > > +=======
> > > +              .name = nvec_power,
> > > +>>>>>>> 3dedeb1... Checkpatch.pl error fixed:"Tabstop
> >
> > I don't think you build the code with this patch applied :(
>
> I checked with the checkpatch.pl when I fixed the error and it didn't
> show any error.
> What is my error now?Can you explain it please?

Your patch, as sent, has git conflict annotations.  The <<<< HEAD, etc.

julia

>
> Thanks,
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CACrt6MJ_rFuv3APG8%2B
> Gi-Wef3WhpT-RYv-bkMq0hNbEO8X7D%3DQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-822713451-1476537233=:9280--

