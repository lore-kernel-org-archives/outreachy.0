X-GM-THRID: 6388545925534449664
X-Received: by 10.25.79.23 with SMTP id d23mr1455168lfb.27.1487450568914;
        Sat, 18 Feb 2017 12:42:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.52.193 with SMTP id b184ls689252wma.2.gmail; Sat, 18 Feb
 2017 12:42:48 -0800 (PST)
X-Received: by 10.28.63.65 with SMTP id m62mr435843wma.6.1487450568127;
        Sat, 18 Feb 2017 12:42:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si346096wme.2.2017.02.18.12.42.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:42:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,176,1484002800"; 
   d="scan'208";a="213917675"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 21:42:37 +0100
Date: Sat, 18 Feb 2017 21:42:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: vt6655: Compress return
 logic
In-Reply-To: <20170218202056.GA3995@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702182138420.2383@hadrien>
References: <20170218202056.GA3995@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, simran singhal wrote:

> Simplify function returns by merging assignment and return into
> one command line.
> Found with Coccinelle
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index e0c9281..b513846 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -920,7 +920,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
>
>  	qwTSFOffset = qwTSF1 - qwTSF2;
>
> -	return qwTSFOffset;
> +	return qwTSF1 - qwTSF2;

It looks like you can completely get rid of the variable qwTSFOffset as
well.

Actually, it seems that you didn't use the patch that Coccinelle gave you,
because that should have removed the assignment also.  By default
Coccinelle prints a patch on standard output.  You can redirect that into
a file, and if you like it, you can apply it to your code, using
patch -p1 < {file}.  Another option is the --in-place argument to spatch.
Then you would want to do git diff afterwards to see what Coccinelle did.

julia


>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218202056.GA3995%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

