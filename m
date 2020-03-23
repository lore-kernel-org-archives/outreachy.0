X-GM-THRID: 6806841558557523968
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr30255796wrw.313.1584961660153;
        Mon, 23 Mar 2020 04:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls2215406wme.3.gmail; Mon, 23
 Mar 2020 04:07:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtj09hWE8XGC/rVqLJQXvRxaWDoOwJk5iUA2yDrMbFY8nLlV/ynP+LDiT7wVxGfdL7O4Rxk
X-Received: by 2002:a05:600c:414a:: with SMTP id h10mr27625029wmm.53.1584961658580;
        Mon, 23 Mar 2020 04:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584961658; cv=none;
        d=google.com; s=arc-20160816;
        b=vUNMF/df4g8Z7SDcE2oljPPXX6ZgRSAH0jIJNJDyvVAFYZVQULXlla2wG7FA7gAJt1
         T0pleQ8fOw/UR4TG7Bmh7E3znok+/m3nvwFCH6yE5uQOez4wXC+5oDRYInxxlJC8DKnn
         iWg0ZX24045qVEQG1rRIXTaY0Y6DdUe9YuTYQDw9hCsRhvSkK2d6XtWIs//+jPO3q8mH
         guO0D3TyaVUwz1iVvz7YJY5YX9gQLiMIgjKolapH0TqKOfRx7971c7iF1UVfealNhRWX
         h7/YC7Q2n+2hFN0GOaolh9QqMx6GKBe/m0CHQjjjDPrx2JCEB9T4J7dTFXJw3Ulo5ihe
         r5TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7cPmuHgd0E7hXUteoK4F9NDmNvyE4W5Cmcc6vwtw1Tk=;
        b=cE/Gun924jWKPJXgupysCbhVTfq4Ya7Tx18Nvmho8FiVx01YnpPn2rMAW8iTRqmlN1
         uxZxZfgT740TBjl62Gkmj148wnYlG5/AO2XQrVmIfAs9SMDj7/jjY54g4fZ6S3mOC/ZG
         pjBM8VRTNMCjPMJlZbQmqZqkK4pkEhi3WoL5NKCO7yLryYqE7eD3bsCJ77DsLKXzfx4V
         OWCUslm61LCc5nad9hk1BnYCUMGo8KOv3FrzRqXk0+yZGQZKL2kUluigyyuXei20AL/n
         xGTfsWo+svnD4TIkP8oaP5JBaohmZ1ACOiXEHhz6bOUSH/u5IS1tOOTx3I0mlIvL+G7k
         u2sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l16si590351wmg.1.2020.03.23.04.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,296,1580770800"; 
   d="scan'208";a="343271170"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 12:07:37 +0100
Date: Mon, 23 Mar 2020 12:07:37 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: hp100: line over 80
 characters
In-Reply-To: <20200323002450.GA15867@siyah2>
Message-ID: <alpine.DEB.2.21.2003231206380.3054@hadrien>
References: <20200323002450.GA15867@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 23 Mar 2020, Gokce Kuler wrote:

> Add a spaces character before that for correct syntax.

I think Greg already noted that the subject line doesn't match the log
message or what is done.  Also, adding spaces won't affect the correctness
of the syntax.  It can make the code more readable.

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 32a9e29..280b5a0 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -550,7 +550,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  			local_mode = 3;
>  		} else if (chip == HP100_CHIPID_LASSEN &&
>  			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
> -			   (HP100_BM_WRITE | HP100_BM_READ)) {
> +			    (HP100_BM_WRITE | HP100_BM_READ)) {
>  			/* Conversion to new PCI API :
>  			 * I don't have the doc, but I assume that the card
>  			 * can map the full 32bit address space.
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200323002450.GA15867%40siyah2.
>

