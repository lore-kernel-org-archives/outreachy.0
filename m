X-GM-THRID: 6335430862293696512
X-Received: by 10.194.127.234 with SMTP id nj10mr2011234wjb.20.1475095307647;
        Wed, 28 Sep 2016 13:41:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.10 with SMTP id s10ls172021lja.12.gmail; Wed, 28 Sep
 2016 13:41:46 -0700 (PDT)
X-Received: by 10.46.71.207 with SMTP id u198mr1883981lja.2.1475095306898;
        Wed, 28 Sep 2016 13:41:46 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p199si38984wmd.1.2016.09.28.13.41.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:41:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,411,1470693600"; 
   d="scan'208";a="194989636"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Sep 2016 22:41:45 +0200
Date: Wed, 28 Sep 2016 22:41:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Anchal Jain <anchalj109@gmail.com>, Michael.Hennerich@analog.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: gyro: add comment to
 mutex
In-Reply-To: <20160928175504.GA10225@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1609282241020.3211@hadrien>
References: <20160928170708.GA6196@life-desktop> <20160928175504.GA10225@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Sep 2016, Alison Schofield wrote:

> On Wed, Sep 28, 2016 at 10:37:17PM +0530, Anchal Jain wrote:
> > Fix the checkpatch.pl issues:
> > CHECK: struct mutes definition without comment
>                     ^^spelling
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>
> Hi Anchal,  I'm going to be picky on these, because I sense you
> are getting on a roll here and we should establish a pattern.
>
> - see spelling above.
> - include driver name in IIO commit paths.
>   Caveat: if the subdir and driver names get so crazy long that you
>   can't fit a good commit message, then leave off the subdir.
> - tab out the comment instead of space.
> - At first I thought tx and rx were kind of terse, but when I scroll
>   up and see the comment above, it all makes sense.

tx and rx seem well understood.  A bit more concrete than transfer
buffers.

julia

> - I might have said 'protect transfer buffers'
>
> Please update with the minor cleanups and resend to the wider
> 'CC list as suggested in your previous patch.
>
> alisons
>
> > ---
> >  drivers/staging/iio/gyro/adis16060_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
> > index ab816a2..96230b6 100644
> > --- a/drivers/staging/iio/gyro/adis16060_core.c
> > +++ b/drivers/staging/iio/gyro/adis16060_core.c
> > @@ -33,7 +33,7 @@
> >  struct adis16060_state {
> >  	struct spi_device		*us_w;
> >  	struct spi_device		*us_r;
> > -	struct mutex			buf_lock;
> > +	struct mutex			buf_lock; /* protect tx and rx */
> >
> >  	u8 buf[3] ____cacheline_aligned;
> >  };
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928170708.GA6196%40life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928175504.GA10225%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

