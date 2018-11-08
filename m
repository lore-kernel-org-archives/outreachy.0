X-GM-THRID: 6618908371010453504
X-Received: by 2002:aca:ef88:: with SMTP id n130-v6mr3752193oih.13.1541700209808;
        Thu, 08 Nov 2018 10:03:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:524a:: with SMTP id q10ls1169717otg.14.gmail; Thu, 08
 Nov 2018 10:03:28 -0800 (PST)
X-Google-Smtp-Source: AJdET5eJ76PBtf12e3kHWYFnK9NtPDcG6eveQSq6txT39BqXk3MC1iGkOF0G+pLUmD7VIKQ75Tl7
X-Received: by 2002:a9d:2e64:: with SMTP id c33mr3759461otd.61.1541700208605;
        Thu, 08 Nov 2018 10:03:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541700208; cv=none;
        d=google.com; s=arc-20160816;
        b=NieuJa/qD+v2rgpU/YwffX1nPYt0mr/tmQS0hCQ0li+EGfliQrCR4requigFnWk37d
         juVRNlct7dP8fg4X5SJIcKs3OW8e5tt7csgp4I+iLJbjTEsI+Sad5JABUsRs+z90Rxxh
         nEqLhTniolYEF45vIUeJGZYjHdPmRXXYcTf+03Apcp53hDbw8nNdCd3yRWS/toiEFz3o
         C5rAX4P/W6YqG9B7DaJpXam6wBy+/VywQjmtXRJF/teiw7vx6O7pE01fi3hDhC6/9UP/
         Gz5P2sSpJHKJeH57+6h8Q54OgqKM4GQgyd2OqOMKtoliCcAYfj1TxUk+dti5l0GadIjm
         77UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gxGTGAGm6D6u6Oa78A48aViid96iG2JbBhQCridYE0E=;
        b=UD0cma48D5WN8tYcKeqniS3Q1xipZYSuhucbjk+GJwOYlERet1uVc+/7t5HEXUs+ir
         YqCrEo9znaacrdiTWiD53mm3/JKV8eulQsbP4Mi0anb9c3ZxxjnjxpoAZ0SBcHcgExFo
         VUTnFwl3pC1D0DkLuVgRKFJtjRWHXr8WCCvixvoap5+teINXsZ68D7ewVLRWh+RuRRRR
         5JJ+GKNtIzjSuIMy2W3Lmj+0GDmH+nTvcmen+RL6cOQ3MA+BJocu5XlnAM5Hnq/El5ih
         p8osj1mF2avdoJgYn0oco9VZiqxcljXbta1t0A3lGQoeySVucQo6AA+ueAco2nwb4/Bx
         84Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b="0gtUkt/h";
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id p24si229304otk.4.2018.11.08.10.03.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 10:03:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b="0gtUkt/h";
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pg1-x52c.google.com with SMTP id w3-v6so9167658pgs.11
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 10:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gxGTGAGm6D6u6Oa78A48aViid96iG2JbBhQCridYE0E=;
        b=0gtUkt/h/PWs8xIhj15gLUYpLdSOrzwgXzazOHaauRPpePn8JFXU9sdfEaOtiNEKL/
         VqYdJAbwcpjVBxWTsl0Ge7srJ5OZZ1xjuGsqrBBoUH64opzzw9IUvBoPafV0NGlVx2qz
         COX2X61gfuCQtC1SNkIpSQM/Pqtc+9UbRUQivv1QyAeJNZxD8qrmUFN+Btb3Lgw2dlev
         KZCTi6osmddEiqs9RN8TorI3r71DW7CPXXLbG/+xP19S/bFkEegrLocSd591FNhEgm0H
         DVe3zHBc6fpcok2vvZS0vW1hRcHA40b3yNae3kasyPelWguDnBCMn2/A+btCD8LedCQ0
         EweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gxGTGAGm6D6u6Oa78A48aViid96iG2JbBhQCridYE0E=;
        b=OVHGUys/sOJg/vmU5/LajI+liVkYoPwQRsIQE1kJHXvvrw/0Fqdp7SmMtwZj3nxweO
         5w4WCUQMO9XADJD3vv7R36AlS1bXzBBYIPFIMCv0bXMzRNMM9Tg/Sx+Ik7Jq2Vz75cKG
         XPdcfizgZWNNoa6TwcASmfZtBmYiDLuE3ItcEUJVuKinDKXMd1LNxhucUmOMwhdYojel
         f/SCU/r75FQomYFLOA4tLyCCkewo69iDzv3Z4DGCPow7DtDFP7vuKoo1M//H28NnqTwa
         jTw3prFFBbrNtZjMoUNpGvJvagegI/70ouFyBlJwmUWL+NmW0jEq2v9Z68sGckkYFPin
         EFQg==
