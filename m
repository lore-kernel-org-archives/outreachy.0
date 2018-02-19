X-GM-THRID: 6524333003381932032
X-Received: by 10.223.128.194 with SMTP id 60mr1987278wrl.27.1519073874423;
        Mon, 19 Feb 2018 12:57:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.138 with SMTP id m132ls1484263wma.5.canary-gmail; Mon,
 19 Feb 2018 12:57:53 -0800 (PST)
X-Google-Smtp-Source: AH8x227ZrKdKScTcqVTaAM4ahcw8iF6T9wU0gXONP7tFzTY+GVfU3nMPV/IxGV4ovEeNhT3aLKOU
X-Received: by 10.28.62.73 with SMTP id l70mr521866wma.22.1519073873250;
        Mon, 19 Feb 2018 12:57:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519073873; cv=none;
        d=google.com; s=arc-20160816;
        b=GfxB13G654gOTqQinGf83SSar2YGR+m1UODheEqjgV4zUcYmQZJuox0AFi2HZwdT/1
         9g/Ad9GMzEw6gLmCsuypPfWE6BrQtqp7urPgWk55RxGitijgAaSSNRNaEt19mO8v9hRk
         ab5I9kVCw3tw0chymMAikcEZ4fJ2db88fQeU6nIzHvQdOXARRY5LcAfQ9xg0a1/RwypV
         7VUA+m8teEKbMNoGyJdDzpsM+raesBf/VA76+nXi7Sy8Y9cA1LxLmafV+/N+2kaDM5ga
         UzIHIxmT6proC2AvonxNBdWayZQqFL73afQaBoY9S24ZPYa3fk6WVqPyQWaWVLZ7V9fz
         X8sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=VzjcK5ueGvxSAQ5cheyIEWQtLcnVFYN06BP2PJtRsG4=;
        b=Pmh/CKB1Nna4XAiiDc5XIQdeJ576BhsQhgMUORiv+1zOnboBU4XuKf1EijUOwL1Rgf
         Ya1u66fmjSbuBjtaEN2gSj+BtAFWDBKlk0Ow3iowdQITqxBa28pjLTfUu2s9SkxUCnpH
         c3Ao9CBcPA+lXlZGVK9bC7y30nSsKBL4KZGthsmxbds/JD50H8PhaeMO60p82Vc3Fde+
         +wsqocxQOaLfTMO8lQswQ9Tqdd4Ir+pbJQW2K0BYnE3Yb4laCIvbReqzsVHuLYUssHET
         1QgOv4wMmHWJ6L9tt0QhF2ilbL8Jkrh/yW5/dDVEpTVkC8JnT6crYExXesXVGlFo556J
         RyRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r20si878380wmg.0.2018.02.19.12.57.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 12:57:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,536,1511823600"; 
   d="scan'208";a="314371359"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2018 21:57:52 +0100
Date: Mon, 19 Feb 2018 21:57:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [SETUP] menuconfig
In-Reply-To: <c564850c-61c0-48af-a8f1-d3f03f3fbd11@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802192157290.2909@hadrien>
References: <c564850c-61c0-48af-a8f1-d3f03f3fbd11@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Feb 2018, Nishka Dasgupta wrote:

> make menuconfig does not show the driver I worked on (xgifb in staging) and
> I can't seem to be able to set staging or xgifb to m. How can I make xgifb a
> module so that it shows up in menuconfig?

Have you tried make allyesconfig?.  Most of the time that is sufficient.

julia

>
> Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c564850c-61c0-48af-a8f1-
> d3f03f3fbd11%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

