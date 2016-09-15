X-GM-THRID: 6330628880333799424
X-Received: by 10.28.193.198 with SMTP id r189mr813712wmf.2.1473967381899;
        Thu, 15 Sep 2016 12:23:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.78 with SMTP id r75ls425050wmf.9.gmail; Thu, 15 Sep
 2016 12:23:01 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr1805548wjm.3.1473967381226;
        Thu, 15 Sep 2016 12:23:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si264113wmw.0.2016.09.15.12.23.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:23:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="237011724"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:23:00 +0200
Date: Thu, 15 Sep 2016 21:22:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove unnecessary
 'else' after a 'return' statement
In-Reply-To: <20160915183258.GA13583@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609152121250.3364@hadrien>
References: <20160915183258.GA13583@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 16 Sep 2016, sayli karnik wrote:

> This patch resolves the following issue detected by checkpatch.pl:
> WARNING: else is not generally useful after a break or return.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index ce94cb1..ab56d89 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -178,7 +178,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>  		build_key_data(); /* rebuild each time in case new mapping */
>  		return 1;
> -	} else {
> +	}
>  		name = NULL;

This looks suspicious.  If you drop the else, then the code afterwards
should be less indented.

>  		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>  			synth_printf("%s\n",
> @@ -201,7 +201,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		synth_printf(spk_msg_get(MSG_KEYDESC), name);
>  		synth_printf("\n");
>  		return 1;
> -	}
> +

Now you will end up with a return followed by an assignment.  So that
would be dead code.  You need to check carefully that the transformation
makes sense with regards to the code that is actually in the else branch.

julia

>  	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>  	func = funcvals[cur_item];
>  	synth_printf("%s", name);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915183258.GA13583%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

