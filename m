X-GM-THRID: 6330211515190214656
X-Received: by 10.46.1.225 with SMTP id f94mr843696lji.8.1473880341518;
        Wed, 14 Sep 2016 12:12:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.5 with SMTP id o5ls408584wmg.2.canary; Wed, 14 Sep 2016
 12:12:20 -0700 (PDT)
X-Received: by 10.28.0.216 with SMTP id 207mr243213wma.3.1473880340960;
        Wed, 14 Sep 2016 12:12:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si69270wme.3.2016.09.14.12.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:12:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,335,1470693600"; 
   d="scan'208";a="193193415"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 21:12:20 +0200
Date: Wed, 14 Sep 2016 21:12:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Rehas Sachdeva <aquannie@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix alignment with
 open parentheses
In-Reply-To: <20160914153331.GA22396@toblerone>
Message-ID: <alpine.DEB.2.10.1609142111380.3347@hadrien>
References: <20160914153331.GA22396@toblerone>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Rehas Sachdeva wrote:

> This patch removes the checkpatch.pl warning:
> CHECK: Alignment should match open parenthesis.
>
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index 31b18e6..75e0a6b 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -1037,8 +1037,9 @@ static int dgnc_tty_open(struct tty_struct *tty, struct file *file)
>  	 * ch_flags_wait to wake us back up.
>  	 */
>  	rc = wait_event_interruptible(ch->ch_flags_wait,
> -		(((ch->ch_tun.un_flags | ch->ch_pun.un_flags) &
> -		  UN_CLOSING) == 0));
> +				      (((ch->ch_tun.un_flags |
> +					 ch->ch_pun.un_flags) &
> +					UN_CLOSING) == 0));

Bother are not so nice, but maybe it was better before.  It's nice to have
at least both arguments to | on the same line.

julia

>
>  	/* If ret is non-zero, user ctrl-c'ed us */
>  	if (rc)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914153331.GA22396%40toblerone.
> For more options, visit https://groups.google.com/d/optout.
>

