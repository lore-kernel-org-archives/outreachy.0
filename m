X-GM-THRID: 6670497613364592640
X-Received: by 2002:a2e:3311:: with SMTP id d17mr9494253ljc.165.1553411275183;
        Sun, 24 Mar 2019 00:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:98f:: with SMTP id 137ls315217ljj.9.gmail; Sun, 24 Mar
 2019 00:07:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwu5KAauTpjqAIT+jlMIPiDACs51XjdYd7xgPoddHxmF8r63xxtBnHXYSlSIlG2t2XI8B/E
X-Received: by 2002:a2e:8582:: with SMTP id b2mr9478273lji.24.1553411274392;
        Sun, 24 Mar 2019 00:07:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553411274; cv=none;
        d=google.com; s=arc-20160816;
        b=LQlgvA4XhCkRtAiSK3wVHzDlZgQBHCH44EYtPZ32ak2V9AddJMYS8QNTdzP242FFyb
         5okB2EmpwxD9yg3BQxg6mEE1rcn8+7nkakNAg85BckhLJcihhj4C5rnPbLqYUklzkQLf
         Oji177Bs2/xjkzoPycH3Sif5xEiyPT0QPG7XoqEbm13K6GdZlMxIvVjOPdvd70zzyfn2
         oBEL0TgAxY0n0yA6AJZeXXaKDzcmIIkc0aSDJQ8L7qtkCg3Xg1/+xuLZnoyzh+pGT4zd
         D9h9S6iCLT+JwLraYn4okoi0DnsxdigfETlhZ9nLWj8He/2C87mn6yYWjlK/MUzbK+GO
         N+WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SUKUirmDnc5CsQ6ii40ftPnpIvhNDhktpOwrchJYNDE=;
        b=nqFOmtC3Zb1NXEP7VI3RF+VExxLMJf1gPb4IH86eh5vgngctC3y7Ght+rV07qQWWAK
         W5uXbc4aitba7XDAJBt1D0Uyyc1MlU9pXAlyi/JWrNzGTfQRAsco2AVeGDOXbgD+A0dJ
         rGJdHW2vZaMPzFCkjeFAo8hQhlXv2OsKm2c1YtqoELyl7ZqPOroD0bmRy0IFnFxQ1qOt
         /OlbQD2BC04dLnA4i/eBRHnHXFyYSs3OWwQTx4dkkuigyOwMfmd7vcjsD7ptlgXJf6a9
         1ynTN5Mdjc+YySj+Y74SvGpbO25Q80ujR9pbx3EpttQRx7PGZ+5EMawGZj8XU5MzXEyY
         tgRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1si774622lfe.1.2019.03.24.00.07.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 00:07:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300511344"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 08:07:53 +0100
Date: Sun, 24 Mar 2019 08:07:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: rtw_recv.c:
 Modify return type suggested by Coccinelle.
In-Reply-To: <20190324065855.7685-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240807200.2526@hadrien>
References: <20190324065855.7685-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Sanjana Sanikommu wrote:

> The last two lines in the function could
> be compressed into one. Avoid usage of local variable.

The commit message is misleading because at least in the first case, what
is changed is not the last two lines of a function.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> Test build the patch
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 90eb1a025051..606a9f51508a 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -1859,8 +1859,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
>  			/*  including perform A-MPDU Rx Ordering Buffer Control */
>  			if ((!padapter->bDriverStopped) &&
>  			    (!padapter->bSurpriseRemoved)) {
> -				retval = _FAIL;
> -				return retval;
> +				return _FAIL;
>  			}
>  		}
>  	} else { /* B/G mode */
> @@ -1879,8 +1878,7 @@ static int process_recv_indicatepkts(struct adapter *padapter,
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("@@@@ %s- recv_func free_indicatepkt\n", __func__));
>
>  			RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("recv_func:bDriverStopped(%d) OR bSurpriseRemoved(%d)", padapter->bDriverStopped, padapter->bSurpriseRemoved));
> -			retval = _FAIL;
> -			return retval;
> +			return _FAIL;
>  		}
>  	}
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190324065855.7685-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

