X-GM-THRID: 6661078107431108608
X-Received: by 2002:adf:dece:: with SMTP id i14mr430651wrn.3.1550906429354;
        Fri, 22 Feb 2019 23:20:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc0e:: with SMTP id t14ls136342wri.6.gmail; Fri, 22 Feb
 2019 23:20:28 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYw6PA4+eHAVvQ8Fr/ha+uyvULZLPlAU6SnQs4NRnRLsFMiVaf+Iw05qIktdPE3HpERiF17
X-Received: by 2002:adf:e702:: with SMTP id c2mr441082wrm.31.1550906428705;
        Fri, 22 Feb 2019 23:20:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550906428; cv=none;
        d=google.com; s=arc-20160816;
        b=VLmOKpgRGy1/MxbEf+By8bDPjU54IX7oHcMJEXApNT/iA0FfPQ/tYExfmlkj0l1pH4
         JkDOO8tLw3n7VCVyD9wPtc9QZaJYTWCrqLKyxDGUGjTRllQLunj8F9lbEIUYIipbyAxn
         7nsRGGvfRFfpvS0RHbXQ8P7FKfvKMxlKYVd4cA2AwL+yVjnBzdHKyNb6/kUb0r40r1iB
         489eQ54VymjXi1j80NYuceFiF80LY92Vga3WbwLHD8bv2Bji3IxSMHzkeDpmm3tcba3x
         yiKHfj78M4nwx6z63oLaiX7nxvugctE2BHZfUnRE7Ios6TmiIF44l9+NeVD1OWgBVpW8
         jPUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HH/qpMKT7+JMpstqNTWec8/1DSYN+dVWpEHyS31Opi8=;
        b=Jf+ftXLnPWXza898IcT9C/9MhlXqPs1WqR41mmBr7Ob+VUXB+5/ZiOeBeujOvkXq+c
         xFfKeW8p0704qSptm5PAZeAlOX+qFHPop8xX8YPWXdx+q7gquPtuLWMlmoFJIapkarff
         37GOWYl1VTfH1zPZUt2ONoQBSqUTOF4vWLUh/apB9ykWfnLIvY4Rj8Oms1vJEnptjQ1q
         oQMKn6DmK2W/twyWTILcSMt5vd/pWAmmyYFQ0c2QmnaTCJOePSTprJdFZmpFNzRq01qb
         9Ccad+68Bavv1tPyJLGUVYQhAVX1oH73viyMekU7TFz/GoDkY2LNWSkp4p3zf8cglX5Q
         Mo6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r15si134395wmc.4.2019.02.22.23.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:20:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,402,1544482800"; 
   d="scan'208";a="297082390"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 08:20:28 +0100
Date: Sat, 23 Feb 2019 08:20:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add SPDX-License-Identifier
 tag
In-Reply-To: <20190223062455.GA11432@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1902230819090.2612@hadrien>
References: <20190223062455.GA11432@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:

> Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves the

Where do you get the BSD-2-clause thing from?  It seems that Broadcom has
made their own license.

julia

> checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/netlogic/platform_net.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index abf4c71..2637fb1 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  /*
>   * Copyright (c) 2003-2012 Broadcom Corporation
>   * All Rights Reserved
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223062455.GA11432%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

