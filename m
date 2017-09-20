X-GM-THRID: 6467836648401928192
X-Received: by 10.28.88.197 with SMTP id m188mr442120wmb.4.1505912890025;
        Wed, 20 Sep 2017 06:08:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.87 with SMTP id y23ls143510ljd.11.gmail; Wed, 20 Sep
 2017 06:08:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAjpqbxqR51cZSxoTV1E4myA6oSJZKA+13yNC32Wvq2gfFy1Ix9oYGqzPjI84EryFGIMerk
X-Received: by 10.46.89.153 with SMTP id g25mr502429ljf.20.1505912888239;
        Wed, 20 Sep 2017 06:08:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505912888; cv=none;
        d=google.com; s=arc-20160816;
        b=RwDzgn0lohVjrnlhV4NdvLXLgAAmlmxRUPqTZB+7BdTeOlk56dRtyxYTevVThE5XQ8
         WfyXUCIiZp7UfR4t3iOpMaQHPZvIvYCi1LXgGyxxmy9njd9db2WBTBx+moy31aQG9sDS
         d8vP12jl3tWSay+2/N28SX3yQ8SaagxMpqQaKKv14+SJg8Zf4bNOjDnY6Lw5FoTidpnZ
         ytNm2w8sc7hEtIloJgP9/H8otcPKj9FTF5S6VK5IeCFnouP1aF8RjpqcSAjX2UgqLeQD
         N+Cbo4UrF7dM4/S6cu2FXPH7eBgP43lZmZWP9bvRalBGdfDdu3/PDJfJ1YdoY/26ixvz
         aGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=g9ppjVcUWt4gxg3c7j0iG2LPSoAd5o8a+podbwDQP7c=;
        b=Sz+ijvm86shymBbnfaBS51zDdayz++LviBBeAqFnf0OCnG7wzAB6bnpCs1VqF81QCO
         JVYu+Z3MRAMb+u8zXujemmr+kugVt86iofDvdml2NLgda8UD2KKDi8p+87QLTAwwCNXL
         hXdx5Ri4te+oTnxPxth/qLG4ROriA5b8frJP0WgHulixvMmbe67gZ46PmPnbvBvE9Trg
         XgGUVu1u1xdIF35u2JNtLEQv88cL3cG3abqhpW0RI0M7BcsBWB7jVu6JPH0HxXltSzA+
         GasaANVsW901QVjFWGDjYN8KGaW7lOlA8lXgXrKtV2V2to178cNK2A4fzZHZjlEOxErJ
         1esw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si130428wmb.3.2017.09.20.06.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 06:08:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,421,1500933600"; 
   d="scan'208";a="238149327"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Sep 2017 15:08:07 +0200
Date: Wed, 20 Sep 2017 15:07:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Staging: media: atomisp: Fix
 style issues
In-Reply-To: <CALta04wZGH2g6ANabq__rrZJUvJqq-UE1+M9M6HVWT8pmm1Bzw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709201506420.3290@hadrien>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com> <alpine.DEB.2.20.1709201444450.3290@hadrien> <CALta04wZGH2g6ANabq__rrZJUvJqq-UE1+M9M6HVWT8pmm1Bzw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Sep 2017, Georgiana Chelu wrote:

> On 20 September 2017 at 15:45, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 20 Sep 2017, Georgiana Chelu wrote:
> >
> >> This patchset fix coding style issues found by checkpatch.pl.
> >
> > Did you send these before?  They look failiar, but they don't seem to have
> > been applied either.
> >
> > julia
>
> Yes, these changes were sent as a single patch.
>
> Greg advised me to break it down because there
> were too many different fixes for a single patch.
> So, we agreed to resend it as a patch set.

OK, it does look more digestible this way.  Maybe it should have been a
v2.  But since Greg has already discarded the previous one, maybe it is
OK.

julia



>
>
> Thank you,
> Georgiana
>
> >
> >>
> >> Georgiana Chelu (4):
> >>   Staging: media: atomisp: Use unsigned int instead of unsigned
> >>   Staging: media: atomisp: Add blank line after declarations
> >>   Staging: media: atomisp: pci: Move open brace '{' on the next line
> >>   Staging: media: atomisp: pci: Place constant on the right side in
> >>     comparissons
> >>
> >>  .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 27 +++++++++++++++-------
> >>  1 file changed, 19 insertions(+), 8 deletions(-)
> >>
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505909511.git.georgiana.chelu93%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>

