X-GM-THRID: 6662431164424257536
X-Received: by 2002:a19:6454:: with SMTP id b20mr229157lfj.1.1551296772896;
        Wed, 27 Feb 2019 11:46:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5551:: with SMTP id j78ls344837ljb.11.gmail; Wed, 27 Feb
 2019 11:46:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGuxXLFYVtScnCUzNQ4ZCFpZTU5agS2uxQmWu1qBU2aymw1pW5IICZsyIyFKNvln/jHinX
X-Received: by 2002:a2e:9d93:: with SMTP id c19mr285031ljj.25.1551296772106;
        Wed, 27 Feb 2019 11:46:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551296772; cv=none;
        d=google.com; s=arc-20160816;
        b=AYs4L6x50Z4rKZea9haL+FtTcd7BVGvBFOd8BhbL7qVutc7d/Ok3AdB7WkV/wi65/q
         M5KNypn/r3Obt1wX6uR543vhpSom48CUyKoS7/8vpTpf+rmdrhLNKosds3QP/BkK5vSc
         qriKVmp5r3CIfAnzHpdipH+Q3WrHRoQo/YYZc1ex8Osgex5zEt/LOjSnamTX7j7ZHiuY
         KJfCUMvqByFHpKSBXy++Gwa/nN7/LO30x01Z597w6ngaoCZfGx3k6PcHm/xQRqiACorv
         Wcrx8frHQ2WHsvmEgx1AMCdsqOq3ZR6EuL5az+d3Q7O0aMqE2Z18uMxsSYd8LAzILQcw
         k97w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=j3igSVOGHN8eufw80z7EJ572ZfFEDIhjLe9AmZFBcB8=;
        b=uuBjAi/oD/Gj/7DwOvWNCUAJ6EfVt3mLIOtMC6nHOdcJAsqtrzdXhYU48FMWXHDY1W
         2dgs4EYBRagg/Hx0QhEsaD0p+6iOIsPzgxobjkZVP0m/INMTZuZ6fYUO9YKDddkxuTAa
         mixFRuNqE9H7MAaE3C8By4SqyKDuc0gO2TDqH8ZutOrwbrE4hGpugfUY8mh4kwIYxTtV
         3iXlhbOxbFAn/KC/xTPeP8wVDT1bqfaWNdzw9oejgQu2PPrVz1A6tRQaPsMoyMtKm7Uh
         RhDD/fuF8wtrLJEfd5slzjEqjAl4/zEpqbzHmaa8BfVBARrg3L2JPeT4/SAgwfBHAWLy
         qqMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a6si487801lfl.2.2019.02.27.11.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 11:46:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,420,1544482800"; 
   d="scan'208";a="371203715"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2019 20:46:11 +0100
Date: Wed, 27 Feb 2019 20:46:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: vt6655: Modify comment
 style for SPDX License Identifier
In-Reply-To: <20190227164328.GB22354@madhuleo>
Message-ID: <alpine.DEB.2.21.1902272045490.2561@hadrien>
References: <20190226215531.5196-1-madhumithabiw@gmail.com> <20190227144836.GA32231@kroah.com> <20190227164328.GB22354@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Feb 2019, Madhumthia Prabakaran wrote:

> On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> > On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > > FIx the warning by changing comment style based on header file type as
> > > per License identifier syntax
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > > Changes in v2
> > > - Modified subject line and commit log
> > >
> > >  drivers/staging/vt6655/baseband.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > > index f2b6a98de2c1..0cc2e07829c5 100644
> > > --- a/drivers/staging/vt6655/baseband.h
> > > +++ b/drivers/staging/vt6655/baseband.h
> > > @@ -1,4 +1,4 @@
> > > -* SPDX-License-Identifier: GPL-2.0+ */
> > > +/* SPDX-License-Identifier: GPL-2.0+ */
> >
> > This patch does not apply to my tree :(
> >
>
>
> I didn't understand why it doesn't apply to your tree.

The - line is not a valid comment.  That is surely not what there was
before in the kernel.

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227164328.GB22354%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

