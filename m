X-GM-THRID: 6665413421410811904
X-Received: by 2002:a1c:6c15:: with SMTP id h21mr1130324wmc.10.1551989335165;
        Thu, 07 Mar 2019 12:08:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls75042wmc.13.gmail; Thu, 07 Mar
 2019 12:08:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqyh/fJaCS8TBoqVEgbRID5yrlp3GELGSiVzIuQId4E0tc+0/jpxvdG+vCU2omGNBNY+BGmy
X-Received: by 2002:a1c:80c3:: with SMTP id b186mr1221369wmd.0.1551989334195;
        Thu, 07 Mar 2019 12:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551989334; cv=none;
        d=google.com; s=arc-20160816;
        b=s4VwQPU+aJqCWdDt8ubu39srO6QkDHpPOatmxTOgBS6KcMN01POIePHGKPUtylIexS
         slh+WkQZIG2hodh+V1Z8gOF31UDEXxsP6xVVZ+6bmHamQBAMrHDIXP0daasX3qs4aViz
         9iB5Il6Zsne76e/YRcH6k6G1kD/XHVVqj7S+ouG3DWgLuysInbn0aQ8hGPN4BOaZFKvu
         kvgn/f2KzwAJCtzGf1rRi4ah+HxXYgDVcg6D1ne+vv31VZ3/clhHHp3LCPDf3nHyBhYq
         YzPBYl2HnoE5tdyzBawJCSljTjGa7ktIqCHz6mXDQZgC5+Ry57nTtvdzGu5nG0uyDEJK
         hVjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=lq7QiZhZmKr5OKjItfPCHQy5RZ1qzKUu25FqUjSqIvs=;
        b=yT5Y70DjDhiOoucYC8jo4fFY13I6N2qeKPnkWQ05rkEO1xU6j0Raq5Dss3hUdevbcf
         gq1xtVCSUkVMvdy6yHzdSuqJ2dEdArzelSlK5cwYP7ugdds6Y7X/LuCvlzMxTC9rXq9L
         cG5F2o7sjP2ZiokiWKqZUrw8l2yf+o7QtwrDJUG6kqOnME0/hq7v8p+UPLhPNIG8P1o4
         fx7hhp1keQewK3b9nMKLqzq8NczP1J+05nZyelTDeL1IWUMOtfFKMEWcOUolqOHHJIzV
         GJzxgLSXIp1RjAhdb0a/bTh+EeKgP2hoRZSvtbVwKrfr9lMCTNAaRs4kP6gy7MNfRUEi
         1c/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c24si274664wml.0.2019.03.07.12.08.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:08:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,453,1544482800"; 
   d="scan'208";a="372408988"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2019 21:08:53 +0100
Date: Thu, 7 Mar 2019 21:08:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fwserial: Convert macro
 into an inline function
In-Reply-To: <20190307200347.GB27056@kroah.com>
Message-ID: <alpine.DEB.2.21.1903072107520.2558@hadrien>
References: <20190306224809.12524-1-madhumithabiw@gmail.com> <20190307200347.GB27056@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Mar 2019, Greg KH wrote:

> On Wed, Mar 06, 2019 at 04:48:09PM -0600, Madhumitha Prabakaran wrote:
> > Convert macro into an inline function to make codebase better
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/fwserial/fwserial.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> > index a1b90ea7fcb8..aec0f19597a9 100644
> > --- a/drivers/staging/fwserial/fwserial.c
> > +++ b/drivers/staging/fwserial/fwserial.c
> > @@ -19,7 +19,10 @@
> >
> >  #include "fwserial.h"
> >
> > -#define be32_to_u64(hi, lo)  ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo))
> > +inline u64 be32_to_u64(__be32 hi, __be32 lo)
> > +{
> > +	return ((u64)be32_to_cpu(hi) << 32 | be32_to_cpu(lo));
> > +}
>
> For some reason I thought the kernel had a function that already did
> this, but it doesn't, which is really odd.  Anyway, that's something
> that could be done in the future, as this is done all over the place in
> different drivers.

Actually, as far as I can see, only two occurrences, in
drivers/target/sbp/sbp_target.c and
drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2.c

Perhaps there are some other variants that are more popular.

julia

