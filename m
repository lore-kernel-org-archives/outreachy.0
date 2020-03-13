X-GM-THRID: 6803435195586314240
X-Received: by 2002:adf:ab54:: with SMTP id r20mr412659wrc.197.1584082896083;
        Fri, 13 Mar 2020 00:01:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls4318156wrc.7.gmail; Fri, 13 Mar
 2020 00:01:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsa3HDaKTS/uaK50iyLrnVd1FTl5ItakW7hXKtJODrii+0N6FyucWqhmGUvHVv3cS3sx03/
X-Received: by 2002:adf:cf04:: with SMTP id o4mr16982363wrj.347.1584082894748;
        Fri, 13 Mar 2020 00:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584082894; cv=none;
        d=google.com; s=arc-20160816;
        b=vNd2J6RUoS86e5mxwiXSXcM+1Z45vj/cnQ837voKpRxy/12xKflAFEWoAinUCxNqsE
         RXb2tIuX4uLSnrqmt1NNLqG0JiyFxVrmDAJvPiHdd1SfjsZ7VpsO+gkwCT3pGfm2Vlaf
         iOQ3WBGY7wPxolLO5zt4PTOyXoesnqZzHhfvR9Fl/VBbnivsCZjAxbIzuO2ak8dve+gS
         oIe/i8L+GeeNuybg61vYOEUxjzUZtyY+NvETYBuwpiyBzM1MfLX2jTIlHednfTKd0n9q
         Hjfc+N6V8EjwMFSbOqErGKwZJB/I6GAOktDBY23oPEeRW6kp+L1FjeOOILBBNlLNWW1I
         sUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VMoYlQwgtPZCb22DARar2meRHXx2wNcjVyABA/uyKwE=;
        b=B7ue8weZD/tDAcZyqHCebcm0d/huF7aa6Bc3cZ0PqjFiaBB6zaZ5Do9C/UbRVVOUUI
         RuUigs6BZtk2m3dsAFCn9GKArkh5spdj6TEn4HWzBJqu5wcd8b1p4I8hAb6U73ap4XH+
         c9TMdjtNHO9nR86Lg+xwRXWSl5+btQTl4p5btQTOaYfSD+PrXaeFjffMxVRRus1VjdlX
         IDOkF8E7PNbQJCyQWzoqZYAYhzSlg24ael4s09FYUQ4u425RYgtH0mzUeXQBS2kuYIhM
         ia9Bp68xRvhX1wLbAv1DiAh4yhysep97nRM+KdGgVrgDKWEymIblz3f2P2EwQheozsGz
         TmYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i19si477294wml.0.2020.03.13.00.01.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,547,1574118000"; 
   d="scan'208";a="342221454"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 08:01:34 +0100
Date: Fri, 13 Mar 2020 08:01:33 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: fbtft: Resolve likely
 precedence issues
In-Reply-To: <b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825@gmail.com>
Message-ID: <alpine.DEB.2.21.2003130753510.2355@hadrien>
References: <cover.1584045569.git.mh12gx2825@gmail.com> <b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Mar 2020, Deepak R Varma wrote:

> Macro fbtft_par_dbg uses arguments supplied for dereferencing in the
> expanded form. It can become a operator precedence issue if arguments
> are used without proper wrapping. Putting arguments within braces and
> then dereferencing would avoid operator precedence issues. Issue flagged
> by checkpatch script.

() are parentheses, not braces.  Braces are {}.

The log message could be more concise, allowing the reader to find the
important information more quickly.

Put parentheses around uses of macro parameters to avoid possible
precedence issues.  Problem detected by checkpatch.

The subject line is also misleading.  If you look at the uses of this
macro, it seems that the level argument is always made by calling BIT,
which parenthesizes its result, or is a number, or is a bit or that is
wrapped in parentheses.  The par argument is always a variable.  So
currently there does not appear to be any precedence issue.  So "likely"
does not seem appropriate.  Maybe "potential" would be better.

julia



>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 81da30f4062e..76f8c090a837 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -406,8 +406,8 @@ do {                                                         \
>
>  #define fbtft_par_dbg(level, par, format, arg...)            \
>  do {                                                         \
> -	if (unlikely(par->debug & level))                    \
> -		dev_info(par->info->device, format, ##arg);  \
> +	if (unlikely((par)->debug & (level)))                    \
> +		dev_info((par)->info->device, format, ##arg);  \
>  } while (0)
>
>  #define fbtft_par_dbg_hex(level, par, dev, type, buf, num, format, arg...) \
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b216292fa529e2586d0a7e17cdd6fbd19cbb9235.1584045569.git.mh12gx2825%40gmail.com.
>

