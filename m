X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:600c:4e91:: with SMTP id f17mr4651636wmq.180.1634634285200;
        Tue, 19 Oct 2021 02:04:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls838793wms.3.gmail; Tue, 19
 Oct 2021 02:04:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyQXaXF2A7XDwK7du2kkaa88BiwProqJDP+T60+36Wbq2uWv0ZNdL4CcphxwbwISpAqOXEO
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr4654719wmk.43.1634634283628;
        Tue, 19 Oct 2021 02:04:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634634283; cv=none;
        d=google.com; s=arc-20160816;
        b=e3tmswBaZnayhSZCiQmfe/fAwWpZ6BKupnnY7483pF3Ec571CzhUrC/jXjZ3UX9IrI
         SpbbZZZXeGAr4YpOMo1HUjWzM4my0RZyEudM44Q9aCZ/mrWG+GYfTmouCZDML2XBlHWY
         0CTtTPopwkntDZfIOUhVi9zCvvZFV+XdtM6a8b6Ef8yYNyvsuXjuSGCaqlpBdGcX6uq6
         YwWrBdwrly2P+HYKp1xH2lsEk7KfY3uKR33hUeLXiobyP/Tfk2UiAZMnTyUiMaZNZHnn
         ukr1B3xB8QMg02AdqcI3cdZZfkwin0aF1orTfT9Yl7TvhZbGeMIYoKNIQ88wI29UZ+BO
         r3OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=L7D13a5ItISsvFLM50ueIvlqzOsfMtZ/rOptMhipndk=;
        b=iIRyJ59j8QVn1QiWZKTUaRVdvM3U0LCIrM5ii+ktawaIByGEEyMC4TwHNeGY38JnaZ
         2lNNDDfVq8QzFRk7nwG+ZjNcosWbfEpis/hlHYoz3nBOTOmKJ/VjGT8ncr4Knc5Cn+Us
         uE6s4mVHDbvokN57iBdnUSuWfrmPBMvz7HdsQigg2Dq6CvXq2/bY38SquvVvoGM+vWab
         kcf4LW4ZEuLEi+wN/ww6VNKrteb7/5vJgP3wvO66Vyl0oJaD8ZGusN+OfY5GhKaeyDb1
         Y5XBslX2w57BqbcFPdovR/MXoYpEnDE3a7EhBcPZ9YmGQUbGRfUnJ4bw6lUGfvKKQDvn
         KHhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b72si113400wmd.1.2021.10.19.02.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 02:04:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AtNoxa6ravQEmNopY43E7viIaV5oseYIsimQD?=
 =?us-ascii?q?101hICG9E/bo8/xG885x6faZslwssTQb+OxoW5PwJE80l6QU3WB5B97LYOClgh?=
 =?us-ascii?q?rKEGgI1+XfKlPbdxEWutQtt5tIQuxOTOf9ClV3lq/BjTWQGdxI+ra6zJw=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534708081"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2021 11:04:43 +0200
Date: Tue, 19 Oct 2021 11:04:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: Alison Schofield <alison.schofield@intel.com>, 
    Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
In-Reply-To: <11393669909cdb43a5f0ca99eace0451bca45d30.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110191104280.2643@hadrien>
References: <20211014174207.GA426328@alison-desk>  <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>  <20211018175420.GA446414@alison-desk> <11393669909cdb43a5f0ca99eace0451bca45d30.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Oct 2021, Karolina Drobnik wrote:

> Hi,
>
> Thank you very much for your comments. You can find an updated version
> of this section below.


OK for me.  Thanks!

julia

>
>
> Thanks,
> Karolina
>
> ------------------------------------------------------------
>
> <<Anchor(submit_a_patch)>>
> = Submit a patch =
>
> The first step to sending a patch is to figure out who to send it to.
> For this, you need to find the maintainer of the code you're patching,
> and Cc the correct mailing list. If you simply send it off to
> linux-kernel@vger.kernel.org, it will get ignored. The perl script in
> the kernel source directory ``scripts/get_maintainer.pl`` will either
> take a git commit or a file, and tell you who to send your patch to:
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
> To get a list of maintainers for a particular file, use `-f` option:
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
> the affected files and relevant mailing lists to be included. For
> Outreachy patches, remember to include the outreachy mailing list in
> your `To:` field as well.
>
> The second step to submitting a patch is to create and send a patch as
> an email. You cannot send patches as attachments to the mailing list.
> Instead, you will have to craft a special email, and send the patch
> inline.
>
> There are two ways to send a patch. Either way is correct, and we
> suggest you get comfortable with sending patches both ways. We suggest
> sending your first patch to yourself, in order to make sure it works.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/11393669909cdb43a5f0ca99eace0451bca45d30.camel%40gmail.com.
>

