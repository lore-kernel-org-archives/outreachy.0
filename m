X-GM-THRID: 6662701472934789120
X-Received: by 2002:a37:a282:: with SMTP id l124mr882606qke.39.1551282861270;
        Wed, 27 Feb 2019 07:54:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d1f8:: with SMTP id k53ls559460qvh.0.gmail; Wed, 27 Feb
 2019 07:54:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqxpAkCRliuORLCErR3oWEuG5WxKrL7t791BT3ITqGITb/v8VzUDRM6lV8kyI7C41M7/3qph
X-Received: by 2002:a0c:8776:: with SMTP id 51mr1122400qvi.1.1551282860526;
        Wed, 27 Feb 2019 07:54:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551282860; cv=none;
        d=google.com; s=arc-20160816;
        b=vnbxi1NK/QCFjUBWD05Xt1CGz3sZNFvJh0wB+2my/7rb/iHP8E0fFDO+N9j0NzHrrx
         DFYNXLjXwbDnRCDUeCf6bNYmdpbunllXTSK5iZQKmbTOA4quxPi1MEYfzio0DXipFBso
         Kx8R46HE6fKCrgt9iQIIIjpaSHgk4zt9xT1t+3lDyM/1OFvmnmzCwSPeIoJ2gTxD90m3
         vZSKzIJJLZbCLsbVIkXsz8TD8sxBJx4LjtQBf1Jmc2WofpxDom+F7SiE51xQe74Lz1ag
         TgqG9rVkM1yDIeTg2qdAu5pGDBntLpMb77qkXhZEYKLHHz1atSaIwko0AsFJyqDTUYnh
         ODeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=66QIFcEIM7BycMFaxHE0awiw4vvrvZ7tJjWMb28+wig=;
        b=fb0oQYPwkhM2Wfryd+AaF1XY4OCBPetCtvIrR0brrxKC4spVv20L+zXInO1x1h1+yr
         UfYE3Srr3+09ScHvdieq1e3Ss8Z1aqlI/449gTyhqDJWhBdD/7MHeXpG5limbZ/UFX8a
         RemSh+NAvG6YnTVAAQW+ekrdaC9cq7EyLiapidW5nxwGhbUyuXSjf/umgPNlHMLYXsyh
         zQ3F5Wmf5TnoRnFeKyuGRb96R8oOuCgoQOs35aeRrZatLwkd0Q0cUKsXb9h0H5yIn2p+
         qunGvG1g7CXvdcOtSg9e0cRwoq/G7zmnrBLmBCaOM9p3YMj+39g/xfSK63iv3uAMOn10
         Fq3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h3nSBnzf;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id t79si758435qke.0.2019.02.27.07.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 07:54:20 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h3nSBnzf;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id z25so19676740qti.13
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 07:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=66QIFcEIM7BycMFaxHE0awiw4vvrvZ7tJjWMb28+wig=;
        b=h3nSBnzf3tCO/y5tUopCUeEHW+c8fesvfql4061/zABRhD2cyci9g2icPUyuJw2grO
         oTTXwddfOvK5svpckMCqHnZga5Zzfotdw1uKQjZ/iEjQjyOFyNMMkF5W9KtQ92EFFmUI
         wG8gyGgUGVRkv1R5PSvXEsqrMCvdZ2vjav7b0Spl89yNIuKd/j30w6NY2JtxfHQ0wz0O
         3ZMk5uJHBjHlxSKrXGt1PzE8tIvlpR2FERwQHETdWhvjsc3ijt2hUjc6IWXa1mVhm6kO
         RJ2SFJuN6YtKmNrgJRyFDH0wJbjOa59dA1zxthrsTnQMFJJcZ1XcCAVDJL0F6rfbD+tz
         CSQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=66QIFcEIM7BycMFaxHE0awiw4vvrvZ7tJjWMb28+wig=;
        b=Ez42A4rn8kMm22H1/F7/jkgtMQvEoyfjj9SgzkkeWwsuN1IagwrYI5IHRxsrOrLRTm
         rsLhvq5hHRhOIxoMsebxAu+FqQvYoteQQm5jd/rnwebrIiJG/tciKXH7RkKZUalIKKVg
         Ezda1CNEf0edsy078Cg4/aj9KH1EbBG+8OxAf6ix+Sggo2s1U8wvPqEDV4kEgOSumMh1
         JSOm240p+6/yJx1ZJmxYnA+v4nX9DxZPKEFXKZWI8UJet8P8BPurk7k7SgwmeMrw36Wp
         4+CXMYqlcNS3pMzutO9t4x2fzAbG/rDVX93hP6jFhBoXs84KyebLwSPecbJdIXBLiOHH
         +Ayg==
X-Gm-Message-State: APjAAAUxcDtksnHitvUw0I2XGgkmgtPimdFbFHAQi8PZ/NtCPkqavd01
	/d8GZYhsLvACpEvtRdfqbldSFsfQKtrCQoGPJqw=
X-Received: by 2002:a0c:d1a7:: with SMTP id e36mr2485001qvh.127.1551282860084;
 Wed, 27 Feb 2019 07:54:20 -0800 (PST)
