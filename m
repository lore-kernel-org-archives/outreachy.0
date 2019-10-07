X-GM-THRID: 6744681878871080960
X-Received: by 2002:a19:8c14:: with SMTP id o20mr15459191lfd.158.1570427246500;
        Sun, 06 Oct 2019 22:47:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d9a:: with SMTP id c26ls1969595ljj.9.gmail; Sun, 06 Oct
 2019 22:47:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNJiYix+Isx4JB1FpkzXU9m28G2YjXRFPy3o21BVWLbiAR1vMgmZMRfyMYXDIDZft4U0d4
X-Received: by 2002:a2e:530d:: with SMTP id h13mr17108471ljb.109.1570427245304;
        Sun, 06 Oct 2019 22:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570427245; cv=none;
        d=google.com; s=arc-20160816;
        b=hA3VeYn09J/6Dd6qGC3i9jBAMNDo2IPsINdv7Qna7hxBjYAJgj8IRhdvHQlol/qrtV
         1sZ/rf3g4bNSG6pLNPEh1JPeWTIVWv9P5/BxcutFl0NrdImG9ezNdIWZTIW8khtUw//h
         A02m0pukpN2+4DpOF6SmS+bveioIxe4knhXXYPIx1h+FkedLv0pHAhcAyegv9mL+ThVr
         eE/WPvjchn2LlG9gMOlCacValflvHrQYErrxB/muuEahxoJNrETmoMbxPNjdFLUIv69+
         R4O1wMRoe2SPOTK2KtN3aV81wzITJkJ9u6QPSJQZgoDqMNVUZuq6CuB55ehE8y5Iabj+
         s8mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=29hsjsjotkz6SPzetdVjZtzuDlk/YhT3p+CRK9Czepg=;
        b=aJKL3yA1+NmIVSBTBXRuR/JpOdxjkl+QNLdcb8IhhF08sfSqGcMNTfSUtFeti2gb89
         FndL3AyZFZsO8DTNODOEh9ucHoX6sY/KswE+erZRX1HcvG0mmhbtbBQtLhh5ShpWOQmE
         6djFYUoOu8ivvle403625cdNQnImfDNy0+GLgKZ7uY2E4EgmM+/j0WeX7obvxyRU1u5/
         sCd688V54P9n/oMcpkG0K5WzN5BsnPm9256YGNarYtg/Ff3yL01kd4WypjHySpRmwYKU
         +cXFb6Erhuqo0nVSg2c3Xz/QRXdFYEBtkqjl1AbSftIS2ShcBieE7L/U2yjTubHP31yD
         ApUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z9si1331004ljj.4.2019.10.06.22.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 22:47:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; 
   d="scan'208";a="404970271"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 07:47:24 +0200
Date: Mon, 7 Oct 2019 07:47:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 braces
In-Reply-To: <20191006230327.GA4168@gmail.com>
Message-ID: <alpine.DEB.2.21.1910070746030.2753@hadrien>
References: <20191006230327.GA4168@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Javier F. Arias wrote:

> Remove braces that are not necessary for any arm of this statement.
> Issue found by checkpatch.

It may have been that the DBG call could disappear in some configuration,
in which case the braces would have been necessary.  But even when
debugging is not wanted, the DBG... macro generates a do while, so the
braces are indeed not needed.

julia

>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 3956c43a6468..bda25e13e935 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -3063,9 +3063,8 @@ void rtw_ack_tx_done(struct xmit_priv *pxmitpriv, int status)
>  {
>  	struct submit_ctx *pack_tx_ops = &pxmitpriv->ack_tx_ops;
>
> -	if (pxmitpriv->ack_tx) {
> +	if (pxmitpriv->ack_tx)
>  		rtw_sctx_done_err(&pack_tx_ops, status);
> -	} else {
> +	else
>  		DBG_871X("%s ack_tx not set\n", __func__);
> -	}
>  }
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191006230327.GA4168%40gmail.com.
>

