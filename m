X-GM-THRID: 6664942000953884672
X-Received: by 2002:a37:a10f:: with SMTP id k15mr4032636qke.29.1551867457483;
        Wed, 06 Mar 2019 02:17:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21c5:: with SMTP id 5ls489762qtz.1.gmail; Wed, 06 Mar
 2019 02:17:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqytdZvkmDxTVAfz8+e4pUWxOED93tj17gPfmoN2q2N+XYrTbPAmlmjcEiwKAjZqH8xlLR1E
X-Received: by 2002:ac8:28c9:: with SMTP id j9mr3729084qtj.21.1551867456936;
        Wed, 06 Mar 2019 02:17:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551867456; cv=none;
        d=google.com; s=arc-20160816;
        b=blxqrRL/Ec9uUkdJUH9K6uv0LXQLD2oc/khxvt9PPRMRVfk7tKkUiLRU2tJAKrS45E
         9ROsPIWMyMDs8/bR+YkTW3vaXHq0iZyrgYToNFNdIteM9iF8sraCbXrKPWGqVfRH66Kz
         BKPpdPDvYVjV34Oiy99h8K7lSWdoiGJmuh+TllixbaWoKHmq8Xx2B7U7DHe96spNlU+H
         fgEPW/cAwGLp7nHHP8b8o9TOj1D/eeSknmoa8+oLrp5zQamwB60iRwg/nglwONrvFXBw
         yDP9dFiCbUWXHPBeaDQXJisTgonsONtUNeXek9tJr6/utnP4Hizwl26vYyIgyhXlL05N
         fqnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4+44FH9sN2I0nODqzxSSgyIrOa1/Ts3rTAM8YBGHJkw=;
        b=T+K6KzchTEKaVCGzBfAoE7q3usAoSiZBazj1Gt19waVO4ABohq6Vae3ELe0/X2QVMh
         thb5Nws7+42h+5X5fVtKf2az1DahCGn0EZ8aQ7G68FWyC3CtKCH5FYD5LgaB2lNEnQ/r
         Aif9KmikjagVhSVViWqYTI8NQVYKLBAxu1LnjWmgZXHKGteACixdwHwlfjok+MWsn00Q
         mcRMQL0ehY75vaE/xdSO4E09v3kuFCkJvkPC3M8LeFmdQV3nQrHGjuvEcW0M2A84yPDN
         K7Xcq7F43rzUsjQJZQNChFSKofy382Fyjx7YCY92OGWupngadF6D00DYpesaojMhRJEL
         xndw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tHoF6er3;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id p1si78046qkg.3.2019.03.06.02.17.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 02:17:36 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tHoF6er3;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82a.google.com with SMTP id y4so12172644qtc.10
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 02:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4+44FH9sN2I0nODqzxSSgyIrOa1/Ts3rTAM8YBGHJkw=;
        b=tHoF6er34YTD3WYYGT4/0GIiSrNZUXE4llWgnvmpByfOYNa+x8d6NSSuLQQsyGSoox
         qrzrQIrak0wwdL/UgG0QfO7CF9j8d0UsyzjYjyZLoNFYZTDL29fcaHrz1N1FQULW4Ay9
         bjTK6LryOU0vqfpY0kwReepCDRiXqIKrdxOU7SExdxba+9WC3uXjPabQkFKj6XJjuVrv
         AX4xyooxEP4twm1XD21O+6AyQaJnYgLI7SxjtJ5O+XwaRrDUko44l6HSWF2yTCNsKAkk
         sN3GnOCBr/OKppp2vlj6sX/mkrgWY5rkAA0qRxH0EQIqGCgPpTdJEmUjIjKPOndkDAfF
         HExw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4+44FH9sN2I0nODqzxSSgyIrOa1/Ts3rTAM8YBGHJkw=;
        b=O28LKKtc+LSuMICPtzG0GDcX39N1PlAnjYswNLV7erAsSGjUzb8WizMcDqUV1tUkE5
         boj1maRqAL1B+Q8K+ANU0zA9nJmaqtJiWXRP6QTpNoebU7iAYrU5gcPVPEW80QB1HFVs
         fv+PA+5+qppGELNGoSEbDcjzMF75zwM/em1HuGmSKuguMZutZj9dJVy/Zw//pSyGynIY
         rNmPJ4VmrZSxICBBceUgjoZiO+HkTZJATXype5j/xk5uwFDFCjt3VlHm6TF9QQ65CSxj
         qxYLux8g8DFo/c+bNmOgV0IvS6n4QuNG7WVzPBXhezAJAhLIx+CJ/kLm2jNPLrnUfxW6
         TI4g==
X-Gm-Message-State: APjAAAWzlpTAZ/2K/EvQ+DuCwMEykyroEBQwtGzVhVGJ1hJy9zyEfnxf
	DBiqm/XM03E610phQP49fm/FwYFBe9cwxGjlzcY=
X-Received: by 2002:a0c:d24f:: with SMTP id o15mr5510757qvh.145.1551867456557;
 Wed, 06 Mar 2019 02:17:36 -0800 (PST)
MIME-Version: 1.0
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1903060859150.2706@hadrien>
 <CAOMPgjgrT3q67efW_nnbGU0qTi1DMEj=Siyy2FRSZOCG+dQAoA@mail.gmail.com> <alpine.DEB.2.20.1903061039180.3557@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903061039180.3557@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 15:46:59 +0530
Message-ID: <CAOMPgjgQh1y_hvi8opKJni=Vi8bA+0thGPb06Jfs3iW41Vd5eA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: fbtft: Remove unused #defines.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 3:14 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:
>
> > On Wed, Mar 6, 2019 at 1:29 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > > It would be good to have a cover letter (0/2) for this patch series as
> > > well.
> > >
> >
> > I used -n flag for generating cover letter because there is two patch series.
>
> But it seems that there is no cover letter, or at least I did not receive
> one.
>
> The documentation for git format-patch says:
>
> When multiple patches are output, the subject prefix will instead be
> "[PATCH n/m] ". To force 1/1 to be added for a single patch, use -n. To
> omit patch numbers from the subject, use -N.

I will modify it accordingly.
>
> So that doesn't seem like the right way to get a cover letter.  (Indeed, I
> have noticed some patches with 1/1, which also seems unnecessary).  I
> think you want the option --cover-letter.  This is discussed in the
> "Versioning patchsets" section of the tutorial.
>

> julia
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903061039180.3557%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

