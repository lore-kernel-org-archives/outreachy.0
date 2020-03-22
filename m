X-GM-THRID: 6806835007878856704
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr23223356wrp.403.1584863941203;
        Sun, 22 Mar 2020 00:59:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fd03:: with SMTP id e3ls803656wrr.0.gmail; Sun, 22 Mar
 2020 00:59:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsLvTNfDOdz2XfZEufuKkVRmOQTJjd5LPQKhOVdkLB6XBi+A7D30mCNIiCBJ061+bg1ELlY
X-Received: by 2002:adf:d0cf:: with SMTP id z15mr23039198wrh.357.1584863939956;
        Sun, 22 Mar 2020 00:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584863939; cv=none;
        d=google.com; s=arc-20160816;
        b=eetO5w+2aDIv7GVLgocmYPM36GyuuhXUWItS5HD6TPjeoD6jTRSIkHIjkvfYLUfLMz
         t6gbSuHk0QmZUFkdPiCUxIvVR75ThFScJLL47yTBK37VvK8amvrh9dfjNRAVMAmjwnLA
         Rgl790cze2QoCmIInCQPLrZfE7eZ7k6xJA2MbNQDZ0fSF8KWDLPZtXX80NCiHDIg7IO2
         +SPWpIDGcqT4mJ6oUcSSuducrxM4E6Zj2lJntUZCE6aT3+B3FT1stQk2RYlClXKfqmis
         S2Gnzz9KspYISJfMs4gaDlYxQpGfU5Dg0ZGxkk2St/et3K7xGOi2p8Va4/3JdeLnyPjj
         Kmqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=X9paIeLLlItJfkvP9MYFUu3id1oDCbrtkzFPMEk0yGU=;
        b=ieTOXHChw7i4dJMn4ennyVdvGCGUq90cj1C0tgkCRoULN3gj0A9JQz9ee55HK7xraB
         CZK3hX+cjgV5Tft2UALo+XfqP1vN6zMrnL1ZoQb6y02SPPHZWnfgkUcU+QKccB153GSl
         1om+4fvoxIzUJKHHOWtOkjJ2VPY+1+19ZL6wSb8YFx1NVHCzjpHBzzJt6YMjNe4fEzfN
         ObEqeJocGDynwCKP1z5fVqPGNEzUxP/yBzOIU5aNln6jPVBP0H9Ft/o1HSLanfm+2u/h
         3yRStcj+Wd87gYRjKrFfCCDg8E+njgtcIf6aNbuvP8xcf1VsQFXKidS/UYFasf015tGU
         Ie1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l16si397763wmg.1.2020.03.22.00.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,291,1580770800"; 
   d="scan'208";a="343187862"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 08:58:59 +0100
Date: Sun, 22 Mar 2020 08:58:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: rearrange line
 exceeding 80 characters
In-Reply-To: <20200322011612.GA4357@siyah2>
Message-ID: <alpine.DEB.2.21.2003220855430.3006@hadrien>
References: <20200322011612.GA4357@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Gokce Kuler wrote:

> moved to the bottom line after && operator for it exceeds 80 character

Sentences need to begin with a capital letter and end with a period.  It
may seem picky, but in an open source setting, this is the only form of
communication available, so things need to be done in an expected way.

Maybe the tests could be rewritten with ! and then the whole thing could
stay on one line.

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 61b891d..8aadb5b 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -1407,7 +1407,8 @@ static void hp100_BM_shutdown(struct net_device *dev)
>  			for (time = 0; time < 10000; time++) {
>  				/* RX_PDL: PDLs not executed. */
>  				/* RX_PKT_CNT: RX'd packets on card. */
> -				if ((hp100_inb(RX_PDL) == 0) && (hp100_inb(RX_PKT_CNT) == 0))
> +				if ((hp100_inb(RX_PDL) == 0) &&
> +			       	    (hp100_inb(RX_PKT_CNT) == 0))
>  					break;
>  			}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322011612.GA4357%40siyah2.
>

