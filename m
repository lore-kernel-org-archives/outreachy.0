X-GM-THRID: 6802257334372401152
X-Received: by 2002:a5d:6146:: with SMTP id y6mr23140518wrt.107.1583788189595;
        Mon, 09 Mar 2020 14:09:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls4869994wrc.7.gmail; Mon, 09 Mar
 2020 14:09:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs2Ke9CgZDqnwFaWnMdzkjuRPpMbfUb2S+oxHw9IStS8xyTVJetxOB93OAK16qLEtSM1Kt+
X-Received: by 2002:a5d:4f08:: with SMTP id c8mr24308188wru.219.1583788188030;
        Mon, 09 Mar 2020 14:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583788188; cv=none;
        d=google.com; s=arc-20160816;
        b=Ft0RgXSgaeXKylLYFcXw8oB6qmwxAFSbXzAZklKf15UONRPbpDhRPwgm0KkudA6Xdd
         qhiyVnXX/uSnkFAzoVxV25q/gABMlcxqPwmdAvdyIHXB4AyxR+Xls1ePKMYJn4mPnDwo
         p1+XD3RGoKbXOX572kY+dXhOyPyFzKxjIGN74Z0MfYD+qbmKv0Dyd9972pyzTduz7L1X
         c7FBJghaWVSdc6GYDLHdH2pgJzaySvX7xoA9qY/sjsNZvNhx8kv361xuENgnF9SxnKSE
         cerMyN54jTTr0feFiPjzQ6IU9orQnKk6hwgKSKL2Xer0aISHsVl3eot8JpbCRgEK6XpY
         0lzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=oaKj+4JSlniWCkiQ726ZD/E1vH7cSZ861Q0tuqpLNww=;
        b=P9R4SuD0fztVWbKrWbsVgW5wjOfOFX+7mwf9knJ2J/3EqNjwjaPKFe5me+rmaYG3h2
         R5fwMapPJiWYmIc6NXDvPnZ9AZ9qoU9y0o18ulxRuTiQZFztFaFSjilZUfUT+OT2fsRB
         8QuVOZuIYYlIqJyoU1o+QmpTefBaXcX2hhrD0NsyBH2K9k7vX+9sDnnRC9GQ1kDNmSsW
         lqmJaFuQLDGtnn8f3moSZ7uDFE8FOoed4/avbySJGqwuFa9oGDRiV3Hc1f87rNAHUoNj
         UZBYkxRRITTEyvAhAXVL2TMzhzDfsBtxyatjp5Mapto5dFNnTNivvG+/GfkG4LDpuJNA
         PJGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i19si43976wml.0.2020.03.09.14.09.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 14:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,534,1574118000"; 
   d="scan'208";a="341808843"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 22:09:25 +0100
Date: Mon, 9 Mar 2020 22:09:25 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    perex@perex.cz
Subject: Re: [Outreachy kernel] [PATCH] staging: hp: hp100.c: remove commented
 out code
In-Reply-To: <20200309171224.5131-1-lu@pplo.net>
Message-ID: <alpine.DEB.2.21.2003092208170.2324@hadrien>
References: <20200309171224.5131-1-lu@pplo.net>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:

> Remove unused code.

This could be a little more informative.  For example, you could use git
blame to find out how long the code has been there.  If it has been there
since the driver was introduced n years ago, that could be a useful piece
of information to make clear that the code really is unnecessary.

julia

>
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/hp/hp100.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index e2f0b58e5dfd..b89c4dcf53f5 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -511,12 +511,6 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  	 *   0x2260 -> EISA HP, BusMaster (Shasta Chip)
>  	 */
>
> -#if 0
> -	local_mode = 0x2270;
> -	hp100_outw(0xfefe, OPTION_LSW);
> -	hp100_outw(local_mode | HP100_SET_LB | HP100_SET_HB, OPTION_LSW);
> -#endif
> -
>  	/* hp100_mode value maybe used in future by another card */
>  	local_mode = hp100_mode;
>  	if (local_mode < 1 || local_mode > 4)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309171224.5131-1-lu%40pplo.net.
>

