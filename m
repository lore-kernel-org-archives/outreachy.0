X-GM-THRID: 7018981355604148224
X-Received: by 2002:a2e:550:: with SMTP id 77mr7510ljf.323.1634566724596;
        Mon, 18 Oct 2021 07:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4a1a:: with SMTP id x26ls2814352lja.11.gmail; Mon, 18
 Oct 2021 07:18:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyQMDTfs7U5GWqshGO8eYV5iLrRqJGytl1mW4L7ItA/XeujcVfS7Va50w+GoBa7qaY3egTX
X-Received: by 2002:a2e:b0d3:: with SMTP id g19mr23025ljl.135.1634566722746;
        Mon, 18 Oct 2021 07:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634566722; cv=none;
        d=google.com; s=arc-20160816;
        b=0RSxs15UM1LbYKpvNs2dR0aj7+TnNC/2P2uTwK2eJ4jMfw7zm41xRer8/RYAMbd/GT
         3s3FeoK3Nc95yCML5LUvyqKC5TpRECLZ9yqrEf1W2DfPUME2u00Qfd1ikRdPowKS/tbN
         als1zCGvX9jRUZtKKFy9QdSBBOp4g0DcrJGftbqX59ZlaIC7OAl9s/R0273pnjGrRe1p
         QwMH/mNuOTNw3kyAyu58OIF3QGnGZi+biJoWoulcjheCdRM8QQitIoePO99+5umHwH37
         Ft1t8hiYJceRrMx2VvMqu0dDpl5dtiUkQ/MH7njoWATJ/bGvMFNSHzLCic5H1HjPtXUw
         PFyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=XwQRJxJLLWIz49W/KNmGK9SAkV5sePsiGO3WNIlSxSk=;
        b=t23CWaBTevzNsMvTeO8fgftwziTtqSpSzLC7PLPLqkR5AtLHAahGPc/fT6tmi80xJ8
         53fCXcZJWkAHMCiDCBgE/uCh6vyHND1wg8GxuPZsK6IJag5IUFcSACKM7dQQIY2VjmJT
         fYCh+SJy4MSk3Vt0D0eSuon9at7Vz5LY0B4wPNsr3p9/Po4aw17WFlkdja2iIvlb6T0A
         zB66f6TjKdrNay+U9BDq1hIVFl28e46ImQvwVpdjvC5HkveKnnYWCmywjU2MIyX4NDzV
         D9rT18Czgg+CHNTGVp7WN5POs+kdJE50zZw8CPHV7CJUvgvLJuTecFsHTn6hGMxZ/9f0
         GovQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m21si107006ljp.2.2021.10.18.07.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 07:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AOGlYbK5E5qyr2+yaRgPXwM/XdLJyesId70hD?=
 =?us-ascii?q?6qkRc20wTiX2rauTdZggvyMczQxxZJhCo6HkBEDjexPhHPdOiOEs1PWZLWrbUQ?=
 =?us-ascii?q?CTQr2Kg7GP/9StIVydysdtkZYlSaR4BdHqZGIWse/x6mCDfOod/A=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534565129"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 16:18:16 +0200
Date: Mon, 18 Oct 2021 16:18:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: Alison Schofield <alison.schofield@intel.com>, 
    Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
In-Reply-To: <4a2104cc5bc67387300aedfb2508f991e11bed44.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110181617500.3174@hadrien>
References: <20211014174207.GA426328@alison-desk>  <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>  <alpine.DEB.2.22.394.2110181207200.3174@hadrien> <4a2104cc5bc67387300aedfb2508f991e11bed44.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Oct 2021, Karolina Drobnik wrote:

> Hi Julia,
>
> Thanks for taking a look at my changes. I'll update the section
> accordingly after getting more feedback, hope it's fine.
>
> On Mon, 2021-10-18 at 12:12 +0200, Julia Lawall wrote:
> > > The many arguments to get_maintainer.pl cause the output to be in
> > > the form of a comma-separated list and cause only the actual
> > > maintainers of the affected files to be included. However, for IIO
> > > drivers, please also include linux-iio@vger.kernel.org.
> >
> > I wonder if this sentence is still needed, if we are dropping the
> > suggestion to use the --nol argument.
>
> I'd like to still explain what the output would be like. The "actual
> maintainers" can also refer to `--nogit-faillback` option that excludes
> committers/git information. Can change it to something like "relevant
> lists and the actual maintainers..". What do you think?

Sorry to be unclear.  I was only thinking that the sentence about the IIO
drivers is no longer needed.

julia

>
> > > The second step to submitting a patch is to create and send a patch
> > > as an email. You cannot send patches as attachments to the mailing
> > > list.
> >
> > This would be better as "You cannot send a patch as an attachment..."
>
> Can correct this, thanks.
>
>
> Karolina
>
>
>
>

