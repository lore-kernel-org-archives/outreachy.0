X-GM-THRID: 6662791794901647360
X-Received: by 2002:ac2:5301:: with SMTP id c1mr94327lfh.17.1551386461368;
        Thu, 28 Feb 2019 12:41:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7:: with SMTP id 7ls822169lja.13.gmail; Thu, 28 Feb 2019
 12:41:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqw4C9ELWFOijWFKo5qfaV6HXYfMRow02onbVkQfVTV3y15a76zygFLAXa7ebU3r1BsaMosi
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr52026lji.9.1551386460547;
        Thu, 28 Feb 2019 12:41:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551386460; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlO/E1AaI1oivcolP/n2l0U9YvumB7XaOisWsJxjhethjuCw74P4jSFQMdEJMbe2xd
         qBh/Vkx9vUmoKczkqHVs+/6RwzU1lVPLfobUcGZk9D1P4NFvcJBOYBS00Xe6TTAAbRgI
         ObuXYyZDm7ZtzLMR59jyrwyxUjgC6BcLAMjNu7AM5V4xsVzx3+41YJ6uF/vV0XjrD6Ly
         NMGGFrmDZASwGenvgTVIV9Wj165F7ap2FUP1/8pf7PjTSvfjmA6Iq3DumruGZIVrBuMa
         Qu9qPQBhVwoALoAMFvkZvq/+skPnxOnEefcSb4QwNcl/TWhyIpOn2PTR1l8Z24RRHkFR
         aosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qj7C2g62cSPy3jUN8oGH8H6DmLrg2xNSquY16+ebQtE=;
        b=fcR33lSvnL1VDC8pSxjjvPuhshce0r2dxY8AO/vxZZpprbS9IayDcw3imLeq69RIJr
         NXdiha09+yu1mv4uOSa+aS+IpSMBgfibWGriS4ZUjZCwbB9Jimxft396z3sP3wzPj4KX
         PYwFuktuCCV89g8uk2fTprBqkHtCXyOVfFkZq9At088LBlb7kHwIRBEfDEIYnh0hfIPG
         2h09RGKKH5R3yDoJxel5ixZSeFy8adJliZIQ0DwGckyVwDB7FeD5sMdWnuS0gupg8q1J
         8IZPAPBpq+vIJmj5qQn6i9AojldD9yCuHjfhM4SBxE/1hvx6gvzB5ny570Jev3KPPpJf
         x9aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a6si634643lfl.2.2019.02.28.12.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 12:41:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,424,1544482800"; 
   d="scan'208";a="297716473"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2019 21:40:59 +0100
Date: Thu, 28 Feb 2019 21:40:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5] Staging: vt6655: Align a static
 function declaration
In-Reply-To: <20190228202810.26235-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902282140240.3134@hadrien>
References: <20190228202810.26235-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Feb 2019, Madhumitha Prabakaran wrote:

> Align function arguments and function return type to improve readabilty.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v5
> - Commit log and code diff are matching. In last commit, there was error
> from my side while reevaluating and commiting it again.
>
> Changes in v4
> - Commit log and code diff are matching
>
> Changes in v3
> - Included driver name in subject line.
>
> Changes in v2
> - Improved alignment of function declaration
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 15 ++++-----------
>  1 file changed, 4 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 3226dbaab3bb..f858f97cf119 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -60,14 +60,9 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
>
>  /*---------------------  Static Functions  --------------------------*/
>
> -static
> -void
> -s_vCalculateOFDMRParameter(
> -	unsigned char byRate,
> -	u8 bb_type,
> -	unsigned char *pbyTxRate,
> -	unsigned char *pbyRsvTime
> -);
> +static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> +				       unsigned char *pbyTxRate,
> +				       unsigned char *pbyRsvTime);
>
>  /*---------------------  Export Functions  --------------------------*/
>
> @@ -84,9 +79,7 @@ s_vCalculateOFDMRParameter(
>   *
>   * Return Value: none
>   */
> -static
> -void
> -s_vCalculateOFDMRParameter(
> +static void s_vCalculateOFDMRParameter(
>  	unsigned char byRate,
>  	u8 bb_type,
>  	unsigned char *pbyTxRate,

You could realign the parameter list here as in the other case.

julia

> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190228202810.26235-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

