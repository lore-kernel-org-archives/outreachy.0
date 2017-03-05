X-GM-THRID: 6394100888766513152
X-Received: by 10.25.169.14 with SMTP id s14mr1433565lfe.3.1488744653023;
        Sun, 05 Mar 2017 12:10:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.225 with SMTP id 94ls285550lfs.32.gmail; Sun, 05 Mar
 2017 12:10:52 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr1892344ljv.0.1488744652081;
        Sun, 05 Mar 2017 12:10:52 -0800 (PST)
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a01:474::1])
        by gmr-mx.google.com with ESMTP id 82si22160wmg.3.2017.03.05.12.10.51
        for <outreachy-kernel@googlegroups.com>;
        Sun, 05 Mar 2017 12:10:52 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:474::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a01:474::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:474::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 65917B6B9;
	Sun,  5 Mar 2017 21:10:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYLNv-RpYbH4; Sun,  5 Mar 2017 21:10:49 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (unknown [IPv6:2a01:cb19:181:c200:3602:86ff:fe2c:6a19])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id EF50A6D76;
	Sun,  5 Mar 2017 21:10:48 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.88)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ckcUS-00018Y-Dv; Sun, 05 Mar 2017 21:10:48 +0100
Date: Sun, 5 Mar 2017 21:10:48 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [PATCH 3/3] staging:speakup:keyhelp.c: Remove unnecessary else
Message-ID: <20170305201048.hceg76fqoxe3w5rz@var.youpi.perso.aquilenet.fr>
References: <20170305193701.20390-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305193701.20390-1-diaconita.tamara@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Tamara Diaconita, on dim. 05 mars 2017 21:37:01 +0200, wrote:
> Fixed the checkpath.pl WARNING:
> Else is not generally useful after a break return.
> 
> Deleted the 'else' structure.
> Deleted extra tabs which remained after the 'else' structure was
> removed.

But not all if cases finish with a return, so it's not the same.

> ---
>  drivers/staging/speakup/keyhelp.c | 44 +++++++++++++++++++--------------------
>  1 file changed, 22 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 2ef7370..0e0efc46 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -176,30 +176,30 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
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
> +	}
> +	name = NULL;
> +	if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> +		synth_printf("%s\n",
> +			     spk_msg_get(MSG_KEYNAMES_START + key - 1));
>  		return 1;
>  	}
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
> +		}
> +	key += (state_tbl[i] << 8);
> +	say_key(key);
> +	synth_printf(spk_msg_get(MSG_KEYDESC), name);
> +	synth_printf("\n");
> +	return 1;
> +
>  	name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
>  	func = funcvals[cur_item];
>  	synth_printf("%s", name);
> -- 
> 2.9.3
> 

-- 
Samuel
<D> I hated the Mighty Mouse in the Apple Store every time I played with it. I hated the Mighty Mouse at work whenever I set up a Mac for somebody.
<D> I decided to give it one last chance when I set up my new Mac
<D> And golly, I like it at home.
<D> Maybe mine is defective in a way that makes it good.

