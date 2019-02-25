X-GM-THRID: 6660892236702547968
X-Received: by 2002:a19:dc05:: with SMTP id t5mr1008631lfg.0.1551104838916;
        Mon, 25 Feb 2019 06:27:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4788:: with SMTP id u130ls298323lja.14.gmail; Mon, 25
 Feb 2019 06:27:18 -0800 (PST)
X-Google-Smtp-Source: AHgI3Iad3RqbT5hv78EP/M2XTdILkoRb0kGGquOHl1OFkaRIzp/uIZFRzJLKEd+l8ipqrwjQF+fj
X-Received: by 2002:a2e:8593:: with SMTP id b19mr926257lji.5.1551104838068;
        Mon, 25 Feb 2019 06:27:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551104838; cv=none;
        d=google.com; s=arc-20160816;
        b=g256eufFF5uyF7uqI8/Hm0AV2zAPvtYE/Pm7yVfOrBZUbizYOoTm+zTYTVPuqQVWDz
         2r3a7lhkDEQ1RQfs193qLmCflj/Y5skExHQFbveUlqD7P2Y/4vRGr+rRRBsjPcYbIVFw
         nN6uplXzyjmQXRlxAsKfNJuvIeK9+uNAMvL0+OW+vUS9AhNCJyW2hOwDVDaKX4w9vcVp
         SQndFLYfTVmbUxyY7nC/rMHGph+7ukjmzKH1u+yXqSC6hRCmsHgojGh41rHzUtZpFGvb
         lrw1u6HgNxrtbkAIEygBHVGlw3zgICCKrTv8ztXP+lDCm5XYk9QFx98dOpTbd76+U2k6
         S8UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PefyMxiecAJ8+Cjnl/M5ktMf2Pf6KBY94nKNd1wJjYc=;
        b=U/r24LD8IQU2A3yGFoQ9ImItAW/Zf9fZcUYhdNTpjaOTqBifUeoX4h+CUagNVPluhj
         Z2rN7eg/s1e472JXV/frG7DXEQ02XpOiZDatothfSueoQRwAyu1pz0QSLkuDT5pND1Gh
         gGkhuTXugbVGg4QQtJhtmHMkwpn9A7t8g9LtiQEyPzIIsMgEdxxXdWoK0rPZBUJHZtmC
         Qh6wYvQ3+EHPfrwePihjDAZQLz5rPnaWfAL0WSDZGHzhL41AoZ9oWNMkEvHUGx6lWXqT
         mB4OeyU8xaujGPL62bUSvaiBObbIJFKekQxVq8kLMMBNfDqsQ4q2qV5DLJe3EVu1+AnF
         UqFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k13si295521lja.5.2019.02.25.06.27.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:27:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,411,1544482800"; 
   d="scan'208";a="297258153"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 15:27:16 +0100
Date: Mon, 25 Feb 2019 15:27:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: fwserial: Add blank line
 after declarations
In-Reply-To: <20190225142307.7634-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.20.1902251526120.3474@hadrien>
References: <20190225142307.7634-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Bhanusree Pola wrote:

> A blank line is required after declarations and is added.
> Issue found using checkpatch.pl
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>
> v2:
>    Commit log modified to be imperative.

Actually, it's not imperative at all.   Now it's passive - is added,
etc.  It should be something like "Add a blank line after...".

julia

>
>  drivers/staging/fwserial/fwserial.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> index 3e416f5bbcba..a1b90ea7fcb8 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -1213,6 +1213,7 @@ static int get_serial_info(struct tty_struct *tty,
>  			   struct serial_struct *ss)
>  {
>  	struct fwtty_port *port = tty->driver_data;
> +
>  	mutex_lock(&port->port.mutex);
>  	ss->type =  PORT_UNKNOWN;
>  	ss->line =  port->port.tty->index;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225142307.7634-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