MIME-Version: 1.0
References: <20190227152422.GA4547@bhagyashri-Lenovo-G570> <20190227153934.GB16361@kroah.com>
In-Reply-To: <20190227153934.GB16361@kroah.com>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 27 Feb 2019 21:24:09 +0530
Message-ID: <CAOMPgjjut8hNNeLA3ZjwVuPA3M3TROE75aPLpfxTDV65sX9GKA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: line over 80 characters.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000d251730582e22fb2"

--000000000000d251730582e22fb2
Content-Type: text/plain; charset="UTF-8"

Thanks greg! I think I messed up something.
I will resubmit this patch with appropriate fix.

Thanks,
Bhagyashri

On Wed, 27 Feb 2019 at 9:09 PM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Wed, Feb 27, 2019 at 08:54:22PM +0530, Bhagyashri Dighole wrote:
> > Fix coding style issues, which solves checkpatch.pl warning:
> > "WARNING: line over 80 characters".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/speakup/main.c             | 14 ++++++++------
> >  drivers/staging/speakup/speakup_decext.c   |  3 ++-
> >  drivers/staging/speakup/speakup_dectlk.c   |  3 ++-
> >  drivers/staging/speakup/speakup_soft.c     |  3 ++-
> >  drivers/staging/speakup/spk_priv_keyinfo.h |  6 ++++--
> >  drivers/staging/speakup/spk_ttyio.c        | 20 ++++++++++++--------
> >  drivers/staging/speakup/varhandlers.c      |  3 ++-
> >  7 files changed, 32 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/main.c
> b/drivers/staging/speakup/main.c
> > index 869f40e..778bbde 100644
> > --- a/drivers/staging/speakup/main.c
> > +++ b/drivers/staging/speakup/main.c
> > @@ -901,8 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, int
> read_punc)
> >       while (start < end) {
> >               sentbuf[bn][i] = get_char(vc, (u_short *)start, &tmp);
> >               if (i > 0) {
> > -                     if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1]
> == '.' &&
> > -                         numsentences[bn] < 9) {
> > +                     if (sentbuf[bn][i] == SPACE && sentbuf[bn][i - 1]
> ==
> > +                                     '.' && numsentences[bn] < 9) {
>
> Ick, no, that's much harder to understand now, right?
>
> The 80 column ruls is there to make it easier to read code, not harder
> :)
>
> thanks,
>
> greg k-h
>

--000000000000d251730582e22fb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Thanks greg! I think I messed up something.</div></d=
iv><div dir=3D"auto">I will resubmit this patch with appropriate fix.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto=
">Bhagyashri</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, 27 Feb 2019 at 9:09 PM, Greg Kroah-Hartman &lt;<a =
href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Feb 27, 2019 at 0=
8:54:22PM +0530, Bhagyashri Dighole wrote:<br>
&gt; Fix coding style issues, which solves <a href=3D"http://checkpatch.pl"=
 rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; &quot;WARNING: line over 80 characters&quot;.<br>
&gt; <br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/speakup/main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0| 14 ++++++++------<br>
&gt;=C2=A0 drivers/staging/speakup/speakup_decext.c=C2=A0 =C2=A0|=C2=A0 3 +=
+-<br>
&gt;=C2=A0 drivers/staging/speakup/speakup_dectlk.c=C2=A0 =C2=A0|=C2=A0 3 +=
+-<br>
&gt;=C2=A0 drivers/staging/speakup/speakup_soft.c=C2=A0 =C2=A0 =C2=A0|=C2=
=A0 3 ++-<br>
&gt;=C2=A0 drivers/staging/speakup/spk_priv_keyinfo.h |=C2=A0 6 ++++--<br>
&gt;=C2=A0 drivers/staging/speakup/spk_ttyio.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
 20 ++++++++++++--------<br>
&gt;=C2=A0 drivers/staging/speakup/varhandlers.c=C2=A0 =C2=A0 =C2=A0 |=C2=
=A0 3 ++-<br>
&gt;=C2=A0 7 files changed, 32 insertions(+), 20 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/=
main.c<br>
&gt; index 869f40e..778bbde 100644<br>
&gt; --- a/drivers/staging/speakup/main.c<br>
&gt; +++ b/drivers/staging/speakup/main.c<br>
&gt; @@ -901,8 +901,8 @@ static int get_sentence_buf(struct vc_data *vc, in=
t read_punc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (start &lt; end) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sentbuf[bn][i] =
=3D get_char(vc, (u_short *)start, &amp;tmp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (i &gt; 0) {<=
br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (sentbuf[bn][i] =3D=3D SPACE &amp;&amp; sentbuf[bn][i - 1] =3D=3D=
 &#39;.&#39; &amp;&amp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0numsentences[bn] &lt; 9) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (sentbuf[bn][i] =3D=3D SPACE &amp;&amp; sentbuf[bn][i - 1] =3D=3D=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;.&#39; =
&amp;&amp; numsentences[bn] &lt; 9) {<br>
<br>
Ick, no, that&#39;s much harder to understand now, right?<br>
<br>
The 80 column ruls is there to make it easier to read code, not harder<br>
:)<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--000000000000d251730582e22fb2--

