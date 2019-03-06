X-GM-THRID: 6665329083117731840
X-Received: by 2002:ac2:4292:: with SMTP id m18mr533028lfh.3.1551893093640;
        Wed, 06 Mar 2019 09:24:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls336600ljb.0.gmail; Wed, 06 Mar
 2019 09:24:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqzLWw9XRMl5fJp1S4tqhAsLXENB0jO7P7FuqPy0EGqD8FHsOzO0mYHc+ODa2uvUgLO0OKo2
X-Received: by 2002:a2e:290:: with SMTP id y16mr374592lje.20.1551893092843;
        Wed, 06 Mar 2019 09:24:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551893092; cv=none;
        d=google.com; s=arc-20160816;
        b=M4eI02NWZimBLBz/6FUD1GWUYNdG6e232RIL7sl2Yb9M2oribT/2S2QF0NgTNVZxqw
         m05OQGA0Vw9WaDgEBujvP9BPGLLcQQTqDDIR5QjG7OFqNkXs/tSiU+Wu6wbM5eyBVOUa
         /Rrb5pXW4/EFNg9wDQiEseTvSpTsC367ksKapF+Q2wauFgs5qoGqu2DMoUkiJycGf2Aw
         8TODFP97dLzNwz9tjvPlrMrtBtvplP//XmrwM+/0kI+0v3OlzEetjq1m9eh/dh8ejAJj
         do1ABWqXg6xGgVBwAp6xa74nkOblq7OQOaoxTv5+Cal6jvpGZyqCo8Hlmjjog8LItsps
         +CWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PIc54wB5YLgFWk2wuOPQGbR4khoVskfDXKhz1RxcE38=;
        b=VPQaRngBTaDfsvzSOXX5LXEyGtwMxe8KpmOhaG16T5iKlj7BRwDeBn2hIu8s4Y4pRA
         nDTDPY0JKDuWPw5JgwmPsgjJteteyZRO0uQgAqNih4WbzxJMteLsZ5GO8OmepddhUm5t
         43tqAiMyduGm0jTBRmMDR//pj5snk35GKkoL+3obKiTUqnX6TA0LW0z4PzG7Bh8a6maC
         Y186JE1IM7Gu8N1cBosnmEbW+1EKGxsWv1eHkybpFeZ6KZku1wN4JFYlRIkTiV03zixq
         Jku5bGxCu6aLrvGEkJjUsbWMYCD5Y7Zmvc3Plbo5a/+VhPPYthySV7jLInBt064nmADg
         VKAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n21si100418lfl.2.2019.03.06.09.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 09:24:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,448,1544482800"; 
   d="scan'208";a="372231200"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 18:24:52 +0100
Date: Wed, 6 Mar 2019 18:24:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Modify coding
 style alignments.
In-Reply-To: <20190306172049.GA14665@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.20.1903061824140.7484@hadrien>
References: <20190306172049.GA14665@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> Fix coding style issues, detected by checkpatch.pl "CHECK:
> Alignment should match open parenthesis"
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/netlogic/xlr_net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> index 8554fcf..dc487d7 100644
> --- a/drivers/staging/netlogic/xlr_net.c
> +++ b/drivers/staging/netlogic/xlr_net.c
> @@ -358,7 +358,7 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
>  			    stats->rx_missed_errors);
>
>  	stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
> -			TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
> +						 TX_EXCESSIVE_COLLISION_PACKET_COUNTER);

The code was better before, becuse it didn't go over 80 characters.

julia

>  	stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
>  						 TX_DROP_FRAME_COUNTER);
>  	stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306172049.GA14665%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

