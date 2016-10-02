X-GM-THRID: 6335430862293696512
X-Received: by 10.28.21.17 with SMTP id 17mr306338wmv.16.1475421239989;
        Sun, 02 Oct 2016 08:13:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.6 with SMTP id w6ls1093490wmw.17.canary; Sun, 02 Oct
 2016 08:13:58 -0700 (PDT)
X-Received: by 10.28.207.131 with SMTP id f125mr112971wmg.10.1475421238636;
        Sun, 02 Oct 2016 08:13:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w16si787450wmd.0.2016.10.02.08.13.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:13:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="239075711"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 17:13:57 +0200
Date: Sun, 2 Oct 2016 17:13:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: Jonathan Cameron <jic23@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, knaack.h@gmx.de, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: iio: gyro: add comment
 to mutex
In-Reply-To: <CAAbeOSv9B7fTLx1+eJsnfTVbNm5=0e79W4O0eZQnXQ51u1Bjhg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1610021709490.3327@hadrien>
References: <20160928181518.GA14365@life-desktop> <288d488e-6526-af21-eb6c-f7ee040f3168@kernel.org> <CAAbeOSv9B7fTLx1+eJsnfTVbNm5=0e79W4O0eZQnXQ51u1Bjhg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2059136326-1475421238=:3327"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2059136326-1475421238=:3327
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 2 Oct 2016, Anchal Jain wrote:

> >If Greg has already picked this up I don't really care
> >but it is kind of obvious that buf_lock protects
> >buf, so I'm not going to bother applying it.
> >
> >Dealing with check patch warnings is often an exercise
> >in trying to find the right balance between 'fixing'
> >them all and deciding that some of them are 'silly'.
> >
> >Now, if you were to give kernel doc comments to the
> >whole of that structure (which does contain the rather
> >less ob then
> >that would to my mind be a worthwhile stepvious pair of spi device
> structures)
> >(and would get rid of this warning along the way!)
>
> Thank you, For informing me...
> But, Seriously I am too confused what should I do and what not because
>
> Repeatedly send the same patchis not a good idea because
> I am not learning new things
> and I don't  know what is obvious for you guys.
> I do not know about this code that's how it works in the  kernel and
> why is here I am just a beginner. On some basic knowledge of C,
> I am trying to assume the things may be this code is working that thing or
> other
> and according to check patch, I am trying to solve bugs.
> So, if the check patch shows that kind of problem then what should I do
> because this not first time with me to waste my time on that silly things.

You have to develop some intuition about what is useful and what is not.
And even if you have some intuition, you may get it wrong sometimes.  You
can look at patches done by other people for the same issue.  For example,
in this case git log -G "struct mutex" could be helpful.  Or, as needed,
learn from the feedback of others.

Checkpatch is just a tool made with regular expressions.  It doesn't know
about the semantics of the code, and in particular it doesn't know about
the intent of the developer.  So it can suggest wrong or useless things
sometimes.

julia

>
> Thank you,
>
> Anchal
>
> On Sat, Oct 1, 2016 at 7:05 PM, Jonathan Cameron <jic23@kernel.org> wrote:
>       On 28/09/16 19:15, Anchal Jain wrote:
>       > Fix the checkpatch.pl issues:
>       > CHECK: struct mutex definition without comment
>       >
>       Nitpick of the day, only one blank line here.
>       >
>       > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
>       Have to say this isn't one of the greatest warnings from
>       checkpatch.
>
>       If Greg has already picked this up I don't really care
>       but it is kind of obvious that buf_lock protects
>       buf, so I'm not going to bother applying it.
>
>       Dealing with check patch warnings is often an exercise
>       in trying to find the right balance between 'fixing'
>       them all and deciding that some of them are 'silly'.
>
>       Now, if you were to give kernel doc comments to the
>       whole of that structure (which does contain the rather
>       less obvious pair of spi device structures) then
>       that would to my mind be a worthwhile step
>       (and would get rid of this warning along the way!)
>
>       Thanks,
>
>       Jonathan
>       > ---
>       >  drivers/staging/iio/gyro/adis16060_core.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/iio/gyro/adis16060_core.c
>       b/drivers/staging/iio/gyro/adis16060_core.c
>       > index ab816a2..96230b6 100644
>       > --- a/drivers/staging/iio/gyro/adis16060_core.c
>       > +++ b/drivers/staging/iio/gyro/adis16060_core.c
>       > @@ -33,7 +33,7 @@
>       >  struct adis16060_state {
>       >       struct spi_device               *us_w;
>       >       struct spi_device               *us_r;
>       > -     struct mutex                    buf_lock;
>       > +     struct mutex                    buf_lock; /* protect
>       transfer buffers */
>       >
>       >       u8 buf[3] ____cacheline_aligned;
>       >  };
>       >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSv9B7fTLx1%2BeJsn
> fTVbNm5%3D0e79W4O0eZQnXQ51u1Bjhg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2059136326-1475421238=:3327--

