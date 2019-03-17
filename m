X-GM-THRID: 6668974051336126464
X-Received: by 2002:a17:906:4f0a:: with SMTP id t10mr689875eju.5.1552805025081;
        Sat, 16 Mar 2019 23:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ee8a:: with SMTP id f10ls3505439edr.6.gmail; Sat, 16 Mar
 2019 23:43:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyW7k6WhfhORtnLjpckRw0XeXAyrxW2loCp+6zarrWDoLePHiJfIsyDK1K3UWBoyqDcMTLE
X-Received: by 2002:a50:8692:: with SMTP id r18mr530581eda.9.1552805024533;
        Sat, 16 Mar 2019 23:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552805024; cv=none;
        d=google.com; s=arc-20160816;
        b=LZp6bajX2RtNd+eeGnn0b/YAyqkhRw3+AA3wHcWQf3CpCWxjlGgTIjQYEraFLoKXsd
         cLy4M5IASvHD+gNU6qL5c2r1hG8wbUDOAV1oMl9xn4fQUUETsjNk2dQGCqqqs1rcr0FO
         8ZGTMyM9ZajFl5SU+B00bho/qpVfEopve4fOvJWcQFgPFYqH0kvYgGWfpcDjGdHZ27rQ
         /2QfU1yHKVuBimzFv87eK8M4M9S7ts90n+2MpRYXYy+wo5DqFY7vYTz4iagNL1umS86m
         TaIKQIcc2eWkKyNRepM9XbtORWWqHKbnK//bagtnlqnB+Pcr1B6LSpKdObjQB9VWTDqm
         mayA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=o7OZab2Q8hQL1Uh3TU8PYMpEKoNshbxNQSBc1q2DCC4=;
        b=LS/uTUbJK6aIkrfSC4FZ6N1B5wnJdocLdF4VqCOVpCvVfOXUpHwMmaOB1w4tkoCbGB
         X4UTi1EQmR6ViQ15O5P2QkRwLtS5hLPHl08B+jdowgzmw0gG1DcPnm7swmleDva3W4W8
         MBpz/VMOHcPi3NcEFHgYD0FK5Vbh8bqyzoxNsnRd5J2dH5YNQ5I5DHvHC52ZLTDk3IZ2
         fuOmZdnzXCFmYo8UYL8Toqzqc1PMLxiFMSMaLN/sS1AyMa29xS+e+KnvV4jYCBReUfUC
         f2UPOlqiwKXRxRjJ7gWGU70FzQE8vOyI+yGnb/bxRE24zr9TDbNec4AT0SdlfvENqD8G
         Rh1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n8si111536eda.3.2019.03.16.23.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:43:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299665661"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:43:43 +0100
Date: Sun, 17 Mar 2019 07:43:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] Issue suggested by Coccinelle
 using ret.cocci
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170743190.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> This patchset does tasks as below:
> 1) Drop wrappers and change function names
> 2) Convert type of local variables and return type
> 3) Change values of error codes in functions
> 4) Remove unnecessary function declarations
> 5) Replace error codes with values
> 6) Remove extern and change return type
> 7) Add missing NULL check for kmalloc

Even though there are some things that need to be fixed up, good job on
this so far :)

julia


>
> All these patches are relevant to an issue suggested by Coccinelle using
> ret.cocci.
>
> Madhumitha Prabakaran (7):
>   Staging: rtl8723bs: Drop wrappers and change function names
>   Staging: rtl8723bs: Convert type of local variables and return types
>   Staging: rtl8723bs: Change values of error codes in functions
>   Staging: rtl8723bs: Remove unnecessary function declarations
>   Staging: rtl8723bs: Replace error codes with values
>   Staging: rtl8723bs: Remove extern and change return type
>   Staging: rtl8723bs: Add missing NULL check for kmalloc
>
>  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 30 +++++--------------
>  drivers/staging/rtl8723bs/include/cmd_osdep.h |  3 --
>  drivers/staging/rtl8723bs/include/rtw_cmd.h   |  4 +--
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  4 +--
>  4 files changed, 12 insertions(+), 29 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

