X-GM-THRID: 6806430751874088960
X-Received: by 2002:adf:e487:: with SMTP id i7mr15799141wrm.151.1584775491613;
        Sat, 21 Mar 2020 00:24:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d4c4:: with SMTP id w4ls3507337wrk.8.gmail; Sat, 21 Mar
 2020 00:24:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu9N6dHT3lw0ugI+4Aqq28QDUqo2uyi+M5yVOA1d5TlPIWVM+75GiNRgoy9aMb9V88mJVlM
X-Received: by 2002:adf:de90:: with SMTP id w16mr2830504wrl.292.1584775490252;
        Sat, 21 Mar 2020 00:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584775490; cv=none;
        d=google.com; s=arc-20160816;
        b=LcQMMlnIdRPW4PmcxyvO1f0/txbCkHBaiQxRFeZncy3Ks4cjqslT05CLdhB/Txv6aW
         YBl85xF9Forp5NyJk9FEeAeSOg5IkgrHg68+pC6R/3IAJ5hLqX/iMR5Lwg02OI/PphuY
         wcDSHeiAvDE0czvwbVzMJ7u9AAA2fkECQnKKNczEDGmVyOq4lbhQygmSusLr+g6oTAmW
         jFHJCWdQsintlQyHwj3vphdYCpM1GUKJ9tsZ8tix7jo3ryZ2Rkvh7lqUtBsISlkX2wH2
         4fm9wf/agpY3oo/RtVuSAP8uvbj57wGhoG5ESo0TROa4Lp6fDlNYBzgCZXWvvtsA7/SE
         KODg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ccAuq1rNtJ/so7rk+vYASaK2P0n2niTr2ZcolcQY/Q8=;
        b=M0RLZ6yRbN2AbwDn5g5SkeVO7TGt35n7MfYZ30Dfvd0b4p+Z0DHwPUVwUvJW36TYYk
         Hofb9ii65+X7iitHeM7AdXrBOlzJ7I8Uvegmmk01dlfckJfdQxCuqdyWBxWf0Pl9BM++
         VeH+trcdYhzBv73iSAS48kZg/cUk3k0UWnSgT9NokuEZ1zA/xAh0dg/jLFpgW68/083k
         X2Pmij5VvW4WONkQuabShRe61udpmBU8CnZ+SxOMQkF0Wkf4ZOhoznxHL6Q1WlbiAQVf
         sWQ+eEGaxFOOkXk0Dvk5r5IENiF7CKZcOLT+7c4kltjB54jUfQhXIrhfSBIUbbqr7xzw
         pFCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l16si242555wmg.1.2020.03.21.00.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="441461880"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 08:24:49 +0100
Date: Sat, 21 Mar 2020 08:24:49 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: quoted string
 split across lines
In-Reply-To: <20200320233056.GA9027@siyah2>
Message-ID: <alpine.DEB.2.21.2003210820220.2522@hadrien>
References: <20200320233056.GA9027@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

You seem to have three patches with the same subject line.  Perhaps you
could merge them into a single patch.

On Sat, 21 Mar 2020, Gokce Kuler wrote:

> quoted string merge to upper line

The verb should come first, so that would be Merge.

Upper line doesn't seem very useful.

Maybe it could be:

Concatenate a string that appeared on two lines, in order to make the
atring easier to find if the message is printed.

julia

> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index e619d75a..47f7784 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -241,8 +241,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
>  		tx_desc = &chan->tx_ring[i];
>  		rx_desc = &chan->rx_ring[i];
>
> -		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, "
> -				"tx addr1: %08x, rx addr0 %08x, flags %08x\n",
> +		dev_dbg(hsdma->ddev.dev, "%d tx addr0: %08x, flags %08x, tx addr1: %08x, rx addr0 %08x, flags %08x\n",
>  				i, tx_desc->addr0, tx_desc->flags,
>  				tx_desc->addr1, rx_desc->addr0, rx_desc->flags);
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200320233056.GA9027%40siyah2.
>

