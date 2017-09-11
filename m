X-GM-THRID: 6464370677237415936
X-Received: by 10.46.80.25 with SMTP id e25mr671222ljb.10.1505112747316;
        Sun, 10 Sep 2017 23:52:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.86.88 with SMTP id k85ls211743ljb.2.gmail; Sun, 10 Sep 2017
 23:52:25 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDwApoUgcA78qzy5ZvPiAwH0sL+R1ekQ0YsYNDh1hU4+ueQVA/IUci+iwtLF6HVzDol/NlA
X-Received: by 10.25.115.131 with SMTP id h3mr721337lfk.44.1505112745834;
        Sun, 10 Sep 2017 23:52:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505112745; cv=none;
        d=google.com; s=arc-20160816;
        b=oYhWZRDQYSsP8K1VyERr9YnWAfMIrN7lSY+UNlk4NkcA/5mOIQlLSSTAMqcKXoNUHg
         yJHxwJYeiRDcvWp5Emckw6QdSofK3oGkMR5+4dfhfk6/zpAiH0VRNd3aCRugXW68Bdkh
         sBTAGoFWTk/DA6wD3Gy3mq2IRT43ChyMeUTJHeydiVIVH2AAlpxpdK1Hro4HCfU266si
         RGbJ3ZQojnG02HmHpEbJkIYz3nCokS0mYMNFXtEdbnuwDxG02aI2YNJCyzm1huK7DRo5
         3sM1lm1cg0BsZTNPyS/CEJSb6CvCKPTfO/5sLg+walaAbtKFU7HUVUeJ7gDtl1ZZ3uoF
         AyRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bbYCWNadxosmDLtvHa55ulny9Z86/7zJ7iSTufaUg3Y=;
        b=0goybRs4m6iMcUB4LbhL547q0TFOqSadYcPkKIBYoOe02T/JueFK2sUoboAhpQa+NO
         vTBx4UoHblQvcFp7cr4fthCkJytozIK55lYZrgSq1sbPs4N1VmhzJnf/DnYI8DhdpmT4
         yDvZ5QjJXhhmAlJTF/BD5RwSqop6PW1OAyM6vr3pqd4mbarypNaZfdOvU+Uj4ybfuIt4
         ZxHtix69WlPPqlzDgiTItKQ8W+n03emLZGDD4fMXYu7QDchYRtTQfnbbfCMfO35JGcNi
         BM1/N1Or4iQ2Z41dV2Klq36pQIClxDuo/nyNHzWsMS3PdDOtuSM3dlwZ6w+DI6mHVQ/J
         HWYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si388440wmd.1.2017.09.10.23.52.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 23:52:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,376,1500933600"; 
   d="scan'208";a="290418556"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 08:52:25 +0200
Date: Mon, 11 Sep 2017 08:52:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Arnaud Patard <arnaud.patard@rtp-net.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: fix multiple line
 dereference
In-Reply-To: <1505103575-5301-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709110851330.2136@hadrien>
References: <1505103575-5301-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Aastha Gupta wrote:

> This patch fixes the checkpatch.pl warning:
>
> WARNING: Avoid multiple line dereference - prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag'
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index cea128b..bf69dc9 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -5479,8 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  						   ModeIdIndex))
>  				return 0;
>
> -		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> +		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;

Put the right side of the = on a separate line, with one extra tab of
indentation.  Then the whole thing will fit in 80 characters.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505103575-5301-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

