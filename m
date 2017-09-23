X-GM-THRID: 6469049838689320960
X-Received: by 10.28.134.137 with SMTP id i131mr183648wmd.29.1506197045793;
        Sat, 23 Sep 2017 13:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls609640wmg.4.canary-gmail; Sat, 23
 Sep 2017 13:04:05 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAskisCVX/gp5WPRGJd4p4kp4v4I0A/hcCBqrCqk3P58mQU4ZXP45F2m3S6BJoz98mRdU6Z
X-Received: by 10.28.15.72 with SMTP id 69mr164875wmp.3.1506197045142;
        Sat, 23 Sep 2017 13:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506197045; cv=none;
        d=google.com; s=arc-20160816;
        b=Ndvnvjw14SDPPM/LinOFwreP+pytaN0jURjfGJ5KiLIsDjCrYmYYuByvT354LOjnE4
         0Fs3/Rp5z5l/6QqrvSLHQCme7454RYBaZ/ai8NaWCgx6tlQne7zKzR9SaaAXKtjlxySC
         V4XkhtRWTCqdr1zy5PR4c4wS8ZLBiU6nF+ywlMpEoK2I2ZAvvkw7gBHkZQ9XDjQgeVRE
         lzLMsh4IsczyOAatPKidptDIbs5y6yfvCkHp10Ul7IYAQZHj7GTAnf+tKQu0M2lnUIt6
         VFMLvGUpANvmMPltJlh6pfqh5BF3XtjJ/NxAHC988IPi7Rmffp6fMVbe938kd3ZV3RuE
         iMPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ctVoW+Ix2KTxuZoLiy5cr9hBwMcxgcpedIHnpvoMcdQ=;
        b=S52VQ7YIhyq23tK9hUgG26/LyqiyPvL4L3zwujHeH25/zppY0ut21QzPlH2vKHfcWz
         VGUNRBGavTH8SAjKe1bc9xzPMXG54gl+STxW9o7kE++GuvrBwkDgBGFM79fSEe8iTA3w
         6cx/vWgbQ5Bp+TaU+J2puHbUsG1QmsSEmTwI2EfpnxI5cjYSizWQ19qi1eJbKJCjFYoq
         0v5rTHuKBWO9x3bl2g899jWjD4VXl4pJPsN06f/uxEcc+s7QBlnaIeCSbqu3oj9qvWw5
         2PmzahJ0VyDo0TGKvuf4qPNcmBq/JRVU0Bfgn+CFcFl2EPQZLVf9c3xBz7q8E8w0+YDK
         kd+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si200558wma.1.2017.09.23.13.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 13:04:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,430,1500933600"; 
   d="scan'208";a="292424307"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Sep 2017 22:04:04 +0200
Date: Sat, 23 Sep 2017 22:04:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: wilc1000: Blank lines
 aren't necessary before a close brace '}'
In-Reply-To: <366b2ad7e1bbc454659e73fda48ec695826ad673.1506192874.git.keerthigd4990@gmail.com>
Message-ID: <alpine.DEB.2.20.1709232203540.5987@hadrien>
References: <cover.1506192874.git.keerthigd4990@gmail.com> <366b2ad7e1bbc454659e73fda48ec695826ad673.1506192874.git.keerthigd4990@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Keerthi Reddy wrote:

> Before closing the brace, the blank line is not needed. That blank
> line has not meaning here. so remove it.
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 36dc2a0..e7882b2 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1111,7 +1111,6 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
>  		g_key_gtk_params.key = NULL;
>  		kfree(g_key_gtk_params.seq);
>  		g_key_gtk_params.seq = NULL;
> -
>  	}
>
>  	if (key_index >= 0 && key_index <= 3) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/366b2ad7e1bbc454659e73fda48ec695826ad673.1506192874.git.keerthigd4990%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

