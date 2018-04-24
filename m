X-GM-THRID: 6547933385592930304
X-Received: by 10.46.158.24 with SMTP id e24mr1457163ljk.12.1524561908699;
        Tue, 24 Apr 2018 02:25:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.133.18 with SMTP id j18ls2077611lji.2.gmail; Tue, 24 Apr
 2018 02:25:07 -0700 (PDT)
X-Google-Smtp-Source: AB8JxZp1Xb+p5YOob0YLQXgqf5KwNYa/+w+z57EiTGcmB18dzXsqN4PkToGoR2QgcYuPgphjasF8
X-Received: by 10.46.44.8 with SMTP id s8mr250308ljs.2.1524561907686;
        Tue, 24 Apr 2018 02:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524561907; cv=none;
        d=google.com; s=arc-20160816;
        b=XIlZqRHpR/XbXYRQR84LIHZHKKPY8Yv6eL5s5gHmQl3FlAP1PET0FL4WJophWhy0ey
         5gztpG6vzsOEFwnra4KqKT9zdEB3QokaIRuCY2KgRgSFfhaQ+XCTr/A3O5maLLk0qgxV
         sAL818XQZVNGdvmekEOmeqDNZWcx5Ujl0Mt4jmWkIK6eBQvQN6CPoMyLG0BSyGFxvAo0
         SNbac426TZRq/sPfZMjLCYd9WQd86H6gUgdfF/qxN2F4qgtA6dcbW6oU5Ldd9p8cu7sN
         oGgkthciGTwFSw1yDNe+AFk0J0EE582D9wChRIGVjza806h9K0eIqKgrwNhSHXCabsbT
         fqjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=gEdi5INWDvLz9vZ8M9wM+GW1URSKEO111peMH7LPh2s=;
        b=uPWepQxrrMHl3cEuIhVUZr8ODp4nZYPhqg7WsB5ogY7gd8nGb+p+mSMsU/xH4oJa8k
         EIrpKxHWG/XumZyx+9EG0qoqvIhkPslPyWfwsOP9UOV9I5ZsSsklwqrGh0EwusMJA79P
         DmoiTAFZ/HLs6+lWV3XuKAU6mXoELIRHcb3C+RJK55noEw5f4LiLXTLFQEp7e+1S6wzK
         e73w1llxsoESdo2IupJ+4Liev/7HcqgqwD6S5xqn+WAekqxkPv2hkblIb89MESn3gGQs
         tyiBU1D3b2GKIl8neojZRkNn2YqaO0aac8qHdZSxySUogeKXZIbxJXhgng5O4sLxoV/j
         2oLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b15-v6si275114lfg.2.2018.04.24.02.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 02:25:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.49,322,1520895600"; 
   d="scan'208";a="324222222"
Received: from static-wan-bl3-194-82.rev.webside.pt (HELO [172.16.1.149]) ([62.28.194.82])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Apr 2018 11:25:06 +0200
Date: Tue, 24 Apr 2018 10:25:05 +0100 (WEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Continuing Contributions
In-Reply-To: <CAC4++KCzZ599qeMP+9wdFjjNL5e5zJqePVMDoVDFbMOPZLEsdw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1804241023160.2295@hadrien>
References: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com> <CAK-LDbLj8GqQm2yLKP5086hvJF-e8ByHgrRW5Kx6NM0U1uGMHQ@mail.gmail.com> <CAC4++KCzZ599qeMP+9wdFjjNL5e5zJqePVMDoVDFbMOPZLEsdw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Apr 2018, Nishka Dasgupta wrote:

> On Tue, Apr 24, 2018 at 2:21 PM, Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> > On Tue, Apr 24, 2018 at 2:15 PM, Nishka Dasgupta
> > <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> >> I would like to continue contributing to the Linux kernel, without
> >> waiting for the next Outreachy cycle to begin. Would that be possible?
> >> If so, do I simply send my contributions to the driver maintainers
> >> (leaving out the outreachy group), or should I send it to different
> >> addresses as well?
> >> Additionally, if it is possible to keep contributing, should I
> >> continue submitting cleanup patches for staging drivers?
> >
> > Hi Nishka,
> >
> > Glad to see your interest in continuing the contribution. Yes,
> > we use Outreachy mailing list during Outreachy application
> > period only. So you can just go ahead and send patches in
> > other subsystems [including staging itself] and can use
> > get_maintainer.pl to get the list of mailing lists and maintainers.
> >
> > Thanks.
>
> Thank you for the information. I will contribute as often as I can.
> Finally, I would like to thank the mentors and driver maintainers who
> guided me through this process and contributed to making my
> experiences so positive. I would not have felt like continuing without
> your patience and encouragement.

Nishka.  Thank you for your continuing interest :)  If you keep working
steadily, you can start to get a good feeling for the code, and be well
prepared for applying in the future.

julia

>
> >> Thanking you,
> >> Nishka Dasgupta
> >> Undergraduate Class of 2018, Ashoka University
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw%40mail.gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
>
> Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKCzZ599qeMP%2B9wdFjjNL5e5zJqePVMDoVDFbMOPZLEsdw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

