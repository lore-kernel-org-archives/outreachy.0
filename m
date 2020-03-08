X-GM-THRID: 6801910810279936000
X-Received: by 2002:a17:906:a3c8:: with SMTP id ca8mr12500948ejb.342.1583696470857;
        Sun, 08 Mar 2020 12:41:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f14a:: with SMTP id z10ls5798626edl.1.gmail; Sun, 08 Mar
 2020 12:41:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vumc4Pmd1HL+Vmw6JElwDzNIb5SaMUF7J6sD4THMAcWFWmyFZCX1tXRZG94YfyyuZ0Ww/rw
X-Received: by 2002:aa7:cc8f:: with SMTP id p15mr14339222edt.41.1583696469353;
        Sun, 08 Mar 2020 12:41:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583696469; cv=none;
        d=google.com; s=arc-20160816;
        b=D29hqfUSnfuqDli93BZ2IoU7MkNJFZLazTK28OkUnfsLepG7k17o+6xvP6vi9a29B9
         ceNFFYIOWHVfn2NaBTdB8IefdcF4Coa/S6dHI/eNRQpYzwRHKOECyNxYIH5pGcuY2ka9
         81XtWtSr0Of59+53two2BUpWao2Z/FErdRxlTsOnEgsWL/PEU862gVeN+F16hqFo4MZZ
         dlFxCAj9CvxP86mP0iWiwEZFQhNrLRWcfhtDU0yQgkYJQULf15dDn91agbRqdT8TYUnU
         J8b7E5TCaNGrrSFiETmtdXTnOWoeGxKD00sp0fau+A4Wn3akSExFKoBhwN/gbjs0imHz
         httw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7u/SCo+1XYM0fcbeZOICpeVj96cTn5uXYNmIkN9Eh8Y=;
        b=jtdhHptoou1/8+qeYh/lwhH4bIlaqHhYVXBJlzhXyc+y+MoV9U/NsnzmmBPLby8MtE
         +VHWLAtGBILKASG7jN7DQpxngqKtSa30moyDh9UXzX4ONiXQIL+DK4Po2+YYx4niC+wO
         zsetWgDvq5OyzuxRCtKS0d9LbotaKSNyaPI7NsykwNLQN3BU8fOG72MeYHxskY2X0ZRC
         IgQFnlmDyYMpoFTNizPXqMXjjHIZOqlSuf8S9J+jGLxbbGQePJZBPd69nywAv1kc7Wr8
         IWL7v85NHFhuyKJFHNrNR9bsfVvpNRsS2Bc9I+l5wA5uTCfJswubatG5JU4xBY2SSZzh
         VPmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cw13si485337edb.2.2020.03.08.12.41.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:41:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="439382529"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 20:41:09 +0100
Date: Sun, 8 Mar 2020 20:41:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: remove line over 80
 characters
In-Reply-To: <20200308184743.5639-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003082040290.2400@hadrien>
References: <20200308184743.5639-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> Remove line over 80 characters.
>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/wfx/data_tx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 20f4740734f2..8b0c52392319 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -224,7 +224,8 @@ static int wfx_tx_policy_upload(struct wfx_vif *wvif)
>  		spin_lock_bh(&wvif->tx_policy_cache.lock);
>  		for (i = 0; i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES; ++i)
>  			if (!policies[i].uploaded &&
> -			    memzcmp(policies[i].rates, sizeof(policies[i].rates)))
> +			    memzcmp(policies[i].rates,
> +			    sizeof(policies[i].rates)))

The sizeof call is the second argument to memzcmp, so it should be
indented more to reflect that.

julia

>  				break;
>  		if (i < HIF_MIB_NUM_TX_RATE_RETRY_POLICIES) {
>  			policies[i].uploaded = 1;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200308184743.5639-1-payalskshirsagar1234%40gmail.com.
>

