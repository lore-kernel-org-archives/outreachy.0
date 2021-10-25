X-GM-THRID: 7022901752311578624
X-Received: by 2002:a05:6638:2581:: with SMTP id s1mr9422350jat.35.1635148573247;
        Mon, 25 Oct 2021 00:56:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1bac:: with SMTP id n12ls3562296ili.9.gmail; Mon,
 25 Oct 2021 00:56:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwARCvOCVpITSVTg+NJulC+3IFEmFfDkPgz1bMtsqki9BXwgGfiRV6gVirYZuIlRVB8q2dT
X-Received: by 2002:a05:6e02:8ad:: with SMTP id a13mr9005094ilt.136.1635148572492;
        Mon, 25 Oct 2021 00:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635148572; cv=none;
        d=google.com; s=arc-20160816;
        b=UhduIROo28/rQlBv6hFDIIOyD+aRRKZMfGJixzstufDLmpfHh/lkb/daSUp6IqHWkL
         LNvgusZMa+3BPT4zPT3+YTNhmLoFJGq8jajN8llF+Qykaq//Gv+kfYv09gZUp2lwYNBF
         Mmod68K+8o61fQvdikKOiYdl6oFd9i8H7tQS6m78HEDkK8bRRamzUYimJncaGWHcDcSk
         Xek2tuSe1o3Mv9kkkHIylB2yY0yY9WnHwl8U5fYCqwaqf35/kC7SI3e0VBNdG9nnUXJU
         dmRJpHpm4anxz1FE7GAaGUwp2ZNJpJEsZ9SdmJsLfPGphmzhRurFnngLHtk73oT+Rgxs
         gkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pLAmtnd2uwvPw1Cgk3UJ1FSf3lSG6KjWA4uBZ9ybIsQ=;
        b=x2MwlBprWfBFjn9/FQQ9rXJsGO6yWKoHZ+WrDGc50ZoqzV3pqyV3rOq8zwE/hopfs9
         x6J5GurLTmWyWIRsYG/2pSFyjuMVUdPmCblxgAZjZxv0cfdJFYxWyINXbJohUkK21H4Q
         yrZK9txVZjjP3Pr3sHynkol/45bNhGcu4ysOmCTmX0wVXrvdf0ydFmC0H7+8ppTc8a4A
         1hAiDq4AqS3kgUt8PJcGBwDloxp6xYJwDg0YUR5BXTOsGGCx2pWOAh0bHVVl/hejtZZ4
         2tfQVQPDe78VRT7+L6m70H7W70etTYKuupPK+PHOCqD/+I4yIWLp8Ac+0ePzep8w2nfl
         xDiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mWfjykjX;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id e16si912944ilm.3.2021.10.25.00.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 00:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mWfjykjX;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x732.google.com with SMTP id g20so11056786qka.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 00:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pLAmtnd2uwvPw1Cgk3UJ1FSf3lSG6KjWA4uBZ9ybIsQ=;
        b=mWfjykjX/IKzHMiAkrPGcHrO5rDj4qcPWRN9EzdKrWrRao8lDJVJFzl6gvr2d9omgF
         3RrNIHXQSqlUg1E6zMF4mXQRPUZu6NlCUeF8BGdrlEUhcenbNTNynMsGGYNaFKoNEpeH
         VII/SVnzu+ZeWZHxirJhgHGPGiJs+IYg99tul28l2rD2FiFHbBIIlBwPwyLCO9dbTaWF
         xDRN936qlmC3Z00ULrcdIYQB/she+NhNGmZOso3FId4Uk4GC1RpTHBVmVCkETjHXgJdK
         0BszqpmORMCjyB1ts+H0mXHItoWmRy+Rg7Y5uVtPQzxxpkyKz/k6tTeslFYz8ErSo9JT
         oGAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pLAmtnd2uwvPw1Cgk3UJ1FSf3lSG6KjWA4uBZ9ybIsQ=;
        b=g4JEGUL+tPAaqJlM1EwAy/w7XmRe2x/8YSVFF/OGROH5t7nI3NW1hmEEsdlMklN56L
         mGypqPxoA9WxaT1vFSo5LnwLA7XfF2MzjSuT6yKVImzXxZcGCejjt0jyHXLvd0th7Rdx
         0LkAUeqoUnE4ErMJudtcqgHx+dbgH0xbzhpGIE4/Oo5lVfiVNG8fMRVo3bt18i/Linyq
         ntlYdUsg4pWVeywyQ9KwO0KjsT0cHiO7hWJ52utV8yPrlFA1p5LHMTGLCOgZr1CvcDQk
         a4wslhGkrssvXluhHlwNj3Pw/V4cWFV70WAZF9lNdWlZXMtpR2qP0DjSzXCopJL9y75r
         BQcw==
