X-GM-THRID: 821308686336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,333029c12b88399e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr45799wib.1.1424379797622;
        Thu, 19 Feb 2015 13:03:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls32159lac.76.gmail; Thu, 19 Feb
 2015 13:03:17 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr860512lbc.2.1424379797355;
        Thu, 19 Feb 2015 13:03:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si187000wia.0.2015.02.19.13.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 13:03:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="100665399"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 22:03:16 +0100
Date: Thu, 19 Feb 2015 22:03:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Gamze POLAT <gamzepolat94@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/speakup/speakup_decext.c
In-Reply-To: <1424372722-4957-1-git-send-email-gamzepolat94@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192201320.2192@localhost6.localdomain6>
References: <1424372722-4957-1-git-send-email-gamzepolat94@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 19 Feb 2015, Gamze POLAT wrote:

> removed line over 80 characters warning
> 
> Signed-off-by: Gamze POLAT <gamzepolat94@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decext.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
> index 5550290..b0ba54a 100644
> --- a/drivers/staging/speakup/speakup_decext.c
> +++ b/drivers/staging/speakup/speakup_decext.c
> @@ -207,10 +207,12 @@ static void do_catch_up(struct spk_synth *synth)
>  			if (time_after_eq(jiffies, jiff_max)) {
>  				if (!in_escape)
>  					spk_serial_out(PROCSPEECH);
> -				spin_lock_irqsave(&speakup_info.spinlock, flags);
> +				spin_lock_irqsave(&speakup_info.spinlock, flags
> +						);

Normally, one does not put ); on a line by itself.  You can put a newline 
before flags.  Look around at some other code in this driver to see how 
this code deals with this problem.

>  				jiffy_delta_val = jiffy_delta->u.n.value;
>  				delay_time_val = delay_time->u.n.value;
> -				spin_unlock_irqrestore(&speakup_info.spinlock, flags);
> +				spin_unlock_irqrestore(&speakup_info.spinlock,
> +						flags);

This looc better, but you could consider lining up flags with the & on the 
line above, or if you prefer to have only leading tabs, add one more tab 
so that flags is past the (.

julia

>  				schedule_timeout(msecs_to_jiffies
>  						 (delay_time_val));
>  				jiff_max = jiffies + jiffy_delta_val;
> -- 
> 2.1.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424372722-4957-1-git-send-email-gamzepolat94%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

