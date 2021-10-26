X-GM-THRID: 7022901752311578624
X-Received: by 2002:a25:cb87:: with SMTP id b129mr12049452ybg.98.1635256941380;
        Tue, 26 Oct 2021 07:02:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e087:: with SMTP id x129ls81714ybg.7.gmail; Tue, 26 Oct
 2021 07:02:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrIFJMzRC3wX20OQkqJJ+uk6Qg9EuU1hbQQ4AKIu/1Edrdl8JMp1E4dNsV2j0zIPiSaDpY
X-Received: by 2002:a25:58a:: with SMTP id 132mr24606927ybf.482.1635256940427;
        Tue, 26 Oct 2021 07:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635256940; cv=none;
        d=google.com; s=arc-20160816;
        b=k8lHwMZsIleQ9rRpiWl4eu1cOZJWhFaUZX9uX49sdTLcfIW9+IRaHcEGZyJX7pNz+e
         mdEi20YqLT2ryalq6zU10Ji8SvbIRts7P0pnz6d1hCqu3n7qKv/a165d7zGFiAP19fbF
         rw5y3zIJIal2+SiJ/H59NtEI6D2xSwEyAdWT+/8cQ9K7x3XqzIgOq/BfrS6PPruJZrXS
         tPFRzkJ5LOEZpJmwzc/KrvZGFYDJ1FfacnkCW46NexL7969kgtHQPDNLnmk42FJEcUBG
         399a3KcGNJ8v+ZJkJgHSFviufVwb/fh8fmM4A6x1k34n7y8SiI/jVfg/G9yLT0WCEebO
         uknA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7xT5KbeP6Z5i6DuOwA7H36EFpQr0TIHA1LZpnbsK0a8=;
        b=KCgR8vn+q3KbgYUPWzPtDMh/X2BTmyc76DbYVybcs+F1jcgMuWOddJKL4BbeJQCEDQ
         mbhv5zENkMbTyWZPDJh+qLp209uszOFLg9oJCFu+7TW7VyespyIjpZpjN7whF9NTIofZ
         6EdOuxe4IkFBYrO7+kVbsG3ORFD7WzaxKJxeXywGdSKfd9ioFe8HXcLuZib53eYbTiIG
         PVINRPlf/SVlNN0mXEFYGwv/aFfPfMcLysJhVUz/Yh/cWb7uZcjSVWGLpsZMvqAeCelJ
         mzCAgChuQCmhQMVjXZ7fXuF/n8xwHraCIIdD0Zwbfywm0usyA11j177XxduWhDNqWv2i
         60/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A9ObEq0u;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id o13si1124905ybu.3.2021.10.26.07.02.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 07:02:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A9ObEq0u;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82b.google.com with SMTP id n2so13566316qta.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 07:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7xT5KbeP6Z5i6DuOwA7H36EFpQr0TIHA1LZpnbsK0a8=;
        b=A9ObEq0uRIEEl6SZsSMG2WLLgDZRXuLVGYFk0gNsEMWZh72bttl3rCAAv+UMvH50G2
         lz7468g+gEpBSfDk7IW/bSdXb6duJ2vSXYZJtTLrZK9Ygs144y2NRC1/kyGPCedllKdn
         VZjGSeDtgDlshlvUvJOHphJUVic/CNViR73Od2wJkQCXBCZFCUFTEZZ0SNvc76s9ZWrb
         HSZVLa8crzGTfJxX73aUXVW9TfEpVe5PpDZhJ4tbqXqjizR8Vt+pMO4JiqP5We9PiPnW
         WrXun4hCcp0Su7tFZvPQY8OnI+BIz6D0quwOUFSaupSFMaXWhZ9BerbzeyiSHxZuE7Ju
         PEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7xT5KbeP6Z5i6DuOwA7H36EFpQr0TIHA1LZpnbsK0a8=;
        b=SF+Ah1wiGmZII+QuUn759T2JjKDlpPu7zBPjLYByykSsBCzY++HeZ+4kkGoBP8URVd
         u2e8lb9kjWjWwPqX/2Rr6NVQCsCOPfh8coNsjgyDxVlK+shdNWe5S8+G6SUOYCzMYP0o
         2QQ3Y2qR20oJpz0RrKBLgXyF5yoh+X7RjsjGRFlCPlIS2rlkvNdHVgNhaAmR1TC4C95Y
         rNOvhDqaE8SLwiJZJ7A9+DvxXnlohFHUsdQnrOJbr8mFjJJgmq9yyb7A6eMXYULYQpxT
         bPgadMhNXI+k1Ymwqh7PLXfe2m74I4EdWjWr9tBfK0NAoZI61tRDpgRLpJOd9zOlYTZw
         C2cA==
