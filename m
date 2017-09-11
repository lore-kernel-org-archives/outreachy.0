X-GM-THRID: 6464370677237415936
X-Received: by 10.46.8.74 with SMTP id g10mr746352ljd.27.1505127004709;
        Mon, 11 Sep 2017 03:50:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.132.74 with SMTP id g71ls786507wmd.1.gmail; Mon, 11 Sep
 2017 03:50:03 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAfCq4zxLp179n5M/jXuFb0GmRNariAbGOn9PfewbQDoDC1rCwyMdlvwsBKY6TdWWX2jRoU
X-Received: by 10.28.46.67 with SMTP id u64mr778053wmu.7.1505127003534;
        Mon, 11 Sep 2017 03:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505127003; cv=none;
        d=google.com; s=arc-20160816;
        b=vSdzicAmB/VNojp9Y5lzn/sKu2/AmskwNYXPHVudMgH1OXMFi/8Z9Y8py6Y5oxsf0i
         ptNvepM0Y4NrhaEJdnCT2JrFxLWK17Yrk+SuBoL5Wy9B4L5I3SmjMBCg1RDG7w0F2gF4
         ow1u5beB02l4lgUukTNWPmXNy3AFRryEy9OlUhu4vDjdeJgtLZYMlVZDjHWiWp2S1Zmf
         bBUIP1UxvSzW3SRhmuazPIFeG8AZmcII1Ws3o0MCZIeKzf+MucXQxcmr3H1TpFXyQ4yf
         WmMFUWlu+DNQ0YUgHZNxR9FjYJu/9fUDnXj3I3CdYlligZTnva1tlPoe4rdQiAgziYlY
         JWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MoBN/u0YX7JIlV7GMzPXoSWzCjGS4hTUZsPwbR1Ez00=;
        b=FMGPDkdq/2IPn/8jHJNh8Rq8OB3GtCQAvk+xjCjy4uraiK4c9Nb9SI7uxnwK0fWUqE
         0fXGdalAmd/D7gBzMmMs5i0pMnpe8tbThSH7QebWyBofzr1V5LY+d1IjNgNVpcmXz5rK
         YHe3vk2ec5UoudtVmBWbTalwETGPGK7P5QY6cIn4qXKoBn+jeysGaO9hGs5OCizfDnpm
         Ov3CCs4qPGylJvfkh+3ZzAK+USG5i7aC4osG3iAb42MizAmR+OS/xJjNGd6vlF8GSBpI
         8RVysSxN68o5hc628IsckHlURiT7TsWBej+8D+N/q3vKYENrL1+qYYsJH7/oPubl0Kb7
         whJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si493243wmd.1.2017.09.11.03.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 03:50:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,377,1500933600"; 
   d="scan'208";a="290470767"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 12:50:03 +0200
Date: Mon, 11 Sep 2017 12:49:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aastha.gupta4104@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: fix multiple line
 dereference
In-Reply-To: <0bffa628-d26a-447f-9609-c6dd63b19567@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709111249080.6947@hadrien>
References: <1505103575-5301-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709110851330.2136@hadrien> <0bffa628-d26a-447f-9609-c6dd63b19567@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----=_Part_12510_490033886.1505125131642"

------=_Part_12510_490033886.1505125131642
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Mon, 11 Sep 2017, aastha.gupta4104@gmail.com wrote:

>
>
> On Monday, September 11, 2017 at 12:22:27 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 11 Sep 2017, Aastha Gupta wrote:
>
>       > This patch fixes the checkpatch.pl warning:
>       >
>       > WARNING: Avoid multiple line dereference -
>       prefer'XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag'
>       >
>       > Signed-off-by: Aastha Gupta <aastha.g...@gmail.com>
>       > ---
>       > �drivers/staging/xgifb/vb_setmode.c | 3 +--
>       > �1 file changed, 1 insertion(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/xgifb/vb_setmode.c
>       b/drivers/staging/xgifb/vb_setmode.c
>       > index cea128b..bf69dc9 100644
>       > --- a/drivers/staging/xgifb/vb_setmode.c
>       > +++ b/drivers/staging/xgifb/vb_setmode.c
>       > @@ -5479,8 +5479,7 @@ unsigned char XGISetModeNew(struct
>       xgifb_video_info *xgifb_info,
>       > ������������������������������������������������� �
>       ModeIdIndex))
>       > ���������������������������������return 0;
>       >
>       > -����������������pVBInfo->ModeType =
>       XGI330_EModeIDTable[ModeIdIndex].
>       > -������������������������������������������������Ext_ModeFlag
>       & ModeTypeMask;
>       > +����������������pVBInfo->ModeType =
>       XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
>
>       Put the right side of the = on a separate line, with one extra
>       tab of
>       indentation. �Then the whole thing will fit in 80 characters.
>
>       julia
>
>       >
>       > �����������������pVBInfo->SetFlag = 0;
>       > �����������������pVBInfo->VBInfo = DisableCRT2Display;
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1505103575-5301-1-git-se
>       nd-email-aastha.gupta4104%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> Putting everything to the right of = to the next line still won't resolve
> the warning that the line is over 80 characters.

OK, maybe you can also put a newline before or after the &.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/0bffa628-d26a-447f-9609-
> c6dd63b19567%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
------=_Part_12510_490033886.1505125131642--

