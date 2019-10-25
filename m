X-GM-THRID: 6751781491192102912
X-Received: by 2002:a2e:8593:: with SMTP id b19mr3194478lji.34.1572022183292;
        Fri, 25 Oct 2019 09:49:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls1330927lji.0.gmail; Fri, 25 Oct
 2019 09:49:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxBAU2PGnwJjkyp0CPHQccjQhgDmb85ZQvwGPzyA+tipTsa11JoukwyT/6Kld4stT1vNF6W
X-Received: by 2002:a2e:8118:: with SMTP id d24mr3011324ljg.111.1572022182239;
        Fri, 25 Oct 2019 09:49:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572022182; cv=none;
        d=google.com; s=arc-20160816;
        b=PEO/Qvu0G1NvJBQOhB87Gtgxb+cxWSK7oeEQWP8LLXxNMq/x6vb3yFLfGNOyzZ696s
         qTaFHPR8C75Cc6xScKF/gh3GS7hbO2cnnL6CEQfKTvEYHOdfpVfeRw8x4uC3H0thciyH
         aaJc7HQQQHuNcZm6lj21ZRFs+FCn4pJczMGITzCfLvy1sHaLhn4pRTQq0hxnn/gRzkWQ
         +WAwJ6TKfiDP/XWi2cAfKI8LixrIQJ8ttxRm2MLFquZTGvVfpSStmB6joFQn4o9noiBM
         suPlKw9UItPkkxbq4A1zTi5OckMpsafU3VdF+ERqEWBdkuArZbSK3KTRhUE4fs+YBo83
         sMGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=t5hNBPglQASXtc3vgcm/fqHOm/xvqahpBChMnJ7/6JA=;
        b=CEoz1tZMALzErIGxTAJK2AwaSGCNTrn6QU8FEUkgT4A0Cks0MXYT2CJ9qS9mG1SJaC
         6aXNJ+vlO7tL4pMOoRVwg1B7i1TOPNoYqngX9J5yrqIADtViWdMNXSL8P5BkEl4ka4Kr
         HccEFIb2A6iaddQ2hbqskgbMbivp8Fb3/96UEv4GHt82O6y0+/C+ZH3ageAqDEZoZUbf
         LP/BO5beV8Ja5C4juPMA9pzLHkOZSRBguyJhNCPQ5zkRiQ/MW0WuFkFHdjm+albFiB5l
         HxAgN+GniIvDOcYM3ZpybB2JXZYrOK0PfO69CeAIY9CT6TrisWZi3uuscVjkE0FlTcnH
         5Nyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z9si145009ljj.4.2019.10.25.09.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 09:49:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,229,1569276000"; 
   d="scan'208";a="408273094"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2019 18:49:13 +0200
Date: Fri, 25 Oct 2019 18:49:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Using coccinelle in a specific file
In-Reply-To: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910251847290.3307@hadrien>
References: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-970093824-1572022154=:3307"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-970093824-1572022154=:3307
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 25 Oct 2019, Cristiane Naves wrote:

> Is there a way to specify a file to use the coccicheck? I'm trying to use 
> make coccicheck M=drivers/staging/rtl8712/ MODE=patch, but I'm getting the
> error: coccicheck failed
> Makefile:1707: recipe for target 'coccicheck' failed
> make: *** [coccicheck] Error 2

Maybe adding V=1 will give more information.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/357e73d8-a1e8-4924-816d-
> bc93a1b20054%40googlegroups.com.
>
>
--8323329-970093824-1572022154=:3307--

