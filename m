X-GM-THRID: 6672221168538222592
X-Received: by 2002:adf:f48d:: with SMTP id l13mr15591614wro.2.1553497876776;
        Mon, 25 Mar 2019 00:11:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fc51:: with SMTP id e17ls3364723wrs.15.gmail; Mon, 25
 Mar 2019 00:11:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweiF0z5F/f+WVyTXxb107Biqx3Q80ec/PmEoBUezwuW+bAaBSS1HK2Cli4sR5tOeMQJicx
X-Received: by 2002:a5d:63c5:: with SMTP id c5mr13138022wrw.82.1553497876113;
        Mon, 25 Mar 2019 00:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553497876; cv=none;
        d=google.com; s=arc-20160816;
        b=ArQE9rsLB85HJkMrYvQZ5xBwx6HlIYWCtYPCOeYyaTbq8kuM59Bd4wTw1zpDse3YvS
         KbPSTjTH9C0XetrEonMjuXpBPNhE3zOSLGWZcMNq1e6WFLocdMzedBv+qNqk6T36lOCj
         ufaFPRl9ryGrnCDPiY/VU3bdTiHyNPLpnxpqkirxi4P7YAmW8p1fSD8GHtclV60nqUH1
         hVBoARuvU3uCrw4paxR8aYJ51Q3RtmFRSpFRYkamxNgojYr/QyGUnM+hHo8rDyJgDIHr
         c6FcDgM7+AeeKjoR8d8CWbci5gaZCdy5Y+ww/c8sprl7o5gDFBg3o+RcwItLrSqq10hg
         AEmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=u9p4MDbgjBIK0IrXh3CfkGlW1HZM7rkN13t3KzkY988=;
        b=iQQHU7+11o9ts7DuRW7ZA5Rs5yYMm0uYvlAMMjGQ+HoQISD2XADEHoxc3G9vntgxho
         DS4d8Ab8gCsg3N4laHfqlQVX6E6d/ZpP5nf9OGGGwVwQQSNcMuTX+6GhOMIT7E0Z6pF8
         slFDt22O6VsZPRj5Z+3VJtRhcZR1eppWpDPtU2QrL7iLo+JfjYLvySX7aJtUP/18dI/f
         BA62CFQW+uTfENXYFJvGMTesOTyCgRszJKOaCQwK/WH5SnI7chMQIGzmcTOen3KeIgyG
         WJrCvsFMRX09JNPuiBR3PrQ6qRh8U5Qo95c9oAluBegMkRpPPuTkJuB75GJskgQvV0L4
         TBvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si902764wrj.0.2019.03.25.00.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 00:11:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300576582"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Mar 2019 08:11:15 +0100
Date: Mon, 25 Mar 2019 08:11:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: ddk750_chip.c:
 Prefer using the BIT macro
In-Reply-To: <20190325070536.5463-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903250810200.2742@hadrien>
References: <20190325070536.5463-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
>
> Replace bit shifting on 1 with the BIT(x) macro.
> Coccinelle script:
>
> @@
> constant c;
> @@
>
> -1 << c
> +BIT(c)
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 4c1f00f551da..5690fb46e095 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -45,7 +45,7 @@ static unsigned int get_mxclk_freq(void)
>  	OD = (pll_reg & PLL_CTRL_OD_MASK) >> PLL_CTRL_OD_SHIFT;
>  	POD = (pll_reg & PLL_CTRL_POD_MASK) >> PLL_CTRL_POD_SHIFT;
>
> -	return DEFAULT_INPUT_CLOCK * M / N / (1 << OD) / (1 << POD);
> +	return DEFAULT_INPUT_CLOCK * M / N / (BIT(OD)) / (BIT(POD));

You don't need the parentheses around the call to BIT.  BIT will take care
of it.

julia

>  }
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190325070536.5463-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

