X-GM-THRID: 6666820090157072384
X-Received: by 2002:a2e:9613:: with SMTP id v19mr1520414ljh.16.1552240943248;
        Sun, 10 Mar 2019 11:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4352:: with SMTP id o18ls1269771lfl.11.gmail; Sun, 10
 Mar 2019 11:02:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtr1edU2AHZyA6dMxLwGBYwhE5wfPbAYMa8I3JM36pqj+9kpb05eTOTTp6e0hJ6VLjM2GS
X-Received: by 2002:a19:760a:: with SMTP id c10mr630389lff.9.1552240942395;
        Sun, 10 Mar 2019 11:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240942; cv=none;
        d=google.com; s=arc-20160816;
        b=hqrcWs2TIiAlX03B9DB5Mmd9/vttTFijFJ2BqcfgdzvObQUzHqNMfcjzRInOydocMG
         bomjnbQMoIWyOTbeMAQE8C426OsEItya7Rd+Nw68i4+rQHS6ioVkH/yuU/ix7LiWvMvU
         IcHmWmKXHpjk02NqrrUls7q6OJoSNjQ1ovWUQ8DPFE1YqUorZ8kw+Q9QTLb87r+s9vop
         RmdIb4W+r+89uRcqWyzpXeQyZH//jRRpenNxnMzLu7qPbd8ni3uFllCvUKc9s0ubssif
         jNXBat2BAb5xqSURkpRJ3+5Xhzn//CzYBofZpBrxDTMMikMK2VpTw/6ZdVKXtu3bYldm
         ErnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Y8CR5ehp24TWkGPX4+Bt72wpeYIHZ6BJxUaoc7TyD7o=;
        b=p3arl0U8mTPt4lyg0lZYUaeXzPn5mvsco3Q3XUjhmbXSNWS00xn2I3gbUs2Kh1RwNS
         Iil4RSl8jJib3VxvzxhhqD8t7QFS3H8ow6ZJt7rsTneuUXe4HxwkSQYrnV7BaRpEjyB+
         YhwpT333lGRBiG62hzeBlfiPi0fj/l4jhd9Y7utSL8o0dr9lZCjaV9N8QS0D6RmIq/P1
         DfM65izmicGW64SIiKCdfqTc/Gk5Fb01gHyEdm9vChYDDzQlusiP2Y7q3/j8MtJ60OZu
         PX0SvyF4WJvtItMm5RvfrKiKo72VEccAux4+iJl3rSCiVOwca7g6nU6BhVMpM6HKjaE5
         S4Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 19si123720lje.4.2019.03.10.11.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:02:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,465,1544482800"; 
   d="scan'208";a="372705551"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2019 19:02:21 +0100
Date: Sun, 10 Mar 2019 19:02:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] Staging: rtl8192u: Remove
 typedef for struct _IbssParms
In-Reply-To: <20190310174635.16923-3-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903101901330.3131@hadrien>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-3-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhanusree Pola wrote:

> -Avoid typedefs for structure types to maintain kernel coding style.
> -Remove typedefs IbssParms and *PIbssParms of struct _IbssParms.
> -Change Structure name _IbssParms to ibss_parms to maintain Linux kernel Coding Style.
> -Replace occurences of IbssParms to struct ibss_parms.
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index ce79b8321961..735e86cc6adc 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1506,9 +1506,9 @@ typedef enum _RT_JOIN_ACTION {
>  	RT_NO_ACTION  = 4,
>  } RT_JOIN_ACTION;
>
> -typedef struct _IbssParms {
> +struct ibss_parms {
>  	u16   atimWin;
> -} IbssParms, *PIbssParms;
> +};
>  #define MAX_NUM_RATES	264 // Max num of support rates element: 8,  Max num of ext. support rate: 255. 061122, by rcnjko.
>
>  // RF state.
> @@ -1554,7 +1554,7 @@ typedef struct _RT_POWER_SAVE_CONTROL {
>  	struct octet_string			tmpSuppRateSet;
>  	u8					tmpSuppRateBuf[MAX_NUM_RATES];
>  	bool				bTmpSuppRate;
> -	IbssParms				tmpIbpm;
> +	struct ibss_parms				tmpIbpm;

I don't know why the fields aren't lined up in this structure, but you
should at least not make the situation worse.  There should be one less
tab in front of tmpIbpm.

julia

>  	bool				bTmpIbpm;
>
>  	//
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190310174635.16923-3-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

