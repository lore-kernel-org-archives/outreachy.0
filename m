X-GM-THRID: 6389636871256801280
X-Received: by 10.223.144.81 with SMTP id h75mr1299852wrh.1.1487763484401;
        Wed, 22 Feb 2017 03:38:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.206 with SMTP id p197ls181573wmg.6.gmail; Wed, 22 Feb
 2017 03:38:03 -0800 (PST)
X-Received: by 10.28.63.65 with SMTP id m62mr80849wma.6.1487763483657;
        Wed, 22 Feb 2017 03:38:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v133si40273wmg.1.2017.02.22.03.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 03:38:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="261629012"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 12:36:42 +0100
Date: Wed, 22 Feb 2017 12:36:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/7] staging: most: Using macro
 DIV_ROUND_UP
In-Reply-To: <d1716b00-a408-4f3c-8c17-04a70acca4dd@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702221233530.3145@hadrien>
References: <20170222091015.GA11058@singhal-Inspiron-5558> <alpine.DEB.2.20.1702221025550.3145@hadrien> <d1716b00-a408-4f3c-8c17-04a70acca4dd@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-151047132-1487763396=:3145"

--8323329-151047132-1487763396=:3145
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 22 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Wednesday, February 22, 2017 at 2:57:17 PM UTC+5:30, Julia Lawall wrote:
>       > @@ -117,7 +118,7 @@ static int alloc_dbr(u16 size)
>       >                  return DBR_SIZE; /* out of memory */
>       >
>       >          for (i = 0; i < DBR_MAP_SIZE; i++) {
>       > -                u32 const blocks = (size + DBR_BLOCK_SIZE -
>       1) / DBR_BLOCK_SIZE;
>       > +                u32 const blocks = DIV_ROUND_UP(size,
>       DBR_BLOCK_SIZE);
>       >                  u32 mask = ~((~(u32)0) << blocks);
>
>       Totally unrelated to DIV_ROUND_UP, would this code be a
>       candidate for
>       GENMASK?
>
>  
>       Not sure, what you are trying to say.

There was a discussion on the list recently about GENMASK, which allows to
create a mask containing a sequence of 1s, like 000011110000.  It looks
like that is what is being done here, because ~0 is 11111111 and then it
ie being shifted left and all the bits inverted.  But Joe had another
suggestion.  One could double check that his suggestion gives the right
result.

julia

>
>  
>
>       julia
>
>       >
>       >                  do {
>       > @@ -137,7 +138,7 @@ static int alloc_dbr(u16 size)
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
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170222091015.GA11058%4
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/d1716b00-a408-4f3c-8c17-
> 04a70acca4dd%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-151047132-1487763396=:3145--