X-Gm-Message-State: AOAM532gUjN9jrhhdEM8W/y82c4GtZhsq/ihRt2aLd+iCpvmWSeFFYFO
	WCi/VoL9eZmz8NqYnsrV2a/XPzo3bcnZdvT30O4=
X-Received: by 2002:ac8:5fc8:: with SMTP id k8mr24900825qta.123.1635256940018;
 Tue, 26 Oct 2021 07:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <20211025072528.152028-1-kushalkothari285@gmail.com>
 <YXZdvdj6EQsrfhqt@kroah.com> <CALtHPQsQe06MhSvgs25TVbsjEvfU=ELbK3eFfKunRHXM1+HDxA@mail.gmail.com>
 <2475218.nDWPeaHJO9@localhost.localdomain>
In-Reply-To: <2475218.nDWPeaHJO9@localhost.localdomain>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Tue, 26 Oct 2021 19:32:08 +0530
Message-ID: <CALtHPQsz74sZSbr2+zk76M2Xbhfb+82H89612a=VOHM-89EsGQ@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Refactor nested if-else
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, Mike Rapoport <mike.rapoport@gmail.com>, 
	kushalkothari2850@gmail.com
Content-Type: multipart/alternative; boundary="00000000000006c0c805cf41ed9f"

--00000000000006c0c805cf41ed9f
Content-Type: text/plain; charset="UTF-8"

>You are still using spaces the wrong way :)

>English, as well as all natural languages that use Latin characters, use
>punctuation and a strict style that dictates how to use the spaces around
it.
>Please read correctly written English texts, learn and use conventions

>Thanks,

Sorry for my naive mistakes. I am taking extra care now when writing, so
hopefully, I will not repeat this again.

On Mon, Oct 25, 2021 at 3:32 PM Fabio M. De Francesco <
fmdefrancesco@gmail.com> wrote:

