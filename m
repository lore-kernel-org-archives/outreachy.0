X-GM-THRID: 6528334297317769216
X-Received: by 10.28.202.2 with SMTP id a2mr532033wmg.20.1520090523677;
        Sat, 03 Mar 2018 07:22:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls768296wma.5.canary-gmail; Sat, 03
 Mar 2018 07:22:02 -0800 (PST)
X-Google-Smtp-Source: AG47ELvJ5WNVx07cukC51HREqUXyPoukRc3VuOV5Tjf4QjqkFBD975we+eu2joKVaEY7OM9blhfG
X-Received: by 10.28.45.84 with SMTP id t81mr510820wmt.24.1520090522803;
        Sat, 03 Mar 2018 07:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520090522; cv=none;
        d=google.com; s=arc-20160816;
        b=drYYl5D0kW/je4G622gKq8WV5dlZgstb/aGv37nw84mU+7cNYME+r0DZ2jHJo/GJ1b
         t3DSlfoBHn4VURNBteS7OYph4PyWaZD/hCeAYb3P52jBpvz1qofwalwtoTCcGxUcDomJ
         QDJqOY1rPrF8MQR6KPyi/TJs/CXmfF1q0Dp3GCQvf90wr/8fdcHyCA38l5aBR23eiwdS
         1vio379QPdpO8J1LYFteBsqceZhKHaMZnkIAoomupd9J593aTyo6tUfZEyegmIRBMdcd
         7HltVSylXmu02cKJJDcpeP86PGPQ9L/90G3dzJn0wuOwoaqybJIvHfSfxz5Oi/9NNf3p
         tDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=A/rmvQP3H1CBtxJrIRS8g0YRiHQ1eJ4Nz+CflmPCFzI=;
        b=lIh4QaXBU8O1NdXCBH3573IY89Dbf4uH7x2i3bSFKJD7ur+80lJjA+IBNlXCVXtijT
         yDRVwM/n0V3izaf6SvMsZPRdhIT5+SDy758ZiiYrB5e/7oedL15Yy1wPXdLH4v+26xTJ
         i96doXmqSQvtAFkC+yipnHJM0PLXQoG+t5z2Pk6D026xG93o48e9FLTTRf6mRDaPNDBn
         8sMDFYhz0vTk+XvGFDNlSDdUaQ/Y4JpF4GvWm/OSAJaScoce/x+U2bpL/FafV117XnPl
         bGhiwUxrCls8y/+30HYsPEzMXdQEN2lO3zSk6ZjZ+LIpFpTEpse7njSaLKNH3XxMF3Ya
         69ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 51si523215wrw.0.2018.03.03.07.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 07:22:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="316219018"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 16:22:02 +0100
Date: Sat, 3 Mar 2018 16:22:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] cleanup in staging rtl8192e
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.20.1803031621460.2302@hadrien>
References: <cover.1519995327.git.dafna3@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Mar 2018, Dafna Hirschfeld wrote:

> Fix issues found with checkpatch.pl for the file
> drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
>
> Dafna Hirschfeld (3):
>   staging: rtl8192e: Fix issues regarding blank lines
>   staging: rtl8192e: Remove unnecessary parentheses
>   staging: rtl8192e: Add spaces around operators.

For the series:

Acked-by: Julia Lawall <julia.lawall@lip6.fr>



>
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 51 +++++++-----------------------
>  1 file changed, 12 insertions(+), 39 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1519995327.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

