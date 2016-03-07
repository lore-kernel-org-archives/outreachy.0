X-GM-THRID: 6258964255021727744
X-Received: by 10.112.138.98 with SMTP id qp2mr1192111lbb.4.1457309048850;
        Sun, 06 Mar 2016 16:04:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.67 with SMTP id o64ls259095lfo.46.gmail; Sun, 06 Mar
 2016 16:04:08 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr1156140lbb.20.1457309048200;
        Sun, 06 Mar 2016 16:04:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c140si368694wmh.1.2016.03.06.16.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 16:04:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,548,1449529200"; 
   d="scan'208";a="206250532"
Received: from 155.212.120.153.west.global.crust-r.net (HELO hadrien.local) ([153.120.212.155])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Mar 2016 01:04:06 +0100
Date: Mon, 7 Mar 2016 09:04:02 +0900 (JST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: selftest: Use
 list_first_entry
In-Reply-To: <1457278655-16379-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1603070903300.2561@hadrien>
References: <1457278655-16379-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII


On Sun, 6 Mar 2016, Bhumika Goyal wrote:

> This patch replaces list_entry with list_first_entry as it makes the
> code more clear.

Shouldn't these be using list_for_each_entry_safe?

julia

> Done using coccinelle:
>
> @@
> expression e;
> @@
> (
> - list_entry(e->next,
> + list_first_entry(e,
>   ...)
> |
> - list_entry(e->prev,
> + list_last_entry(e,
>   ...)
> )
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/rpc.c   | 4 ++--
>  drivers/staging/lustre/lnet/selftest/timer.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
> index 129fa02..842ee0b 100644
> --- a/drivers/staging/lustre/lnet/selftest/rpc.c
> +++ b/drivers/staging/lustre/lnet/selftest/rpc.c
> @@ -212,8 +212,8 @@ srpc_service_fini(struct srpc_service *svc)
>  				break;
>
>  			while (!list_empty(q)) {
> -				buf = list_entry(q->next, struct srpc_buffer,
> -						 buf_list);
> +				buf = list_first_entry(q, struct srpc_buffer,
> +						       buf_list);
>  				list_del(&buf->buf_list);
>  				LIBCFS_FREE(buf, sizeof(*buf));
>  			}
> diff --git a/drivers/staging/lustre/lnet/selftest/timer.c b/drivers/staging/lustre/lnet/selftest/timer.c
> index f9f37ba..acfa226 100644
> --- a/drivers/staging/lustre/lnet/selftest/timer.c
> +++ b/drivers/staging/lustre/lnet/selftest/timer.c
> @@ -128,7 +128,7 @@ stt_expire_list(struct list_head *slot, time64_t now)
>  	struct stt_timer *timer;
>
>  	while (!list_empty(slot)) {
> -		timer = list_entry(slot->next, struct stt_timer, stt_list);
> +		timer = list_first_entry(slot, struct stt_timer, stt_list);
>
>  		if (timer->stt_expires > now)
>  			break;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1457278655-16379-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

