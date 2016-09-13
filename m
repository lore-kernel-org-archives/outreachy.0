X-GM-THRID: 6329663993990348800
X-Received: by 10.28.206.198 with SMTP id e189mr73105wmg.1.1473742073406;
        Mon, 12 Sep 2016 21:47:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.193 with SMTP id s184ls12245lja.43.gmail; Mon, 12 Sep
 2016 21:47:52 -0700 (PDT)
X-Received: by 10.25.78.12 with SMTP id c12mr3181539lfb.1.1473742072545;
        Mon, 12 Sep 2016 21:47:52 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w134si192717wmf.3.2016.09.12.21.47.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 21:47:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,326,1470693600"; 
   d="scan'208";a="236199790"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 06:47:37 +0200
Date: Tue, 13 Sep 2016 06:47:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eva Rachel Retuya <eraretuya@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: move assignment out
 of function call
In-Reply-To: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
Message-ID: <alpine.DEB.2.10.1609130642490.3330@hadrien>
References: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Sep 2016, Eva Rachel Retuya wrote:

> Pull out assignment used as a function argument before the function call to
> improve readability. Change was made by hand while the following coccinelle
> script was used to pinpoint the issue:
>
> @a@
> identifier func;
> expression list E;
> position p;
> @@
>
> func@p(E);
>
> @script:python b@
> E << a.E;
> func << a.func;
> p << a.p;
> arg_list;
> @@
> arg_list = []
> for i in E:
>     if (        '=' in i
>         and not '"' in i
> 	and not '==' in i
> 	and not '!=' in i
> 	and not '<=' in i
> 	and not '>=' in i
>        ):
>        print "function: " + func + " has assignment at arg: " + i
>        print "in file: " + p[0].file + " , line: " + p[0].line
>        arg_list.append(i)
> for j in arg_list:
>     print j

This is definitely inventive :).  It's really nice that you thought of
combining pattern matching and python.  On the other hand, I think that it
could have been done easily with only pattern matching too.  In recent
versions of ocaml, there is a metavariable type

assignment operator a;

Then you can say eg x a e, for any kind of assignment of e to x.

No need to update the semantic patch for this case, though.


> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/most/aim-sound/sound.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
> index 9c64580..e9d6b67 100644
> --- a/drivers/staging/most/aim-sound/sound.c
> +++ b/drivers/staging/most/aim-sound/sound.c
> @@ -236,12 +236,12 @@ static int playback_thread(void *data)
>  		bool period_elapsed = false;
>  		int ret;
>
> +		mbo = most_get_mbo(channel->iface, channel->id,
> +				   &audio_aim);

Does &audio_aim not fit on the same line?

>  		wait_event_interruptible(
>  			channel->playback_waitq,
>  			kthread_should_stop() ||
> -			(channel->is_stream_running &&

Unfortunately, in the end, it looks like this may not be correct, because
the most_get_mbo call should only happen if channel->is_stream_running is
true.  To make the change, you would need to pull the condition out of the
argument list too.

julia

> -			 (mbo = most_get_mbo(channel->iface, channel->id,
> -					     &audio_aim))));
> +			(channel->is_stream_running && mbo));
>  		if (!mbo)
>  			continue;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473739629-17286-1-git-send-email-eraretuya%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

