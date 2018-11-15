X-GM-THRID: 6618908371010453504
X-Received: by 2002:a63:eb43:: with SMTP id b3mr186436pgk.100.1542287112862;
        Thu, 15 Nov 2018 05:05:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ac86:: with SMTP id h6ls4151901plr.2.gmail; Thu, 15
 Nov 2018 05:05:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5dJpUbE0crWj4zUr+pZUQFN5HFV66NkOQzJ4FhmunBBdaiOcmI6JJSdJwpFe1vlJFZi2HQn
X-Received: by 2002:a17:902:46a4:: with SMTP id p33-v6mr144587pld.33.1542287111974;
        Thu, 15 Nov 2018 05:05:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542287111; cv=none;
        d=google.com; s=arc-20160816;
        b=LBZAxQNdB9yTORwTc2bX/e8CJiqHAcfQZr6/WqTMN8zjs25j7uWAVc74yiqTtb4rXQ
         h13BQpQP0WBdddMR5ylkhcFp8GUc2Rn3XGvCHoCIbocDiR/0v3YT5yJv1JkCdkdPNHMP
         hILyqw0hCDZXGhVi9JhogtoVsiO8G6v/2KjQoPXOWRJYlCjPh8PukYohPLVLnOXBzf2o
         wED6Hf/He31yyBI6WCvnAVJDmlwZ3YjRrhd9Tkjc4UW/7ZpY9WsZN7f1X/HJvv7WmTuD
         i/bEWiRw9qT59uXw4IGh8MIi70a7lukuWEgqLwdF+F6tkIuYXaYF+gT3/6RDDiqekjHO
         vfkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VHZ6xFFPBxLJnOBgo1d3n0QMxnp3a4PERfdbNiRnPF0=;
        b=XI+carn0rxq26ouW4y72+yQoaF6Mbp5Z9rZQISIfpQZiFjOu1uq2ReiWnKmvJIpkNO
         hPq84rsWN1EbNN64DTmyUpEW8sj7e+yRAJj9tAQNvUtRrMtRwI+LqDMrcs/gg+89LLPs
         GRsdtrRSpxlIWi5/wxqJ9vOtZtOapNTrAbNH1tfhexPGGez4AkBkuB9Wwt4NT+2dxDTL
         Tw9WZ3NN9zWPnXx3hNbKdYz2pOt38OrZvMQj9X+M0vepdwhhWjQqT4m/t06zyNDWtSsB
         yLLD4Z6lmv8WRZPfvAA1d+Rbc+AEYyNgojMakxPtl19we8RsF0a8T+sd3DeAa9rQlWc2
         Vf2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVsYiEhA;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id 23si911587pgc.4.2018.11.15.05.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 05:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVsYiEhA;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id h78so11611409vsi.6
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 05:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VHZ6xFFPBxLJnOBgo1d3n0QMxnp3a4PERfdbNiRnPF0=;
        b=FVsYiEhADA/b6G63F8RHxB9Ciy3/0/RxvEa7sMa4WvmQDiAQi5kNhGHZ4CW4qzAIVH
         tYT48n6og85g4x/RQhTS3xD46IKPGT/9gmnCams8CoS8bEK9AoOvnNtNgW7rkisvxg7W
         oXkxlGKAiFt+LVGyXQSuBL3LH5oilVEO+aZ2MC2mvZVaCOPMs4JIvlLtsV0Yo7Xg3Zvz
         g15PWH13Aj6GfDLX2yqi0XFH37JyqNPgN/w4yM03C2nk4IlGNp8Ek3o0nr1suP9lC6Uc
         +pUhyT1EWJAhDrV5t9g/xKlDg88WsEIchN21H8b/lMGp4v/PhUXpRLLDRqDnCpekFFgK
         dDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VHZ6xFFPBxLJnOBgo1d3n0QMxnp3a4PERfdbNiRnPF0=;
        b=FVTVnLg3GX+XdsSGgJxLwDqUG9LY/FF+q/g/C4gaI44Ha0p9JlYd7CxohqwWMy2qLY
         XLSylMvU82XfnRAcn6zADbq/+sW4nyTXfznncCJ5skmHPrK2wIGX+ciV9ADaLPKfjSGz
         DCu6Hl2P5qq8W6lFeYVqVBXJQ8QqXxHvbYMSZXG+CHdmcOI7nViMUHk0oHk81sN83giV
         x/QGUzE0bhPV0eGPtoJ98HYhOCzTeOYxk0ugoip2W9ulEOPxdYfXlE8Hw5wodrarQ+aD
         A6JWoO8EJOiX2q3qhFNPdQW0RqyC8UqxZ51aNvtsURZj61khHq/Rny/GqxuKjS6/lMh3
         FZqQ==
