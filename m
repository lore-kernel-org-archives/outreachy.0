X-GM-THRID: 6393234614676094976
X-Received: by 10.46.82.157 with SMTP id n29mr634395lje.29.1488559035350;
        Fri, 03 Mar 2017 08:37:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls1006382ljv.49.gmail; Fri, 03 Mar
 2017 08:37:14 -0800 (PST)
X-Received: by 10.25.33.67 with SMTP id h64mr508089lfh.22.1488559034611;
        Fri, 03 Mar 2017 08:37:14 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id h62si182057wme.2.2017.03.03.08.37.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 08:37:14 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id a6so49765147lfa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 08:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0Ey2TsljeJUr1kK1l2j/uoe7aGkfcb0Ymq3vUTr0r4w=;
        b=iF45hxoWx9PRA8rXXrIQEs4eB5YthfNy5JrQOwpseldYU0lJp4xYoVc0jNInX1eskK
         lrW0YUTEZEIuDTxR+34n8v/NWFzKtAMZ2QuUP90iGn1IE2OagwckFE1+sa7lpKPoFvTW
         pyCt0wHEqHFn6EQflO9cSVQ3jYcOvbp61gkHvylK3C/3fCoyviCjhhUkNPv2aiR6TmC+
         V75NQfSTghVA0p8edGyPLgR/h28jHuQXeiYl/6B/1p6ZJi5AYhtV0dHuecLtT5Qh11wW
         IQxV5d/5+Qvw/lEFj0VrSx1cdYD16ZvQoFShKJw2wjvCKX8xVcdQYQz1nf3MYHyQnKFR
         d91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0Ey2TsljeJUr1kK1l2j/uoe7aGkfcb0Ymq3vUTr0r4w=;
        b=Q80Pdj9csjp3tLHYKPHaAf5v2FsIdRdxD6DR2VV/fwUbpSIwoVOy9Oejx+RwhFCP07
         5IYERNDshxYSMF2CmZe6Le+zEY6hj9TgzbrGP835ffibnhxMhF3+F5ExlfGNyFv7NuJt
         Qs3JPY6DyE3nsal2fdvTap2oDaYdh/aWIx/vh+99KP1IC6jmxlLoObkcG1EQMmGhgdnr
         ZZ5bf4oDSIlKNnxrFfncwYOGZweAjeXaz+15NEyeHt2jlKhdKT0/0IY0ld5ld6omaudk
         v47kJJtq35umtNsB79e310iZmhqo94xHmXWG5088muwApH8MCnVW/YLL4wPfKt0SXTDz
         ZZcg==
X-Gm-Message-State: AMke39nG+kcSwVRgpzh+iXL/bTbuWStRimGw5yMapiu880PLTLGOT3AFmA07iXa+6LcTLAjQbsUG0d2bTZ9uGw==
X-Received: by 10.25.145.83 with SMTP id y19mr1242819lfj.132.1488559034323;
 Fri, 03 Mar 2017 08:37:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Fri, 3 Mar 2017 08:37:13 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703031714430.3490@hadrien>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
 <1488556204.2179.32.camel@perches.com> <CALrZqyMKJvhQMAdjtLWWKTtxOP+icRZ6bctB0bTtzA8gJi+wNA@mail.gmail.com>
 <alpine.DEB.2.20.1703031714430.3490@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 22:07:13 +0530
Message-ID: <CALrZqyORqWZUfejqgikCH9f+RH+LOmsyiXSKR5iJzdX2O2quEg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 0/5] Fixed compilation error
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2017 at 9:45 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 3 Mar 2017, SIMRAN SINGHAL wrote:
>
>> On Fri, Mar 3, 2017 at 9:20 PM, Joe Perches <joe@perches.com> wrote:
>> > On Fri, 2017-03-03 at 17:05 +0530, simran singhal wrote:
>> >> Fixed compilation warning in lustre/lustre/llite/range_lock.c
>> >
>> > Really?  What compilation warning was removed?
>>
>> CC [M]  drivers/staging/lustre/lustre/mgc/mgc_request.o
>> drivers/staging/lustre/lustre/mgc/mgc_request.c: In function
>> =E2=80=98mgc_set_info_async=E2=80=99:
>> drivers/staging/lustre/lustre/mgc/mgc_request.c:1036:115: warning:
>> format =E2=80=98%s=E2=80=99 expects argument of type =E2=80=98char *=E2=
=80=99, but argument 3 has type
>> =E2=80=98void *=E2=80=99 [-Wformat=3D]
>>
>> I was getting this warning because of changing (char *)val to val
>> where val is a pointer to void.
>> So I fixed this by reverting this change.
>
> Someone pointed out recently that when you make the cover letter for vn+1=
,
> the subject should not change.  It doesn't describe what is new in the
> version.  You put that in the message.
>
I will resend the complete patch series with changed subject of cover-patch=
.

> julia
>
>>
>> Simran
>>
>> >
>> >> simran singhal (5):
>> >>   staging: nvec: Remove unnecessary cast on void pointer
>> >>   staging: lustre: Remove unnecessary cast on void pointer
>> >>   staging: lustre: lustre: Remove unnecessary cast on void pointer
>> >>   staging: rts5208: Remove unnecessary cast on void pointer
>> >>   staging: rtl8712: Remove unnecessary cast on void pointer
>> >
>> > What compiler warns about unnecessary casts?
>> >
>> >>  drivers/staging/lustre/lustre/llite/range_lock.c |  2 +-
>> >>  drivers/staging/lustre/lustre/lmv/lmv_obd.c      |  4 ++--
>> >>  drivers/staging/lustre/lustre/mgc/mgc_request.c  |  2 +-
>> >>  drivers/staging/nvec/nvec_kbd.c                  |  2 +-
>> >>  drivers/staging/rtl8712/rtl8712_recv.c           | 11 +++++------
>> >>  drivers/staging/rts5208/rtsx_transport.c         |  3 +--
>> >>  6 files changed, 11 insertions(+), 13 deletions(-)
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/outreachy-kernel/CALrZqyMKJvhQMAdjtLWWKTtxOP%2BicRZ6bctB0bTtzA8gJi%2BwNA=
%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

