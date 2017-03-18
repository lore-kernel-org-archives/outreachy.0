X-GM-THRID: 6398937623266590720
X-Received: by 10.25.40.17 with SMTP id o17mr2598525lfo.25.1489869003127;
        Sat, 18 Mar 2017 13:30:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls913030ljb.44.gmail; Sat, 18 Mar
 2017 13:30:01 -0700 (PDT)
X-Received: by 10.46.80.18 with SMTP id e18mr1989872ljb.10.1489869001439;
        Sat, 18 Mar 2017 13:30:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si481564wmg.3.2017.03.18.13.30.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 13:30:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,184,1486422000"; 
   d="scan'208";a="265136065"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2017 21:29:44 +0100
Date: Sat, 18 Mar 2017 21:29:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    speakup@linux-speakup.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: speakup: Moved logical
 to previous line.
In-Reply-To: <20170318202559.10886-2-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1703182129050.2280@hadrien>
References: <20170318202559.10886-1-arushisinghal19971997@gmail.com> <20170318202559.10886-2-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject appears to be missing some words.  logical what?

On Sun, 19 Mar 2017, Arushi Singhal wrote:

> Moved logical OR operator to previous line to fix the following
> checkpatch issue:

All the instances appear to be && not ||

julia

> CHECK: Logical continuations should be on the previous line.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index f280e22d7e15..f71206878363 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -905,8 +905,8 @@ static int get_sentence_buf(struct vc_data *vc, int read_punc)
>  	while (start < end) {
>  		sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
>  		if (i > 0) {
> -			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.'
> -			    && numsentences[bn] < 9) {
> +			if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1] == '.' &&
> +			    numsentences[bn] < 9) {
>  				/* Sentence Marker */
>  				numsentences[bn]++;
>  				sentmarks[bn][numsentences[bn]] =
> @@ -1292,8 +1292,8 @@ void spk_reset_default_chars(void)
>
>  	/* First, free any non-default */
>  	for (i = 0; i < 256; i++) {
> -		if ((spk_characters[i] != NULL)
> -		    && (spk_characters[i] != spk_default_chars[i]))
> +		if (spk_characters[i] &&
> +		    (spk_characters[i] != spk_default_chars[i]))
>  			kfree(spk_characters[i]);
>  	}
>
> @@ -2088,8 +2088,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	tty = vc->port.tty;
>  	if (type >= 0xf0)
>  		type -= 0xf0;
> -	if (type == KT_PAD
> -		&& (vt_get_leds(fg_console, VC_NUMLOCK))) {
> +	if (type == KT_PAD &&
> +	    (vt_get_leds(fg_console, VC_NUMLOCK))) {
>  		if (up_flag) {
>  			spk_keydown = 0;
>  			goto out;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170318202559.10886-2-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

