X-GM-THRID: 6809468497850007552
X-Received: by 2002:a1c:1f14:: with SMTP id f20mr7538044wmf.61.1585469086049;
        Sun, 29 Mar 2020 01:04:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls3178867wmc.0.gmail; Sun, 29 Mar
 2020 01:04:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsouCwagvVHkEjIVsLrIOP1VIAS4sPu+lPx9peiFTXXQVe8Fzk5rdjJoBSCGRv/IngL+yIx
X-Received: by 2002:a1c:1bd2:: with SMTP id b201mr7686410wmb.181.1585469085012;
        Sun, 29 Mar 2020 01:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585469085; cv=none;
        d=google.com; s=arc-20160816;
        b=Hyd76I9XocrociXy/26LnuGrpG2gl7nEyjMhTgAHPw0FXms8pqLiWwtBUlmS9yWE/4
         UnLzs2pw/CwfeezFqT+BaPPevH10/D4VZ+bQKgEv8aph35yQxxI9PXA3EdiYW5Dj7tY7
         ZNq6HRkE1U3w9ux9TGuWAqEn6uZopxooKn4vfdBS4EXV0z/YHBlrXxnN6yoFL/dp2qwE
         isaj00qHUELrDFqn9uvfHFFHKHA1j/tqRZooZFGaDBTjmu8j9rwxBCA8xH13uLBx4Ztp
         R7GCJOZC7I4MbsVMq0Hvvx2MJnOyAkqyPwF/F6py3MIHhuNdkHQ0CfCMzopx1zXIV+Hy
         XgIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=apW5rSuNNDXWAi3zkdCzNB2vya3XNVG81xLV1mUPG10=;
        b=eH4OHPF+D9YgVT0ygYWbNKIK8TkD3M23Pb1x0Q+qXVEMW9N93I6XE/wjFBCJZXYKqx
         QQyb05WEWjC2Z9ItWiNXTotcuShVXfN2j0yT69LcAqyMHjH70klUiSV5loUDiWr9V33B
         and5nhd+2Slg7mTr2FVyBPE/aiEvL2JNpitLjUkpvF0BYj8uJEvgNsZ6j1nQcS2XK3SU
         3Foaa14QpXl6PtS+YaMTOvvNX1fyYpghZVz5iiVXff+FHtJh0Oix+qg7mkGec2S/Dw7b
         As4Y7thRDacV/U/q8G5c/d+TX61PjDCLZl+l78r/6wlRmW2rG4QFN5Erni3YjmL1SNrj
         mptA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a18si497419wra.0.2020.03.29.01.04.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 01:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,319,1580770800"; 
   d="scan'208";a="442801596"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2020 10:04:44 +0200
Date: Sun, 29 Mar 2020 10:04:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>, 
    Stefano Brivio <sbrivio@redhat.com>, 
    Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Quentin Deslandes <quentin.deslandes@itdev.co.uk>, 
    Colin Ian King <colin.king@canonical.com>, 
    Malcolm Priestley <tvboxspy@gmail.com>, 
    Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: vt6656: add error code handling to unused
 variable
In-Reply-To: <20200329033435.498485-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2003291003200.2990@hadrien>
References: <20200329033435.498485-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 28 Mar 2020, John B. Wyatt IV wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
>
> Issue reported by coccinelle (coccicheck).
>
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..9d23c3ec1e60 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  {
>  	int ret = 0;
>
> -	vnt_exit_deep_sleep(priv);
> +	ret = vnt_exit_deep_sleep(priv);
> +	if (ret)
> +		goto end;

Normally, if there is nothing to clean up, one can just say return ret.

>
> -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> +	if (ret)
> +		goto end;
>
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
> @@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private *priv)
>  	case RF_VT3226:
>  	case RF_VT3226D0:
>  	case RF_VT3342A0:
> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
>  		break;
>  	}
> +	if (ret)
> +		goto end;
>
> -	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> +	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> +	if (ret)
> +		goto end;

There is no need for the above if, because whether ret is nonzero or not,
you will just end up at the next line.

julia

>
> +end:
>  	return ret;
>  }
>
> --
> 2.25.1
>
>

