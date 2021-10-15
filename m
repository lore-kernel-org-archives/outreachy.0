X-GM-THRID: 7019053574676021248
X-Received: by 2002:a05:6402:229a:: with SMTP id cw26mr18262297edb.273.1634309532896;
        Fri, 15 Oct 2021 07:52:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1611:: with SMTP id hb17ls3645304ejc.7.gmail; Fri,
 15 Oct 2021 07:52:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmeOsv86UUPAZ6bYxct73vGD+rg2uw7ofsRR8NO2FKR3eLU2zyEnRiTECBXG03hUUbU0qz
X-Received: by 2002:a17:906:a4e:: with SMTP id x14mr6992634ejf.1.1634309530923;
        Fri, 15 Oct 2021 07:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634309530; cv=none;
        d=google.com; s=arc-20160816;
        b=uHGO80tRdb+i5v0CrnePYcbrpN5dLK6DdRzTjwmhoyB89JvOJGxpoFVVwQmQzjnsOA
         Jz6aYX3AE+SskEWlMU2dsUnC1TMpsFmQFkOf3/f4ZVwlAJQr9MN7CQVCIBJngWFKCLvv
         fq1OW8LW1ZdXXzgIz4DdreoiPmTrTfdK4ncvZhQJXVTDX4nqU9S9+xiI1fes456UZ/Cw
         qVX73R+ZbfaIQR+VOIoqw0BnzlOPaYuOrkYlJ5UbTeVlBuq+7DLzKgEdDCXlk50lLhHv
         Vr0AVdBbIbtwkc7BI2JY/TEmAsggTxgcZouClg8FnQNnzWnloCNHoUiNj0xKDnikJLrv
         PAMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=X8EqJqry4k+YEYRjbzq0kjXdt4iRq0hprJ29pvBgj5c=;
        b=xVjPoPgv5LN3bfT02xS+O2vBQA6jFB3jT18++QVYGfZ2LGSS858L0LvrX/SAe9W/Xx
         96P2YlKBXpbxPcwMTKzxIBltJvZHMipg/L++pAwle4gr/mf6QdguSTNAS9ll78kauyxC
         iPUsIlv2iZylEzkeJvrvNFsermFeTHkv/ko8WBoA5zmF7A5Tzt3f6oQ6xIMvXr01PAn/
         sq14wQGwFztzbjvvRUruFtRJS6ktOVIK5Zu0B2CW068oE5Djo9oSAAsThIJceU9Ivkpu
         8Tnq1QNEZAaeEkxsx78HD9CxHMXKZ42ODRR9J8LdhleLFTUgXMZ3PUol0sNUPt521vJg
         zGcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i5si367846edk.3.2021.10.15.07.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 07:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AmjBj2axviS2Szw9LUyXNKrPw6r1zdoMgy1kn?=
 =?us-ascii?q?xilNoHtuA7ClfqGV7YkmPHrP41sssR4b6Ku90da7MAvhHPJOjbX5Xo3SJjUOxl?=
 =?us-ascii?q?HYSb2KhLGKq1ePJ8SUzIFgPMlbAsxDIey1Jlhgl4LX/wW+Dr8boOWvweSChfzF?=
 =?us-ascii?q?i01gSgxncMhbjjuQS2ygYzRLbTgDIYA8HJqYovNdpzy6eWkGB/7LZEXtJNKzxO?=
 =?us-ascii?q?EjY6iWBm9hOyIa?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396043265"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2021 16:52:09 +0200
Date: Fri, 15 Oct 2021 16:52:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Kushal Kothari <kushalkothari285@gmail.com>, mike.rapoport@gmail.com, 
    mchehab@kernel.org, sakari.ailus@linux.intel.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging : media : atomisp : input_system.c
 : fixes the error of control reaches end of non-void function
 [-Werror=return-type]
In-Reply-To: <2247559.FlfiXgstMM@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2110151648300.7123@hadrien>
References: <20211014223007.596789-1-kushalkothari285@gmail.com> <2125107.Dqu8hxrGLC@localhost.localdomain> <2247559.FlfiXgstMM@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Oct 2021, Fabio M. De Francesco wrote:

> On Friday, October 15, 2021 2:04:49 PM CEST Fabio M. De Francesco wrote:
> > Hi Kushal,
> >
> > Aside from what Alison said about not accepting patches in this driver this
> > round, please note that this is not the correct way to address that
> compiler
> > warning.
> >
> > Think about it: now, whatever "state" you get from set_source_type(), you
> > always return it to the caller of input_system_configure_channel_sensor().
> >
> > By doing so, you change the logic of the function and get dead code. This
> > change makes the rest of the function code unreachable and introduces a
> huge
> > bug.
> >
> > While the patch cannot be accepted for Outreachy, think of a better
> solution
> > as you may need to make similar changes in future patches.
> >
> > Thanks and welcome,
> >
> > Fabio M. De Francesco
>
> I'm sorry, but just now I saw the reply Kieran Bingham. I'm simply restating
> what he wrote, so please disregard my email.
>
> I think that I didn't see his email because you forgot to CC linux-
> staging@lists.linux.dev and linux-kernel@vger.kernel.org.
>
> Please read again the Outreachy rules. If I'm not wrong, you should always CC
> the two mailing lists above.

The instructions say to use the following:

 perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f {file}

Probably the --nol argument should not be there, because some staging
drivers have mailing lists that should see the patches. I don't know if it
is desirable for everything to go to linux-kernel@vger.kernel.org though.
This part of the application process is meant to be highly newbie
tolerant.

In any case, Alison can decide.

julia

>
> Thanks,
>
> Fabio M. De Francesco
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2247559.FlfiXgstMM%40localhost.localdomain.
>

