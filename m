X-GM-THRID: 6389636871256801280
X-Received: by 10.46.9.81 with SMTP id 78mr3295671ljj.30.1487748223724;
        Tue, 21 Feb 2017 23:23:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.23.162 with SMTP id 34ls19634lfx.4.gmail; Tue, 21 Feb 2017
 23:23:42 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr3295665ljj.30.1487748222857;
        Tue, 21 Feb 2017 23:23:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q4si35647wma.3.2017.02.21.23.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 23:23:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="261565841"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 08:23:24 +0100
Date: Wed, 22 Feb 2017 08:23:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: most: Using macro
 DIV_ROUND_UP
In-Reply-To: <e9a638db-16fe-4e85-a132-c45c39307df1@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702220822580.2080@hadrien>
References: <20170221185615.GA25627@singhal-Inspiron-5558> <alpine.DEB.2.20.1702212058040.2117@hadrien> <e9a638db-16fe-4e85-a132-c45c39307df1@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-405128555-1487748204=:2080"

--8323329-405128555-1487748204=:2080
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 21 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Wednesday, February 22, 2017 at 1:28:52 AM UTC+5:30, Julia Lawall wrote:
>
>
>       On Wed, 22 Feb 2017, simran singhal wrote:
>
>       > The macro DIV_ROUND_UP performs the computation (((n) + (d) -
>       1) /(d)).
>       > It clarifies the divisor calculations. This occurence was
>       detected using
>       > the coccinelle script:
>       >
>       > @@
>       > expression e1;
>       > expression e2;
>       > @@
>       > (
>       > - ((e1) + e2 - 1) / (e2)
>       > + DIV_ROUND_UP(e1,e2)
>       > |
>       > - ((e1) + (e2 - 1)) / (e2)
>       > + DIV_ROUND_UP(e1,e2)
>       > )
>
>
>       DIV_ROUND_UP is defined in kernel.h, which defines some other
>       generally
>       useful things.  Maybe there is an opportunity for making rules
>       from some
>       of them also.
>
>
> yes, for sure I will make other rules also, but do I have to include other
> rules in
> this patch only and resend v2.  

It was just a suggestion for future work, not a complaint about this patch
:)

julia

>
>
>       julia
>
>       >
>       > Signed-off-by: simran singhal <singhal...@gmail.com>
>       > ---
>       >  drivers/staging/most/hdm-dim2/dim2_hal.c | 6 +++---
>       >  1 file changed, 3 insertions(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/most/hdm-dim2/dim2_hal.c
>       b/drivers/staging/most/hdm-dim2/dim2_hal.c
>       > index 0b9816c..6824826 100644
>       > --- a/drivers/staging/most/hdm-dim2/dim2_hal.c
>       > +++ b/drivers/staging/most/hdm-dim2/dim2_hal.c
>       > @@ -49,7 +49,7 @@
>       >  #define DBR_SIZE  (16 * 1024) /* specified by IP */
>       >  #define DBR_BLOCK_SIZE  (DBR_SIZE / 32 / DBR_MAP_SIZE)
>       >
>       > -#define ROUND_UP_TO(x, d)  (((x) + (d) - 1) / (d) * (d))
>       > +#define ROUND_UP_TO(x, d)  (DIV_ROUND_UP(x, (d)) * (d))
>       >
>       >  /*
>       --------------------------------------------------------------------------
>       */
>       >  /* generic helper functions and macros */
>       > @@ -117,7 +117,7 @@ static int alloc_dbr(u16 size)
>       >                  return DBR_SIZE; /* out of memory */
>       >
>       >          for (i = 0; i < DBR_MAP_SIZE; i++) {
>       > -                u32 const blocks = (size + DBR_BLOCK_SIZE -
>       1) / DBR_BLOCK_SIZE;
>       > +                u32 const blocks = DIV_ROUND_UP(size,
>       DBR_BLOCK_SIZE);
>       >                  u32 mask = ~((~(u32)0) << blocks);
>       >
>       >                  do {
>       > @@ -137,7 +137,7 @@ static int alloc_dbr(u16 size)
>       >  static void free_dbr(int offs, int size)
>       >  {
>       >          int block_idx = offs / DBR_BLOCK_SIZE;
>       > -        u32 const blocks = (size + DBR_BLOCK_SIZE - 1) /
>       DBR_BLOCK_SIZE;
>       > +        u32 const blocks = DIV_ROUND_UP(size,
>       DBR_BLOCK_SIZE);
>       >          u32 mask = ~((~(u32)0) << blocks);
>       >
>       >          mask <<= block_idx % 32;
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170221185615.GA25627%4
>       0singhal-Inspiron-5558.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e9a638db-16fe-4e85-a132-
> c45c39307df1%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-405128555-1487748204=:2080--

