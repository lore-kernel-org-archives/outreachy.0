X-GM-THRID: 6809557952024805376
X-Received: by 2002:a05:6102:2051:: with SMTP id q17mr4855467vsr.165.1585484575647;
        Sun, 29 Mar 2020 05:22:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3750:: with SMTP id i16ls1038016uat.4.gmail; Sun, 29 Mar
 2020 05:22:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypKzigZZ97DBGkvv2b0qKCozz4Uz0R/C6aeitrp8KefxCl7xbKyaveCaYngWwaNuh3j3LSb/
X-Received: by 2002:ab0:7504:: with SMTP id m4mr4951653uap.105.1585484574402;
        Sun, 29 Mar 2020 05:22:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585484574; cv=none;
        d=google.com; s=arc-20160816;
        b=UOxCvfGnQcUvPtmzA2dNTrrtQynknKtGM8PJ89xVQA8wBIQt9sHjDMcEY/WazBOaTc
         YujSU74ppjwHzvUxC46m1BJuF6hgq04GiHCKr6rnTd2Uz+ivXRNV9NjImUnVRojdVxiN
         u2bhf/FGr1OFg686Q3ljX9G5zIEukaeTwpa3XdYIBBLumMiZ3skBtAqXv9PjtcfJ71Zg
         8+s6eb91pWyt6HoOEpjZQtCcRsgG/3LeQ1vZybi87qOATsM4i+/Rqs9g7mHkUES4y/8o
         in3ei9hF62rBdooTU+gjO/scYbeXorhCEerFil6xIL/q/asLnOZBT0206gVfRJMmMcld
         LTIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6UClIPWeDMQPAzXntBk2QoHfbWj9MDU21yOBf0GHeHw=;
        b=S3Nn5RMLvy/ss2k77hdp2YTOJ/JYWRl44ms3XkoQ1RHTTbccL5MyzpWVrDq2Cvj7mF
         Ad2VoOvWhrgJ8i3YhQ+8VIhpEmAYPIk8pQi24V89nshDortsSsWVVK5TYP3NTmtHitBA
         3f57ji9Rim89XQTgB/x9TTE5PXnW5Q/FeQK/rEHdINh5oEh1ADKDLUdx1fQi2/JcGze1
         z7bpJbqLanlGumVZF5kfd2zHDLKUjgFI+NrSQcUfi7lOWtRSe97VBhOD69Z9K0m7zi8Z
         hZgqoZKuw3jchPPtYK7vtmfErA88YSoeBKiC3XM1Fj/KzZGiq7F6tLLnpGU5s2wzOlV2
         XtXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdUOwg33;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <andy.shevchenko@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s124si583428vka.1.2020.03.29.05.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 05:22:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdUOwg33;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id h72so7178648pfe.4
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2020 05:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6UClIPWeDMQPAzXntBk2QoHfbWj9MDU21yOBf0GHeHw=;
        b=jdUOwg337Wg8hPuF5NdV1z+1iXNGjwb+YDUmS97pf9xkU/BWMOmRa8gpqg/wHMmz2a
         h58yHx1+HaoLmCL6hnIeTPqm+2YMk9XzXIgi8Vgh9+ZM41zzixi1r10H3tUGl6hbw2fa
         +/SCEv5PddejDs3d49ieJ06lzLGUMqG9GyxGvtAAn6VGkc3VIzvQFeTpteUPogXC2Pzf
         Nck2ZgMO6TY1u9JXPbiayQdMPaVsYZN0gYMyxOTiZ2uHnfym+nSJ5RCtbfwJVF5O2hRj
         FXgxRY9UmwUvEuFr258gE1lMF0n3PSTtd9BUt9ycNv+7B5vOzdWySiaKBoIv9i+HiGuE
         66Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6UClIPWeDMQPAzXntBk2QoHfbWj9MDU21yOBf0GHeHw=;
        b=d/U/l2c7oOwLYgiNep72iQ6S5p4xuPqmm2dUUmVbiYpjfRYibKkzLEiMrEHSyF4qYg
         aPMNxdCz3tEsPHCA7NMTOuMmC8y6iI/kxpm/GiPMVkgVWmRnwbBpUO/sq7v3bpZq/I28
         zvbPlqbYnM6Q9TMdLoKJPP8bmch37AV5GIxZW6v3X7gAF2YZzj/RH4UVThHsAuWjYuXN
         5upAizBiYXTLd1bRO1TzlmPvVm7yIRFGUVm2Rm3UVqaPfkVCfht/MXZEhjbAp2zXNfhH
         CpXWOyOJPzl4/mem+MrPyTqC44bim+sbAJj4DrwvCb2UvhWXj2yk9CYe7LdozXAX8ff5
         nNLw==
