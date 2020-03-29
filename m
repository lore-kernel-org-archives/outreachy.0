X-GM-THRID: 6809557952024805376
X-Received: by 2002:a19:8c3:: with SMTP id 186mr5168405lfi.27.1585479123426;
        Sun, 29 Mar 2020 03:52:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4897:: with SMTP id x23ls1080916lfc.3.gmail; Sun, 29 Mar
 2020 03:52:02 -0700 (PDT)
X-Google-Smtp-Source: APiQypJfHKrIZUhrIJe7uZgQmwRjxbF+3yZzOlsYPOwIiwPMl4K42dH8L/F186Oy3Dc6Y+UaTNfg
X-Received: by 2002:a19:2203:: with SMTP id i3mr4902495lfi.120.1585479121975;
        Sun, 29 Mar 2020 03:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585479121; cv=none;
        d=google.com; s=arc-20160816;
        b=iZOlytTC26Air0LSKmZb/wJM5kXf+VN1aee7dnvBiEV3H2s+1q4uKFaP6qxblWSOD0
         NeXyX4H61G/vq9Z3ejDI/XrT7RNhwIrT9cLOsov6dVe9NvJ+l5r7TCa/ElQKB9AReRPq
         SykO6lXBERIIHzOzaCY/PF5hcn3+eMVF336rjriDnYSQnEOYbxrPwd7kiyFbKESY+itU
         Psp3GjC0XsZNVJqc3q3tBpKcsomkIGkZdsblzJ21VOVTk70FUJkprBYvaRaSxVN1Ixt0
         egRKW67CcudCeermXniTitljv5jtBsThSpX6hm6iuCRi9VjFqbnmp8u7qyXmeoTM6fr0
         HQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=GYK6OoyIGphy+gx0ZS0v2Sg7a9MvIdcLKhTU3e6hj5U=;
        b=FYlXcK7bsmeMS0prFBTr3up7res7+hqp3ctU+KA7M83tFacTT+ozWhhhDiVBgx0fRj
         GifOIBZHW2mIKmGuA9/9Vm5Ns7VB3rNDgu2U9RVmT/Udx6SjCvyLkw0gs6qdiKl6e0Q2
         7P7RheYd8Q4jkcOcs/d98vMwajvx0EfPjlQd+bNVwRdV3ETe7Z+IDCP9AlEY6yaNTquQ
         swYwWDa50yrzagq9aLlqg3Ew5U0W/k5kdJg+KclfGDzB5APFq6jyuBR0w9b9/NGrAhv2
         3Oh8rG410dtV5jUZKJvjJodfJScLlXBb46pPeRXGN2xnpIqSl57wcQNyUQo3/diCbtWd
         t/iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=opbKVcBx;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q13si732858lfo.3.2020.03.29.03.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 03:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=opbKVcBx;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id z5so16531453wml.5
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 03:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=GYK6OoyIGphy+gx0ZS0v2Sg7a9MvIdcLKhTU3e6hj5U=;
        b=opbKVcBxQpuRTKSwx0TW8bd+ERJl3qv8xl3JdiG2+JCx++HDG6NgGfVzCb4KwtGQlS
         grxqxYTDT9PEdT1GD8jMCJT25s+qn9oCJ7JsZAPvmmbOLoGRmfNuD5NHP0hbuDF4+2Qn
         tFInmWxZeDFG7QTSCFF04g00GNPExx+phFXhwbhfrvq5nYKIFHOCwZmDN1yzwqs+iIE6
         SrClVTbMSj59VFOIoAr5N2U4cwXFmQUO4fiIKR/PEWs7Q3vZhVLGit+1wwwLteSlzX1x
         5AnmSB/IcQOBC48GPGqD68KrgGkAA4dpkbMEutQNxGRggfwIYWFUqZDf2gIhDLpN1CNa
         Hssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=GYK6OoyIGphy+gx0ZS0v2Sg7a9MvIdcLKhTU3e6hj5U=;
        b=tKTKtgMgGH0JoVPSpT5fmRnLYtxxyEE39gJ+ZCZtO4wPV23A71BfZoGUobxPWIdxOw
         oeKLGrSw55vwluFPazaF0nmKc3cx9jgj06sPmkNR5XYr9c5bhOz6/kzlNDdRwGcBwNec
         4g95TQsmbO8AQjMHqE1WxJu1aYnQOgy8yh6YkJSMky9VLparzWJ5m9Q5vHJ9iiQV2CES
         ZW6RbgKuJD+OLSOQi07SDfKh0xlpsl7bxJqPdmWfbVlG9ZFsFhSJ2BUzMFDSrWSVjQ5l
         7/jw/sxypioamD9685eHUbGeFFLhgi0af5CZriQZgqZKHwEJkYjzoNQvH54kM87sUaum
         7SCg==
X-Gm-Message-State: ANhLgQ2AxuCoOBeIalK6Ln8nO3t8OadpAjYLXG2W65qnmiuE+WPYe+v7
	RV/XgYgkilckD+G9RFG//9I=
X-Received: by 2002:a1c:1d48:: with SMTP id d69mr7655166wmd.166.1585479121324;
        Sun, 29 Mar 2020 03:52:01 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.208.250])
        by smtp.gmail.com with ESMTPSA id 195sm16438909wmb.8.2020.03.29.03.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 03:52:00 -0700 (PDT)
Message-ID: <ab06bc216dc07b2b070bc2635aaabb1942c6089c.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Soumyajit Deb
	 <debsoumyajit100@gmail.com>
