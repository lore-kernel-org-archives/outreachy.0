X-GM-THRID: 6526584081044471808
X-Received: by 10.223.145.11 with SMTP id j11mr668967wrj.6.1519589421687;
        Sun, 25 Feb 2018 12:10:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.20.17 with SMTP id 17ls1240905wmu.8.canary-gmail; Sun, 25
 Feb 2018 12:10:19 -0800 (PST)
X-Google-Smtp-Source: AG47ELujsnfK5MSAJSMsusQvvO0IQ/79ma5jp5bgwvTpS9iIObUpD4UOrDmen3rroK8xk5vZwvdW
X-Received: by 10.28.172.4 with SMTP id v4mr892470wme.2.1519589419757;
        Sun, 25 Feb 2018 12:10:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519589419; cv=none;
        d=google.com; s=arc-20160816;
        b=wZm431b+kVaTfv+AGplppOfeZq/ZP2lX1cFIYcY/O+6zaAd9AIkeyHGNLsQRzV0R98
         GsTBasYogyVZNKPOHjYgARKy/nBslLffgBbqTkxKCJza0s4NVa65+fmBIfqm/HrPCMW+
         9PlHf1b2Inlnb0kno7YaN60jBSSgd0+fWTWhzasO4xWVWJw521HQ5v0Xn00b2gnDO023
         Vk4mgL00gPtPLfyvIhoqRpK6WMEbgD2aF1MDlKnypt7Wej8IrSO+6apSX5wLrhTvZY++
         NcIRh0c2ik0x7Itfde6iT5yv8mMZpL64Sn026bzV2CT8O2J3NAD8Xa2mYWJ0xwTPNByg
         7AKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=inNOBZcZP1a8xJRntTGC8vUY1YpRCHhdmqMtXxXCD2o=;
        b=lbeicqazjtWd1JdpeP21tC6KFpat/PHHFVGBuvWsHEFr9kaH4QW9x8FQsoHw5nx7im
         f7ul3ymNlw9bjBwRZ4ERgqy/nKrOtj6H86eGshemvMqmp71O4K5dxocXuU/DjEHfA1jz
         BnMW4BOZacSkxwr8Vqn3UiCAWO2xSauAa2OgfQHTT8u8khMDdqlJZDSSdK+eWrLAfIJi
         jp47JifX93jyiK1ZeTbUKUZhGDcxCMvGWLN45fOY7c4JPq7ZDJJ3Dk8FwIXg6IwMQfoZ
         3NZ6UUibCZ5EYGEsGSstBfduMkeI5DK4IFVF0URSH+MPhW61OVz9w1LsJNycfz3KjkEO
         9JKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a33si335007wrc.5.2018.02.25.12.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 12:10:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,394,1515452400"; 
   d="scan'208";a="315216221"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2018 21:10:19 +0100
Date: Sun, 25 Feb 2018 21:10:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Fix alignements
 in 'if' statements
In-Reply-To: <20180225195922.GA15403@gmail.com>
Message-ID: <alpine.DEB.2.20.1802252109430.2228@hadrien>
References: <20180225195922.GA15403@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 25 Feb 2018, Dafna Hirschfeld wrote:

> Fix aligement in two 'if' statements and break lines
> to avoid over 80 characters lines.
> Issues found with coccicheck.

The change looks good.  Could you fix the random spelling of "alignment"
(two cases)?

julia

>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> index 21b55fd..86c7357 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> @@ -195,7 +195,9 @@ static struct sk_buff *ieee80211_DELBA(
>  	u16 len = 6 + ieee->tx_headroom;
>
>  	if (net_ratelimit())
> -	IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA, "========>%s(), ReasonCode(%d) sentd to:%pM\n", __func__, ReasonCode, dst);
> +		IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA,
> +				"========>%s(), ReasonCode(%d) sentd to:%pM\n",
> +				__func__, ReasonCode, dst);
>
>  	memset(&DelbaParamSet, 0, 2);
>
> @@ -233,7 +235,8 @@ static struct sk_buff *ieee80211_DELBA(
>
>  	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
>  	if (net_ratelimit())
> -	IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA, "<=====%s()\n", __func__);
> +		IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA,
> +				"<=====%s()\n", __func__);
>  	return skb;
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180225195922.GA15403%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