X-Gm-Message-State: AOAM531U7ra996n+01FEL3VZVai87fW277E15sVKCckAMeXPuIse+QXv
	WYJdtGh55Wm27NrnTba/9RgDJSl+L4Zllq3cOWA=
X-Received: by 2002:a05:620a:199e:: with SMTP id bm30mr12044345qkb.113.1635148571955;
 Mon, 25 Oct 2021 00:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <20211025072528.152028-1-kushalkothari285@gmail.com> <YXZdvdj6EQsrfhqt@kroah.com>
In-Reply-To: <YXZdvdj6EQsrfhqt@kroah.com>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Mon, 25 Oct 2021 13:26:00 +0530
Message-ID: <CALtHPQsQe06MhSvgs25TVbsjEvfU=ELbK3eFfKunRHXM1+HDxA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Refactor nested if-else
To: Greg KH <gregkh@linuxfoundation.org>
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, hdegoede@redhat.com, 
	marcocesati@gmail.com, "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, Mike Rapoport <mike.rapoport@gmail.com>, 
	kushalkothari2850@gmail.com
Content-Type: multipart/alternative; boundary="000000000000c954bc05cf28b15c"

--000000000000c954bc05cf28b15c
Content-Type: text/plain; charset="UTF-8"

>Very long line, please break it up at 72 columns.

>And your space around the '.' is odd :(

Yes,fixing it.

>> checkpatch warning : Too many leading tabs - consider code refactoring

>What does this mean?
Asking about the warning ,correct?
The current code is using very deep indentations (which can be avoided) and
due to this there are many leading tabs. So the checkpatch.pl warns of  "Too
many leading tabs - consider code refactoring"
<http://checkpatch.pl>



On Mon, Oct 25, 2021 at 1:03 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Oct 25, 2021 at 12:55:28PM +0530, Kushal Kothari wrote:
> > Refactor nested if else by combining nested if into a single if
> condition and removing unnecessary else conditionals which leads to
> removing unnecessary tabs .There is no change in logic of new code.
>
> Very long line, please break it up at 72 columns.
>
> And your space around the '.' is odd :(
>
> > checkpatch warning : Too many leading tabs - consider code refactoring
>
> What does this mean?
>
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
> >  1 file changed, 26 insertions(+), 39 deletions(-)
> >
>
> thanks,
>
> greg k-h
>

--000000000000c954bc05cf28b15c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;Very long line, please break it up at 72 columns.<br>
<br><div>
&gt;And your space around the &#39;.&#39; is odd :(<span><br></span></div><=
div><br></div><div>Yes,fixing it.</div><div><br></div><div><span>&gt;&gt; c=
heckpatch warning : Too many leading tabs - consider code refactoring<br>
<br></span>
&gt;What does this mean?<span><br></span></div><div><span>Asking about the =
warning ,correct? <br></span></div><div><span>The current code is using ver=
y deep indentations (which can be avoided) and due to this there are many l=
eading tabs. So the <a href=3D"http://checkpatch.pl" target=3D"_blank">chec=
kpatch.pl</a> warns of=C2=A0 </span>&quot;Too many leading tabs - consider =
code refactoring&quot;<span><a href=3D"http://checkpatch.pl" rel=3D"nofollo=
w" target=3D"_blank"><br></a></span></div><div><br></div><div><br></div><di=
v><span></span></div><div><span></span></div><span></span></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 25, 2=
021 at 1:03 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" ta=
rget=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Mon, Oct 25, 2021 at 12:55:28P=
M +0530, Kushal Kothari wrote:<br>
&gt; Refactor nested if else by combining nested if into a single if condit=
ion and removing unnecessary else conditionals which leads to removing unne=
cessary tabs .There is no change in logic of new code.<br>
<br>
Very long line, please break it up at 72 columns.<br>
<br>
And your space around the &#39;.&#39; is odd :(<br>
<br>
&gt; checkpatch warning : Too many leading tabs - consider code refactoring=
<br>
<br>
What does this mean?<br>
<br>
&gt; <br>
&gt; Signed-off-by: Kushal Kothari &lt;<a href=3D"mailto:kushalkothari285@g=
mail.com" target=3D"_blank">kushalkothari285@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----=
------<br>
&gt;=C2=A0 1 file changed, 26 insertions(+), 39 deletions(-)<br>
&gt; <br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000c954bc05cf28b15c--

