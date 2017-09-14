X-GM-THRID: 6464370677237415936
X-Received: by 10.25.212.195 with SMTP id l186mr1870244lfg.31.1505396059409;
        Thu, 14 Sep 2017 06:34:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.81 with SMTP id 78ls1498996wms.8.canary-gmail; Thu, 14
 Sep 2017 06:34:18 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5H2XsdfPM615kj3h0NpnyeO2+wpNiWeW3Y7kORIUD81ebmPekUWTAwwdb55ureZTWDw7Gp
X-Received: by 10.223.166.39 with SMTP id k36mr1382846wrc.19.1505396058205;
        Thu, 14 Sep 2017 06:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505396058; cv=none;
        d=google.com; s=arc-20160816;
        b=UPOKKoBTg+DSqcavQM5e7lX9Frkqkx8oKhE4F84SpO6MdFmh9aXA5LZdH3lsOpEkOO
         oIk2qw56c7K+58Kh+7OXEWA7w9SkHFsG7Fx/ClVgqPRsUV/fu1RFie/g+Ud+ogKJr6Ux
         99K4eU8Aon/H1X+vceIurXQx4gdcU8518t0vD2VOfFYWTrIfH2gqsZ4yuZqdTM2Ae6Yw
         S3Dvp0cwmRB9viCZZ5uGGfI2ii6D1DqdHw4gVviZLqsFU6HRG3i1gZiePV8R61kC+q3j
         Xc6uzNaVwF5pmXSy+GmSZkgECHJNfhnSHf8hyDoKKi3WDIiRnPZ5tUqHQho063Wc6Jfp
         XAsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jCBikaHuB6k7ia+ntowEi0bCqO7T5kTMbYt4N1t5euM=;
        b=CCrJnKG0G8jEDGOKi0lhuDMC0dm6aoYLNwLSW44FD7VJEbN2ESb+CfS2c6/X+TKQ/B
         aPUKNOlukFX9zbbA3rW1u8Vd8u3v39p9hgloFBFe8AWC2T+yxn2JzDzjFttgytNuGnbT
         18OdtmwtORz/N4yqegWuL3rKvfbFdXMPSoc5tUdExWKjyK7d/wFnQ8ljBXggj0LBgl54
         o3JO7PztP025lSDHabdQLHh7ZX/P7G414q77a+7vMdJChLW3/DMCG89MYLliY55BuaBJ
         eDr7jSYDsTUeC7692d+/UB3dt3ufUhKgzYm2kEXJy2fqjgf4+RRDPZ0kfDz3Bs+c5M1u
         Fogw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si23313wme.4.2017.09.14.06.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 06:34:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,393,1500933600"; 
   d="scan'208";a="237498808"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 15:33:50 +0200
Date: Thu, 14 Sep 2017 15:33:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Arnaud Patard <arnaud.patard@rtp-net.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: fix multiple line
 dereference
In-Reply-To: <1505390930-9374-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141532440.3185@hadrien>
References: <1505390930-9374-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Aastha Gupta wrote:

> This patch fixes the checkpatch.pl warning:
>
> WARNING: Avoid multiple line dereference - prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag'
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - fix the line over 80 characters warning.
>
>  drivers/staging/xgifb/vb_setmode.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index cea128b..d55ffa6 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -5479,8 +5479,9 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  						   ModeIdIndex))
>  				return 0;
>
> -		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> +		pVBInfo->ModeType =
> +			XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag
> +			& ModeTypeMask;
>
>  		pVBInfo->SetFlag = 0;
>  		pVBInfo->VBInfo = DisableCRT2Display;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505390930-9374-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

