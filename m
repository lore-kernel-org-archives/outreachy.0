X-GM-THRID: 6883926801253400576
X-Received: by 2002:a19:a0b:: with SMTP id 11mr5164593lfk.110.1603056711190;
        Sun, 18 Oct 2020 14:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c111:: with SMTP id r17ls2763263lff.0.gmail; Sun, 18 Oct
 2020 14:31:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1TxbEa9x1h2sqC9LW3ajNaus33InUzver/EdaApoD99FIuIvRtQVbEKNpHxue1C0Mjzen
X-Received: by 2002:a19:a12:: with SMTP id 18mr5114347lfk.345.1603056708829;
        Sun, 18 Oct 2020 14:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603056708; cv=none;
        d=google.com; s=arc-20160816;
        b=tRiip8h/v0pKd9XZaUioangEpQdNspKaVh/pwQ6S0S3aGOnkwazY5qj9XnJvD4XMpv
         IbCnO3BGl8u2ReMM4B2WDU+/o0cZ3Iq7GoH54uLyOKhuTojHJW+KF4cI9cYKPGuSK6MA
         ypBY8eNLfLc7MMcBmiE06k1Bpq3J6YGKNR+afwU+zlB3lUG+wIFFLC+14On35ryk2DNM
         MFosctXckHzYfCll5J6YFx/oiFfEIl8qkKKC0lhYJecXqn7Qean/PLdk+PUTaw8Tuy3o
         46aoDoA6oCwz23f8XTI9qYqXhJL3v++9J9nDipJ5osHwk7yuQwocGZIvHW7UN3Le5kFr
         +NMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pompj6RMQTgj86FfDJvjjpV7mlx7wSdhvAo9pRiO1Pg=;
        b=RFLdkLpTDNA55i0co864YIvxsTDd3eQMcUErlYrRhc/xEZap1WbpbqdTSoLLe7sS6V
         VP9VbIm48C8h4rUvmNIklBL6x5cwY2jWi6LFNmCyLDoYtb1ZlRJ5Cs9XO5EGh5MAZMss
         Fo2fIHAJY9rTm7S0bpjtS2UHjIP8l9cOwIEbnniMkE9MWtXAEKXV2jl5r9jknLd/ZZ8L
         G8hNrL4mP49eRoJfWIDO6/vgUQQaeyXsKDyiJPyGfEpxoTN+LX6o4T+ObSfUl2HoCQ8B
         TstYZyNkYvIjB0vHZFsqwHjJPpcTjJ7C2WARTt3tGmivxG07xp/Rpv1tFLOn0XSsbiUa
         Kx6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o142si176103lff.6.2020.10.18.14.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2020 14:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,392,1596492000"; 
   d="scan'208";a="473183726"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2020 23:31:47 +0200
Date: Sun, 18 Oct 2020 23:31:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Helen Koike <helen@koikeco.de>
cc: Deepak R Varma <mh12gx2825@gmail.com>, Ian Abbott <abbotti@mev.co.uk>, 
    Sumera Priyadarsini <sylphrenadin@gmail.com>, 
    outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
    hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] Re: [Outreachy][PATCH 3/3] staging: comedi:
 Replace snprintf() with scnprintf()
In-Reply-To: <CAPW4XYZzXN27YCjRZDZwSdbnwSoNjuN60B8qZNDUXWZnV_9ixg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010182328190.2759@hadrien>
References: <cover.1602767114.git.sylphrenadin@gmail.com> <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com> <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk> <20201018195136.GA73063@ubuntu204>
 <CAPW4XYZzXN27YCjRZDZwSdbnwSoNjuN60B8qZNDUXWZnV_9ixg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Oct 2020, Helen Koike wrote:

> Hi Deepak and Ian,
>
> On Sun, Oct 18, 2020 at 4:51 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > On Fri, Oct 16, 2020 at 10:14:46AM +0100, Ian Abbott wrote:
> > > On 15/10/2020 20:18, Sumera Priyadarsini wrote:
> > > > The show() methods should return the number of bytes printed into the
> > > > buffer which is the return value of scnprintf(). snprintf() returns the
> > > > potential number of bytes that could be written which may be greater
> > > > than the actual length to be written.
> > > >
> > > > Replace snprintf() with the safer scnprintf() in comedi_fops.c.
> > > >
> > > > Issue found with Coccinelle.
> > > >
> > > > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > >
> > > The patch is fine, but there are a couple of problems.
> > >
> > > 1) Patches for "staging" should be Cc'ed to devel@driverdev.osuosl.org .
> >
> > Hi Ian,
> > Does this apply to ALL drivers under "staging" or only the comedi series
> > drivers?
>
> You can find this answer in the MAINTAINERS file :)
> Check here:
>     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS#n16640
>
> get_maintainer.pl basically reads the content of MAINTAINERS file to inform you
> who you should send the patch.
>
> But the tutorial[1] uses "--nol" option in get_maintainer.pl script (which
> removes mailing lists from the output).
>
> [1] https://kernelnewbies.org/FirstKernelPatch#Submit_a_patch
>
> Which I suppose is because "the maintainers of staging/vc04_services would
> prefer not to be CCd on Outreachy patches", but I guess this only applies to
> staging/vc04_services.
>
> I would like to confirm that only staging/vc04_services should use --nol,
> so we can improve the tutorial.

In the beginning, no maintainers got CCd, but some were not happy to have
things happening to their code without their knowledge.

So as a compromise we decided that patches could go to the people listed
in the maintainers file, without spamming everyone who might be on the
mailing list.

The volume of patches seems to be down, and the quality perhaps a bit up,
so it would probably be reasonable to add the mailing lists back in.

julia

