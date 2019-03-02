X-GM-THRID: 6663442013681090560
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr510159ljl.6.1551523382672;
        Sat, 02 Mar 2019 02:43:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4788:: with SMTP id u130ls1426668lja.14.gmail; Sat, 02
 Mar 2019 02:43:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqzlUHJx1xFsabvIrQlB8of9eCKav0myXzTqMzAY6WLnJxpOky7AUNjn4HfuKxDK1PLVLF5r
X-Received: by 2002:a2e:8154:: with SMTP id t20mr511804ljg.7.1551523381625;
        Sat, 02 Mar 2019 02:43:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551523381; cv=none;
        d=google.com; s=arc-20160816;
        b=d19Xf2z85HYjkZ+Aw1i1/XSB/25rSeR0B5KIbmMS8Q1bUD/8QGlPdLs2AuB+b3poAV
         NnC0M6TxhfH8f2IMNzeiL+og60sTRjt+PPrj5Gh7+8iwMova+WYvZGjZcdsS7vBcuKYt
         LIDVlgIb+P8YhhBAESKsR32tVswYe/4hWA4aP2Tzd6IUMFo4kDHwkai5DZOEjkwhRpA5
         59MwTxiVRpIg849y02QWCZTKN1rxtaW49UBlK116dCSWArycheLFepk6xS/JQB2Cs3Wy
         FW6uWVKcLGDv7OkyXfLmOM2DEcN6es+8ZKqui+ufhX0a1C8GvhxFNVZRB1GWHg00d75Z
         BXvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tJnWrWEC5cJG2QqXyvAQztGY0iUBNY+TOcZiB0QjEVY=;
        b=bYIc9eSJ4T/ovvFMeDLRa+swzpJ6+vgBx7Sg7WlQx9EdULXE1DRcwFmig5fJTjw7UU
         VtVCkMg7TCA5xpzJ+wxD7wXpmeK4HyOLsZk8MzqS0P7XvheIW6J0D6VEOxWs+Vvz3a2Q
         5kBkynvmVNdnO5jW8DGLEYgN0Ucemg664EmvotaoAcP6j/vM6ONyn34AIFhN5hLZZ3MM
         P7t0HpCpddjQzz4HEem5WuDa/PRHEDaLCqoDPu7PUcTRNP+klJmzqKVWxzOoN6wcOB5/
         o+Bg3AqZw/lBEG/z7TKi7+4GzdSWI6eq/UQxiGJpJ2vu2tjcTDytkl0rr0ZBKFR38cLR
         9Qdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R05SnC4q;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h25si26471lja.3.2019.03.02.02.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 02:43:01 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R05SnC4q;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x541.google.com with SMTP id p27so430899edc.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 02:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tJnWrWEC5cJG2QqXyvAQztGY0iUBNY+TOcZiB0QjEVY=;
        b=R05SnC4q4l6O1N+CLGASAIOsRWZvJHLj7oeM2PqDUqHRW2KLTYbE2pAmGm/ukoSBqd
         Sw/WHGmotaYioAuvmCtjm04P3+EGtph81dQvlObsEIFeQieNMiUzgrR1oD1MFqmaosgR
         FhJJyVywoOrgGu0w4UwfCxWY1V2Io7UOjjDnn9P779jQ16SH/kTV3OT5GGoL0jsp9ANE
         2bMMCrg68Krhsofd8QMgDtvrFMvxo1TfiSn5Vk6Dg/6yyp1HZdWVGuQwhudbbmxiQMvW
         yyPmW4YwAZYW4q0qidpHdj8bkzodDTrYO/MpIGRX+CatyErvUD3E+UP9bGsTjzZmwVsg
         ZrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tJnWrWEC5cJG2QqXyvAQztGY0iUBNY+TOcZiB0QjEVY=;
        b=FUM/j/8qf+miGgd63wDJUwYkJdke4DKOc3ZstZgxwqA5krkFr+ecoFlylAkUOyQaDu
         3u9UG9A4lQCKokvvqDzWw8v9JeK/C21eTHQvHeq0GjRecXSD9EaggdvFpTH2F6o9L3rH
         EbFeT0gvurVPUMDXevQYyLhaVHvM6RQ1LA4CsN02M4bCjgGUh4GQSAe5mrBCI50gu+Nx
         Xliu9INrAkHZFGodn1bs77tcjoP5DFjBVznMHxszLtMQVdEofCbUraGW0kjo58Um9MxK
         gcSAieHRoQP6GNhfXo/6+q/zNq8iUrAhvSxMLGsGr6VqZcw7ixpEPNST6kjaMDI7iKX5
         znzQ==
X-Gm-Message-State: APjAAAWDJzWs4JxnsUKChf0BQZOn1/raJCBipBDu8pZCnsm94VR981PK
	jYuHJAysxvnuCk638sdx/+SwpGn5qQhsR7QLow==
X-Received: by 2002:a17:906:15d4:: with SMTP id l20mr6094024ejd.11.1551523380849;
 Sat, 02 Mar 2019 02:43:00 -0800 (PST)
MIME-Version: 1.0
References: <20190302001115.20477-1-jbi.octave@gmail.com> <20190302001115.20477-2-jbi.octave@gmail.com>
 <20190302074544.GA16379@kroah.com>
In-Reply-To: <20190302074544.GA16379@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 2 Mar 2019 10:42:24 +0000
Message-ID: <CAOuULM5YWW=_44u+HKoxFfS4D3AX8KtDCK3A-65Xmv6GWJHttQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f9f15505831a2f2f"

--000000000000f9f15505831a2f2f
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Mar 2019 at 07:45, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Mar 02, 2019 at 12:11:14AM +0000, Jules Irenge wrote:
> > Add SPDX GPL-2.0+ to fix missing SPDX warning
> >  reported by checkpatch.pl.
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c
> b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index d67a2504adb1..7d69586f23c0 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
>
> >Are you sure you changed the identifer to match what said above in your
> >changelog?  :(
>
> Apology,
I had two kernels git ; a back up and one that I work in . I mixed them. It
will not happen again.
Kind regards

--000000000000f9f15505831a2f2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 2 Mar 2019 at 07:45, G=
reg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">=
gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On Sat, Mar 02, 2019 at 12:11:14AM +0000, Jules I=
renge wrote:<br>
&gt; Add SPDX GPL-2.0+ to fix missing SPDX warning<br>
&gt;=C2=A0 reported by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" =
target=3D"_blank">checkpatch.pl</a>.<br>
&gt; <br>
&gt; Signed-off-by: Jules Irenge &lt;<a href=3D"mailto:jbi.octave@gmail.com=
" target=3D"_blank">jbi.octave@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/=
mt7621-dma/mtk-hsdma.c<br>
&gt; index d67a2504adb1..7d69586f23c0 100644<br>
&gt; --- a/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c<br>
&gt; @@ -1,3 +1,4 @@<br>
&gt; +// SPDX-License-Identifier: GPL-2.0-or-later<br>
<br>
&gt;Are you sure you changed the identifer to match what said above in your=
<br>
&gt;changelog?=C2=A0 :(<br>
<br></blockquote><div>Apology,</div><div>I had two kernels git ; a back up =
and one that I work in . I mixed them. It will not happen again.</div><div>=
Kind regards<br></div></div>
</div>

--000000000000f9f15505831a2f2f--

