X-GM-THRID: 6533243345849810944
X-Received: by 10.80.133.201 with SMTP id q9mr2930177edh.4.1521139999270;
        Thu, 15 Mar 2018 11:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.206.28 with SMTP id y28ls2579171edi.0.gmail; Thu, 15 Mar
 2018 11:53:18 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtpNM11YkKteI1iBghJbbTEYIOrtcidfjMdGAQtF3xB1ifBEeHb4DkaNg/WbiUWQC5Qdaml
X-Received: by 10.80.232.139 with SMTP id f11mr2929360edn.5.1521139997997;
        Thu, 15 Mar 2018 11:53:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521139997; cv=none;
        d=google.com; s=arc-20160816;
        b=rF6Ca6kZpLG96PgjErgoGlx6dAEKzH2y2b2E/uNP8qXEZLb3hMyirQYTnuJ25RD8J0
         M+fkV54tVvPwqwLht/ctkvhuwzP97XtawDKldwnNR0+2L2QXwDM2g3FaLASr19rjU2Z2
         xCTR5o1TQJiYfjmQnBzaoaUaq+w6X7a920wg44+E0XU16b42SXeHFHJRh8cQl7o0M08M
         AKUtyb65OlDK3CyUHjq6MzAEc7Qs7MRLMnAA05x2sSUd4oQnodgCEdrz5FeFEwJIfwBl
         gWaJ0Xp8rcFnTe/g6ZpAXMammztRIPa4L0PRt0EMYFrKfUzwYTgSeIb+BGjrPPkJdiI3
         uzRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fZaMwb7oU+FuP/W4UN9Nk5cUsnIyks0a27zDbTwby9Q=;
        b=LPkv8GPnALslAyTU8Tpn4Q2IkrOw4EM7G8iNaucG9CaBTTvWY1DmR7BXd4K8mBo0MJ
         N0gVVkKbvG6Z7Ex/kk0Efd7GVSCWVgVscbi4itXiVGVnPyEJ1+HqE65kKgL2Ja30R5Bt
         CbJyxXRtm6/m+iTPXd3MAAfYCsObRkqrC0DUlo+XUSfN5aRtj6vHchCIe7kWHmi5Ynq+
         sqnN+WLjTbVTdxPEp0NxSNE1m1uTg6S8QfufbB3m6PZ2WVDhei6QbKdHvLsluFImiJm6
         j7vTiNFcS619iT26Gty+sFLOAYK28VRA7VRDj1B4iKqVjQ/+SP6t9KUtw/jq5UU708fH
         cnmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f24si171740edc.0.2018.03.15.11.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 11:53:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,311,1517871600"; 
   d="scan'208";a="318249493"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2018 19:53:17 +0100
Date: Thu, 15 Mar 2018 19:53:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: samuel.thibault@ens-lyon.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    kirk@reisers.ca, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove else after
 return
In-Reply-To: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803151952070.3302@hadrien>
References: <1521139235-6133-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Mar 2018, Nishka Dasgupta wrote:

> Remove else after return and modify code accordingly. Issue found with
> checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/speakup/keyhelp.c | 82 +++++++++++++++++++++++----------------
>  1 file changed, 48 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 5f1bda3..020e0ea 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -153,6 +153,21 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  			return 1;
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
> +		name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> +		func = funcvals[cur_item];
> +		synth_printf("%s", name);
> +		if (key_offsets[func] == 0) {
> +			synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> +			return 1;
> +		}
> +		p_keys = key_data + key_offsets[func];
> +		for (n = 0; p_keys[n]; n++) {
> +			val = p_keys[n];
> +			if (n > 0)
> +				synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> +			say_key(val);
> +		}
> +		return 1;

Are you sure this is ok?  If you are removing an else and ajusting the
indentation of the code, I would expect that each hunk would contain
removed code, but this one does not.

julia


>  	} else if (type == KT_CUR) {
>  		if (ch == 0 &&
>  		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
> @@ -161,49 +176,48 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  			cur_item--;
>  		else
>  			return -1;
> +		name = spk_msg_get(MSG_FUNCNAMES_START + cur_item);
> +		func = funcvals[cur_item];
> +		synth_printf("%s", name);
> +		if (key_offsets[func] == 0) {
> +			synth_printf(" %s\n", spk_msg_get(MSG_IS_UNASSIGNED));
> +			return 1;
> +		}
> +		p_keys = key_data + key_offsets[func];
> +		for (n = 0; p_keys[n]; n++) {
> +			val = p_keys[n];
> +			if (n > 0)
> +				synth_printf("%s ", spk_msg_get(MSG_DISJUNCTION));
> +			say_key(val);
> +		}
> +		return 1;
>  	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
>  		   !spk_special_handler) {
>  		spk_special_handler = spk_handle_help;
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
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521139235-6133-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