> On Monday, October 25, 2021 9:56:00 AM CEST kushal kothari wrote:
> > >Very long line, please break it up at 72 columns.
> >
> > >And your space around the '.' is odd :(
> >
> > Yes,fixing it.
> >
> ^^^^^^^^^^^^^^^^^^^^
>
> You are still using spaces the wrong way :)
>
> English, as well as all natural languages that use Latin characters, use
> punctuation and a strict style that dictates how to use the spaces around
> it.
> Please read correctly written English texts, learn and use conventions
>
> Thanks,
>
> Fabio
> >
> > >> checkpatch warning : Too many leading tabs - consider code refactoring
> >
> > >What does this mean?
> > Asking about the warning ,correct?
> > The current code is using very deep indentations (which can be avoided)
> and
> > due to this there are many leading tabs. So the checkpatch.pl warns of
> "Too
> > many leading tabs - consider code refactoring"
> > <http://checkpatch.pl>
> >
> > On Mon, Oct 25, 2021 at 1:03 PM Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >
> > > On Mon, Oct 25, 2021 at 12:55:28PM +0530, Kushal Kothari wrote:
> > > > Refactor nested if else by combining nested if into a single if
> > > condition and removing unnecessary else conditionals which leads to
> > > removing unnecessary tabs .There is no change in logic of new code.
> > >
> > > Very long line, please break it up at 72 columns.
> > >
> > > And your space around the '.' is odd :(
> > >
> > > > checkpatch warning : Too many leading tabs - consider code
> refactoring
> > >
> > > What does this mean?
> > >
> > > >
> > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65
> ++++++++-----------
> > > >  1 file changed, 26 insertions(+), 39 deletions(-)
> > > >
> > >
> > > thanks,
> > >
> > > greg k-h
> > >
> >
>
>
>
>
>

--00000000000006c0c805cf41ed9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;You are still using spaces the wrong way :) <br>
<br>
&gt;English, as well as all natural languages that use Latin characters, us=
e <br>
&gt;punctuation and a strict style that dictates how to use the spaces arou=
nd it. <br>
&gt;Please read correctly written English texts, learn and use conventions<=
br>
<br><div>
&gt;Thanks,</div><div><br>Sorry for my naive mistakes. I am taking extra ca=
re now when writing, so hopefully, I will not repeat this again.</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Oct 25, 2021 at 3:32 PM Fabio M. De Francesco &lt;<a href=3D"mailto:fmde=
francesco@gmail.com">fmdefrancesco@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Monday, October 25, 2021 9:5=
6:00 AM CEST kushal kothari wrote:<br>
&gt; &gt;Very long line, please break it up at 72 columns.<br>
&gt; <br>
&gt; &gt;And your space around the &#39;.&#39; is odd :(<br>
&gt; <br>
&gt; Yes,fixing it.<br>
&gt;<br>
^^^^^^^^^^^^^^^^^^^^<br>
<br>
You are still using spaces the wrong way :) <br>
<br>
English, as well as all natural languages that use Latin characters, use <b=
r>
punctuation and a strict style that dictates how to use the spaces around i=
t. <br>
Please read correctly written English texts, learn and use conventions<br>
<br>
Thanks,<br>
<br>
Fabio <br>
&gt; <br>
&gt; &gt;&gt; checkpatch warning : Too many leading tabs - consider code re=
factoring<br>
&gt; <br>
&gt; &gt;What does this mean?<br>
&gt; Asking about the warning ,correct?<br>
&gt; The current code is using very deep indentations (which can be avoided=
) and<br>
&gt; due to this there are many leading tabs. So the <a href=3D"http://chec=
kpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> warns of=
=C2=A0 <br>
&quot;Too<br>
&gt; many leading tabs - consider code refactoring&quot;<br>
&gt; &lt;<a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bla=
nk">http://checkpatch.pl</a>&gt;<br>
&gt; <br>
&gt; On Mon, Oct 25, 2021 at 1:03 PM Greg KH &lt;<a href=3D"mailto:gregkh@l=
inuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wr=
ote:<br>
&gt; <br>
&gt; &gt; On Mon, Oct 25, 2021 at 12:55:28PM +0530, Kushal Kothari wrote:<b=
r>
&gt; &gt; &gt; Refactor nested if else by combining nested if into a single=
 if<br>
&gt; &gt; condition and removing unnecessary else conditionals which leads =
to<br>
&gt; &gt; removing unnecessary tabs .There is no change in logic of new cod=
e.<br>
&gt; &gt;<br>
&gt; &gt; Very long line, please break it up at 72 columns.<br>
&gt; &gt;<br>
&gt; &gt; And your space around the &#39;.&#39; is odd :(<br>
&gt; &gt;<br>
&gt; &gt; &gt; checkpatch warning : Too many leading tabs - consider code r=
efactoring<br>
&gt; &gt;<br>
&gt; &gt; What does this mean?<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Kushal Kothari &lt;<a href=3D"mailto:kushalko=
thari285@gmail.com" target=3D"_blank">kushalkothari285@gmail.com</a>&gt;<br=
>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 +++=
+++++-----------<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 26 insertions(+), 39 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; thanks,<br>
&gt; &gt;<br>
&gt; &gt; greg k-h<br>
&gt; &gt;<br>
&gt; <br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000006c0c805cf41ed9f--