X-Gm-Message-State: AGRZ1gIZtTI62joxn6mpf3sculvKLrJ7/0aqTKTRl6NsApOYYLMf+L8W
	rCQHp5zMgfWYpX+XfI4IpyH5KvGAWGB/VpoV9pIZ6A==
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr4557582pgr.333.1541700207833;
 Thu, 08 Nov 2018 10:03:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <CAAEAJfC=R3U9Pz0K5MkYT1Y0FM=PA2e6uUfbYL3sfDuobCWMDA@mail.gmail.com>
 <CAJ1myNSJ5RtaJgAubNyxmH-JrZdVpZtjHL6-jDhW65oStqX-Ow@mail.gmail.com> <20181108175422.GA14882@sasha-vm>
In-Reply-To: <20181108175422.GA14882@sasha-vm>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 8 Nov 2018 15:03:16 -0300
Message-ID: <CAAEAJfDCkavy-32xR_jCUQfu3jofKQdjrMHMikaTND=TUxJhiw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH vicodec v4 0/3] Add support to more
 pixel formats in vicodec
To: sashal@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com, 
	Hans Verkuil <hverkuil@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	outreachy-kernel@googlegroups.com, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 8 Nov 2018 at 14:54, Sasha Levin <sashal@kernel.org> wrote:
>
> On Thu, Nov 08, 2018 at 10:10:10AM +0200, Dafna Hirschfeld wrote:
> >On Thu, Nov 8, 2018 at 2:51 AM Ezequiel Garcia <
> >ezequiel@vanguardiasur.com.ar> wrote:
> >
> >> Hello Dafna,
> >>
> >> Thanks for the patches.
> >>
> >> Just out of curiosity.  Why these patches havent't been submitted to
> >> the media mailing list?
> >>
> >> Hi,
> >I wasn't sure if I should send it to the media mailing list, since this
> >part of outreachy application.
>
> In general, for any patch you send to any subsystem please Cc all the
> relevant mailing lists and maintainers. For Outreachy application you
> already did that (by Cc'ing Greg), you just need to keep doing the same
> as you continue your work on other parts of the kernel.
>

Let's Cc the mailing list now, as these patches look good, and the
test scripts look pretty decent too ;-)

> >Also, how are you testing these changes?
> >>
> >
> >Based on Helen's decoder:
> >https://gitlab.collabora.com/koike/v4l2-codec
> >
> >I extended it to include encoders and decoders for the new supported
> >formats.
> >
> >testing formats with alpha plane:
> >https://github.com/kamomil/outreachy/blob/master/argb-and-abgr-full-exam=
ple.sh
> >
> >testing greyscale:
> >https://github.com/kamomil/outreachy/blob/master/greyscale-full-example.=
sh
>
> It's awesome seeing these testsuites, it gives reviewers confidence that
> your patch is well tested and they can focus on other parts of the
> review process rather than check for the basic correctness of the patch.
>
> Please include links such as these and indicate how you tested your code
> in your future patches.
>

+1

Thanks!
--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

