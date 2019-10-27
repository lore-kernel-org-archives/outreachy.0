X-GM-THRID: 6752344874745331712
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr10461186wma.95.1572154508848;
        Sat, 26 Oct 2019 22:35:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c151:: with SMTP id z17ls12070461wmi.2.gmail; Sat, 26
 Oct 2019 22:35:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzK2FzeSBR2OGl78wUs33IkD9sWENm8rgirGwTttTGgx7bVIqHTsCP47SyLgznAJ6ZsXg8P
X-Received: by 2002:a1c:99cb:: with SMTP id b194mr8752664wme.100.1572154507756;
        Sat, 26 Oct 2019 22:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572154507; cv=none;
        d=google.com; s=arc-20160816;
        b=oca8oq6Z5jpgO7cEdi/z7L1fni4UoVDdHHHEwfwqXA3BCeGbdrkKsWLADdnH/o9BA0
         do7TLSmyaNt+fCeiYWpq60T3g+TroiFHUoTITNZ1/6UMvwOEPMsVa/98yNn+P86O5nOb
         yiWATou3LTuO3nSnXFO3gGl9IWQK4J5m9Gh672KQ/YeyQ9yn2N2tYQDboGR1VB/AAUHR
         6WAHkgEIteM9OersGTedCqL5k1DOqRt1jS2fYxT5qN7UrhplyBCJEUyFGLRSBEMlXRzE
         eSQa8KKvPzebyiv+fo0MoKfD+JEBL+f4BWOdsfblfoH7WlWY1TFIgy7y7aI6eLEgfxoe
         s3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3/dEYQ0tjcz9IkMRUrhwprglXu0DE45oziHQQhd+mmA=;
        b=waydS/vTlSPJH4+yZithYNGRQRBCsvMgnIOSFFaTGPhgP7FpG2fTRNfIZV2s6wWKZj
         4JC4DqvPwz09RYCfhESegD2N/MXy+/fnBBsSLj1HDY0t4P/I9Qf8t3K466l836jvWQAB
         m0kjsmtgwS01rKSX5TGdjQyQqARGtHrAcaViyHsUKyIy+3dar1hVhsjl4Yr5YFNlveMv
         W+j40Fev4bF7ewgQ0A6UvLF+G9CYLDflCyQgdUwLWwZej916IK4hjJdrhQNadzowEi4M
         4ANdN1VSFeK+DbgiP1mcYs64Qbzzc3tD/Mctz7JS143HiFPoy2/teR+dzf3YMTS5G8zJ
         8ARw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q73si380737wme.1.2019.10.26.22.35.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 22:35:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,234,1569276000"; 
   d="scan'208";a="408546866"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2019 06:35:07 +0100
Date: Sun, 27 Oct 2019 06:35:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: gregkh@linuxfoundation.org, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org, 
    joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Fix multiple
 assignments on a single line
In-Reply-To: <20191027050640.GA24283@linux-kernel-dev>
Message-ID: <alpine.DEB.2.21.1910270632370.3186@hadrien>
References: <20191027050640.GA24283@linux-kernel-dev>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 27 Oct 2019, Frank A. Cancio Bello wrote:

> checkpatch message: "multiple assignments should be avoided"

Despite the comment of checkpatch, I think it was clearer before.  Maybe
there is some way to rewrite the code so that not so many variables are
needed, but since they seem to be globa variables, that may not be
possible.

>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>
> This is the second patch that I send for "Outreachy December 2019 to
> March 2020".

This comment isn't needed.  The git logs show what patches you have gotten
accepted.

julia

>  drivers/staging/speakup/main.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..6f5a58bd1f81 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -263,9 +263,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
>
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_cx = vc->vc_x;
> +	spk_x = spk_cx;
> +	spk_cy = vc->vc_y;
> +	spk_y = spk_cy;
> +	spk_cp = vc->vc_pos;
> +	spk_pos = spk_cp;
>  	spk_old_attr = spk_attr;
>  	spk_attr = get_attributes(vc, (u_short *)spk_pos);
>  }
> @@ -1672,9 +1675,12 @@ static int speak_highlight(struct vc_data *vc)
>  		spk_do_flush();
>  		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
>  			    speakup_console[vc_num]->ht.highsize[hc]);
> -		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> -		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
> -		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> +		spk_pos = spk_cp;
> +		spk_cx = speakup_console[vc_num]->ht.rx[hc];
> +		spk_x = spk_cx;
> +		spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_y = spk_cy;
>  		return 1;
>  	}
>  	return 0;
> @@ -2117,7 +2123,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  			spk_keydown = 0;
>  			goto out;
>  		}
> -		value = spk_lastkey = pad_chars[value];
> +		spk_lastkey = pad_chars[value];
> +		value = spk_lastkey;
>  		spk_keydown++;
>  		spk_parked &= 0xfe;
>  		goto no_map;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191027050640.GA24283%40linux-kernel-dev.
>

