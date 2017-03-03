X-GM-THRID: 6393234614676094976
X-Received: by 10.28.158.136 with SMTP id h130mr75588wme.0.1488557156832;
        Fri, 03 Mar 2017 08:05:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls1004739ljb.27.gmail; Fri, 03 Mar
 2017 08:05:56 -0800 (PST)
X-Received: by 10.46.7.80 with SMTP id i16mr589406ljd.5.1488557156303;
        Fri, 03 Mar 2017 08:05:56 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x236.google.com (mail-lf0-x236.google.com. [2a00:1450:4010:c07::236])
        by gmr-mx.google.com with ESMTPS id v70si270405wmf.0.2017.03.03.08.05.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 08:05:56 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) client-ip=2a00:1450:4010:c07::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x236.google.com with SMTP id y193so49293797lfd.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 08:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KBwCh2WYl0iHP0tZ2GS8WK1mLyEpdulotpRtopxFFb8=;
        b=YYSKA2HU4abN2PORZFghmiofBQN+YPkksuGnf9Ikv8AbJi3cwck8Zs0yNkrz9VZjYp
         P3uQI66eRAKYx/Sr3GtV/KzFYs+t8ill/xKhrQ5CidnjgZmmWb7RX/+CzIv90wqJFq2F
         yaUv7QvytNnDjVJ7qWOhNNlLZ0MArmgaCuSM5LiFMsOmffNc7eVtQQr6vVCkywY1+EhM
         48h23wCAROpr1pW8UiMbtIISdc+Xueft+0ugHYU65uMaW0U2cYAEHJfvkS6cYec2y7jV
         LZYnMXl+L5+WqdUeG/GspbwJ6Jx9bjq9HCI5wDAivY18svM+K1sykKQNlNI88OX5Q/RB
         rnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KBwCh2WYl0iHP0tZ2GS8WK1mLyEpdulotpRtopxFFb8=;
        b=Xx8sW7nvuljb92wKffEPVf43QQvFKgdk21eObKeiCa8JTkck4yfD5sALdN8B4HNnH1
         owJ9MbuV1ou+okomX7tlf1btTrOlbpX0S8o2o2Zwnn+0leNauqS7IEODp98Mv5eg9qsm
         LuypuXBm4r4ueNKCsvdVKFR2mQx35mjRTF+DyvMI3iPWwGPddA4sDhYT7GKtKHUKwbeT
         dk4B7l4uQeapimebNYHE9RDJNBLXqbqyuzpGJ0cfO9hp1Q/Hy3CWrioTI1OhCT7QanvT
         IRUAGnho6E0u2NjoxSI5fotRaWutfGNssVwF7f4FJK0Q10i234xH/59ixb74C1SilpI/
         btGQ==
X-Gm-Message-State: AMke39kwNEH8FboCurWvRcMmvC5iDu/6S+Gf6kviUCywbsE+AZ0uDe8hUAExMv9DaZofygyJGBwuehXBuhXlpg==
X-Received: by 10.25.31.136 with SMTP id f130mr1235988lff.166.1488557155998;
 Fri, 03 Mar 2017 08:05:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Fri, 3 Mar 2017 08:05:55 -0800 (PST)
In-Reply-To: <1488556204.2179.32.camel@perches.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com> <1488556204.2179.32.camel@perches.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 21:35:55 +0530
Message-ID: <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Fixed compilation error
To: Joe Perches <joe@perches.com>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2017 at 9:20 PM, Joe Perches <joe@perches.com> wrote:
> On Fri, 2017-03-03 at 17:05 +0530, simran singhal wrote:
>> Fixed compilation warning in lustre/lustre/llite/range_lock.c
>
> Really?  What compilation warning was removed?

CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
drivers/staging/lustre/lustre/mgc/mgc_request.c: In function
=E2=80=98mgc_set_info_async=E2=80=99:
drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning:
format =E2=80=98%s=E2=80=99 expects argument of type =E2=80=98char *=E2=80=
=99, but argument 3 has type
=E2=80=98void *=E2=80=99 [-Wformat=3D]

I was getting this warning because of changing (char *)val to val
where val is a pointer to void.
So I fixed this by reverting this change.

Simran

>
>> simran singhal (5):
>>   staging: nvec: Remove unnecessary cast on void pointer
>>   staging: lustre: Remove unnecessary cast on void pointer
>>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>>   staging: rts5208: Remove unnecessary cast on void pointer
>>   staging: rtl8712: Remove unnecessary cast on void pointer
>
> What compiler warns about unnecessary casts?
>
>>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>>  drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
>>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>>  6 files changed, 11 insertions(+), 13 deletions(-)
>>

