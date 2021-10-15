X-GM-THRID: 7018941118564794368
X-Received: by 2002:a19:494e:: with SMTP id l14mr10301152lfj.180.1634290456584;
        Fri, 15 Oct 2021 02:34:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3081:: with SMTP id z1ls1847051lfd.2.gmail; Fri, 15
 Oct 2021 02:34:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAOmfY29ylS5l7Fm6tfDFm1Qol97F8UdkONUSxVet/EZ7tYS3frYltNye4OTXsLBbXCCjX
X-Received: by 2002:a19:6447:: with SMTP id b7mr9888499lfj.551.1634290454871;
        Fri, 15 Oct 2021 02:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634290454; cv=none;
        d=google.com; s=arc-20160816;
        b=gy/cQ0BwsJ/d9cZanrJBv0CNPIlNpklA361bf1Ts8xd5LL0aM6kGt5a4k8UU7PjEMt
         3dm/YC8iARskqJsrE1wJRilhGUM7d5nS5tqd+C2aQObJBpnYLEfOL9E+PtLlSiwj8FoG
         y1yf+0DMAX/cafJQyL69unq9ZiEDx2cxC/3VeRKdE7GveEtTNVjrR50QNHKFPZxuXiMV
         iVQqdrCnKcF2tEusNzCza4ukmPudIyxfEefkshbjC2ThLsJCUXYIHahdX0sq/kOhP65K
         TbCaHQs2OlHYaU06+XzgsmcUyTjzv3JzofvkH9X3Jj2ekFSYnFpVRAvM6Jx9+yM1X1e+
         d24A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=UWRtFXqJRNiHubqBJ2xnC32sP3McBP7KjXBZ9/+IxZM=;
        b=gZB0AQE0uSdMRwg8veWxCt9yIsdyyBXdO53DCW0MhuY9WzglYwCzV43qSLYPX/5il1
         a+U+LnHMbYVYWBk1rWF3FjBdB7LEaVV9oOO504+6H0GPK48Rpmyaka8CYSykfLYcDu9y
         9TI0UcpyTaHbKLMxKYTsOnsZpvloQyv2Dif7kNgefIwPm48n+4Zjc5QvLe+0Tm9sv0Fq
         CZcwdUPdlxGhHvvnVQ/Hj47zp5DOkxLodu/AWkLWEF3WELwrYABzW3xLmbF2G+hamnFR
         qSiMPYz1DEimdZDsNzuAVH4KVJJviGJx+CCAixBRI5OERQfKnpF7C3U9DnNtlCjZOL9b
         OsMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w6si241161lfa.7.2021.10.15.02.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 02:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AGkorEqNmys4SxsBcTsajsMiBIKoaSvp037BL?=
 =?us-ascii?q?7TEUdfU7SKelfqyV9sjzkCWUtN9zYgBEpTnjAsm9qBrnnPZICMsqTNSftWLd1l?=
 =?us-ascii?q?dAQrsP0WKv+UyDJwTOst8Y76tmfqRkYeecMXFxh6/BjzWFLw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="534112616"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Oct 2021 11:33:53 +0200
Date: Fri, 15 Oct 2021 11:33:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: Mike Rapoport <mike.rapoport@gmail.com>, 
    Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    "forest@alittletooquiet.net" <forest@alittletooquiet.net>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Rename byPreambleType
 field
In-Reply-To: <efc35d98c888f489c3e50a7bec647b1de2960c93.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110151133310.7123@hadrien>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>  <YWhOfPhVRBrH3gz8@kroah.com>  <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>  <YWhus0EGaPJXhsHv@kroah.com>  <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com> 
 <YWlBadCKQ7mEnXJx@kernel.org> <efc35d98c888f489c3e50a7bec647b1de2960c93.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1353497822-1634290433=:7123"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1353497822-1634290433=:7123
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 15 Oct 2021, Karolina Drobnik wrote:

> On Fri, 2021-10-15 at 10:48 +0200, Julia Lawall wrote:
> > Hmm.  I see that the definition of 3 for PREAMBLE_SHORT is in some
> > different drivers.  They seem to have a concept of preamble mode.
>
> I see, it makes sense to keep it consistent type-wise and leave it as
> u8 then.
>
> > Therefore, it looks like it is not a boolean, the by prefix should be
> > dropped, the == 1 should be turned into == PREAMBLE_SHORT, and the
> > comment should be removed.
>
> Sounds like a plan, I can address that magical number in the next
> patch, thank you.
>
>
> On Fri, 2021-10-15 at 11:52 +0300, Mike Rapoport wrote:
> > AFAIU, this variable defines what type of a preamble will a packet
> > have and its value determined by a bit in WiFi packet header. In a 
> > sense it's a boolean, but it's perfectly fine to use u8 and 0 and 1 
> > for it.
>
> Thanks for explanation, I wasn't sure what the convention is.
>
> Who would've thought that so many interesting things can come out from
> just one variable rename :)

It's a pretty common phenomenon :)

> Just to double-check - should I cc the mailing lists returned by
> get_maintainers in my V2 patch?

Yes.

julia
--8323329-1353497822-1634290433=:7123--

