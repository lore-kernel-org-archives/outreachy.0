X-GM-THRID: 6662713846690480128
X-Received: by 2002:a19:ec13:: with SMTP id b19mr247909lfa.16.1551301738251;
        Wed, 27 Feb 2019 13:08:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls371163ljb.0.gmail; Wed, 27 Feb
 2019 13:08:57 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYaJ975CJIkJ4vJuAQXCtq5gSm2oAmio2SQTFypmCrsqjpFHLuP4mABXNgVnzZgtbugXbc0
X-Received: by 2002:a2e:9613:: with SMTP id v19mr314533ljh.16.1551301737436;
        Wed, 27 Feb 2019 13:08:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551301737; cv=none;
        d=google.com; s=arc-20160816;
        b=FRw7MD4s2mLxW/7GkAKfOxg8HNxQ6huzyDPb9R4kKRopIN4U/1C7KoatLjhfKrnpCJ
         WAM9zzK7+t5VOHsL5qU+HsBB7/cQfBP6eQS5bXZyM9I1BbWrL4AA/gUBgRRhADNc83zV
         tpJpE9S1RsI+KpVuJV3G0ohQ1ELzLmRTfsbYCQSDLeWlHIbOlOoF0c22vnpQFTIBD/c4
         Q5dQDrYYA/44wOR1y38d8gJm1OU1LMY5ZhVZiN+ePhfThY7lCEskXwX/KmdA2Z3LsA9C
         VF2aeg/RUfq3KZm1rjUuNfHNGR1EXEXqzwnyqeq25AkihFs3LpJRGKFslwJxkgriVcRD
         gyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1FcCvKEDM5mdOABtFeazGLMaLIeZp2YgpjEYMgk/FGQ=;
        b=RJJ6/n7XOAzY3+CBdp4FIKl+MjJJfL1RT5r1z0uyhicE0Vs71J9BItQYdtTgwuBU3k
         R+snz+G4kgo/Whk3oySU6HgueuH3lO7uecQ28cB4J0AjvBFPg5WzMjToPyeG4iAW98b1
         cKhowrSUIeF9fRfhdkvkWjphoFgiLmYQ22L7JtAqYvOTaEWjzWcTwOSINB4+JmhwwU4u
         iYmD/UKpdciq4aPQLdtVdFvw7ziNRsUBh8i3/gceZb3I4xgmUI0CiUnq96QQup4fmAit
         6rU462t2yeTB6rXyrdDQLyrAlsiOUBLjTtsS3eVb+1gGBX3SRunPJzjP5p7dRepMUSHT
         2cJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y26si72703lfl.1.2019.02.27.13.08.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 13:08:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,420,1544482800"; 
   d="scan'208";a="371211622"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2019 22:08:56 +0100
Date: Wed, 27 Feb 2019 22:08:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: vt6655: Alignment of
 function declaration
In-Reply-To: <20190227205040.9881-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902272208290.2561@hadrien>
References: <20190227205040.9881-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Feb 2019, Madhumitha Prabakaran wrote:

> Align function arguments and function type to improve readability.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v4-
> - Log message and git diff are matching. Change is made on code in
> Greg's tree
>
> Changes in v3-
> - Included driver name in subject line
>
> Changes in v2-
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 52e9e6b90b56..3226dbaab3bb 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -506,10 +506,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
>  	return bResult;
>  }
>
> -void
> -CARDvSafeResetTx(
> -	struct vnt_private *priv
> -)
> +void CARDvSafeResetTx(struct vnt_private *priv)

This looks better.  I pulled Greg's tree and this applied fine.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227205040.9881-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

