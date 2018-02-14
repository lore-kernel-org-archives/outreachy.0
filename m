X-GM-THRID: 6522348459882708992
X-Received: by 10.46.84.18 with SMTP id i18mr268723ljb.7.1518603399048;
        Wed, 14 Feb 2018 02:16:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.13 with SMTP id a13ls1807914lfa.5.gmail; Wed, 14 Feb
 2018 02:16:37 -0800 (PST)
X-Google-Smtp-Source: AH8x2255GlfKZ9T3Aam+tsqVfjW2audxaFqwpwSfQJMQ6X4VR/VYeSGTkDhLnf6Uz4n0oozdpUlw
X-Received: by 10.25.150.9 with SMTP id y9mr312788lfd.7.1518603397194;
        Wed, 14 Feb 2018 02:16:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518603397; cv=none;
        d=google.com; s=arc-20160816;
        b=RHSYsDqBpT3ktS0SeNFgYUdNBKX3MtYo2cQEWC4pxkmoBjd1wpSDkNfqGDsOkvAQhE
         qtjH4mR/394ePsgvBSaQPEzo6dUVlQ04X8fPCjNX/GmMkyhbRdT6R9F7jKpXoBd7veio
         dEROG1DCoe5WfpL2IBJFaNZ8/HfPza++/X+sw2Y0OhcgZk4QbMu+ABVV+QfsGXrgY35Z
         LunpLj2gkLfx/uyaU3kCy5E6fQzKghTA3ok6znePsFJwnsNippMwgOBKlMGduVx8wCS6
         TU+X0B6ddFn0dChDIyzE8jf4FX66ASg0K8d3YUN2T+FmK7niaMvHB6vY96b9d19pcYkD
         ml6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=3Xcg8+RGEOrxTdlElUHBswf4T4VLtmaZkyVpq1UA8Vo=;
        b=L5VqaSfvw+pW2IMs28ltKV+jaBMYIT8o5z6fscuAf0CtLd7wpEXK2kWSjpWHCUPI16
         HehBr2RDyhvARopbH0Ge40c6B/qZ5y84PrbxpY9zmB1b5Byy5LNnYmPFh2NL3w5uasAp
         mssmx/wEL5T3H/DI/wzyYM31hCum7iHuSBto9XiLqRD8fLs2GReVEYVfuio43dNvEr0q
         PwRBBEIHFDlNpEE6iUYjM8jkpxSn5odCj2S6Etq8aISJe1HNvmq0mTTrFpNlLZk67gpy
         iyl0BXBpfhDocRFyStTvhRuoTYp4lbXWGYDnetZpjOfsVmETeFynUhVWGAp6yrUZWY5F
         JnVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m2si710100lfj.2.2018.02.14.02.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 02:16:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,511,1511823600"; 
   d="scan'208";a="313515970"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2018 11:16:36 +0100
Date: Wed, 14 Feb 2018 11:16:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreyasi Rao <shreyasirao97@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Compile your changes- Tutorial(make -j2)
In-Reply-To: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1802141115520.3340@hadrien>
References: <CABwYNcVXBFj=pqj2MnbAHKZMHCpA9P=E2XgwSh5wWRTd+rMRmw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1531969668-1518603393=:3340"

--8323329-1531969668-1518603393=:3340
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Wed, 14 Feb 2018, Shreyasi Rao wrote:

> Hi,
>
> I followed the tutorial upto modifying driver on native linux but when I
> compiled my changes with the make -j2 command it gave me this:
>
> �YACC��� scripts/kconfig/zconf.tab.c
> /bin/sh: 1: bison: not found
> scripts/Makefile.lib:217: recipe for target 'scripts/kconfig/zconf.tab.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.tab.c] Error 127
> make[2]: *** Waiting for unfinished jobs....
> � LEX���� scripts/kconfig/zconf.lex.c
> /bin/sh: 1: flex: not found
> scripts/Makefile.lib:202: recipe for target 'scripts/kconfig/zconf.lex.c'
> failed
> make[2]: *** [scripts/kconfig/zconf.lex.c] Error 127
> Makefile:507: recipe for target 'silentoldconfig' failed
> make[1]: *** [silentoldconfig] Error 2
> make: *** No rule to make target 'include/config/auto.conf', needed by
> 'include/config/kernel.release'.� Stop.
> make: *** Waiting for unfinished jobs....
>
> then I installed bison and it didn't make the error go away, now I am stuck.
> If you could please tell me where the problem is.

It seems that you are also missing flex.

The startup of the kernel compilation process is indeed surprisingly
complicated.

julia

>
> Thanking You,
> Shreyasi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CABwYNcVXBFj%3Dpqj2MnbAH
> KZMHCpA9P%3DE2XgwSh5wWRTd%2BrMRmw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1531969668-1518603393=:3340--

