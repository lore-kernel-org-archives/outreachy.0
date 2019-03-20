X-GM-THRID: 6670460287922995200
X-Received: by 2002:a19:ee1a:: with SMTP id g26mr1604703lfb.8.1553088312745;
        Wed, 20 Mar 2019 06:25:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5926:: with SMTP id v6ls246350lfi.14.gmail; Wed, 20 Mar
 2019 06:25:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2u9qBb+iH5Tc9zZfVUkB/x6cw6c0PHEfkgPtQPTdRlXQr7bnhin3EZQPYjFhBq/j4dQ4A
X-Received: by 2002:a19:c50d:: with SMTP id w13mr1391632lfe.9.1553088311856;
        Wed, 20 Mar 2019 06:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553088311; cv=none;
        d=google.com; s=arc-20160816;
        b=0Q5C3LtW2dGQMZZIdFroZCgKdefVf0T+ryT2UUEhlDlIbwoMFsbDEFXhT0bXh6dt3d
         8EeYdEUKf166DW2o+IEx1QWq+bJAfpWIUMq1ftBgFrEu9b7x56j8/IpzK3s65Vi5Fx9E
         Kv/XlugjbwTGjtI2okzW4z55WH/ijsdfHuWcdPor/3/925S79HkZyg+qDjm2KqGsPThD
         oz+z6D9CFrPbO7m4GAeKjYBTkJZuZezAD8cCdETx7bO4fBPUZXlTcg1982iB3VCsDRRG
         ww1CLyhe4wsaqvhRFzu+/R5ut5zgspEWJDmlFLlFLOLKEDuJd4NDf583xTIFxSs+AI5/
         4BvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fy3SubNxVEfFhtOoPsBQzPhOOJIeY1iJkvgB+h3mr+o=;
        b=e+DR+fAyi4/X9WiDwhKugIbXYsExIa3zqzN0q7m8J7cdRJd+IHY85iyLpbJiw4MADr
         yePnzQAYG+xTEKjR9i+CwiR54REfbiU6EiWGN399HoqhopqQrBE7c0ZLG4bVudFR668T
         INOahMmYZZLHryEKnQ0RuiJExrVWgGCH//1TTkl0zoCzZgLi6vbUNTzGXqUEiAHu0ERH
         OkyvQJUNX4Krg7WoXN/9tzKqQT0/f0ntsZ9IiwMNVh1zMfgL45TcRBIxWdweDO+WoZ5U
         +m7e2fUvPfLm6+rZkDLlHKEijA8MC6GuVLSiLlKfJZfa9Ys90kpgq0eMWkvokKcIyoXw
         URxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l18si76678lje.5.2019.03.20.06.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:25:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="374907845"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 14:25:11 +0100
Date: Wed, 20 Mar 2019 14:25:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: alignment should
 match open parenthesis
In-Reply-To: <1553087541-4396-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.20.1903201423520.3627@hadrien>
References: <1553087541-4396-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, Payal Kshirsagar wrote:

> Aligning to open parenthesis

The log message should be in the imperatie, so Align rather than Aligning.
Also a sentence should have a period at the end.

> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 08746c8..d62f91f 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);

It's not really an advantage, because the final argument can't be moved.
It's better to keep the arguments lined up, as they were.

julia

>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> -						i2s_port, cportid,
> +							  i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_RX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> @@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> -						i2s_port, cportid,
> +							  i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_RX);
>  		if (ret) {
>  			dev_err_ratelimited(module->dev,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553087541-4396-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

