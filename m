X-GM-THRID: 6390781740145704960
X-Received: by 10.25.41.85 with SMTP id p82mr2026484lfp.16.1488209972561;
        Mon, 27 Feb 2017 07:39:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls463419ljo.45.gmail; Mon, 27 Feb 2017
 07:39:32 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr1810679lfe.18.1488209972034;
        Mon, 27 Feb 2017 07:39:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si903674wmf.0.2017.02.27.07.39.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:39:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262278856"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 16:39:31 +0100
Date: Mon, 27 Feb 2017 16:39:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2 v2] staging: speakup: Clean up if
 conditions
In-Reply-To: <20170227153617.21264-1-sreyamittal5@gmail.com>
Message-ID: <alpine.DEB.2.20.1702271638340.3032@hadrien>
References: <20170227153617.21264-1-sreyamittal5@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, Sreya Mittal wrote:

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

Changes go under the ---, not above.  They should not be preserved in the
git logs, because someone looking at the git logs doesn't know anything
about v1.

julia

> ---
>  drivers/staging/speakup/keyhelp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index c373762..4d00bc2 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -163,17 +163,15 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
> -		if (ch == 0
> -		    && MSG_FUNCNAMES_START + cur_item + 1 <=
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170227153617.21264-1-sreyamittal5%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

