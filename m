X-GM-THRID: 6661416853760376832
X-Received: by 2002:a2e:5c88:: with SMTP id q130mr1100139ljb.2.1551128186181;
        Mon, 25 Feb 2019 12:56:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5b42:: with SMTP id p63ls1744025ljb.0.gmail; Mon, 25 Feb
 2019 12:56:25 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYAno2mc2ttj+137dxU8G7tl7oV2EL5zzHzvI+VRN3pIuQTHDVB16ll1hCTjIx8uplaNNn2
X-Received: by 2002:a2e:9d93:: with SMTP id c19mr1096827ljj.25.1551128185281;
        Mon, 25 Feb 2019 12:56:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551128185; cv=none;
        d=google.com; s=arc-20160816;
        b=k9b8OXx2c/fxHpPdQ+sU7EPkpuPVb6NkrPPq6dg3RRuMtDXBaobTW/1vQlOwu4Ab5z
         o1t3zjxe5H9iplFiYFGne09YbprIdFTWfvO0d67A4H669awujoHGBUf5OnHtLuea8HEA
         0DpoJmye3hW8QDYKRkS+ru2y8gBieEEC7+dlk9FsWXnt1SJg8bPM6RC0MfD43y9Ic+hD
         S6EVsiljtI3ggOUKBvAmBIwHpttnvJ1IumbctXpeF8yMgIH/C4aUTfE0M/eBJYRiIfBP
         vb6slnPtwXi175jQSpSc4KaFX0YBUhC5LCRYTYqXOr0HeZnkb9JzwL1/hheF9Ki5gqFS
         Glxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+yWeYWqW2/ohoCD5XcAsXar+Al+Fd6UJY5/O6psKSNE=;
        b=HAXzspdlHh/q/ZMDlG+T/uEmEMdsG7KS5lRisA1mIaaraWbyXAnzd95pBHkgVCu7/W
         /pQccwY2xqrdi5pL0gP4sLVfnMoq3HV4/p4+05Ewa/HbP3LPJwO3GVvwfvgCRkKyK+aF
         TW6etkf58BuLzKxeo8aFK6y80KoZ0F3sJVwkWOBooIJksamrU5KCkCaRnwiJSJaFXu7S
         X0T9bFYSLzAOmDaLQxcyVjheucJ4Tb9daTgxa6phBsAcsCfENlm1KxeRLWdWi3xdSwh9
         2UjTYKDC1DunPZ57+VW9+mXKbpk3GDdZNQBqF33AxdKAFspMvcJAwrFK6RRjUVzn7u18
         d/NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 19si391057lje.4.2019.02.25.12.56.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 12:56:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,412,1544482800"; 
   d="scan'208";a="297297734"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 21:56:24 +0100
Date: Mon, 25 Feb 2019 21:56:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Fix check - Lines
 should not end with a '('
In-Reply-To: <20190225171403.393-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902252154390.2481@hadrien>
References: <20190225171403.393-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Madhumitha Prabakaran wrote:

> Improve readibility
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v2
>  -Make a commit message imperative.
>  -Use multiple lines to improve readibility
>
>  drivers/staging/vt6655/baseband.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index d8321e7fd68b..35bbff807df9 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1704,8 +1704,10 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
>   * Return Value: FrameTime
>   *
>   */
> -unsigned int BBuGetFrameTime(unsigned char byPreambleType,				unsigned char byPktType,
> -	unsigned int cbFrameLength,							unsigned short wRate)
> +unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> +	unsigned char byPktType,
> +	unsigned int cbFrameLength,
> +	unsigned short wRate)

This is just inviting another patch to line up the parameters to the right
of the (.  I would have expected that checkpatch would have complained
about this.

>  {
>  	unsigned int uFrameTime;
>  	unsigned int uPreamble;

This looks ripe for some other changes - not using camel case and not
encoding types in variable names (the u).

julia

> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225171403.393-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

