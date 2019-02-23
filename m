X-GM-THRID: 6661078107431108608
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr865447eje.16.1550910427066;
        Sat, 23 Feb 2019 00:27:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls131772edf.1.gmail; Sat, 23 Feb
 2019 00:27:06 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibn/sv6eKq3QYB6x/2CTZl3tUoMghKXTLAJZJQ5HassZHpiADT+NrNqkN7v2pJB0wHR5mmt
X-Received: by 2002:a50:8881:: with SMTP id d1mr969256edd.0.1550910426230;
        Sat, 23 Feb 2019 00:27:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550910426; cv=none;
        d=google.com; s=arc-20160816;
        b=j9j4DmAQPJnVHmzXm4zWKZzQHS4ASJzRLjmAxhWr1h9WvCtFpjtywdUBbM2IHHD08O
         a5Pa4dKKe/oSeA2h4c+Jkmiy3wTBgNpLG0/of+I7AYqQwoFj6B25/uGLkRMAblfjt2tl
         L7DB00MoJNRH2XHLdU1hmU/Gx8mnXBHNugbEa8WP+u5qJNj7t5VeZmmTzfwFv8SrQodQ
         OVnN7V0W46SHHyQ1lUyBtR4MBD02wL+1weBqpUEIJ0b/eB/BbeP7eWWwnlMxQzyWUzVT
         FZytlaA4kSjsRq8M97iJF++bQcJK4yF2C5zHmXyn7V902yK9xC+wzvZkblZ1UKw8lHcS
         u65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rTZMz01uJagXQftUhn9XsOyZtc8HRnKPi4QOucN85WI=;
        b=xdVZa6e/Q72hStl86o1hXkZZxePiAYjRUSq1W/OYwKyHShuy8Io/er/SjxZO9nLolX
         g1wZgU0KYM72fOmwA0EWIjflRzixydlFxaxZsPtvnelhbgeibw2mH1wj6ydgvE4L/elv
         4oTYS0pQnmH3CrH/koR0/hLBW5GgRKTuhcvsBaxIeScfoye67POyZCwK3hQrSGkmxl6Q
         uKwZJOpDOyoa4b01wQkHCnCCj/iQujzLiZDgmlKrm4tdieywPBVT1NLQWPBc3Xw/grT0
         SK57wbmR/Le2GBQ1mTwvwbiGn1xvWJDYAI2cTQHJINnUB69d+h8jBLf5WLt0XuilC3ig
         oszA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j6si149357edd.0.2019.02.23.00.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:27:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,402,1544482800"; 
   d="scan'208";a="297086869"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 09:26:55 +0100
Date: Sat, 23 Feb 2019 09:26:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add SPDX-License-Identifier
 tag
In-Reply-To: <CAOMPgjhKV2J46Yzj5s=43Q9nuy4DjXhmsGMqngNxQx=yhX3_mg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1902230926180.3948@hadrien>
References: <20190223062455.GA11432@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1902230819090.2612@hadrien> <CAOMPgjhKV2J46Yzj5s=43Q9nuy4DjXhmsGMqngNxQx=yhX3_mg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-772289371-1550910415=:3948"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-772289371-1550910415=:3948
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:

> Hi Julia,
>
> I get "BSD-2-Clause" from the LICENSE directory under the kernels project.
> There are licenses with short identifiers. I checked BSD-2-Clause license
> conditions and found that there are 2 condition which exactly matches with
> the license context in the "platform_net.h" file. That's how I get to know
> which SPDX short identifiers should be used. Correct me if I am wrong.

Ah, no, like Greg said, it sounds perfect.  Thanks for the explanation :)

julia

>
> --
> Bhagyashri Dighole
>
> On Sat, Feb 23, 2019 at 12:50 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
>
>       > Adds the SPDX GPL-2.0 or BSD-2-clause license identifier,
>       which solves the
>
>       Where do you get the BSD-2-clause thing from?  It seems that
>       Broadcom has
>       made their own license.
>
>       julia
>
>       > checkpatch.pl warning:
>       > "WARNING: Missing or malformed SPDX-License-Identifier tag in
>       line 1".
>       >
>       > Signed-off-by: Bhagyashri Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       >  drivers/staging/netlogic/platform_net.c | 1 +
>       >  1 file changed, 1 insertion(+)
>       >
>       > diff --git a/drivers/staging/netlogic/platform_net.c
>       b/drivers/staging/netlogic/platform_net.c
>       > index abf4c71..2637fb1 100644
>       > --- a/drivers/staging/netlogic/platform_net.c
>       > +++ b/drivers/staging/netlogic/platform_net.c
>       > @@ -1,3 +1,4 @@
>       > +// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>       >  /*
>       >   * Copyright (c) 2003-2012 Broadcom Corporation
>       >   * All Rights Reserved
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190223062455.GA11432%4
>       0bhagyashri-Lenovo-G570.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
>
--8323329-772289371-1550910415=:3948--

