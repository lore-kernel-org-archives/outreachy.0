X-GM-THRID: 6393301758267883520
X-Received: by 10.25.18.219 with SMTP id 88mr520387lfs.29.1488557002124;
        Fri, 03 Mar 2017 08:03:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.141 with SMTP id 135ls66720lfa.3.gmail; Fri, 03 Mar 2017
 08:03:21 -0800 (PST)
X-Received: by 10.46.92.131 with SMTP id q125mr590503ljb.15.1488557001715;
        Fri, 03 Mar 2017 08:03:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si102277wma.0.2017.03.03.08.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 08:03:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,237,1484002800"; 
   d="scan'208";a="215485012"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 17:03:20 +0100
Date: Fri, 3 Mar 2017 17:03:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: w.d.hubbs@gmail.com, Chris Brannon <chris@the-brannons.com>, 
    Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: else is not generally
 useful after a break or return
In-Reply-To: <20170303155557.GA23744@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1703031701480.3490@hadrien>
References: <20170303155557.GA23744@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, Arushi Singhal wrote:

> fixed checkpatch.pl warning: else is not generally useful after a break
> or return.
> Removed the else without affecting the logic.
> Dead code is also eliminated.

The chhange is not correct.  There is a big chain of if/else if.  The if
(type == KT_LATIN) can reach the code at the end of the file.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 53 ++++++++++++++-------------------------
>  1 file changed, 19 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 4e6e5daba50c..ad3efded37c1 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -176,43 +176,28 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>  		build_key_data(); /* rebuild each time in case new mapping */
>  		return 1;
> -	} else {
> -		name = NULL;
> -		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> -			synth_printf("%s\n",
> -				     spk_msg_get(MSG_KEYNAMES_START + key - 1));
> -			return 1;
> -		}
> -		for (i = 0; funcvals[i] != 0 && !name; i++) {
> -			if (ch == funcvals[i])
> -				name = spk_msg_get(MSG_FUNCNAMES_START + i);
> -		}
> -		if (!name)
> -			return -1;
> -		kp = spk_our_keys[key] + 1;
> -		for (i = 0; i < nstates; i++) {
> -			if (ch == kp[i])
> -				break;
> -		}
> -		key += (state_tbl[i] << 8);
> -		say_key(key);
> -		synth_printf(spk_msg_get(MSG_KEYDESC), name);
> -		synth_printf("\n");
> -		return 1;
>  	}
> -	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> -	func = funcvals[cur_item];
> -	synth_printf("%s", name);
> -	if (key_offsets[func] == 0) {
> -		synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> +
> +	name = NULL;
> +	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> +		synth_printf("%s\n",
> +			     spk_msg_get(MSG_KEYNAMES_START + key - 1));
>  		return 1;
>  	}
> -	p_keys = key_data + key_offsets[func];
> -	for (n = 0; p_keys[n]; n++) {
> -		val = p_keys[n];
> -		if (n > 0)
> -			synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> -		say_key(val);
> +	for (i = 0; funcvals[i] != 0 && !name; i++) {
> +		if (ch == funcvals[i])
> +			name = spk_msg_get(MSG_FUNCNAMES_START + i);
> +	}
> +	if (!name)
> +		return -1;
> +	kp = spk_our_keys[key] + 1;
> +	for (i = 0; i < nstates; i++) {
> +		if (ch == kp[i])
> +			break;
>  	}
> +	key += (state_tbl[i] << 8);
> +	say_key(key);
> +	synth_printf(spk_msg_get(MSG_KEYDESC), name);
> +	synth_printf("\n");
>  	return 1;
>  }
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170303155557.GA23744%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

