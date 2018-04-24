X-GM-THRID: 6547933385592930304
X-Received: by 2002:a6b:da17:: with SMTP id x23-v6mr132185iob.75.1524560420660;
        Tue, 24 Apr 2018 02:00:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:754c:: with SMTP id y73-v6ls2996678itc.9.gmail; Tue, 24
 Apr 2018 02:00:17 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/58EoDft7ACsCkqt43mIj7yT5x5Pv9jonUWJE42qpzaZhDGxF+inYYMVsmXSE2WuEHDtyG
X-Received: by 2002:a24:73c6:: with SMTP id y189-v6mr9035619itb.5.1524560417252;
        Tue, 24 Apr 2018 02:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524560417; cv=none;
        d=google.com; s=arc-20160816;
        b=cPY1yafYd9V4X5i7pzkbGEdwOdxVnf5fISugllvHC9QyCTxWx8pph03YkxasdqQuMg
         lQrjlAxYEPWD3Z5H5wxe+NMptDPX5N+fmxMkmfRFC69b7Y7JIfTOP201jx9oB13fxD2B
         Dv0XLUWUj+c8xhXnRAt+8M5o19C/rvgCJUt8kMXxnHRRhp756h/BbZnVCl6canAm71Js
         lcNUv//JRxA7j57FuAJwE4IvDshdDO+zOP9fDjWZJfb87FRudxieh3ukCum4BHBIBiXe
         U1q60BDkw03hRJhD+5Ww6CBw+L7hN4mCRe8P6ypX6qZDg/1LafcYfioMFVG37zRkixxr
         SBNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=1//HqQIc1sbvtRGyMu1JirxJVJ7x4eVOrfvCO6XmEA8=;
        b=Aivp5I0AjQo7sevMiB6+g1H38hvcgWC0NnlJHoK32XpC2nVthp1d+Phhg0+WjL7V9y
         j7hya08pYF+NN+7BuFfAxr18vR/5Myf26kMe9FEZPD85l6P8Z5ME6qfaaBio4HzPGsFw
         K5hM3y0FKC6VeBm/iX371JzalYR8JFeEliNuuqXnU8sRuix1cWKAGqw/SIyirZH7N7aF
         56oiNEenvcTntL5sykB1O47xeQaMl44ElomiJA76KuJ4mlc+sNfCq+r0aoLH58iiQ0J1
         T3Ljqv/R+/uTfd5bz0FKNP5OyKE71Zi9bxQI/sQylVIrB0kZHlbnmlUzdS75abD3DdHI
         js3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=asa9Z3uk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by gmr-mx.google.com with ESMTPS id p78-v6si817791itc.3.2018.04.24.02.00.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Apr 2018 02:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=asa9Z3uk;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x229.google.com with SMTP id 71-v6so14151484ith.2
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Apr 2018 02:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1//HqQIc1sbvtRGyMu1JirxJVJ7x4eVOrfvCO6XmEA8=;
        b=asa9Z3ukFx3PEfl2w5wSBL3ZwaPcjHEpCgc/l6NgtE6WSkq9pvteJDXg4m/WlIKLfm
         H9S69ThwgbPPtyLCdyYI6oNaRuX6fY9L8NZjzQYAhjncb0tHbHeRh0A8NTaAABAZ0e7C
         vi1VYmR6dcnyDBBg4CFevDaCUGXVu4LeoDPRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1//HqQIc1sbvtRGyMu1JirxJVJ7x4eVOrfvCO6XmEA8=;
        b=lws+8d+9Ds09Ol6U7sFlqyajZCKK2uhsSuapbBYJzPnROloNmfA5aZIW8dUPEvZsN7
         hIkxBGaDd/xZsih05Rsd8I2DOauzCgFLZYLxJ+8tqDAuWbA36CM3g7FY6lNgAhpLl/e+
         dHYGAF26TkBawffMQ/8C2oqrx9/6PDYfemAJHLmG04fExvnjRNAnV6TjylJzlfMo1rLd
         QzKY9YEf1ZbFYCBuG44y/XrlJZRoBSxqxlFB5mTP+RFPy2nmrIlLS2mvpch0xgP1wjat
         rcQ/8DtJYTO31rx7le/PmAPENqL4HCJPL8wdVT/eAX+iX+A1GeLj5eJhhWw6gFnSZzob
         +twg==
X-Gm-Message-State: ALQs6tA+IjsZIou6xk+TjSQ/Ek5/xzySzH2Xgt+/UHZ53xId4GVeJF7k
	XiEnPzjGG+wNN9hSc5yFMjkqbAcVfD1QLrvMVpYYeg==
X-Received: by 2002:a24:1308:: with SMTP id 8-v6mr16517006itz.96.1524560416530;
 Tue, 24 Apr 2018 02:00:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:cc82:0:0:0:0:0 with HTTP; Tue, 24 Apr 2018 02:00:16
 -0700 (PDT)
In-Reply-To: <CAK-LDbLj8GqQm2yLKP5086hvJF-e8ByHgrRW5Kx6NM0U1uGMHQ@mail.gmail.com>
References: <CAC4++KD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw@mail.gmail.com>
 <CAK-LDbLj8GqQm2yLKP5086hvJF-e8ByHgrRW5Kx6NM0U1uGMHQ@mail.gmail.com>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 24 Apr 2018 14:30:16 +0530
Message-ID: <CAC4++KCzZ599qeMP+9wdFjjNL5e5zJqePVMDoVDFbMOPZLEsdw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Continuing Contributions
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 24, 2018 at 2:21 PM, Vaishali Thakkar
<vthakkar@vaishalithakkar.in> wrote:
> On Tue, Apr 24, 2018 at 2:15 PM, Nishka Dasgupta
> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>> I would like to continue contributing to the Linux kernel, without
>> waiting for the next Outreachy cycle to begin. Would that be possible?
>> If so, do I simply send my contributions to the driver maintainers
>> (leaving out the outreachy group), or should I send it to different
>> addresses as well?
>> Additionally, if it is possible to keep contributing, should I
>> continue submitting cleanup patches for staging drivers?
>
> Hi Nishka,
>
> Glad to see your interest in continuing the contribution. Yes,
> we use Outreachy mailing list during Outreachy application
> period only. So you can just go ahead and send patches in
> other subsystems [including staging itself] and can use
> get_maintainer.pl to get the list of mailing lists and maintainers.
>
> Thanks.

Thank you for the information. I will contribute as often as I can.
Finally, I would like to thank the mentors and driver maintainers who
guided me through this process and contributed to making my
experiences so positive. I would not have felt like continuing without
your patience and encouragement.

>> Thanking you,
>> Nishka Dasgupta
>> Undergraduate Class of 2018, Ashoka University
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKD-CN1A4AEMMRumGcmp8igXaFHUyHiyPqt4b4v7XN4ncw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

Thanking you,
Nishka Dasgupta

