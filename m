X-GM-THRID: 6391810462293426176
X-Received: by 10.46.71.15 with SMTP id u15mr2170337lja.9.1488211435298;
        Mon, 27 Feb 2017 08:03:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls465680ljb.12.gmail; Mon, 27 Feb
 2017 08:03:54 -0800 (PST)
X-Received: by 10.46.9.206 with SMTP id 197mr1925123ljj.12.1488211434355;
        Mon, 27 Feb 2017 08:03:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si909125wmf.0.2017.02.27.08.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 08:03:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262283323"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 17:03:53 +0100
Date: Mon, 27 Feb 2017 17:03:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sreya Mittal <sreyamittal5@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: speakup: Clean up
 parentheses
In-Reply-To: <20170227160136.22661-1-sreyamittal5@gmail.com>
Message-ID: <alpine.DEB.2.20.1702271702310.3032@hadrien>
References: <20170227160136.22661-1-sreyamittal5@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

This one needs to be also v3.

When you redo any patch in a series, you have to resend all of the patches
in that series, and they all have to have the same version number, even if
some of them have not changed.  Otherwise, Greg cannot figure out reliably
what should be applied and what should not.

julia

On Mon, 27 Feb 2017, Sreya Mittal wrote:

> Align next line of print statements
> to the right of open parentheses and
> remove extra parentheses.
>
> Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index ce94cb1..c373762 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -115,9 +115,9 @@ static void say_key(int key)
>  		if (state & masks[i])
>  			synth_printf(" %s", spk_msg_get(MSG_STATES_START + i));
>  	}
> -	if ((key > 0) && (key <= num_key_names))
> +	if (key > 0 && key <= num_key_names)
>  		synth_printf(" %s\n",
> -				spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
> +			     spk_msg_get(MSG_KEYNAMES_START + (key - 1)));
>  }
>
>  static int help_init(void)
> @@ -164,7 +164,7 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		cur_item = letter_offsets[ch - 'a'];
>  	} else if (type == KT_CUR) {
>  		if (ch == 0
> -		    && (MSG_FUNCNAMES_START + cur_item + 1) <=
> +		    && MSG_FUNCNAMES_START + cur_item + 1 <=
>  		    MSG_FUNCNAMES_END)
>  			cur_item++;
>  		else if (ch == 3 && cur_item > 0)
> @@ -180,9 +180,9 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		return 1;
>  	} else {
>  		name = NULL;
> -		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> +		if (type != KT_SPKUP && key > 0 && key <= num_key_names) {
>  			synth_printf("%s\n",
> -				spk_msg_get(MSG_KEYNAMES_START + key - 1));
> +				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
>  			return 1;
>  		}
>  		for (i = 0; funcvals[i] != 0 && !name; i++) {
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170227160136.22661-1-sreyamittal5%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

