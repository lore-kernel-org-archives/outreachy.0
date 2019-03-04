X-GM-THRID: 6663863789016842240
X-Received: by 2002:a17:906:4312:: with SMTP id j18mr1022231ejm.12.1551685376256;
        Sun, 03 Mar 2019 23:42:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b136:: with SMTP id k51ls4409924edd.6.gmail; Sun, 03 Mar
 2019 23:42:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqzNqPojmGGEwHbLdqiJ3Hf6onx5SXbZJ/DhVcdEWv3uINxUhhXUWa6gax176MQIk7+JzUJ3
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr2218494edc.1.1551685375607;
        Sun, 03 Mar 2019 23:42:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551685375; cv=none;
        d=google.com; s=arc-20160816;
        b=SEJqQfgBevZ/5zfpQFeArj5XeRKm28zzzOaXjEecJFedlu6XXiCSvQBU2tN34l+Tmq
         Rhv8WN0jztI4HAhDoQdhUeIVRistiSUrWLaHOVzzIaLIheiea59HfnbVLKB84b8CGV06
         tk9mdTO+4SSpkj1hEm+xd8B9dMxQ6Pr+jWbqCqz3i8nLbvacsORaEqERt2Q8DxObqBOu
         Fr18pL4ffL4Qfd2Ui7BGv995pY2xrWC2Bc0/B19q9VzvpG4PjP5pajKFHNDIGy8MtNY5
         CyOKqcpGVw9bmU+aNCuCR0iaqrWQpT8GMw60LQjyDBPOKogb2Q8pwfDh3SsMAcFxeoqN
         xNgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DbWpHnDDc29Uv/qisX5nn39bzAxs+p3WPIpYNYbaRV4=;
        b=a4uuPYpQCGR5GlRMsM+X6gBNOtCZOWipIUh0i9OMb0w34rB5pI4p8kAme1JhwNyvIY
         Fr+wlUZNPfZpjTwJpFTxvMxrgu/1wQiCwr5fGywnuUg1laFF0zTkNqsQj5gs5e9DoChU
         3K5YsnBdK8iR/2YlCpay7yaoLbuFHS9K34Osi6EiwdCpoWgNHFwu6DVJRpvCKoIsBEE4
         uAuZSadNOMOAKC7Dh9J4nj3wBA6K7ngpc2gQaP8vNLkXHgqzNMXW09I/eDh4+dcjphkK
         jHpxjVmpUQ5k/VivvCLNHGbzoJ/BIWBc4N1/Qrp6rP6prKf69UVQWo6VUB0EcAVEBSGJ
         J75g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z19si245579edd.3.2019.03.03.23.42.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 23:42:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,439,1544482800"; 
   d="scan'208";a="371726266"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 08:42:55 +0100
Date: Mon, 4 Mar 2019 08:42:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix line over 80
 characters
In-Reply-To: <20190304011949.17148-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903040842080.2559@hadrien>
References: <20190304011949.17148-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Madhumitha Prabakaran wrote:

> Fix the warning issued by checkpatch.pl
> WARNING: line over 80 characters
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/card.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index d71022aa3f86..6bbbbe1314d5 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -44,7 +44,8 @@ struct vnt_private;
>  void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
>  void CARDvUpdateBasicTopRate(struct vnt_private *priv);
>  bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
> -void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
> +void CARDvSetLoopbackMode(struct vnt_private *priv,
> +			  unsigned short wLoopbackMode);

I have the impression that this function is actually never used.  Maybe
you can try to get rid of it.

julia

>  bool CARDbSoftwareReset(struct vnt_private *priv);
>  void CARDvSetFirstNextTBTT(struct vnt_private *priv,
>  			   unsigned short wBeaconInterval);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304011949.17148-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

