X-GM-THRID: 10268360835072
X-Received: by 10.112.235.70 with SMTP id uk6mr3896477lbc.24.1427622163376;
        Sun, 29 Mar 2015 02:42:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.172 with SMTP id dd12ls345398lad.53.gmail; Sun, 29 Mar
 2015 02:42:42 -0700 (PDT)
X-Received: by 10.152.27.134 with SMTP id t6mr6613719lag.5.1427622162646;
        Sun, 29 Mar 2015 02:42:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f5si56680wix.1.2015.03.29.02.42.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 02:42:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,487,1422918000"; 
   d="scan'208";a="107525498"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 29 Mar 2015 11:42:42 +0200
Date: Sun, 29 Mar 2015 11:42:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: sm750fb: Insert spaces
 in for statement
In-Reply-To: <CA+5yK5H4uga+y3TWThR0kYRB32ryZWR+y2Ga7Xm+0Nj-ViZt1A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503291140120.2644@hadrien>
References: <20150329091836.GA19941@amitoj-Inspiron-3542> <alpine.DEB.2.10.1503291128130.2644@hadrien> <CA+5yK5H4uga+y3TWThR0kYRB32ryZWR+y2Ga7Xm+0Nj-ViZt1A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1561058608-1427622149=:2644"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1561058608-1427622149=:2644
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:

>
>
> On Sun, Mar 29, 2015 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>       On Sun, 29 Mar 2015, Amitoj Kaur Chawla wrote:
>
>       > Insert required spaces in for statements after operators and
>       ';'.
>       > Problem found using checkpatch.pl
>       > ERROR: spaces required around that '=' (ctx:VxV)
>       >
>       > Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>       > ---
>       >  drivers/staging/sm750fb/ddk750_chip.c | 12 ++++++------
>       >  1 file changed, 6 insertions(+), 6 deletions(-)
>       >
>       > diff --git a/drivers/staging/sm750fb/ddk750_chip.c
>       b/drivers/staging/sm750fb/ddk750_chip.c
>       > index 5f2f424..e11b8c5 100644
>       > --- a/drivers/staging/sm750fb/ddk750_chip.c
>       > +++ b/drivers/staging/sm750fb/ddk750_chip.c
>       > @@ -41,7 +41,7 @@ inline unsigned int twoToPowerOfx(unsigned
>       long x)
>       >       unsigned long i;
>       >       unsigned long result = 1;
>       >
>       > -     for (i=1; i<=x; i++)
>       > +     for ( i = 1; i <= x; i++)
>
>       There should be no space after the (.  Checkpatch should have
>       complained
>       about that.
>
>       julia
>
>
> The space after ( is a frequent error in the file so I thought I could send
> a different patch for that, after fixing all of them. Or would you prefer me
> to send a second version of this patch with only this correction?

In general, you should not intrduce new checkpatch warnings.  There was no
space after the ( in the original code, so it doesn't make much sense to
introduce bad code even if it is like other bad code in the file.  It
would be better to redo this patch series such that you don't introduce
any checkpatch warnings.  At the same time, you could add another patch to
the series to fix the "( "s in this file.

julia
--8323329-1561058608-1427622149=:2644--

