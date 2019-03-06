X-GM-THRID: 6665254645143699456
X-Received: by 2002:aa7:c151:: with SMTP id r17mr4141675edp.9.1551876033436;
        Wed, 06 Mar 2019 04:40:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8863:: with SMTP id c32ls447598edc.2.gmail; Wed, 06 Mar
 2019 04:40:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqy1wqTSvYObe4c80itvs2pc1a5MqP3Yi2L2nBG7pPc2RweBPGKL4KmmDfssX5xon5E5TXrD
X-Received: by 2002:a50:8ed8:: with SMTP id x24mr4122286edx.10.1551876032775;
        Wed, 06 Mar 2019 04:40:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551876032; cv=none;
        d=google.com; s=arc-20160816;
        b=0ky/zIQGuRqTaeIm5WMyjG4jV9B5YIl7EFyxD3B/wieGaZyrmAyZG/uS+uKJwLSCJR
         4YuhEagVhO+O3aezUmFVQqw+i5f4fKZh4nKGcnqw58btSOTses3sxHlYU8vtJjnFXViH
         SJwK/yUwfSFiDHOUnY/lqp/IkzMrcSBFlN0CD2ZXUiD9iRRFMJH0PEEAaj37YnKI3H8c
         d+E2j6YNWgFDv8IibGZSf8VPUxO+nFC4bnUm1qZsCha4gTHC/Sj6EHX/gmJsphagzP9X
         NyU5/STxXNE8KQocrZfYNnIZqdTJAcMPKmRqZD5f7FnQQnl3FCR3R/m4U4v9KI84dq2T
         HeOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=a7RncBBu57ixDSLbDMXdE1W2/Kdb6Ii94TDsgLZLqjw=;
        b=Uu9hG6+bj5FArRL8iKpPFDIGUC43ym5Xi67oIeLxBjKF/CqIuog4Tw9ZFzOdyPmuWx
         2aZjts8YFOZy5d4mxmGGaoFugx5mZ1mNRnr/gFKtIk5kdNIUlq3ZD6iJ5FH7dhJNP0UX
         MtNppI3ZsIWpgy1hv6K4q6iGbtSzHyTTxUU1k3R222Kb/dAZAj49esNScoFEmHgQy3/Z
         4fym6wYfnh4/1nJMYbSy6dyz0wBigjQv3SZsenmc2/kW5TyKhwxmZ2Q7e+T53Rh4iXsr
         PAjJic4ZY9rCMVWqkyJ/6ixgFYWhhfdA9iJZBBHqBTrKcqmz6n9i3MbqkXsER7Aj7KfS
         IAoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a7si78479edb.1.2019.03.06.04.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:40:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,447,1544482800"; 
   d="scan'208";a="372180269"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 13:40:32 +0100
Date: Wed, 6 Mar 2019 13:40:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Spaces around
 operator
In-Reply-To: <1551875525-501-1-git-send-email-daniela.mormocea@gmail.com>
Message-ID: <alpine.DEB.2.20.1903061339590.25408@hadrien>
References: <1551875525-501-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 6 Mar 2019, Daniela Mormocea wrote:

> Add spaces around bitwise AND operator
>
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/speakup/speakup_decpc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> index 459ee0c..798c42d 100644
> --- a/drivers/staging/speakup/speakup_decpc.c
> +++ b/drivers/staging/speakup/speakup_decpc.c
> @@ -263,7 +263,7 @@ static int dt_wait_dma(void)
>  	if (!dt_waitbit(STAT_dma_ready))
>  		return 0;
>  	while (--timeout > 0) {
> -		if ((dt_getstatus()&STAT_dma_state) == state)
> +		if ((dt_getstatus() & STAT_dma_state) == state)
>  			return 1;
>  		udelay(50);
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551875525-501-1-git-send-email-daniela.mormocea%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

