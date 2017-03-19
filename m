X-GM-THRID: 6399107209686417408
X-Received: by 10.46.84.13 with SMTP id i13mr3266650ljb.2.1489925643151;
        Sun, 19 Mar 2017 05:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.17 with SMTP id z17ls1027081lja.50.gmail; Sun, 19 Mar
 2017 05:14:01 -0700 (PDT)
X-Received: by 10.46.69.9 with SMTP id s9mr2262744lja.20.1489925641948;
        Sun, 19 Mar 2017 05:14:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si617764wmg.0.2017.03.19.05.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 05:14:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,188,1486422000"; 
   d="scan'208";a="265179415"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 13:14:00 +0100
Date: Sun, 19 Mar 2017 13:13:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: Moved AND
 operator to previous line.
In-Reply-To: <20170319072403.10354-2-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703191313290.2108@hadrien>
References: <20170319072403.10354-1-arushisinghal19971997@gmail.com> <20170319072403.10354-2-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, Arushi Singhal wrote:

> Moved logical AND operator to previous line to fix the following
> checkpatch issue:

You seem to have AND and OR confused.  AND is &&, OR is ||.  This patch is
about OR, not AND.

julia

>
> CHECK: Logical continuations should be on the previous line.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index c10445624e92..def1a36da9dd 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2173,10 +2173,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	if (up_flag || spk_killed || type == KT_SHIFT)
>  		goto out;
>  	spk_shut_up &= 0xfe;
> -	kh = (value == KVAL(K_DOWN))
> -	    || (value == KVAL(K_UP))
> -	    || (value == KVAL(K_LEFT))
> -	    || (value == KVAL(K_RIGHT));
> +	kh = (value == KVAL(K_DOWN)) ||
> +	    (value == KVAL(K_UP)) ||
> +	    (value == KVAL(K_LEFT)) ||
> +	    (value == KVAL(K_RIGHT));
>  	if ((cursor_track != read_all_mode) || !kh)
>  		if (!spk_no_intr)
>  			spk_do_flush();
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319072403.10354-2-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

