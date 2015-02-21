X-GM-THRID: 1627576598528
X-Received: by 10.112.124.142 with SMTP id mi14mr152103lbb.1.1424500468911;
        Fri, 20 Feb 2015 22:34:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.198 with SMTP id ek6ls222912wid.27.gmail; Fri, 20 Feb
 2015 22:34:28 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr160582wjb.6.1424500468622;
        Fri, 20 Feb 2015 22:34:28 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si246231wic.1.2015.02.20.22.34.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 22:34:28 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,619,1418079600"; 
   d="scan'208";a="100826163"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 07:34:27 +0100
Date: Sat, 21 Feb 2015 07:34:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Remove unnecessary
 else after return
In-Reply-To: <1424474060-16367-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.02.1502210732331.2020@localhost6.localdomain6>
References: <1424474060-16367-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes checkpatch.pl warning in files of speakup
> WARNING: else is not generally useful after a break or return
> 
> Changes since v2:
> * "}" was added and was shifted to the left.

This information should be below the ---.  This information is not 
meaningful to anyone who reads the patch in the future, because the 
previous version will not be preserved.  The text that you put below the 
--- and above thepatch is also thrown away.

The change is also not since v2, it is in v2.

Finally, your patch seems to be against your previous patch, not against 
the original code.  It should be against the original code.

julia

> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 67 ++++++++++++++++++++-------------------
>  1 file changed, 34 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 832cf00..99e16ed 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -182,42 +182,43 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>  		build_key_data(); /* rebuild each time in case new mapping */
>  		return 1;
> -		name = NULL;
> -		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> -			synth_printf("%s\n",
> -				spk_msg_get(MSG_KEYNAMES_START + key-1));
> -			return 1;
> -		}
> -		for (i = 0; funcvals[i] != 0 && !name; i++) {
> -			if (ch == funcvals[i])
> -				name = spk_msg_get(MSG_FUNCNAMES_START + i);
> -		}
> -		if (!name)
> -			return -1;
> -		kp = spk_our_keys[key]+1;
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
> +	name = NULL;
> +	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> +		synth_printf("%s\n",
> +			spk_msg_get(MSG_KEYNAMES_START + key-1));
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
>  	}
> +	if (!name)
> +		return -1;
> +	kp = spk_our_keys[key]+1;
> +	for (i = 0; i < nstates; i++) {
> +		if (ch == kp[i])
> +			break;
> +	}
> +	key += (state_tbl[i] << 8);
> +	say_key(key);
> +	synth_printf(spk_msg_get(MSG_KEYDESC), name);
> +	synth_printf("\n");
> +	return 1;
> +}
> +name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> +func = funcvals[cur_item];
> +synth_printf("%s", name);
> +if (key_offsets[func] == 0) {
> +	synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
>  	return 1;
>  }
> +p_keys = key_data + key_offsets[func];
> +for (n = 0; p_keys[n]; n++) {
> +	val = p_keys[n];
> +	if (n > 0)
> +		synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> +	say_key(val);
> +}
> +return 1;
> +}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424474060-16367-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

