X-GM-THRID: 7122168315904
X-Received: by 10.152.28.137 with SMTP id b9mr3422899lah.8.1425834770465;
        Sun, 08 Mar 2015 10:12:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.120.199 with SMTP id le7ls261032lab.89.gmail; Sun, 08 Mar
 2015 10:12:50 -0700 (PDT)
X-Received: by 10.112.156.65 with SMTP id wc1mr3486257lbb.7.1425834769999;
        Sun, 08 Mar 2015 10:12:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si637139wif.1.2015.03.08.10.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:12:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,363,1422918000"; 
   d="scan'208";a="124921635"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Mar 2015 18:12:49 +0100
Date: Sun, 8 Mar 2015 18:12:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Darshana Padmadas <darshanapadmadas@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] drivers: staging: dgnc: Replace
 min with min_t
In-Reply-To: <d4b06a098716afe3413fc50634a05e17a1038718.1425833758.git.darshanapadmadas@gmail.com>
Message-ID: <alpine.DEB.2.10.1503081812020.2780@hadrien>
References: <cover.1425833758.git.darshanapadmadas@gmail.com> <d4b06a098716afe3413fc50634a05e17a1038718.1425833758.git.darshanapadmadas@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You don't need drivers: in the subject line.  You can see the typical
subject line for this file by doing:

git log --oneline drivers/staging/dgnc/dgnc_neo.c

julia

On Sun, 8 Mar 2015, Darshana Padmadas wrote:

> This patch replaces min with min_t and eliminates
> the following warning found by checkpatch.pl:
>
> WARNING: min() should probably be min_t(uint, n, 12)
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_neo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index c9a8a98..1268aa9 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1203,7 +1203,7 @@ static void neo_copy_data_from_uart_to_queue(struct channel_t *ch)
>  		 * IBM pSeries platform.
>  		 * 15 bytes max appears to be the magic number.
>  		 */
> -		n = min((uint) n, (uint) 12);
> +		n = min_t(uint, n, 12);
>
>  		/*
>  		 * Since we are grabbing the linestatus register, which
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d4b06a098716afe3413fc50634a05e17a1038718.1425833758.git.darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

