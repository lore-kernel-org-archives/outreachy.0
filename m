X-GM-THRID: 6803941009110597632
X-Received: by 2002:a2e:b4e5:: with SMTP id s5mr11414496ljm.190.1584193631002;
        Sat, 14 Mar 2020 06:47:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls1076684lji.7.gmail; Sat, 14 Mar
 2020 06:47:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vueE5fsvObGQC3Ved2t5G7ICqcW/+xu344buNhQ1ZATB9E9qdcrb2VYPLJEbpzGaZ5+rDYB
X-Received: by 2002:a2e:90da:: with SMTP id o26mr4427915ljg.254.1584193629380;
        Sat, 14 Mar 2020 06:47:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584193629; cv=none;
        d=google.com; s=arc-20160816;
        b=s70gwHxSzSEBanIwz6RipHuR7zfeW1GHZEEJBFmqqScLn8CIPcs8PdwHK43kh+iCLg
         QNfpPYvuHV9K/e87wd0/7ArVLEJWskmNO4zB82PQvSFzFmO4fyH9U2ZNjFN2Q6WYptPV
         JfNAjnRIAaBUPbzRx3uE0d7/Vp9BC54pkHiRVDbt1CIjf+kp5CT24Lf2peG+Z+3ADphr
         Nsmkk7FJknJBFjumIDmyAtX06L/zee358044eCtPsyUqD2FBV2N0umzbi71iIZT4I5ek
         oBOMh7uJGjamj7cXBVyrq+/UCqPjjnPMJlJ2ZhwVSDRlTp+eyKW9obUpU6+e+2iO+fL7
         q6Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GwmdYxbtjvg5Vh6wX+C0ffs6L1kK+uOUO/Szvqf3NMg=;
        b=uY9jT8RL0vcW6weZ40MGhg8jI3YLuYcCHdZX+vFtHlvycGy2/weQNLAvowhx0y/6Gc
         Khd3qS10w8sMJHtvIFlACUwzVLrCnRvFMSzPNsLGqWysPxn5sP2H2vXmQsxX49gdSqG+
         cDbTS6aEpabEQHIkT1ypu5EUjAImY4ClpdEA4fXJjEqrkzC9NtQde6UpMMxke8DmmODt
         KqbEedDDjbA9pdfQGMrpOjePj9AyHm1vxqOdQiZzRLrP2aJDWt0/4lVNn3OS60Ei5TBh
         JbbDSeRtZa4+As5MM+IaGzOpvf1xwPOo27QzMLIO8bsMi5uh3n6V4WaE8x1xc7RtkAsY
         UDig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c15si553018ljn.3.2020.03.14.06.47.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 06:47:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,552,1574118000"; 
   d="scan'208";a="440322898"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 14:47:08 +0100
Date: Sat, 14 Mar 2020 14:47:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Fix long line in
 C func call argument
In-Reply-To: <20200314133329.GA1569@tulip.local>
Message-ID: <alpine.DEB.2.21.2003141444430.3026@hadrien>
References: <20200314060539.GA2709@tulip.local> <alpine.DEB.2.21.2003141249590.3026@hadrien> <20200314133329.GA1569@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, R Veera Kumar wrote:

> On Sat, Mar 14, 2020 at 12:51:16PM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 14 Mar 2020, R Veera Kumar wrote:
> >
> > > A simple fix of long line in C function call argument.
> >
> > Try to rewrite the whole thing without using the word "fix".  What did you
> > do and why?
> >
> > Simple is not a good word to use, because it is your opinion.  It is
> > probably everyone's opinion in this case, but it is still an opinion.
> >
> > julia
> >
>
> Is subject line ok? I mean the word 'fix' in it.
>
> Is this ok for body:
>
> A correction of long line function call with arguments exceeding the
> 80 columns limit of coding style.

No.

What you did: add a newline after the first argument
Why did you do it: respect the 80 character line limit

I guess one could live with Fix in the subject line, but the current
subject line is too verbose.  All of the code in the kernel is C code, for
example, so there is not much point to mention that.  Something like
"shorten long line" would be fine.

julia

>
> >
> > > Found using checkpatch.pl.
> > >
> > > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > > ---
> > >  drivers/staging/rts5208/rtsx_chip.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> > > index 17c4131f5f62..c6f9375468eb 100644
> > > --- a/drivers/staging/rts5208/rtsx_chip.c
> > > +++ b/drivers/staging/rts5208/rtsx_chip.c
> > > @@ -940,7 +940,8 @@ static void rtsx_monitor_aspm_config(struct rtsx_chip *chip)
> > >  		if (maybe_support_aspm)
> > >  			chip->aspm_l0s_l1_en = 0x03;
> > >
> > > -		dev_dbg(rtsx_dev(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
> > > +		dev_dbg(rtsx_dev(chip),
> > > +			"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
> > >  			chip->aspm_level[0], chip->aspm_level[1]);
> > >
> > >  		if (chip->aspm_l0s_l1_en) {
> > > --
> > > 2.20.1
> > >
>

