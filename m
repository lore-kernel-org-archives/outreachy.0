X-GM-THRID: 6809557952024805376
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr5024819lfg.118.1585478241044;
        Sun, 29 Mar 2020 03:37:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f1:: with SMTP id v17ls2486623lfo.8.gmail; Sun, 29 Mar
 2020 03:37:19 -0700 (PDT)
X-Google-Smtp-Source: APiQypLqimNHx07asJ68vKwY8tjeIPUXSLwX2zezawlSj60Vvw4w+cIuVSkHbSDO381CjLxA6zvF
X-Received: by 2002:a19:5f1c:: with SMTP id t28mr4928877lfb.212.1585478239415;
        Sun, 29 Mar 2020 03:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585478239; cv=none;
        d=google.com; s=arc-20160816;
        b=w8JW+LPtip5lfPag1YEaHDpaj1rUIpc/BBHwppo/GCIhzC6DB1tb/Fc8NRLM4dcer2
         ugU6B2454KpwSDKydeKHmYts3Yz23vRua6And3+X88TjTQQEM/VFK1qzTswvgjotMhk1
         9DlG0MFRqUZkjPLbdxFR2Hflm9u8dxU+8youMQy7wsTBDFPBLHoCCo4rL/3SGSKb5M30
         da8f6+dVgWRmraPz7YuVTwtmqdFXBz/6o970kI+lWAHoKeeMgBln2xBjgpyEzY1ldArc
         9AcIU+rceukwA0GYq8y4KogcwcQuov8VuHcntIi0e2fVf5bbq2Qmm7ZTmenGcR2jqyZN
         FRwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vlnHpS6gLU8CELXWgdZARrG91hdBpzOyqL89F3+i3gQ=;
        b=cMM3lfbpk7giT4Tvtk52qVRVbktP0mgodGd+a5C25w6JHnlUpXmUdro+fKktv2eTze
         0VOhRnRFNVFIkAHl1PEb9pFj9obt13iP+aQ0RIS3IjJEXMtnXTjWPyoMS+vtQedsV7Ve
         YrI+R1XAnKlbfSMGkSkoijJXM1IqWHgSl7S4PtiN8ZfFf5Z73PmgW/TUggR78x7ApaBs
         XAV4c81wvkKz89etb9lbZ9X1zfPF77K8ORpIR0ukfZNcxs1GWFFe8KCNa2sDNnMqGYEd
         Kwm9Utor4l6s9ehI22zntXFGiLE1u8rE35ICjmkG9j9oqaIzXuBexyKSo7NVyg2IGb+L
         QBPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s22si475567ljp.0.2020.03.29.03.37.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 03:37:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,319,1580770800"; 
   d="scan'208";a="442809216"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2020 12:37:18 +0200
Date: Sun, 29 Mar 2020 12:37:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumyajit Deb <debsoumyajit100@gmail.com>
cc: John Wyatt <jbwyatt4@gmail.com>, outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, 
    dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
In-Reply-To: <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003291235590.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com> <alpine.DEB.2.21.2003291127230.2990@hadrien> <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com> <alpine.DEB.2.21.2003291144460.2990@hadrien>
 <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1337720750-1585478238=:2990"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1337720750-1585478238=:2990
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 29 Mar 2020, Soumyajit Deb wrote:

> I had the same doubt the other day about the replacement of udelay() with
> usleep_range(). The corresponding range for the single argument value of
> udelay() is quite confusing as I couldn't decide the range. But as much as I
> noticed checkpatch.pl gives warning for replacing udelay() with
> usleep_range() by checking the argument value of udelay(). In the
> documentation, it is written udelay() should be used for a sleep time of at
> most 10 microseconds but between 10 microseconds and 20 milliseconds,
> usleep_range() should be used. 
> I think the range is code specific and will depend on what range is
> acceptable and doesn't break the code.
>  Please correct me if I am wrong.

The range depends on the associated hardware.  Just because checkpatch
suggests something doesn't mean that it is easy to address the problem.

julia

>
> More clarification on this issue will be helpful.
>
> On Sun, 29 Mar 2020, 15:17 Julia Lawall, <julia.lawall@inria.fr> wrote:
>
>
>       On Sun, 29 Mar 2020, John Wyatt wrote:
>
>       > On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
>       > >
>       > > On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
>       > >
>       > > > Fix style issue with usleep_range being reported as
>       preferred over
>       > > > udelay.
>       > > >
>       > > > Issue reported by checkpatch.
>       > > >
>       > > > Please review.
>       > > >
>       > > > As written in Documentation/timers/timers-howto.rst udelay
>       is the
>       > > > generally preferred API. hrtimers, as noted in the docs,
>       may be too
>       > > > expensive for this short timer.
>       > > >
>       > > > Are the docs out of date, or, is this a checkpatch issue?
>       > > >
>       > > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
>       > > > ---
>       > > >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
>       > > >  1 file changed, 1 insertion(+), 1 deletion(-)
>       > > >
>       > > > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > > > b/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > > > index eeeeec97ad27..019c8cce6bab 100644
>       > > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
>       > > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
>       > > >   dev_dbg(par->info->device, "%s()\n", __func__);
>       > > >
>       > > >   gpiod_set_value(par->gpio.reset, 0);
>       > > > - udelay(20);
>       > > > + usleep_range(20, 20);
>       > >
>       > > usleep_range should have a range, eg usleep_range(50,
>       100);.  But it
>       > > is
>       > > hard to know a priori what the range should be.  So it is
>       probably
>       > > better
>       > > to leave the code alone.
>       >
>       > Understood.
>       >
>       > With the question I wrote in the commit message:
>       >
>       > "As written in Documentation/timers/timers-howto.rst udelay is
>       the
>       > generally preferred API. hrtimers, as noted in the docs, may
>       be too
>       > expensive for this short timer.
>       >
>       > Are the docs out of date, or, is this a checkpatch issue?"
>       >
>       > Is usleep_range too expensive for this operation?
>       >
>       > Why does checkpatch favor usleep_range while the docs favor
>       udelay?
>
>       I don't know the answer in detail, but it is quite possible that
>       checkpatch doesn't pay any attention to the delay argument. 
>       Checkpatch is
>       a perl script that highlights things that may be of concern.  It
>       is not a
>       precise static analsis tool.
>
>       As a matter of form, all of your Please review comments should
>       have been
>       put below the ---.  Currently, if someone had wanted to apply
>       the patch,
>       you would make them do extra work to remove this information.
>
>       julia
>
>       >
>       > >
>       > > julia
>       > >
>       > > >   gpiod_set_value(par->gpio.reset, 1);
>       > > >   mdelay(120);
>       > > >  }
>       > > > --
>       > > > 2.25.1
>       > > >
>       > > > --
>       > > > You received this message because you are subscribed to
>       the Google
>       > > > Groups "outreachy-kernel" group.
>       > > > To unsubscribe from this group and stop receiving emails
>       from it,
>       > > > send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > > > To view this discussion on the web visit
>       > > >https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-
>       jbwyatt4%40gmail.com
>       > > > .
>       > > >
>       >
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.20032911
>       44460.2990%40hadrien.
>
>
>
--8323329-1337720750-1585478238=:2990--

