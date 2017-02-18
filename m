X-GM-THRID: 6388545925534449664
X-Received: by 10.46.87.27 with SMTP id l27mr1430374ljb.28.1487452308791;
        Sat, 18 Feb 2017 13:11:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.230 with SMTP id g99ls376563lji.37.gmail; Sat, 18 Feb
 2017 13:11:47 -0800 (PST)
X-Received: by 10.25.169.14 with SMTP id s14mr1411422lfe.3.1487452307975;
        Sat, 18 Feb 2017 13:11:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si350370wme.2.2017.02.18.13.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 13:11:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,176,1484002800"; 
   d="scan'208";a="261112234"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 22:11:47 +0100
Date: Sat, 18 Feb 2017 22:11:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/6] staging: vt6655: Compress
 return logic
In-Reply-To: <20170218210740.GA14258@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702182211000.2383@hadrien>
References: <20170218210740.GA14258@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, simran singhal wrote:

> gregkh@linuxfoundation.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org,outreachy-kernel@googlegroups.com
> Bcc:
> Subject: [PATCH v2 1/6] staging: vt6655: Compress return logic
> Reply-To:

This didn't come out well.

>
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
>
>  v2:
>    -Removed assignment
>
>  drivers/staging/vt6655/card.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index e0c9281..9a8999f 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -918,9 +918,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
>
>  	qwTSF2 += (u64)wRxBcnTSFOffst;
>
> -	qwTSFOffset = qwTSF1 - qwTSF2;
> -
> -	return qwTSFOffset;
> +	return qwTSF1 - qwTSF2;

It's not just the assignment that can go.  All mentions of the variable
are useless, ie the declaration too.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170218210740.GA14258%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

