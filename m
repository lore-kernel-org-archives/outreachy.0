X-GM-THRID: 6463765428617347072
X-Received: by 10.223.183.19 with SMTP id l19mr335503wre.6.1504976034338;
        Sat, 09 Sep 2017 09:53:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.7.4 with SMTP id 4ls462565wmh.11.canary-gmail; Sat, 09 Sep
 2017 09:53:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDsjPt2gXhBxANhypfQKypGWeBvPJxFA/9mfhBx5z6mGiPMQQKMxyRCrO+BoL2SFeRHzxYI
X-Received: by 10.28.143.13 with SMTP id r13mr175835wmd.30.1504976033319;
        Sat, 09 Sep 2017 09:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504976033; cv=none;
        d=google.com; s=arc-20160816;
        b=gqtPPsEzccB+yDAdfuXyRozz4+3BKy/TcUSGo777rIu6e99IPejL717q/Q7/jRBgge
         awonVJS+f2VlXDETIO3wc141zrA5hRE8nluLhuOK6hsDX50AoxplddCwFQ9/pI607N98
         is9c7UuiCkWOpMtN92zoP+rG3HMNG4/el/lSKpuJn5rxuJA0W5SCfT1OJ512SnPS6r/3
         7Jzn00aZyeAFOkDAWD6vi2cuKHkQrZlj3Rlk1B4tsHdIAZcZDeN5WNZ0K7dAlPKmCKBr
         yN82/myjZ5v3XnSua5jE1JvvU1TkLRL2Zse6BJVbMjetxaWpD0i7Jkv8AF6cZdsgauWj
         uzTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=duDsfEFuC6CsEJLAuOIKT/+0efzvS7v5BE7Dtk/ZILA=;
        b=iNoXxtRTUOYg2A6zXXTeXsOR/hvLY/otXljQEadpQ9JIv5wE+n/JMfkhrmd1lS6TrC
         8daRvN1VqxHKgmQ8KGjeiSRjcvsAogwEi2XeWVMBC1rSi2RqYPym1IZBrUcCZuyAN2Z6
         5m0EFKgf66/KpTDkO7lhwIBp7nRgMQJINiPaqxRUA3SLJ18MiDj0XG/X3dNxpGaT/QpN
         AWxQ8Z5ARmOTd9mXZPChWWQJQWQ8yVRuE05e5llOOTNdFVGSRk4S5n8L5AQZg9DNqTns
         xQfvPcRmBoXsxx6spCPbHMxsJiw2AxLuSsL/2rOm/TO6uaGgZJ7aegapBDVFnUyBxozB
         L44A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r185si175536wma.9.2017.09.09.09.53.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 09:53:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,367,1500933600"; 
   d="scan'208";a="290298120"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 18:53:52 +0200
Date: Sat, 9 Sep 2017 18:53:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] fixed coding style issue - multiple
 assignments in a single line
In-Reply-To: <1504962647-7425-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709091851540.2149@hadrien>
References: <1504962647-7425-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There should be a log message here.  don't put all the information in the
subject line.  Also the subject line should contain information about the
location of the change.  Read through the tutorial about sending patches
again.

On Sat, 9 Sep 2017, Aastha Gupta wrote:

> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 938a0aed..9e83fa1 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -270,9 +270,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
>
>  static void speakup_date(struct vc_data *vc)
>  {
> -	spk_x = spk_cx = vc->vc_x;
> -	spk_y = spk_cy = vc->vc_y;
> -	spk_pos = spk_cp = vc->vc_pos;
> +	spk_x = vc->vc_x;
> +	spk_cx = spk_x;
> +	spk_y = vc->vc_y;
> +	spk_cy = spk_y;
> +	spk_pos = vc->vc_pos;
> +	spk_cp = spk_pos;

Also, despite the checkpatch message, I think that the original code was
more readable in each case, so it would probably be better to drop this
and do something else.

julia

>  	spk_old_attr = spk_attr;
>  	spk_attr = get_attributes(vc, (u_short *)spk_pos);
>  }
> @@ -1669,9 +1672,12 @@ static int speak_highlight(struct vc_data *vc)
>  		spk_do_flush();
>  		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
>  			    speakup_console[vc_num]->ht.highsize[hc]);
> -		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
> -		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
> -		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
> +		spk_pos = speakup_console[vc_num]->ht.rpos[hc];
> +		spk_cp = spk_pos;
> +		spk_x = speakup_console[vc_num]->ht.rx[hc];
> +		spk_cx = spk_x;
> +		spk_y = speakup_console[vc_num]->ht.ry[hc];
> +		spk_cy = spk_y;
>  		return 1;
>  	}
>  	return 0;
> @@ -2109,7 +2115,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
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
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504962647-7425-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