X-Gm-Message-State: AGRZ1gJk5vlWBNHBpGkSEuO0FDBREVKRg26pSrnAg8ZPG1Y50cpvrQgQ
	kJXLgAPUD/T1qGyfzPd6E4qH7ZMi/4mgYM1VeNakdg==
X-Received: by 2002:a67:3edc:: with SMTP id a89mr2640377vsi.136.1542287110724;
 Thu, 15 Nov 2018 05:05:10 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
 <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
 <454ebd6d-2914-3b68-e1d1-bedcc4bc0f91@xs4all.nl> <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
In-Reply-To: <CAAFQd5AzUW8uVZGZrYFnAyK=gKuT7GQ2rTXZTJ3kPfZ4QwkWoQ@mail.gmail.com>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Thu, 15 Nov 2018 15:04:58 +0200
Message-ID: <CAJ1myNSK0h581iMTZrfuFHZg+oz6+COtam+MPmFF+D8iVoQb=w@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: tfiga@chromium.org
Cc: hverkuil@xs4all.nl, helen.koike@collabora.com, mchehab@kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000606446057ab3b31e"

--000000000000606446057ab3b31e
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 15, 2018 at 2:09 PM Tomasz Figa <tfiga@chromium.org> wrote:

> Hi Hans, Dafna,
>
> On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >
> > On 11/15/18 12:14, Dafna Hirschfeld wrote:
> > >
> > >
> > > On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl
> <mailto:hverkuil@xs4all.nl>> wrote:
> > >
> > >     Hi Dafna,
> > >
> > >     This patch series looks very nice!
> > >
> > > thanks:)
> > >
> > >     Can you repost this and add a CC to linux-media?
> > >
> > > I will
> > >
> > >     I'm happy to take this.
> > >
> > >     The TODO that is in the decoder code (what to do if the fwht
> bitstream
> > >     encodes fewer/more planes than the requested raw frame format) is
> > >     something that needs to be implemented later as part of making
> vicodec
> > >     compliant to the stateful codec specification.
> > >
> > > I tried to look in the docs what should be done in that case and
> didn't find.
> > > The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the
> supported formats based on the OUTPUT buffers
> > > but this is only optional.
> >
> > You are referring to section 4.6.6, point 4 here:
> >
> > https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-decoder.html
> >
> > Right?
> >
>
Right,


> > It's optional only in the sense that if you already happen to know what
> > the stream contains, then you don't need to do it.
> >

It still not clear to me what should be the behavior in case the user does
give the CAPTURE format before the streaming starts
but then the actual encoded data that the user send is of different format.
Can we trust the user to be consistent ?

Dafna


> > I'm CC-ing Tomasz Figa, since I think just describing a step as
> 'Optional'
> > is too vague. Something like: 'If <condition>, then you need to perform
> > this step' (or alternatively: 'If !<condition>, then you can skip this
> step'.
>
> Just to clarify, the documentation is written from userspace point of
> view. If something is optional for a userspace application, the
> application can use it and the driver is expected to support it.
>
> I'm okay replacing "Optional" with something more specific, like "If
> the client does not need to change the default format", but I wonder
> if it wouldn't effectively become "if the client does not need to
> change the default format, or it wants to do it by probing a fixed
> list of formats it supports by using S_FMT or TRY_FMT, or what not,
> ...".
>
> Perhaps just explaining the meaning of "Optional" explicitly in the
> "Conventions and notation used in this document" would be good enough?
>
> Best regards,
> Tomasz
>

