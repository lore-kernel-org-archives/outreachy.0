X-GM-THRID: 6665132923205713920
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr596172ejm.12.1551856140849;
        Tue, 05 Mar 2019 23:09:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3e46:: with SMTP id t6ls268723eji.8.gmail; Tue, 05
 Mar 2019 23:09:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxe/dmLhKYV1IDMJDOk7MGmOaF2xXGvL240tNtR5kTQDdL/ndddYqli94LU60z4trhAzOF7
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr595182eja.10.1551856140182;
        Tue, 05 Mar 2019 23:09:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551856140; cv=none;
        d=google.com; s=arc-20160816;
        b=xXRnJjMerSTU5V6EOzkZYH+LH3qub9HV25Hkl/NGzjP/ACEZDekSRV1UOZgVwhdjKN
         JLetQzbjkOVFo539rK4tl3p0UYSRh7SF6LTLymipEz+BOGOWL0tdook1VQefnJZFVj4o
         c7d99cHovwvpZ+Civ4yLjATK34quPr0aXjeMGjR2c+jCl0RHPFlzDeRlJNcHIG28lfhb
         xYZtIuEf0Cp0b8tRh9lUkX53uK0gpohms/zopR2QEZFuA/XLsDkv7GJWYPqXRVXoPsq2
         egEBTQHM8TiFgUeGyXQAqdqkbdjcQEg5O9qvU1WZrqGRftx/hfGLRMjwuKaVSzGWiTZY
         5sEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Yo8hjTYYwPZO3vK16py/QW+IjN01yKVVvY47T8gGrd4=;
        b=g5+3N0sHUxGV2ovQk/4nbDkMnLWn5BjYNkkfgXRxIKroOi/FZrmUthL/L3DaZkIq8w
         5joqQMynk1KFpY4ZsGv1qQZjV+GPJ/Q9mEMqfG+cWcsp0IMatXVkRcVkn1hwZO4AAokG
         8aGezuDRZzN4Wi6BBBCyUBERrygxbgIgsEq3teELMTM6lICstf+mfgfNkm5004K3B8YY
         WWL3A49UZzxgAhDn9I/cqklBcOEa7bm/SUQfN151pst54XFUItbh/hqEOTCYIGYIKi/l
         Wip6mhzAaEhFdduHZuc/uvViW5qGa9XphVfUTJylJJ33j596vLD/j3FraiAEnip/eXPU
         GmTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si33005ede.0.2019.03.05.23.09.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:09:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298262114"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 08:08:59 +0100
Date: Wed, 6 Mar 2019 08:08:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: most: dim2: Fix malformed
 SPDX-License-Identifier
In-Reply-To: <20190306043941.6141-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.21.1903060807170.2706@hadrien>
References: <20190306043941.6141-1-etsai042@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Wentao Cai wrote:

> This patch fixes the checkpatch.pl warning:
> WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Hello,

When you make a series, you should also make a cover letter that gives an
overview of what is done in the series.  You can find information about
how to do this in the tutorial.

Also, previously Greg has asked that patches that add SPDX identifiers be
accompanised by subsequent patches that remove existing boilerplate
license text, if there is any.  So you may want to check on this.

julia


>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/most/dim2/errors.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/most/dim2/errors.h b/drivers/staging/most/dim2/errors.h
> index 3487510fbd2f..cbbdaaf5c52d 100644
> --- a/drivers/staging/most/dim2/errors.h
> +++ b/drivers/staging/most/dim2/errors.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0+ */
>  /*
>   * errors.h - Definitions of errors for DIM2 HAL API
>   * (MediaLB, Device Interface Macro IP, OS62420)
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306043941.6141-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

