X-GM-THRID: 7018981355604148224
X-Received: by 2002:ac2:51cd:: with SMTP id u13mr27262071lfm.200.1634551951610;
        Mon, 18 Oct 2021 03:12:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b44:: with SMTP id o4ls304720ljj.9.gmail; Mon, 18 Oct
 2021 03:12:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzU1fyYUD0iGpqSsDNMBV2LzF6C4VTzgqeuVf7bTisKSDLLtKdwf7AbAVUo4QP+sL1+irI9
X-Received: by 2002:a05:651c:a06:: with SMTP id k6mr32058455ljq.237.1634551949862;
        Mon, 18 Oct 2021 03:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634551949; cv=none;
        d=google.com; s=arc-20160816;
        b=IirAJzS3n6n3h4kmS4pfs82iPbdhgIiajdNELYDByH/VGVELnyNIWX8DvupkVQU3ki
         CMSmszppgzmjS0PZg2d78k63nRWMWQ/hWqfkqVGYlnDYttapnJjZbHoPGFm/gNe5GPoq
         F7NuJYJqRTqwkrSWlWhdvnwEszAswDuwmYotnjbXJVJxRwQX3G7lSPxzhTglGlfvCkhT
         uC0zdoTuYmiL2UoaJHDCeUIV0drC/CTQBXG+/NQc++8jJ76ghS6wSv/ta8aXTiE2OgLc
         ZbKxd1RRCLTE4mA4pUEV45i5tRk46iHsfPeYG3Lbrv5lJdqfsICKHoO565VaCTSNm15N
         Fq5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=Xs8dMcAw//T/XXP/JirOTQFerpElBvwk2dURScFJc4c=;
        b=Pe00na+uSIQJwdvDTOiPVwFhW00Z8TBoCIPvg9jVWbkKbTdBKy1pW0t0DV9nbAWHj9
         ctFn+eqIGRyUFWeqNjOqBVVCmTdirt4XbhUn4Ww1r0+qHTl+yMf/H3pvvgmExCC+nqtl
         Z4ArlHE/SHtxp1fC3IDatQ+r8DpANkrZqqwcaFhzHcqRclk7fIbDRuDyPJMEBZzj1yHo
         nhTTCYdOZycf+rwDhCySGEf5AOQDinfZdW+5gRUE/8SlHj1Z7i+G6aZk56iFOAKBDqWk
         22HyhCIJhUOVyArZh+HgFjvYOQHXz3Jv51f8LkpdTjrcvL5es+qYGQEf/1pskLWsrhnU
         l32A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g28si827452lfv.3.2021.10.18.03.12.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 03:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AkmK3mawq+7+z89nv7HdFKrPw/r1zdoMgy1kn?=
 =?us-ascii?q?xilNofs+SL3/qynIpoVm6faUskdtZJhEo7u90ca7LU80haQe3WB8B9qftXDdyQ?=
 =?us-ascii?q?+VxeJZjbcKoQeQeREWrdQtsJuIGpIWYOEYa2IasS+Q2maF+zBL+qjhzEnHv4nj?=
 =?us-ascii?q?J44Gd3ATV0mZhT0JcDpy6SdNNXJ77WBSLuvk2iIEzwDQGkgqUg=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396234999"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 12:12:28 +0200
Date: Mon, 18 Oct 2021 12:12:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: Alison Schofield <alison.schofield@intel.com>, 
    Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
In-Reply-To: <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110181207200.3174@hadrien>
References: <20211014174207.GA426328@alison-desk> <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Oct 2021, Karolina Drobnik wrote:

> Hi Alison,
>
> I updated the `get_maintainer.pl` code section and split it up a bit,
> hope it's fine. Additionally, I decided to extract the note on
> `vc04_services` so it's more visible and add a comment on including the
> outreachy list (as a reminder).
>
> One thing - should I use double-spaces while editing this wiki? I see
> they're used there, I added some in but I wouldn't be surprised if I
> missed some.
>
> Please let me know what do you think about these changes.
>
> Thanks,
> Karolina
>
> ----------------------------------------------------------------------
>
> <<Anchor(submit_a_patch)>>
> = Submit a patch =
>
> The first step to sending a patch is to figure out who to send it to.
> For this, you need to find the maintainer of the code you're patching,
> and Cc the correct mailing list.  If you simply send it off to LKML, it
> will get ignored.  The perl script in the kernel source directory
> ``scripts/get_maintainer.pl`` will either take a git commit or a file,
> and tell you who to send your patch to:
>
> {{{
> $ git show --pretty=oneline --abbrev-commit HEAD
> a490e2e84eda staging: vt6655: Rename byPreambleType field
> diff --git a/drivers/staging/vt6655/baseband.c
> b/drivers/staging/vt6655/baseband.c
> index 0bae35af6e0f..5efca92f1f18 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
> u32 frame_length,
>         u32 count = 0;
>         u32 tmp;
>         int ext_bit;
> -       u8 preamble_type = priv->byPreambleType;
> +       u8 preamble_type = priv->preamble_type;
>
>         bit_count = frame_length * 8;
>         ext_bit = false;
>
> $ git show HEAD | perl scripts/get_maintainer.pl --separator , --
> nokeywords --nogit --nogit-fallback --norolestats
> Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
> }}}
>
> It is also possible to get a list of maintainers for a particular file
> (`-f` option):
>
> {{{
> $ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --
> nogit-fallback --norolestats -f drivers/staging/vt6655/baseband.c
> Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
> }}}
>
> The many arguments to get_maintainer.pl cause the output to be in the
> form of a comma-separated list and cause only the actual maintainers of
> the affected files to be included. However, for IIO drivers, please
> also include linux-iio@vger.kernel.org.

I wonder if this sentence is still needed, if we are dropping the
suggestion to use the --nol argument.

> For Outreachy patches,
> remember to include the outreachy mailing list in your `To:` field as
> well.
>
> '''Important:''' The maintainers of staging/vc04_services would prefer
> '''not''' to be CCd on Outreachy patches. Please CC Greg explicitly on
> these patches: Greg KH <gregkh@linuxfoundation.org>.
>
> The second step to submitting a patch is to create and send a patch as
> an email.  You cannot send patches as attachments to the mailing list.

This would be better as "You cannot send a patch as an attachment..."

thanks,
julia


> Instead, you will have to craft a special email, and send the patch
> inline.
>
> There are two ways to send a patch.  Either way is correct, and we
> suggest you get comfortable with sending patches both ways.  We suggest
> sending your first patch to yourself, in order to make sure it works.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel%40gmail.com.
>

