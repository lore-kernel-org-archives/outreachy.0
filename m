X-GM-THRID: 6668976439860133888
X-Received: by 2002:a5d:65ce:: with SMTP id e14mr405436wrw.12.1552742744690;
        Sat, 16 Mar 2019 06:25:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b641:: with SMTP id g62ls1442820wmf.11.canary-gmail;
 Sat, 16 Mar 2019 06:25:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyddsIIQTz94Np2cYGQQXw8v4alaqWhkEvE4LrBH1cpTHXrDbagJauGtsk096wzDxk8dRb0
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr537666wmi.2.1552742743994;
        Sat, 16 Mar 2019 06:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742743; cv=none;
        d=google.com; s=arc-20160816;
        b=xpMrW68O0Z4BLTOcYBDKnaZjL8NMVQrJldda7gY/m/A8ZgTt5l8mQW5ovxvSKoy0Wf
         O/gRkF5Sx4xLvMYYL6j557sMmub0235TFJY5hhAJT7dEIFW9WmP7g2Yjqp6xM4lz8jgM
         Y3oWU16xomCHROWRSpwL/+qS49yBqiS0FpeySdvo/NjXXu+iohZ6Kf6zuBTn9bBFPkFY
         5zDwmtoBCyIZfgkPcO+Qq/v2+K+v0WyFGLjNWEHdLzC/1Q9kp9vUHFhesEXapC+I1E9i
         KzHF6WWuv2Yi5yPdP8eU93lLLM4+xu2nA1z9hSnex+SeSPm8VDoqibIk5KwnXvX1htjv
         7Uuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cgj1uIngWU3tCojQ2GTPN6VjHUVG0Z9TTRT7jtOd2MQ=;
        b=DwX0c/N5r0DTfBaCA1AhaUdNVyGbx96TRerp9eWHyy//PGS4ZswXjAbZP/6dg6PcDL
         1aNVrOfPilYnSGdkUw85W7xuyhZpMvVmPZ2C7qaQW1VUIMcP0jJFc0/fjtV4ExKHCZty
         MKZJ8bXbLyaEIlXCpE8DKgVwBYNe20oqlL825kfdN4qE0vZT5gubKG1aTl+B+nsLjnaC
         cqy+JgJZrmuUD+0JjL8qMakGF//LzUjSVo2arOC6xS+4xmKDnUp+uMshW53ETBSRZHIp
         5Va2tOrSbuh8o7fFYVg1ujLBCny6qFcWuKY0Y3q0ytVBRYlEMcBLPP02GiMFZKSqjrqu
         s4lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o184si145404wma.0.2019.03.16.06.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:25:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="374008895"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 14:25:43 +0100
Date: Sat, 16 Mar 2019 14:25:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] staging: rtl8723bs: hal: Remove
 and modify NULL comparisons
In-Reply-To: <20190316123251.24875-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161424100.2487@hadrien>
References: <20190316123251.24875-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Himadri Pandya wrote:

> - This patchset removes comparision to NULL in various files of
> drivers/staging/rtl8723bs/hal/ .
>
> - The changes are broken into separate patches to keep the length of
> each patch below/near 100 lines for convinient reviewing.
>
> v2:
> - Change subject lines of patches
> - Include a new patch to modify comparision with a constant
>
> Himadri Pandya (4):
>   staging: rtl8723bs: hal: Remove comparisions to NULL
>   staging: rtl8723bs: hal: Remove NULL comparisions
>   staging: rtl8723bs: hal: Replace variable==NULL comparisions with
>     !variable

Sorry to be picky, but this is not the best way to make unique subjects.
The different patches affect different files, so you can put something
related to the affected file(s) in the subject line.  You may just want to
make a series of one file per patch, rather than aiming for 100 lines of
changes.

julia

>   staging: rtl8723bs: hal: Modify comparision to keep constant at right
>
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
>  drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
>  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
>  drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
>  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
>  5 files changed, 24 insertions(+), 24 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316123251.24875-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

