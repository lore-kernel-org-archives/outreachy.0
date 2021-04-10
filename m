X-GM-THRID: 6949513279876104192
X-Received: by 2002:a2e:87c9:: with SMTP id v9mr12283778ljj.321.1618063361927;
        Sat, 10 Apr 2021 07:02:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls530140lfa.0.gmail; Sat, 10 Apr
 2021 07:02:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyHfCsbLYi741AwhUV8vPfRguxeF4Xz6xh8Oby++EJGxmTYRvqTyWgz+U9c86e3R3/QVku4
X-Received: by 2002:a05:6512:3d20:: with SMTP id d32mr3233206lfv.163.1618063360118;
        Sat, 10 Apr 2021 07:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618063360; cv=none;
        d=google.com; s=arc-20160816;
        b=jWHuhcaa4ogp0h0o+nAOXOaABNeRuMGPBsHYqYXOraaRO7CZ7n9WNfoc1V8I9vVC2B
         ZxHS0EN7/V25FPA7sNe5OBlFiFm8hmDk+bzpWdeQumx+8dJ0NBpqKcIr+RdTm3xcWrts
         9bDK6+/eVWrWQsK3nyLy4nXA76P1eyVx2xh90iGoxo4kAbSJc//pTsapi35/xaOD+teX
         jF0ESuD5tefw/zrw6VVhOpJfdVI7pK30AsDcGHzwc7KJAnS76NwGUhNIeiRT0ixQ70GR
         EPaRnvzUJqo5NdJb5RMeVckaa/PHcB6KLsVYItFe1sBa7ywVyxZXpR5Wojn0VlPou1Kt
         aw6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=1lRNtOMYmKXmL4FrA+zGeobYdGzfBHRKPrtIXXl4o04=;
        b=XpzKpV/uD72fC2I/pENMv80V/A3+4FTkY/Iz45qvxf4i/jyWLAC+B0enRdlcvc3/pv
         zH8dG+I8278eP2nHGo9pYR+c9Bd34707l4PfpVQpJraYaZBu/TU+TMiHzvLGtfAMvC7L
         0ArU0dz1spSHxJDBfgK6Md98mD13aJ4/994GVNuL6MBR88lOjisyD4eDaPMk43937XVE
         I7HvwfRAOtk6nqaS17WmwImd/M3aDgXqmMVYyCMU7Emceb4fMZ3ejUREcziApearEdBL
         oWl0fHSoQSZoZDydw4SXKQDvf5RaMazDsJIao4RPKGI38neFNNYtKSj11623aq7c4zfW
         dYzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j7si13959ljc.6.2021.04.10.07.02.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 07:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AGQapg6yZeNxmG+w+aj6AKrPwzb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VIscVwphNzoAsK9aFzG85od2+MsFJekGDLroW?=
 =?us-ascii?q?65aLxlhLGC/xTFOwnTstFQzr1hda8WMqyUMXFfgdzh6Ae1V/YMqePmzImSie3T?=
 =?us-ascii?q?z2hgQGhRAsldxjx0BQqBHkp9SBMuP+tbKLOn+sFFqzC8EE54Uu2HABA+M9Trm8?=
 =?us-ascii?q?fGj9bPbxIAGnccmWuzpALt2frBHx+U0gx2aV5y6L0pmFKrrzDE?=
X-IronPort-AV: E=Sophos;i="5.82,212,1613430000"; 
   d="scan'208";a="378288277"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 16:02:38 +0200
Date: Sat, 10 Apr 2021 16:02:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192e: fixed pointer
 error by adding '*'
In-Reply-To: <YHGvJxMhQ8nzHf6I@kali>
Message-ID: <alpine.DEB.2.22.394.2104101602080.2975@hadrien>
References: <YHGvJxMhQ8nzHf6I@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Mitali Borkar wrote:

> Fixed pointer error by adding '*' to the function.
> Reported by Julia.

Actually, there is a proper tag for reported by, like Signed-off-by.  Look
through the git history to see what to do.

julia

>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> Changes from v2:- modified patch body but writing commit message
> clearly.
> Changes from v1:- added pointer to the function.
>
>  drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> index 4457c1acfbf6..78b5b4eaec5f 100644
> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> @@ -327,7 +327,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
>  	}
>
>  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> -	if (ppTS)
> +	if (*ppTS)
>  		return true;
>
>  	if (!bAddNewTs) {
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHGvJxMhQ8nzHf6I%40kali.
>

