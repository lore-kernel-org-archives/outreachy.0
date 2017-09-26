X-GM-THRID: 6470043684863737856
X-Received: by 10.13.203.82 with SMTP id n79mr6416193ywd.192.1506427465999;
        Tue, 26 Sep 2017 05:04:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.102.70 with SMTP id a67ls3755171pgc.20.gmail; Tue, 26 Sep
 2017 05:04:24 -0700 (PDT)
X-Received: by 10.84.215.220 with SMTP id g28mr5663732plj.59.1506427464889;
        Tue, 26 Sep 2017 05:04:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506427464; cv=none;
        d=google.com; s=arc-20160816;
        b=xQkEZqTmFztdes+EL8Py+lRKq9oaTWSMmeygpUvE820tm6FqLmwq2yUFr6A4vnpnx6
         09sY0PDVX66+iIfBk0KeHC5r57gOrXyBTXEczvwiG6X4lyjbEBDnZleLivE+sQhhHeny
         RWTJKA/XksW42Aq04MbbPplmsRkNDbgRENcRIk26ciWRfOPgyg3XrrSJw8bphgQlSnG1
         exwViOW12HfwH4aMEUYJX4pIpulCvC9Ni3QLXcjbR3GPMJ+PF1JiG56cQSB032bglUIN
         KX0sAs2QC/83XCEMpi7k3nyq5d9Dy6ouy1eHHKXNmTcCsJ3ZkPuIlkPftvPMcpLmURY5
         G0UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=lqyPFyJY+5bdCDdcy7WzLAPJh1YnMDDrM279idRuloo=;
        b=nx7bWCa+M7ricZSoNOV0NAQUUz1BDPf+HmnkuovPXfIjY6bOMRmObraiN10n5Zi2ua
         uqHqdlFI7SHVwqjWQ24o8TDr5Y2gJKBI+1SkG07h31ETS6dvv0KyoIaHCFOw84qFOj5Z
         TgggrNCCEQhHhA1dvvdz92GCSd2QhkjLWJ1LN71JKYWDwkJtMTkB2Do4Jh8o4j72zwjk
         mcMZyJC432dVpGUrchtNWjW2Q3V1bJQgo2fkq+lzdU6i+Y+9+6RA4FZQcPF0yWgRBQRe
         CnH1M23i5okvoOOj/vtY+ixxgWrWYEM1k0rEc0GfuW07JSxiN789HkGhRR9eKAvbYlWj
         LDqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P2yX4Mgw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id g186si421661ywc.29.2017.09.26.05.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 05:04:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P2yX4Mgw;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id a128so9757744qkc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 05:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lqyPFyJY+5bdCDdcy7WzLAPJh1YnMDDrM279idRuloo=;
        b=P2yX4Mgw+KFo4+/MFL4XMabCvJkngq0vETZ4u9g6lWoGEmJyvxXe3Thf89TMrTVpPV
         1tKtJwV5ioKeLAjN438sGdwWdBM6xVNfEl/ueNwsmd/lMb2QESlrfprQI77gDuDwJNSy
         gqjHN3sbIbvSCCt2nyXwiCR4ipBwmv2igiaZosnAA3+oatxY/XZ/ECTnoSbCFWXHBxAv
         WNLxOjfnmJ7hSQUPqCHrUwmriq71BB/EP2V/lLq96nZ7BbYh2DYZaLahgpSRDnqL1Iw3
         qdDfH4mbUaEPOBdbFc9FRinbzntntzKlDmAsSP/gnDVcnyVEBPf152OwMe9N1lvXp5O4
         5kZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lqyPFyJY+5bdCDdcy7WzLAPJh1YnMDDrM279idRuloo=;
        b=Gr/4YNX72i+cEgumiN4yl3vEV9rX4z3N3BUI60RVVz3p6JMmK0tN4WRW1akm9I5ssX
         f5hy2G3qd77OtQ7gQrBX5zdxYcmy9a1a51eh9pcmMaldTK6FUgH7c4NzgHwQoczjhGQ7
         dYy7B9gxBrI9VZTE4F6BwSJiStpv//Npb1xiqWvEHQRaZCE3tuEWOQKIqDrmaYL7A+Yf
         EmB520JHPGR+u6cCDmbuu8yyGZotqThohesNS1CpVwQ906+ZQrzkkZn65dR0V6zV2HU7
         ckWSPiRx6cUGQzhdKC15DfnmhtUPxLzQ5pr1W6ZTxDHlRNHvGDG2RzhTnoFs22ZtQW7Q
         IhsA==
X-Gm-Message-State: AHPjjUjC/ZuTd95zT2m/klP6/TjLMHfuo/psGoIj06UefZf6gGKrJ90/
	aGbj4xSe9TLw0H5Na3lyAhcukMs3B8ncmcxTUQY=
X-Google-Smtp-Source: AOwi7QCWh+seXaL1KEBYDYBt3vHt9pOeXRvLw1wlMkpiRElv1AiwifdhZuGMnqJvttP5Q46MNT49H/lVXuYD8lPNmSo=
X-Received: by 10.55.104.87 with SMTP id d84mr13994825qkc.202.1506427464571;
 Tue, 26 Sep 2017 05:04:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Tue, 26 Sep 2017 05:04:24 -0700 (PDT)
In-Reply-To: <CAKMK7uGtMznSP7xXpLcodJbq4mHepZvjpFvD3vQdAA=MfaKD1g@mail.gmail.com>
References: <CAKMK7uGtMznSP7xXpLcodJbq4mHepZvjpFvD3vQdAA=MfaKD1g@mail.gmail.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Tue, 26 Sep 2017 17:34:24 +0530
Message-ID: <CAB3L5ox-a4PTQRB7g1sSSAcXqat=k5Pk1hCZv+8juShFwu8akw@mail.gmail.com>
Subject: Re: GPU subsystem outreach tasks
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Sean Paul <seanpaul@chromium.org>, 
	Harsha Sharma <harshasharmaiitr@gmail.com>, 
	Meghana Madhyastha <meghana.madhyastha@gmail.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 26, 2017 at 4:43 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Hi all,
>
> We seem to have a few coordination issues with gpu tasks. Please
> follow these guidelines when you want to work on the GPU subsystem:
>
> - First you need to successfully submit patches to staging. Guidelines
> is around 10 patches merged.
>
> - Before you start any of the todo items, pls chat with mentors.
> Currently the todo items aren't annoated with the experience needed,
> and some of them need full driver experts. Others are easier, but from
> the work load more suitable for the entire internship and not for the
> application periods. Others need acks from driver maintainers before
> you start working on them for a given driver. Harsha Sharma and
> Srishti Sharma, the tasks you've picked are not really suitable for
> the appliction period.
>
> - To avoid duplicated work, everyone pls list what they're working on in
>
> https://kernelnewbies.org/OutreachyTasks
>
> If you have any questions, just send Sean or me a mail or chat with us
> on irc channels.
Hey,

Sorry about that, I have removed that task from the tasks page, thanks
a lot for these guidelines.

Regards,
Srishti
>
> Thanks, Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

