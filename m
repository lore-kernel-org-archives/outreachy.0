X-GM-THRID: 6668997090845130752
X-Received: by 2002:a1c:f514:: with SMTP id t20mr516615wmh.25.1552748419500;
        Sat, 16 Mar 2019 08:00:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9022:: with SMTP id h31ls2341067wrh.9.gmail; Sat, 16 Mar
 2019 08:00:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJRmyjUfRCni/aWcAibH8W7pVNoVKdckNQi4ARDLJs5pDaGw75BD/e03Kg4eEIpTKiP2e3
X-Received: by 2002:adf:eb48:: with SMTP id u8mr353022wrn.0.1552748418488;
        Sat, 16 Mar 2019 08:00:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552748418; cv=none;
        d=google.com; s=arc-20160816;
        b=ffK/+G2NcgwC+xBocF/cd3s18PbtJbAoEQMCZyOEqvHPYsCNdF2z2MDiltFn1BMzXj
         P4jNnMsyiQAESoAXeM2+gaDuY42EkY/hVssxt3xoF9hd7Io3lItVD5aiUxGwY9XDMd1O
         Rx1FidwJUiZm+fiHrR/STREs8N1XvRCVU8QnwE0pr0Bl75qOwl9utfF8TillZTKhhKKC
         pBHk/GlW74QmcUXkQr03ymdbQn+wpD0uqaGBX+XD7XgwYpn/d6687nSefrx/inicEFnQ
         v6S6xYsloIn4W7wSzepnGDC1VIgmUYo2Xs6RJXX/dHkLJGEAhB7qQwq+Z1Hj/W1yLfzh
         FhdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0myJXyKMZdb7GZkPjT1jK0QEUVlsVmZzL+6pwoRgoCc=;
        b=cgBLlHm6eS7QxLNLLVXHUeeSmMMgIo8aBj5VGnLooRvKM/5cmOmK/VetYyNga4VHXl
         1e0gdpQPDXoH7zVmT9o//Ki2VNSg6hCUmUMJMmmi3E+tGgFJFcyBpRwbitRMQjxd85Xn
         vs7dyPB//KgHceXMlVbaOm0MRj9oD9ryERsa1zRJyFF/wzU0o+NPt0ezLcFTttiZqK55
         tQOS5Uq5+nvlVHlB8wmrA8tQPy5rH/bCcjdj03WyZC5LJwbkieDXk3Wf30ZDExRcbnWl
         oOWBAZPGH4bTd6yAet9WxgqiXzP/iyvrOCldLeambLl2pDz+h9ka4zIWAS2yS1tcPzPS
         9SVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 60si84880wra.3.2019.03.16.08.00.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:00:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299578485"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 16:00:17 +0100
Date: Sat, 16 Mar 2019 16:00:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: definitions with
 comments
In-Reply-To: <1552746866-11000-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161559400.2487@hadrien>
References: <1552746866-11000-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Payal Kshirsagar wrote:

> Code can be better understand by comments. Comments given to definition
> of mutex and spinlock_t
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/connection.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
> index 5ca3bef..aaee172 100644
> --- a/drivers/staging/greybus/connection.h
> +++ b/drivers/staging/greybus/connection.h
> @@ -46,8 +46,8 @@ struct gb_connection {
>  	gb_request_handler_t		handler;
>  	unsigned long			flags;
>
> -	struct mutex			mutex;
> -	spinlock_t			lock;
> +	struct mutex			mutex; /* a mutex object */
> +	spinlock_t			lock;  /* lock to perform a busy wait */

These comments are not helpful to someone reading the code.  The idea is
to figure out what data these locks are actually protecting.

julia

>  	enum gb_connection_state	state;
>  	struct list_head		operations;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552746866-11000-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

