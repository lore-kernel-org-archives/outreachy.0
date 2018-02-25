X-GM-THRID: 6526589277471506432
X-Received: by 10.46.118.15 with SMTP id r15mr504993ljc.23.1519590212078;
        Sun, 25 Feb 2018 12:23:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.193.87 with SMTP id r84ls1116525lff.9.gmail; Sun, 25 Feb
 2018 12:23:30 -0800 (PST)
X-Google-Smtp-Source: AG47ELvOKUUWnXfO/0azfEz5WkktjkaokTv8xZhDYcpD0DvUGDmH6RanZrT5Gg1g4f2cVCEp6fBK
X-Received: by 10.25.78.9 with SMTP id c9mr547241lfb.24.1519590210500;
        Sun, 25 Feb 2018 12:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519590210; cv=none;
        d=google.com; s=arc-20160816;
        b=jWipKpDDPiK1xvCtYrOWcntVeXDZ8PWGrEvOaqV8N56U81fqZELCeADVVedAzY0aee
         L62gc4ClQ0PKe1w3yMuul79w861QI8tqfUsSQrAu516vcKLbsfPpvjd1zaI+gV45i3FK
         lbVwz8U3qlCHA6TBY20yI7oWeXuNM+LbPDnEbozzbN4aEYQ2aWwdYiADGt9mDqk32Vh2
         CLJ8BdSrP7m22SA15b3qx7Ph4BzpFB2GtalS0hQGDP/ml6PTDT2GT1bWEDea29VOFJ1R
         aVg7+zReL9qJ4Ra2UrOKHYqpDezbnSRqD2uGcEpmu9Fx3TvU8W6DoxTdNBBwgwMjZNsj
         1+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=fwuBiIX3fwjRa4EyV2Eyt81R4Z6vHbBTn7+g27LcZAg=;
        b=VRP1xBSC19v4tLUCOS+u3UlZVV1BZfbjL+MscNCmYcbwNNtugvq8wPif+6pB+1Flsp
         xFk6cwBW9JF5UD9GtvTBUm3QIxlfyT/XlOhWgp++sDbxF1tiH8EjhPXtMAKFPAwXZtQr
         JjIB9jirG298ifj28ORrV5HDDlOtpH5Mkg6RftzHUE89IQ9e5dHbUzB/BsayuVuZmKCm
         w9/JiHmtNBxyn11alK1cyT5eZpagHtfB+GNinW4UG9nUNi+x5+FPhL3IMbrYgbVdv1c5
         L1tvwn60up+2MGXJkOTrRPO98l8h687HwqtpYPSumi+2wE+JxemPkxOEZoY4owBIVVu+
         quyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k82si255024lfe.1.2018.02.25.12.23.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 12:23:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,394,1515452400"; 
   d="scan'208";a="315216942"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2018 21:23:29 +0100
Date: Sun, 25 Feb 2018 21:23:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Fix alignments
 in 'if' statements
In-Reply-To: <20180225201927.GA16154@gmail.com>
Message-ID: <alpine.DEB.2.20.1802252123190.2228@hadrien>
References: <20180225201927.GA16154@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 25 Feb 2018, Dafna Hirschfeld wrote:

> Fix alignments in two 'if' statements and break lines
> to avoid over 80 characters lines.
> Issues found with coccicheck.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
> Changes in v2:
>
> - spelling corrections
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180225201927.GA16154%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

