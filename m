X-GM-THRID: 6805874038364176384
X-Received: by 2002:adf:f510:: with SMTP id q16mr4899475wro.43.1584633488520;
        Thu, 19 Mar 2020 08:58:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls1174132wru.6.gmail; Thu, 19 Mar
 2020 08:58:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuOigG1Pk/bSYITr2lnpWr+/tSyrq4bOW4829zy2gkUh832SkK3v5wOeqQSXiFXO4Wp5Akw
X-Received: by 2002:adf:eac7:: with SMTP id o7mr5417208wrn.292.1584633486422;
        Thu, 19 Mar 2020 08:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584633486; cv=none;
        d=google.com; s=arc-20160816;
        b=SsOuj9wmt1PumwZteYHveQ1dcFAvAGt4qetXF6GecftXbnzWHUMrUmF5lnp7VFsu74
         OCkURUvlYMzAhYV/erUv1zMmuPeCRN4d/jiR7aJPMUlm37xJFZFmYHG2JU2GCzrPRCUs
         TI2uRzihuvv6CVLUgRSVBdUkJ3H3uw9Wh9hLhsKtTmrafTSmQpxmPXH55hwE+qE219DD
         wPxWE05nkYtAyv24NhW7+0T2p/JotID5jEgh06rAB6hAk+2CnVKqFrTjYX0nfBSy51jT
         E8L5LRcTfu8+ZKFcZKfoQfoI2Jm2NRw3EXE96Rf+dgX3wyCEjwkwtAOtG7QdrjgvQH6a
         9OBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=UjP0kDM6Jm1whfvaMiA/3VdVXl3aq99wxmK6mqEafw4=;
        b=gzXG/UEPR/OZHDHcoxWTapf9rJrMjcGO7jWlbJrFLDIR+kEGoXEFyBsHGlqYXbbire
         WmVuRbea0RY5dxVnIn3DQ/7HHTUuncXqcoa0xDyCSzLzMIICRgEcI8RooU25XGfIEIwr
         ZHhtqjJ+tCYJ3gL4Gucq/iyoANLdI/41byEunpgtZj2c4947VP8iPmPyKVeDFpnJxPuz
         wtxYIfQstwO4XnrJIzfzypURn7ZXRQqfLQPfjEOACLVpOWA48IikjEDPaBQujalfZnlv
         pSomCyonvOqInaW/VUGSgI3BuNHKO5IY9mE7ZGivkb8p+g0k/oFdbXyVeBwKHvy/469W
         9Atg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x12si166992wmk.1.2020.03.19.08.58.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:58:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,572,1574118000"; 
   d="scan'208";a="441218132"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 16:58:06 +0100
Date: Thu, 19 Mar 2020 16:58:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Hans de Goede <hdegoede@redhat.com>, 
    Larry Finger <Larry.Finger@lwfinger.net>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH 00/10] Correction of typos and
 long lines of comments
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
Message-ID: <alpine.DEB.2.21.2003191656520.2312@hadrien>
References: <cover.1584514678.git.vkor@vkten.in>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> Correction of typos and long lines of comments.
> Misspellings found using checkpatch.pl.
>
> ---
> R Veera Kumar (10):
>   staging: rtl8723bs: hal: Correct a typo in a comment
>   staging: rtl8723bs: hal: Correct a typo in a comment
>   staging: rtl8723bs: hal: Correct typos and long line of comment
>   staging: rtl8723bs: hal: Correct a typo and long line of a comment
>   staging: rtl8723bs: hal: Correct a typo and long line of a comment
>   staging: rtl8723bs: hal: Correct typos and long line of comments
>   staging: rtl8723bs: hal: Correct a typo in a comment
>   staging: rtl8723bs: hal: Correct typos in a comment
>   staging: rtl8723bs: hal: Correct a typo in a comment
>   staging: rtl8723bs: hal: Correct a typo in a comment

Maybe you could just put all the typo ones in a single patch?  They should
be easy to check and have no impact on the execution, so it is hard to see
why one would want to revert them separately.

On the other hand, the patch would be just typos, not long line changes
mixed in as well.

julia

>
>  drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c |  2 +-
>  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c |  2 +-
>  drivers/staging/rtl8723bs/hal/HalPhyRf.c        |  7 +++++--
>  drivers/staging/rtl8723bs/hal/HalPwrSeqCmd.c    |  5 ++++-
>  drivers/staging/rtl8723bs/hal/hal_intf.c        |  3 ++-
>  drivers/staging/rtl8723bs/hal/odm_HWConfig.c    | 16 +++++++++-------
>  drivers/staging/rtl8723bs/hal/odm_debug.h       |  4 ++--
>  drivers/staging/rtl8723bs/hal/odm_types.h       |  2 +-
>  drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c  |  2 +-
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c    |  2 +-
>  10 files changed, 27 insertions(+), 18 deletions(-)
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1584514678.git.vkor%40vkten.in.
>

