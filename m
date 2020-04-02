X-GM-THRID: 6811027108156932096
X-Received: by 2002:a5d:4c87:: with SMTP id z7mr2706410wrs.39.1585819867676;
        Thu, 02 Apr 2020 02:31:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls975294wmb.1.canary-gmail; Thu,
 02 Apr 2020 02:31:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypK7r3khLEgGLD5eb66gF0WcB1nPu7m1qgS+Y5zoxYTjkK1ihwzjm7OStxTZuqzH8oCYfr6E
X-Received: by 2002:a1c:2484:: with SMTP id k126mr2722508wmk.52.1585819866415;
        Thu, 02 Apr 2020 02:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585819866; cv=none;
        d=google.com; s=arc-20160816;
        b=AD8/NCaruz2fvFVQmiKSp0neYPRZsUZ0uD1+JxyXVUeqIaycfE9OMp+V8cbQEJfSOY
         HIjs2Q5DvovFyIAxcKBotOpbILm3j4zKeBjJnh/ia/opSxm2hFULtoLvdD3iebRM1Hbh
         4CFqKXUutjL2DWH+xmeaw5odWKpbEnPsNJ/Oqr8REPKTDMl7zEgKUo/flkPa8uJozvf/
         2XcFjSe0e1/VILbrjuwbUdyyMdW5RNc5neebe19cpF1myNGKTQw4fFgLnSms/YiEUZ5q
         rBfKgshwv3oG/8PZuvUZ2M2leHFUUVzE4+MTqudAD0Q70aOK8pb0EcP/UaJ1/7cQSaWh
         8NXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qqC07Jdp0DVBdwO5OQ/iZZn3H+PSe5ZWvKlbNsBxneI=;
        b=lDwkddJtBlyNQQxv4GGX18SuQpaQ0dlEKU+VSymuUQFvrjDjoQDezCzSurMYodkiIX
         a/Cy6fZ4j1NuLAIjt+xRJkScls50RlxcPu/U1UNpn/THnqpeuWVwkiI6cJD2J4yKr9l8
         5Blj9A7xd9IaCpt/uwe20xHh5LvxCOfH4/+QUETPTdp7/UuTmCJZTqLMMGRTVE/+CFku
         RXs8km9//agGWHKRaWNEy2oGBnz4IZnC7NRdX2Vz1B8HItZDkeyE3GkB2y1JCN/Ykz1r
         M+Y5ROUQdBM/+cE48DGj/3IlX3WsAVNHDb4JufLjqAMuhVr/y7YagMck0FQn5/YWBUEM
         vLmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q123si49920wme.2.2020.04.02.02.31.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,335,1580770800"; 
   d="scan'208";a="344685865"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 11:31:05 +0200
Date: Thu, 2 Apr 2020 11:31:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    =?ISO-8859-15?Q?Harold_Andr=E9?= <harold.andre@gmx.fr>, 
    YueHaibing <yuehaibing@huawei.com>, 
    "Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
    Nishka Dasgupta <nishka.dasgupta@yahoo.com>, 
    Stephen Boyd <swboyd@chromium.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Move blank line
 to fix warning
In-Reply-To: <20200402082309.839063-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2004021129490.3014@hadrien>
References: <20200402082309.839063-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Apr 2020, John B. Wyatt IV wrote:

> Move a blank line within a struct to fix/silence a style warning.
>
> Reported by checkpatch.
>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
> Note:
> ralink-gdma does not build; even with make allyesconfig.
> I did not find a menu option with make menuconfig.
>
>  drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..9c398048daac 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,9 +122,9 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +

Adding a blank line here is not correct. checkpatch is confused.  Perhaps
it lacks a pattern considering wolatile to indicate a type.

julia

>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
> -
>  	struct gdma_dmaengine_chan chan[];
>  };
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200402082309.839063-1-jbwyatt4%40gmail.com.
>

