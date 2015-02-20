X-GM-THRID: 1627576598528
X-Received: by 10.112.161.9 with SMTP id xo9mr6078lbb.7.1424471838908;
        Fri, 20 Feb 2015 14:37:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls190081wib.31.gmail; Fri, 20 Feb
 2015 14:37:18 -0800 (PST)
X-Received: by 10.180.94.134 with SMTP id dc6mr134894wib.2.1424471838699;
        Fri, 20 Feb 2015 14:37:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si201148wib.2.2015.02.20.14.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 14:37:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,617,1418079600"; 
   d="scan'208";a="122747351"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 23:37:17 +0100
Date: Fri, 20 Feb 2015 23:37:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove unnecessary
 else after return
In-Reply-To: <1424471596-15670-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.02.1502202335450.2054@localhost6.localdomain6>
References: <1424471596-15670-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes checkpatch.pl warning in files of speakup
> WARNING: else is not generally useful after a break or return
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/speakup/keyhelp.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/keyhelp.c b/drivers/staging/speakup/keyhelp.c
> index 9475674..832cf00 100644
> --- a/drivers/staging/speakup/keyhelp.c
> +++ b/drivers/staging/speakup/keyhelp.c
> @@ -182,7 +182,6 @@ int spk_handle_help(struct vc_data *vc, u_char type, u_char ch, u_short key)
>  		synth_printf("%s\n", spk_msg_get(MSG_HELP_INFO));
>  		build_key_data(); /* rebuild each time in case new mapping */
>  		return 1;
> -	} else {

This does not look correct.  You have deleted the } ending the previous 
then branch as well as the else and its open brace.  But you have not 
deleted its close brace.  Also the code in the else branch should be moved 
to the left to reflectthe fact that it is not under an if any more.

julia

>  		name = NULL;
>  		if ((type != KT_SPKUP) && (key > 0) && (key <= num_key_names)) {
>  			synth_printf("%s\n",
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424471596-15670-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

