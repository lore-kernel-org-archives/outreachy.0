X-GM-THRID: 6667430437644664832
X-Received: by 2002:a5d:4642:: with SMTP id j2mr117015wrs.21.1552385786973;
        Tue, 12 Mar 2019 03:16:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8241:: with SMTP id 59ls4114494wrb.5.gmail; Tue, 12 Mar
 2019 03:16:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZkfoCw/+2Os54BD2eqUDutxEw7Cw0UAGdC4YnKy0J8YNPUEIlxcKeIyRcejV5Zid9+z4V
X-Received: by 2002:a5d:4410:: with SMTP id z16mr632397wrq.10.1552385785971;
        Tue, 12 Mar 2019 03:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552385785; cv=none;
        d=google.com; s=arc-20160816;
        b=tuRJGBNdME9IpfivSzEVs8b2v4MYdOn5Uye4iAJIou5jK5EhRGFEl8yMSrPFc0849n
         tZeSzrrT27JpF8suGJrWGlpzviFb4C/h/x5Y9KwVHmLqnt4vOH+3ftuRygdLfSMeBA3w
         NO791BpaqsPAG+InCgBPqIo6LB3qAjbTC2x2and8SwwHCqn+SNSKqfBgyssW3aGY644q
         97v4y7NFtYcaaGfk+cZ38N51WajrcwxOUpz2dUX0VL5qsl2a3rAiJbjiMnAkyj2/u2Bs
         GgxwKijzdHQQECsAkTujVTRuSDu0asUoJX4yMWWXUSYUU6TkATlzjaawcZj9VaL3mTU2
         hq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ZIH0vNvYxrUOKloqE9KmoEAi1LKRQjKH/VLmFOEVSBI=;
        b=YX3Nc9qEq4maB8DfLzrPfyspYzz2VKHT3PgdmwKuzJnXpGAi95OHQ3fRWoxF06asZm
         Sso/xaK/myhhUmbMMaQnVx3EgkiCSynWqnnr4++1ZeRsBkfV2H+6I4/uyQ1U1VdSugid
         wqWvcyVtKyAWoolEqkHoaNYSRG6UEhHlbz7At64qVqTiE0SzxqnGf1V3lvSfUwmT+6QU
         bVCsQaxV1s8kp9yKyYmdpoRDAhgLi4a5iE3BV0U/bsVqt+cPeeDzflkEztkBqr6gAyAZ
         BonjGd+ZJ/7Nq1Vg1L7cjcnMdxiZHW25V5v7D97eSOiki5w9oRqR2H+623wFeZHlUKLs
         +KQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTP id f185si86083wme.1.2019.03.12.03.16.25
        for <outreachy-kernel@googlegroups.com>;
        Tue, 12 Mar 2019 03:16:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,470,1544482800"; 
   d="scan'208";a="373007772"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 11:16:25 +0100
Date: Tue, 12 Mar 2019 11:16:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Change else-if
 block order
In-Reply-To: <20190312091512.2315-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.20.1903121112510.4097@hadrien>
References: <20190312091512.2315-1-etsai042@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2019, Wentao Cai wrote:

> Change else-if block to silence checkpatch.pl warning:
> WARNING: else is not generally useful after a break or return
>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 5f1bda37f86d..23ec8f01e0a2 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -153,6 +153,12 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  			return 1;
>  		}
>  		cur_item = letter_offsets[ch - 'a'];
> +	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
> +		   !spk_special_handler) {
> +		spk_special_handler = spk_handle_help;
> +		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
> +		build_key_data(); /* rebuild each time in case new mapping */
> +		return 1;
>  	} else if (type == KT_CUR) {
>  		if (ch == 0 &&
>  		    (MSG_FUNCNAMES_START + cur_item + 1) <= MSG_FUNCNAMES_END)
> @@ -161,12 +167,6 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  			cur_item--;
>  		else
>  			return -1;
> -	} else if (type == KT_SPKUP && ch == SPEAKUP_HELP &&
> -		   !spk_special_handler) {
> -		spk_special_handler = spk_handle_help;
> -		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
> -		build_key_data(); /* rebuild each time in case new mapping */
> -		return 1;

This would definitely be tha case of silencing a warning, because the
warning appears to be a false positive.  There is a return on the previous
line, but it is under an else, so it's not guaranteed to occur.

Furthermoew, by making this change, I guess you obtain another occurrence
of this warning, becaue your added code ends with a return and the next
line contains an else.

If this really seems to be an improvement, the log message needs to
explain why moving the if around preserves the semantics of the code.  Try
to avoid log messages that just say Change or Fix.  Those words don't give
any information about what you did or why it is useful.

julia

>  	} else {
>  		name = NULL;
>  		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312091512.2315-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