--000000000000606446057ab3b31e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Nov 15, 2018 at 2:09 PM Tomasz Figa &lt;<a href=3D"mailto:tfiga@chromium.=
org" target=3D"_blank">tfiga@chromium.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Hi Hans, Dafna,<br>
<br>
On Thu, Nov 15, 2018 at 8:58 PM Hans Verkuil &lt;<a href=3D"mailto:hverkuil=
@xs4all.nl" target=3D"_blank">hverkuil@xs4all.nl</a>&gt; wrote:<br>
&gt;<br>
&gt; On 11/15/18 12:14, Dafna Hirschfeld wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil &lt;<a href=3D"mailt=
o:hverkuil@xs4all.nl" target=3D"_blank">hverkuil@xs4all.nl</a> &lt;mailto:<=
a href=3D"mailto:hverkuil@xs4all.nl" target=3D"_blank">hverkuil@xs4all.nl</=
a>&gt;&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Hi Dafna,<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0This patch series looks very nice!<br>
&gt; &gt;<br>
&gt; &gt; thanks:)<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0Can you repost this and add a CC to linux-medi=
a?<br>
&gt; &gt;<br>
&gt; &gt; I will<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0I&#39;m happy to take this.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0The TODO that is in the decoder code (what to =
do if the fwht bitstream<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0encodes fewer/more planes than the requested r=
aw frame format) is<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0something that needs to be implemented later a=
s part of making vicodec<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0compliant to the stateful codec specification.=
<br>
&gt; &gt;<br>
&gt; &gt; I tried to look in the docs what should be done in that case and =
didn&#39;t find.<br>
&gt; &gt; The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate t=
he supported formats based on the OUTPUT buffers<br>
&gt; &gt; but this is only optional.<br>
&gt;<br>
&gt; You are referring to section 4.6.6, point 4 here:<br>
&gt;<br>
&gt; <a href=3D"https://hverkuil.home.xs4all.nl/request-api/uapi/v4l/dev-de=
coder.html" rel=3D"noreferrer" target=3D"_blank">https://hverkuil.home.xs4a=
ll.nl/request-api/uapi/v4l/dev-decoder.html</a><br>
&gt;<br>
&gt; Right?<br>
&gt;<br></blockquote><div>Right,</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
&gt; It&#39;s optional only in the sense that if you already happen to know=
 what<br>
&gt; the stream contains, then you don&#39;t need to do it.<br>
&gt;=C2=A0</blockquote><div>It still not clear to me what should be the beh=
avior in case the user does give the CAPTURE format before the streaming st=
arts</div><div>but then the actual encoded data that the user send is of di=
fferent format. Can we trust the user to be consistent ?</div><div><br></di=
v><div>Dafna</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; I&#39;m CC-ing Tomasz Figa, since I think just describing a step as &#=
39;Optional&#39;<br>
&gt; is too vague. Something like: &#39;If &lt;condition&gt;, then you need=
 to perform<br>
&gt; this step&#39; (or alternatively: &#39;If !&lt;condition&gt;, then you=
 can skip this step&#39;.<br>
<br>
Just to clarify, the documentation is written from userspace point of<br>
view. If something is optional for a userspace application, the<br>
application can use it and the driver is expected to support it.<br>
<br>
I&#39;m okay replacing &quot;Optional&quot; with something more specific, l=
ike &quot;If<br>
the client does not need to change the default format&quot;, but I wonder<b=
r>
if it wouldn&#39;t effectively become &quot;if the client does not need to<=
br>
change the default format, or it wants to do it by probing a fixed<br>
list of formats it supports by using S_FMT or TRY_FMT, or what not,<br>
...&quot;.<br>
<br>
Perhaps just explaining the meaning of &quot;Optional&quot; explicitly in t=
he<br>
&quot;Conventions and notation used in this document&quot; would be good en=
ough?<br>
<br>
Best regards,<br>
Tomasz<br>
</blockquote></div></div>

--000000000000606446057ab3b31e--

