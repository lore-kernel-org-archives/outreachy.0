X-GM-THRID: 6664942000953884672
X-Received: by 2002:adf:ebce:: with SMTP id v14mr180327wrn.20.1551865472016;
        Wed, 06 Mar 2019 01:44:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b697:: with SMTP id j23ls287224wre.3.gmail; Wed, 06 Mar
 2019 01:44:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqzUdMrFXAj1uE2G1V40KmDjo8rmcGztRBdt6TFM/s7k3wTaPSL+iuVL+UWGh5GQJkU1z4CV
X-Received: by 2002:adf:e702:: with SMTP id c2mr178557wrm.31.1551865470923;
        Wed, 06 Mar 2019 01:44:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865470; cv=none;
        d=google.com; s=arc-20160816;
        b=KVNy3p0Wpaet4C5x+uN0ptX7l2rYlc5ghdkkBFmA+iqNSHntdi5GJBJxmtYKG7gdMq
         Eqih93qcQ0TRIoIr0/HOHaAlXy7wNo+m+p4vbvD3CwW5vPSVH0QeqOYQKuOx9bqyPDia
         4qGdzk654daePKRGc0Ds6nzAzaDJ0s+dKAR9HDW28EfAqieDK9G3Wzq/Gc3mIox60iX1
         4ZFNW0AI2SYjGVXD82K+7WMhekoYsTFi7EuC/ZWaSYBmMoYG/2Kww8iMTOVaMXZhsXZU
         KtX0Gj8VlhS3gc6P1qgW2t2JXbxg+WTi/JrckDck9+SueY3lV2lV3E6MryFwgzk3KCBN
         B19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fawQ7dEPMLjVav+ADuVT9VJELs0ufuB12/W58aFV2D4=;
        b=WcqsqEzzoZVJSDrlYrewDw0pmM9KXRnD2XGtHShIYoE/e9Cm65Mzn+gtEQMCDhXdNN
         H2ccp17shSirKWi26qXK1/PhwCXbJs+Q52W7Szvr2d9yRUkbuOBoiDvaWIb8J/3pIah/
         KwvccucLyI6JKAHE/jzgbWDqul2crSfBHFzn7xP0tI3HnlYAo8vBbt5IFPld/BRuY+oE
         R5yZt8waX+SoW8wdDN6ZYZpBIAWgCSaOf7FNZ6mfpclwhV78ZsUfvc1TMFWjJ3sGpqq/
         i1orrbgjj0D0Xnp88AT41zobcP64D0C3i5l/Lci7WfMOdLEIvdBLMBXMVaGZGVZ4kky0
         H1wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f185si88041wme.1.2019.03.06.01.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:44:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,447,1544482800"; 
   d="scan'208";a="372147155"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 10:44:07 +0100
Date: Wed, 6 Mar 2019 10:44:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: fbtft: Remove unused
 #defines.
In-Reply-To: <CAOMPgjgrT3q67efW_nnbGU0qTi1DMEj=Siyy2FRSZOCG+dQAoA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903061039180.3557@hadrien>
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1903060859150.2706@hadrien> <CAOMPgjgrT3q67efW_nnbGU0qTi1DMEj=Siyy2FRSZOCG+dQAoA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> On Wed, Mar 6, 2019 at 1:29 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> > It would be good to have a cover letter (0/2) for this patch series as
> > well.
> >
>
> I used -n flag for generating cover letter because there is two patch series.

But it seems that there is no cover letter, or at least I did not receive
one.

The documentation for git format-patch says:

When multiple patches are output, the subject prefix will instead be
"[PATCH n/m] ". To force 1/1 to be added for a single patch, use -n. To
omit patch numbers from the subject, use -N.

So that doesn't seem like the right way to get a cover letter.  (Indeed, I
have noticed some patches with 1/1, which also seems unnecessary).  I
think you want the option --cover-letter.  This is discussed in the
"Versioning patchsets" section of the tutorial.

julia

