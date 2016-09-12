X-GM-THRID: 6329558488871600128
X-Received: by 10.25.42.197 with SMTP id q188mr3006303lfq.7.1473715719178;
        Mon, 12 Sep 2016 14:28:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.193 with SMTP id i184ls147wmf.7.gmail; Mon, 12 Sep 2016
 14:28:38 -0700 (PDT)
X-Received: by 10.194.178.166 with SMTP id cz6mr3027344wjc.0.1473715718582;
        Mon, 12 Sep 2016 14:28:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si169500wmr.2.2016.09.12.14.28.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:28:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,324,1470693600"; 
   d="scan'208";a="236182358"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 23:28:38 +0200
Date: Mon, 12 Sep 2016 23:28:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speackup: No space is
 necessary after a cast.
In-Reply-To: <20160912212009.GA3355@sandhya>
Message-ID: <alpine.DEB.2.10.1609122327170.3999@hadrien>
References: <20160912212009.GA3355@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Sandhya Bankar wrote:

> No space is necessary after a cast.This patch is detected by checkpatch.pl script.

Space needed after "cast." In the subject line, speackup -> speakup.  The
commit message should be limited to 80 characters per line.  Did you send
another patch on the same file?  If so, then they need to be in a series
(1/2, 2/2).

julia


>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/speakup/selection.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
> index ce4b946..afd9a44 100644
> --- a/drivers/staging/speakup/selection.c
> +++ b/drivers/staging/speakup/selection.c
> @@ -137,7 +137,7 @@ static void __speakup_paste_selection(struct work_struct *work)
>  	struct speakup_paste_work *spw =
>  		container_of(work, struct speakup_paste_work, work);
>  	struct tty_struct *tty = xchg(&spw->tty, NULL);
> -	struct vc_data *vc = (struct vc_data *) tty->driver_data;
> +	struct vc_data *vc = (struct vc_data *)tty->driver_data;
>  	int pasted = 0, count;
>  	struct tty_ldisc *ld;
>  	DECLARE_WAITQUEUE(wait, current);
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912212009.GA3355%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

