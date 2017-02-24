X-GM-THRID: 6390781740145704960
X-Received: by 10.46.33.163 with SMTP id h35mr663085lji.17.1487971795633;
        Fri, 24 Feb 2017 13:29:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls234796ljd.17.gmail; Fri, 24 Feb 2017
 13:29:54 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr568611ljd.26.1487971794532;
        Fri, 24 Feb 2017 13:29:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si241185wmn.2.2017.02.24.13.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 13:29:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="261999425"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 22:29:53 +0100
Date: Fri, 24 Feb 2017 22:29:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2 v2] staging: speakup: Clean up if
 conditions
In-Reply-To: <20170224212655.l6n2ibp52uwha6ru@stayawesome>
Message-ID: <alpine.DEB.2.20.1702242228430.2152@hadrien>
References: <20170224212655.l6n2ibp52uwha6ru@stayawesome>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 25 Feb 2017, Sreya Mittal wrote:

> Found by checkpatch.pl
> Logical conditions are on the next line, useless parentheses present
> Clean up the if tests by
>
> * Put logical conditions on the previous line
> * Remove useless parentheses
> * Line up the tests
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
>
> Changes in v2:
> * More elaborate log message
> * Fit MSG_FUNCNAMES_END) on the previous line
> * Fit ch == SPEAKUP_HELP && on the previous line

Thanks for making the changes.  But the v2 discussion goes under the ---,
not above.  The text between the --- and the fist diff disappears when the
patch is applied.  And indeed the change information is no longer useful
at that point, since someone looking through the commit logs doesn't know
what the v1 patch contained.

julia

> ---
>  drivers/staging/speakup/keyhelp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index f5156bb..ab56a1c 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
> -		if (ch == 0
> -		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
> -		    MSG_FUNCNAMES_END)
> +		if (ch == 0 &&
> +		    MSG_FUNCNAMES_START + cur_item + 1 <= MSG_FUNCNAMES_END)
>  			cur_item++;
>  		else if (ch == 3 && cur_item > 0)
>  			cur_item--;
>  		else
>  			return -1;
> -	} else if (type == KT_SPKUP
> -			&& ch == SPEAKUP_HELP
> -			&& !spk_special_handler) {
> +	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
> +		   !spk_special_handler) {
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170224212655.l6n2ibp52uwha6ru%40stayawesome.
> For more options, visit https://groups.google.com/d/optout.
>

