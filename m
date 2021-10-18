X-GM-THRID: 7020448359173324800
X-Received: by 2002:a2e:a0d7:: with SMTP id f23mr1522549ljm.422.1634582627583;
        Mon, 18 Oct 2021 11:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1795:: with SMTP id bn21ls2959634ljb.10.gmail; Mon,
 18 Oct 2021 11:43:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8KZBFXyIs5tiphV2xWcCO4EIh796/X3rofocD4nSVzGsQ83EB3K5tmp52KbYzCklRGV7F
X-Received: by 2002:a2e:a274:: with SMTP id k20mr1501036ljm.479.1634582625709;
        Mon, 18 Oct 2021 11:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634582625; cv=none;
        d=google.com; s=arc-20160816;
        b=anuxV0IP+125bLUkv12D4uwzJlMUajZEDVmHrAsVqmGlO1AqPPRGLdpxlz7dS3Edb9
         P3U+jFThE96MOrnWfTibHx+Mi+XQPuaLddbw6CsBLyPCZ8Ta1Jqo6e4Ux8V4obguW311
         YQzBxWOj6fRPJzUyBCc7SBGWjCfmPo9VE6uPhoibpWC5fX3zwKuQFHeVvLdgePY9w5Pv
         QowZ5xP4vdVIGAkVal6nEm6b73VrSn2WjcRMtckGV6zf+4uLb08bkdlqK3vh+c4vQdhI
         EE6N7PZG3rW1VcQf2R/XZwBLOpe/vLCnEHmL+V8O5rV+4Zhd19H7+7DxsuL8XizGXAh9
         z+6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=Cz8X/wo7HL9SJA9T4otXRuniu5bycHg/DiJUzlY1drA=;
        b=Q771YEi63GU+JzKORLTdJhwmEkAJ6kmlEbs4YAMcRBo6q2eti9/d35+kAryW42hUgB
         gV1WSs5h00j1IJThag6ZiPs7CCRgfAWwwCAMYAYAxZwsPN86zGsfTB/aZQr6/Tlktjre
         uGyU4QKq+7wOB1HBRDRZahoVOpD2opE4GBo/7/rnJHqYKkoEjEFeA88YADBFZxi6p1n6
         mYAxZhpA7MRf1O/BmZXCszoGKNCKNq0u2FCW0JwL17vLlFlGRKuIu4exlhxynIbg09RP
         vP/GseZxF+DEwnLszBsL0pzQFBDv6h2UM0oTQGrxtqqdf+j0sI3HVazTw3sMFlpVYoaJ
         ibxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a19si871600lfb.10.2021.10.18.11.43.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 11:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ApbWPVqvJG+EVNbv+6utsaNu37skDcdV00zEX?=
 =?us-ascii?q?/kB9WHVpm62j5qSTdZsgviMc5Ax6ZJhko7G90cq7MBbhHPxOgbX5VI3KNDUO+l?=
 =?us-ascii?q?HYT72KhrGN/9SPIUHDH6JmpMVdWpk7OZnLAV92gd2S2mSFOtwrqePpzJyV?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396293887"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 20:43:44 +0200
Date: Mon, 18 Oct 2021 20:43:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Joe Perches <joe@perches.com>, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, 
    kushalkothari2850@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
In-Reply-To: <6124760.3TRdS1uSHU@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <9033544.t7rfKEcqWj@localhost.localdomain> <0f0eb2e6b72bc5188d5eca3aa49eba1d8db0effd.camel@perches.com> <6124760.3TRdS1uSHU@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:

> On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > >
> > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > >
> > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > Change the parameters of functions from const char *g_fbmode[] to
> > > > > > const char * const g_fbmode[]. This additional const is needed to
> > > > > > allow us to fix  checkpatch warning, as well as being good
> > > > > > programming practice.
> > > > > >
> > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > args that we want to check defined as:
> > > > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > > >
> > > > > > checkpatch will complain:
> > > > > > 	WARNING: static const char * array should probably be static
> > > const
> > > > > char * const
> > > > > >
> > > > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > > > ---
> > > > > >
> > > > > > [...]
> > > > > >
> > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > >
> > > > > You have introduced a logical change (g_fbmode[] entries cannot be
> > > assigned
> > > > > any more) and a build error (because there is code somewhere that
> assigns
> > > > > values to those slots).
> > > >
> > > > I wonder if this warning makes much sense when the array elements are
> > > > NULL.  I don't know if checkpatch could easily detect that.
> >
> > No, it couldn't really.  It's a line by line parser and most frequently
> > these are on separate lines.
>
> Sorry but I don't get it. For sure I'm missing something...
>
> I guess that checkpatch.pl warned Kushal because it detected that the array
> of pointers was assigned with something and so it output that "static const
> char * array should probably be static const".
>
> What I cannot understand is why it _can_ detect that the array is assigned
> with some values but it _cannot_ check that those values are 'NULL' and so
> avoid to warn.

In this case it could, but this case is too specific to be worth making a
special case for.  The problem is that checkpatch only looks at one line
at a time, so some values could be on another line.

julia

>
> Thanks,
>
> Fabio
>
> >
> > > However, it should be an easy fix in whatever programming language:
> > > checkpatch should warn if and only if the array elements are assigned
> with
> > > non 'NULL' values, because it's pretty clear that somewhere else there
> must
> > > be some lines that assign values to them.
> >
> > Don't take checkpatch warning too seriously and do compile
> > and test any change you make _before_ you submit a patch.
> >
> >
> >
>
>
>
>
>

