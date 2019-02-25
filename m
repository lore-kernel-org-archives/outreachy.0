X-GM-THRID: 6661416853760376832
X-Received: by 2002:adf:e412:: with SMTP id g18mr1057578wrm.9.1551128055539;
        Mon, 25 Feb 2019 12:54:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4c47:: with SMTP id n7ls1356582wrt.11.gmail; Mon, 25 Feb
 2019 12:54:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib3tK6jn/LVZ3uWdMdD0hI1PSO9IUHQX48s8/06RfqwHaGW1xouZ2uX5Zrsp3YzYan6jZMQ
X-Received: by 2002:adf:e702:: with SMTP id c2mr1044949wrm.31.1551128054734;
        Mon, 25 Feb 2019 12:54:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551128054; cv=none;
        d=google.com; s=arc-20160816;
        b=dtOn5Sz7Vso6uOeD27pcq9J3B8JWgIjD2HkAe+hilV1HOCIK8YnpvQKzOCk1IwK8Ab
         kbwf0fSASHf+agrDACNDK93UvudVRF5cTLavfGcwt7Y8SZWAI8zwRl/GXk0wDh31F1r8
         1xGB6ldH2XrlkaHVbSw2Kb9PCb8HflAa4F3i8SV9isGuHkPn/o23bH4VUCT5jTk/2GJ5
         hLB9aG4c8+Sd6YDpDqAawGJZbYGBVhliHVrBCsNs6togatGld7EbpIb3pwUMAATEsypw
         GE3M9uWH7NFFWV0HlIjqO2HYsbg9nk+67V68ut4z/lX2CywY1E9LA9dP0DUPQnLjAnFV
         koiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ec0DKay0PRev+Orubc6ykEY18PaUqYqKDce93oCjHPY=;
        b=ANhUygI0xtLF1az8QP+0CLYLLivLKHWmJHkKA3HEwltXANA1ydjZLbZB4wsJFje3Ln
         Ie1P18BUVl8AFwO6h8X7u1mQ8m61y3ZaHIvp5QATDIWdHsDNMymcsBoA9TmHNhCZn9rn
         mDCybHps2qI1ij656VpcW6jfKiIAhtTiKCplQBqL/CwWn+EkoOuJ/EC2fPGTWTO2AizZ
         DgsvyP8TtdUcAvTd9KNaYE0vXoNKFUyCKAuNnU7eahKiTnGoi4oo9+f7Si5y2KzTQQhF
         bDtKPO+Ky8k/knI7F43ABI0VBmpvhll7RXZV9X7I6SXvld+iYXrkSfrKT1xdLHklVo9S
         3qiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t25si456835wmh.2.2019.02.25.12.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 12:54:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,412,1544482800"; 
   d="scan'208";a="297297636"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 21:54:13 +0100
Date: Mon, 25 Feb 2019 21:54:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Fix check - Lines
 should not end with a '('
In-Reply-To: <20190225181340.14583-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902252153220.2481@hadrien>
References: <20190225181340.14583-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Madhumitha Prabakaran wrote:

> Improve readibility

I think that neither the subject line nor the log message really says what
is going on.  It is more like "Compress function header into one line".

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 6042f0bcd3f8..278cdedabae2 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -503,10 +503,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
>  	return bResult;
>  }
>
> -void
> -CARDvSafeResetTx(
> -	struct vnt_private *priv
> -)
> +void CARDvSafeResetTx(struct vnt_private *priv)
>  {
>  	unsigned int uu;
>  	struct vnt_tx_desc *pCurrTD;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225181340.14583-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

