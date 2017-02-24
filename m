X-GM-THRID: 6390781740145704960
X-Received: by 10.25.213.11 with SMTP id m11mr679826lfg.19.1487970646287;
        Fri, 24 Feb 2017 13:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.220 with SMTP id 89ls426714lfw.5.gmail; Fri, 24 Feb 2017
 13:10:44 -0800 (PST)
X-Received: by 10.46.71.15 with SMTP id u15mr627376lja.9.1487970644225;
        Fri, 24 Feb 2017 13:10:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si179658wmh.1.2017.02.24.13.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 13:10:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="214644584"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 22:10:43 +0100
Date: Fri, 24 Feb 2017 22:10:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: speakup: Clean up if
 conditions
In-Reply-To: <20170224205656.ukn7vyqoicesli7z@stayawesome>
Message-ID: <alpine.DEB.2.20.1702242207040.2152@hadrien>
References: <20170224205656.ukn7vyqoicesli7z@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 25 Feb 2017, Sreya Mittal wrote:

> Put logical conditions on the next line,
> remove useless parentheses, and
> align the tests

This is going a little overboard with the short log message lines.

>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index f5156bb..0565767 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -163,17 +163,17 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
> -		if (ch == 0
> -		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
> +		if (ch == 0 &&
> +		    MSG_FUNCNAMES_START + cur_item + 1 <=
>  		    MSG_FUNCNAMES_END)

It looks like MSG_FUNCNAMES_END) would fit on the previous line.

>  			cur_item++;
>  		else if (ch == 3 && cur_item > 0)
>  			cur_item--;
>  		else
>  			return -1;
> -	} else if (type == KT_SPKUP
> -			&& ch == SPEAKUP_HELP
> -			&& !spk_special_handler) {
> +	} else if (type == KT_SPKUP &&
> +			ch == SPEAKUP_HELP &&
> +			!spk_special_handler) {

It looks like ch == SPEAKUP_HELP && would fit on the previous line.  Also
the continuation line should be lined up with the right side of the (.

Overall, you shouldn't use too much horizontal space.  But within reason
you can use the space available.

julia

>  		spk_special_handler = spk_handle_help;
>  		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>  		build_key_data(); /* rebuild each time in case new mapping */
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170224205656.ukn7vyqoicesli7z%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