Cc: John Wyatt <jbwyatt4@gmail.com>, outreachy-kernel@googlegroups.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Payal Kshirsagar
 <payal.s.kshirsagar.98@gmail.com>,  dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Sun, 29 Mar 2020 06:51:58 -0400
In-Reply-To: <alpine.DEB.2.21.2003291235590.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2003291127230.2990@hadrien>
	 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
	 <alpine.DEB.2.21.2003291144460.2990@hadrien>
	 <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
	 <alpine.DEB.2.21.2003291235590.2990@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-29 at 12:37 +0200, Julia Lawall wrote:
> 
> On Sun, 29 Mar 2020, Soumyajit Deb wrote:
> 
> > I had the same doubt the other day about the replacement of udelay() with
> > usleep_range(). The corresponding range for the single argument value of
> > udelay() is quite confusing as I couldn't decide the range. But as much as I
> > noticed checkpatch.pl gives warning for replacing udelay() with
> > usleep_range() by checking the argument value of udelay(). In the
> > documentation, it is written udelay() should be used for a sleep time of at
> > most 10 microseconds but between 10 microseconds and 20 milliseconds,
> > usleep_range() should be used. 
> > I think the range is code specific and will depend on what range is
> > acceptable and doesn't break the code.
> >  Please correct me if I am wrong.
> 
> The range depends on the associated hardware.  Just because checkpatch
> suggests something doesn't mean that it is easy to address the problem.
> 
> julia
> 

Hi all, i think when it comes to a significant change in the code, we
should at least be familiar with the driver or be able to test the
change.

In the very beginning of the Documentation/timers/timers-howto.rst
there is the question:
"Is my code in an atomic context?"
It's not just about the range, it's more of at which context this code
runs, for atomic-context -> udelay must be used.
for non-atomic context -> usleep-range is better for power-management.

unless we are familiar with the driver we wouldn't really know in what
context this code is run at.

This thread though had the same conversation about this change, for the
same driver.
https://patchwork.kernel.org/patch/11137125/

Sam

> >
> > More clarification on this issue will be helpful.
> >
> > On Sun, 29 Mar 2020, 15:17 Julia Lawall, <julia.lawall@inria.fr> wrote:
> >
> >
> >       On Sun, 29 Mar 2020, John Wyatt wrote:
> >
> >       > On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> >       > >
> >       > > On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> >       > >
> >       > > > Fix style issue with usleep_range being reported as
> >       preferred over
> >       > > > udelay.
> >       > > >
> >       > > > Issue reported by checkpatch.
> >       > > >
> >       > > > Please review.
> >       > > >
> >       > > > As written in Documentation/timers/timers-howto.rst udelay
> >       is the
> >       > > > generally preferred API. hrtimers, as noted in the docs,
> >       may be too
> >       > > > expensive for this short timer.
> >       > > >
> >       > > > Are the docs out of date, or, is this a checkpatch issue?
> >       > > >
> >       > > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> >       > > > ---
> >       > > >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> >       > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >       > > >
> >       > > > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> >       > > > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> >       > > > index eeeeec97ad27..019c8cce6bab 100644
> >       > > > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> >       > > > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> >       > > > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> >       > > >   dev_dbg(par->info->device, "%s()\n", __func__);
> >       > > >
> >       > > >   gpiod_set_value(par->gpio.reset, 0);
> >       > > > - udelay(20);
> >       > > > + usleep_range(20, 20);
> >       > >
> >       > > usleep_range should have a range, eg usleep_range(50,
> >       100);.  But it
> >       > > is
> >       > > hard to know a priori what the range should be.  So it is
> >       probably
> >       > > better
> >       > > to leave the code alone.
> >       >
> >       > Understood.
> >       >
> >       > With the question I wrote in the commit message:
> >       >
> >       > "As written in Documentation/timers/timers-howto.rst udelay is
> >       the
> >       > generally preferred API. hrtimers, as noted in the docs, may
> >       be too
> >       > expensive for this short timer.
> >       >
> >       > Are the docs out of date, or, is this a checkpatch issue?"
> >       >
> >       > Is usleep_range too expensive for this operation?
> >       >
> >       > Why does checkpatch favor usleep_range while the docs favor
> >       udelay?
> >
> >       I don't know the answer in detail, but it is quite possible that
> >       checkpatch doesn't pay any attention to the delay argument. 
> >       Checkpatch is
> >       a perl script that highlights things that may be of concern.  It
> >       is not a
> >       precise static analsis tool.
> >
> >       As a matter of form, all of your Please review comments should
> >       have been
> >       put below the ---.  Currently, if someone had wanted to apply
> >       the patch,
> >       you would make them do extra work to remove this information.
> >
> >       julia
> >
> >       >
> >       > >
> >       > > julia
> >       > >
> >       > > >   gpiod_set_value(par->gpio.reset, 1);
> >       > > >   mdelay(120);
> >       > > >  }
> >       > > > --
> >       > > > 2.25.1
> >       > > >
> >       > > > --
> >       > > > You received this message because you are subscribed to
> >       the Google
> >       > > > Groups "outreachy-kernel" group.
> >       > > > To unsubscribe from this group and stop receiving emails
> >       from it,
> >       > > > send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > > > To view this discussion on the web visit
> >       > > >https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-
> >       jbwyatt4%40gmail.com
> >       > > > .
> >       > > >
> >       >
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.20032911
> >       44460.2990%40hadrien.
> >
> >
> >
> 



