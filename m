X-GM-THRID: 6670463759889203200
X-Received: by 2002:a2e:4784:: with SMTP id u126mr1772876lja.22.1553089272051;
        Wed, 20 Mar 2019 06:41:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls311605lje.10.gmail; Wed, 20 Mar
 2019 06:41:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKFc7qCBSipmarBIP4oPKPEpvyXYHVroZXb9VWTK2HxY8noSgIMv5tUIKV3HAsT5bpZZ8X
X-Received: by 2002:a2e:9ec6:: with SMTP id h6mr1463557ljk.23.1553089271087;
        Wed, 20 Mar 2019 06:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553089271; cv=none;
        d=google.com; s=arc-20160816;
        b=pZMIkP+XTUZEBPB3HEx3lie79TRH5UtWfbRzbB/sIcvHwzZjo0VPnqoxoqwSkg7Vb5
         5JjRKv+PX8IINXco+4jY/wKlrHN/73iTvT540Z7r9Odgo2YGDkRjHWklQnN2T1+L9cJe
         /hZrstwU0azrdYIvIbYC+tzccEC4YuO5R1/ZyZAS0LTqULhiHhFg7XAgomF4YfhdZyFC
         ws52YYVWzOHbS7I+uwGmrCuEcueCpYWK2YyXrcdDsLlMjpiYwSEXK/qGoOe3yz+5gqOc
         ybJ/DB5AwSfheiuh5EmmLC16pctrtriBntyKMdSxMUoAFu9FZj1x3UhDlCtrNtFulkim
         sqHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9wnzLx8SspffZiWBgkTAzxyN6SLpgSNguBHv4w6/2DY=;
        b=ktZUjuv93odCP8gQWY2QoIy9Tgp7LXgKvwNwy+vksPfhYy8GZ0vjiD08b5kqEC/o4X
         bC/9KFhE/SXhT1//t/vhQyCHLqR0htobqg2tGDIbBlRw//Od7UeL62BHpcjMzQQJEKvw
         pepgz/SqcmQbxgnXzOH4uB8esjCh6Xz/P9N4jJ3g88qXLaJawwy40inwSTCyuQIczLYO
         PleLduDP7XLE9eabr/8pMh/E8O4MJWUDLLNjy/yJEMeu2FNzv/3ZuUieOLMsLH06z3Oj
         MrID1Gb97zLlS9sPYXGzmX7PP2dmf0WrDe2B6yDp/jm/0xnwF0pFXzZpNmDfNUvx9+SD
         SlGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si85650lfl.0.2019.03.20.06.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:41:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="374910819"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 14:41:10 +0100
Date: Wed, 20 Mar 2019 14:41:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: align to open
 parenthesis
In-Reply-To: <1553088353-5599-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.20.1903201439330.3627@hadrien>
References: <1553088353-5599-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, Payal Kshirsagar wrote:

> Aligning to open parenthesis
> In file drivers/staging/greybus/arche-platform.c
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index 307ff51..6bdb5d9 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -170,7 +170,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>  		 */
>  		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
>  			if (time_before(jiffies,
> -				arche_pdata->wake_detect_start +
> +					arche_pdata->wake_detect_start +
>  				msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {

You can't have the second argument of + to the left of th first argument
of +.  Pease look more carefully at the code you ar producing by these
changes and see if you really think that the resulting code looks better.

julia



>  				arche_platform_set_wake_detect_state(arche_pdata
>  							    , WD_STATE_IDLE);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553088353-5599-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

