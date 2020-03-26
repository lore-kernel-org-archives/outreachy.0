X-GM-THRID: 6808322643446464512
X-Received: by 2002:a17:906:bc55:: with SMTP id s21mr6266003ejv.367.1585207080992;
        Thu, 26 Mar 2020 00:18:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:68d8:: with SMTP id y24ls3125377ejr.9.gmail; Thu, 26
 Mar 2020 00:17:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvj7+ErzIlEeKLL/siudfAaE0CFB29F64ku66/20Zyq7VmMGDNw6FyHBrF7PcswJ8JDiq8a
X-Received: by 2002:a17:906:2ccc:: with SMTP id r12mr6591574ejr.47.1585207079756;
        Thu, 26 Mar 2020 00:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585207079; cv=none;
        d=google.com; s=arc-20160816;
        b=r55LB92f3KYb9Q/wrRGTf0lp1aa+rtEiBNPf5VgJ6S7r23HsLdkTFv/lgTkmTaP60X
         MEw8OwgxFuiUw5f8zg9oWN95+nQjZ+A9/FEYV4Ow/AovKMshhLthKlKbyHYypI/Gpdpx
         nbdYe88179nF0tQ+t2hU5RmdINxE+OY5Al/OvLQ7MeE8yWy29od4P2mpxtbZ/DP/HLGg
         ay4vaCB9oZIgI3cxvK7D6l6epmrOOQQI89MbEJrknH4Dux7OX0DtQAWHZIpWxkA7L8FT
         F2i+TGSPZzE2VgqWeT2IUa55TicwWGMdOc1jxP0uWQcUTnz8SAWi80tpqn3W6rjUrlXg
         UMqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JPb4rqW+7lK8scyR+/MwLlzQWHzAfQNsa1JTpr7nDuk=;
        b=CYh9h6NKgXT4rGQa3sMkQw2jdDeS1WPX5crJHytU6yvDHIO/nxZCjfh28QfcUaoDIV
         GukIwTugmTg/EaZP6/kdIw8N8Bzqt6sEhXcD4z9/mviBEEFYqGTWgPkihfDY6Rp85yXH
         ICCpy/mfw+V/DeTlMtG23riWDjQ1DEH7yrFQtO0dqjnwG//FJmzpjERWPAnH7yFu48S/
         KznsY+8phn1IX5srCmlQZ8H/l3WkO8rHgEPfB5h3kVyRSWKFId6uRHSGLfSWuZkxNfWo
         PBoI8PJBqlCV5jZ27pIosatk5WFNR3s4sFcz+CKQ1zJoTujALwzALbBHm2owNtdQpkv3
         nL9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v14si71960edr.4.2020.03.26.00.17.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 00:17:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,307,1580770800"; 
   d="scan'208";a="343773473"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Mar 2020 08:17:59 +0100
Date: Thu, 26 Mar 2020 08:17:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH] staging: vt6655: Replace
 camel case variable names.
In-Reply-To: <20200326012850.94416-1-briana.oursler@gmail.com>
Message-ID: <alpine.DEB.2.21.2003260814590.3019@hadrien>
References: <20200326012850.94416-1-briana.oursler@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 25 Mar 2020, Briana Oursler wrote:

> Replaces camel case variable names with snake case in baseband.h and
> dependencies.
>
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    | 317 ++++++++++++++-------------
>  drivers/staging/vt6655/baseband.h    |  38 ++--
>  drivers/staging/vt6655/card.c        |  48 ++--
>  drivers/staging/vt6655/channel.c     |   4 +-
>  drivers/staging/vt6655/device_main.c |  20 +-
>  drivers/staging/vt6655/rf.c          |   4 +-
>  drivers/staging/vt6655/rxtx.c        |  62 +++---
>  7 files changed, 255 insertions(+), 238 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index b4cdc0b7fee7..9909b9d51f7a 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -12,12 +12,12 @@
>   * Date: Aug.22, 2002
>   *
>   * Functions:
> - *      BBuGetFrameTime        - Calculate data frame transmitting time
> + *      bb_u_get_frame_time        - Calculate data frame transmitting time
>   *      BBvCalculateParameter   - Calculate PhyLength, PhyService and Phy Signal
>   *                               parameter for baseband Tx
> - *      BBbReadEmbedded         - Embedded read baseband register via MAC
> - *      BBbWriteEmbedded        - Embedded write baseband register via MAC
> - *      BBbVT3253Init          - VIA VT3253 baseband chip init code
> + *      bb_b_read_embedded         - Embedded read baseband register via MAC
> + *      bb_b_write_embedded        - Embedded write baseband register via MAC
> + *      bb_b_vt3253_init          - VIA VT3253 baseband chip init code

The comments about the meaning of the variables should remain lines up.

[...]

> -	unsigned int uFrameTime;
> -	unsigned int uPreamble;
> -	unsigned int uTmp;
> -	unsigned int uRateIdx = (unsigned int)wRate;
> -	unsigned int uRate = 0;
> +	unsigned int u_frame_time;
> +	unsigned int u_preamble;
> +	unsigned int u_tmp;
> +	unsigned int u_rate_idx = (unsigned int)w_rate;
> +	unsigned int u_rate = 0;

All of these "u" names relate to the fact that the variable is unsigned,
which is a convention that the Linux kernel doesn't follow.  If you are
going to fix up the variable names, you may as well do it completely, ie
remove this problem as well.

julia

