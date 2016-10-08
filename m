X-GM-THRID: 6338894673462951936
X-Received: by 10.36.68.148 with SMTP id o142mr1295076ita.12.1475952871537;
        Sat, 08 Oct 2016 11:54:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.178.80 with SMTP id b77ls2375423iof.47.gmail; Sat, 08 Oct
 2016 11:54:29 -0700 (PDT)
X-Received: by 10.98.142.9 with SMTP id k9mr1552649pfe.15.1475952869711;
        Sat, 08 Oct 2016 11:54:29 -0700 (PDT)
Return-Path: <ruchandani.tina@gmail.com>
Received: from mail-oi0-x232.google.com (mail-oi0-x232.google.com. [2607:f8b0:4003:c06::232])
        by gmr-mx.google.com with ESMTPS id f133si477893ita.1.2016.10.08.11.54.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:54:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ruchandani.tina@gmail.com designates 2607:f8b0:4003:c06::232 as permitted sender) client-ip=2607:f8b0:4003:c06::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of ruchandani.tina@gmail.com designates 2607:f8b0:4003:c06::232 as permitted sender) smtp.mailfrom=ruchandani.tina@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x232.google.com with SMTP id n132so89867129oih.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=unBv4OHFANAx5uHny8AmR/c2d2tDj0PlQUb0g0/DQlA=;
        b=GDpFK95uFOJuYn1kRutRgK/GUQx0I8qnunHm2etpGnlRpIo9qwkwPnKSVWaphFyjwJ
         8lqpWkx4lLprDTHy3wCtJaClmRk5yYlDWJIM5BYnLxcF8c7C32MZeAdfxJt2/RRsSRwY
         QPHNnTVdQtWKNm9R87+bOs3uBrNqeqXhRDa7xCgNfk8uksB3nR3kKM8cw+EhnA9lUyCt
         kE1DrhK220hl1nJSE10xFPQ5yKRfSPhAE4tImlka76FuNa1/TIesIrT4VvBUzhRwgpZL
         s0HGYfvHhmrHxwtOtPtyaMQp3YtfyLjYFy0ZGlei9lGjKZo+fjb57NFfiVuJyG4OMvsS
         IE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=unBv4OHFANAx5uHny8AmR/c2d2tDj0PlQUb0g0/DQlA=;
        b=NgzquR7w0TKioUiRfqXWq94xkBsOsbim7GqUPiQfGukUZ5RuwznalNLVDKr77Bi2oQ
         ILr+yp8uhQfmJGTeueTYf7OOLjXO1m9AMpd54tfL7eFL6IIEFzGUFv5JXq76aBJhQrAy
         /DIoPyo3dr8C0Imcu7fCfYnS301koVvAYdFQYoDtv3ul5lgdcEOh3CEwBmViq+iIl+xE
         Z29BxxfLvUVmPewv+vyosFHOJOqsgEYKXDbfMegRaSDyp6cJ4SZ//kP0cq3hnvWRDCKM
         diQRntF/gONg3Ds344obQucgJIfwr3fBYtrWJB392+6vo3T/SjOcxUaiJG/8ba1mewoa
         8sPQ==
X-Gm-Message-State: AA6/9Rl6p5ENPNNdauG4P1cgdFyG1F1SlkOfvYOo98Ektd8yrVBUC66lDeo6Ct2Rx/LldsCpt10WXYDRm9LWtA==
X-Received: by 10.157.54.71 with SMTP id w65mr15197294otb.128.1475952869556;
 Sat, 08 Oct 2016 11:54:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.158.167 with HTTP; Sat, 8 Oct 2016 11:54:29 -0700 (PDT)
In-Reply-To: <CAB__kkmMzZRg=p1zyKpUquS30cfQ7bwJUn5vo==nDqTUadyZFA@mail.gmail.com>
References: <CAB__kkmMzZRg=p1zyKpUquS30cfQ7bwJUn5vo==nDqTUadyZFA@mail.gmail.com>
From: Tina Ruchandani <ruchandani.tina@gmail.com>
Date: Sat, 8 Oct 2016 11:54:29 -0700
Message-ID: <CAB__kkm-PygV-ig4BYPpHMuhk7H1C-R6NuW=Jp84SJnrefTmLQ@mail.gmail.com>
Subject: Re: 'Hobbyist' pass available for Linux Plumbers Conference, 2016
To: outreachy-alums@gnome.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c000c067ec6c5053e5f0e7d

--94eb2c000c067ec6c5053e5f0e7d
Content-Type: text/plain; charset=UTF-8

>
>
> I have a hobbyist registration pass for Linux Plumbers Conference in Santa
> Fe, New Mexico, this year (Nov 1st-4th). Unfortunately, I am not able to
> make it there due to visa issues. If any of you fellow OPW folks are
> interested in attending, I will be happy to transfer my registration. The
> requirement for the hobbyist pass is that you cannot be employed in a
> Linux-based role in industry.
>
>
Adding further details since a couple of people pinged me off-list: I paid
$275 for the pass and am hoping to be reimbursed for that by whoever takes
it up. The current hobbyist registration is now either $350 or $375, since
its now a 'late registration' (they have difference pricing for different
times).
The online interface allows me to specify the name and other details of the
person I am transferring this to - I can look this up and find out what I
details I need from you. I have no other bookings (hotels etc) - just the
registration.

--94eb2c000c067ec6c5053e5f0e7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div>I h=
ave a hobbyist registration pass for Linux Plumbers Conference in Santa Fe,=
 New Mexico, this year (Nov 1st-4th). Unfortunately, I am not able to make =
it there due to visa issues. If any of you fellow OPW folks are interested =
in attending, I will be happy to transfer my registration. The requirement =
for the hobbyist pass is that you cannot be employed in a Linux-based role =
in industry.=C2=A0</div><div><br></div></div></blockquote><div><br></div><d=
iv>Adding further details since a couple of people pinged me off-list: I pa=
id $275 for the pass and am hoping to be reimbursed for that by whoever tak=
es it up. The current hobbyist registration is now either $350 or $375, sin=
ce its now a &#39;late registration&#39; (they have difference pricing for =
different times). =C2=A0</div><div>The online interface allows me to specif=
y the name and other details of the person I am transferring this to - I ca=
n look this up and find out what I details I need from you. I have no other=
 bookings (hotels etc) - just the registration.=C2=A0</div><div><br></div><=
div>=C2=A0=C2=A0</div></div></div></div>

--94eb2c000c067ec6c5053e5f0e7d--

