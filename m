X-GM-THRID: 784492134400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c97083510a464cd0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr1418702wjb.6.1424451029532;
        Fri, 20 Feb 2015 08:50:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls326531lad.91.gmail; Fri, 20 Feb
 2015 08:50:29 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr1395694lbf.21.1424451029240;
        Fri, 20 Feb 2015 08:50:29 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si136895wib.2.2015.02.20.08.50.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 08:50:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,615,1418079600"; 
   d="scan'208";a="122718535"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2015 17:50:28 +0100
Date: Fri, 20 Feb 2015 17:50:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Removed unnecessary
 braces
In-Reply-To: <1424433039-6205-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502201748190.2375@hadrien>
References: <1424433039-6205-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 20 Feb 2015, Yeliz Taneroglu wrote:

> The following patch fixes the checkpatch.pl warning:
> WARNING: braces {} are not necessary for single statement blocks
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index a4e6c9e..67dc8ef 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -1008,9 +1008,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
>  			}
>  		}
>  		/* No FLOW */
> -		else {
> +		else
>  			/* Empty... Can't do anything about the impending overflow... */
> -		}

Sorry not to have been clear.  An else with nothing after it at all is not
valid C code (comments don't count).  Checkpatch does not know what is a
statement and what is not.  Either you leave the code as it is, or you
remove everything, probably including the comment.

julia

>  	}
>
>  	/*
> @@ -1042,9 +1041,8 @@ void dgnc_check_queue_flow_control(struct channel_t *ch)
>  			ch->ch_bd->bd_ops->send_start_character(ch);
>  		}
>  		/* No FLOW */
> -		else {
> +		else
>  			/* Nothing needed. */
> -		}
>  	}
>  }
>
> @@ -1127,9 +1125,8 @@ void dgnc_wakeup_writes(struct channel_t *ch)
>  		 * the queue AND FIFO are both empty.
>  		 */
>  		if (ch->ch_pun.un_flags & UN_EMPTY) {
> -			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0)) {
> +			if ((qlen == 0) && (ch->ch_bd->bd_ops->get_uart_bytes_left(ch) == 0))
>  				ch->ch_pun.un_flags &= ~(UN_EMPTY);
> -			}
>  		}
>
>  		wake_up_interruptible(&ch->ch_pun.un_flags_wait);
> @@ -1363,9 +1360,8 @@ static int dgnc_block_til_ready(struct tty_struct *tty, struct file *file, struc
>  	uint	old_flags = 0;
>  	int	sleep_on_un_flags = 0;
>
> -	if (!tty || tty->magic != TTY_MAGIC || !file || !ch || ch->magic != DGNC_CHANNEL_MAGIC) {
> +	if (!tty || tty->magic != TTY_MAGIC || !file || !ch || ch->magic != DGNC_CHANNEL_MAGIC)
>  		return -ENXIO;
> -	}
>
>  	un = tty->driver_data;
>  	if (!un || un->magic != DGNC_UNIT_MAGIC)
> @@ -2815,9 +2811,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>
>  		DGNC_LOCK(ch->ch_lock, lock_flags);
>
> -		if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP)) {
> +		if (((cmd == TCSBRK) && (!arg)) || (cmd == TCSBRKP))
>  			ch->ch_bd->bd_ops->send_break(ch, 250);
> -		}
>
>  		DGNC_UNLOCK(ch->ch_lock, lock_flags);
>
> @@ -3122,11 +3117,8 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>  			events |= EV_TXB;
>  		if ((ch->ch_flags & CH_STOP) || (ch->ch_flags & CH_FORCED_STOP))
>  			events |= (EV_OPU | EV_OPS);
> -
> -		if ((ch->ch_flags & CH_STOPI) || (ch->ch_flags & CH_FORCED_STOPI)) {
> +		if ((ch->ch_flags & CH_STOPI) || (ch->ch_flags & CH_FORCED_STOPI))
>  			events |= (EV_IPU | EV_IPS);
> -		}
> -
>  		DGNC_UNLOCK(ch->ch_lock, lock_flags);
>  		rc = put_user(events, (unsigned int __user *) arg);
>  		return rc;
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424433039-6205-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