X-Gm-Message-State: ANhLgQ24sCWev970dQS4tGipMr0GuYMouzDv9JS+bqQ7pCkSr6+rJIiW
	ogsnb1PKW5MoPeTEGQwg0I8aJMef/7beQAecsw8=
X-Received: by 2002:a63:798a:: with SMTP id u132mr8699746pgc.203.1585484573149;
 Sun, 29 Mar 2020 05:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200329092204.770405-1-jbwyatt4@gmail.com> <alpine.DEB.2.21.2003291127230.2990@hadrien>
 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
 <alpine.DEB.2.21.2003291144460.2990@hadrien> <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
 <alpine.DEB.2.21.2003291235590.2990@hadrien> <ab06bc216dc07b2b070bc2635aaabb1942c6089c.camel@gmail.com>
In-Reply-To: <ab06bc216dc07b2b070bc2635aaabb1942c6089c.camel@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 29 Mar 2020 15:22:41 +0300
Message-ID: <CAHp75VeyV5t3rMw5Za8yFoKmrFLwxDqbLLdDyOr+pezAC+Lv7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Soumyajit Deb <debsoumyajit100@gmail.com>, 
	John Wyatt <jbwyatt4@gmail.com>, outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>, linux-fbdev@vger.kernel.org, 
	"open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 29, 2020 at 2:23 PM Sam Muhammed <jane.pnx9@gmail.com> wrote:
> On Sun, 2020-03-29 at 12:37 +0200, Julia Lawall wrote:
> > On Sun, 29 Mar 2020, Soumyajit Deb wrote:
> >

First of all, let's stop topposting.

> > > I had the same doubt the other day about the replacement of udelay() with
> > > usleep_range(). The corresponding range for the single argument value of
> > > udelay() is quite confusing as I couldn't decide the range. But as much as I
> > > noticed checkpatch.pl gives warning for replacing udelay() with
> > > usleep_range() by checking the argument value of udelay(). In the
> > > documentation, it is written udelay() should be used for a sleep time of at
> > > most 10 microseconds but between 10 microseconds and 20 milliseconds,
> > > usleep_range() should be used.
> > > I think the range is code specific and will depend on what range is
> > > acceptable and doesn't break the code.
> > >  Please correct me if I am wrong.
> >
> > The range depends on the associated hardware.  Just because checkpatch
> > suggests something doesn't mean that it is easy to address the problem.

> Hi all, i think when it comes to a significant change in the code, we
> should at least be familiar with the driver or be able to test the
> change.
>
> In the very beginning of the Documentation/timers/timers-howto.rst
> there is the question:
> "Is my code in an atomic context?"
> It's not just about the range, it's more of at which context this code
> runs, for atomic-context -> udelay must be used.
> for non-atomic context -> usleep-range is better for power-management.
>
> unless we are familiar with the driver we wouldn't really know in what
> context this code is run at.
>
> This thread though had the same conversation about this change, for the
> same driver.
> https://patchwork.kernel.org/patch/11137125/

While it's a good discussion it reminds me that this entire function,
i.e. reset(), repeats the on provided by fbtft core.
Yes, the only question if it's atomic or not. IIRC ->reset() is being
called only in non-atomic contexts and keeping reset signal longer is
fine (but better to check with datasheet).

So, I would rather to drop the function completely in order to use
fbtft's core one.

--
With Best Regards,
Andy Shevchenko

