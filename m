X-GM-THRID: 6664067951305424896
X-Received: by 2002:a62:121d:: with SMTP id a29mr2315272pfj.103.1551865604841;
        Wed, 06 Mar 2019 01:46:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls861946plb.6.gmail; Wed, 06
 Mar 2019 01:46:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqy4jhd2I/HjOvIIu6DHBrj8/aHhRz7WUxXxR4tZ2kJGkFk6Qc+o4MTmYu+rdGbxQJw5wijI
X-Received: by 2002:a17:902:9305:: with SMTP id bc5mr1848088plb.2.1551865603335;
        Wed, 06 Mar 2019 01:46:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865603; cv=none;
        d=google.com; s=arc-20160816;
        b=Sia8E5vA+VMplkwpvsX3npz/Njji/i0XjJVw2m3swaD0M310BB1Aj5jUGDbI8svHdH
         Qjgg4H2ylTjIU3rHJx1vocWgKP9yeDmFnJbV6u9MQRdaU+hYhpK996PYVVlzfMZvsjD/
         ChI2DFwUApAsxw0QbxrY2MvDl0IngLAzZs3BbRze8YjqH1mvtKb+r5m3wdj+3adZLz8k
         rj/D53X3pZ7OLR/uLPJKv3ukKJ8yH7myn6XprjGJcebwLbbFb2dyDMhFppE+fTM2Ls6J
         YQALai22mJXRX6AuvARSXNkMEwRTHKlhgto9h+YX4iGH09klFrNH4MsEsQGiAxTboJJe
         S1pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=hZ983vr4+LvQZG7kfrfZcA61wrKAsSts5HfRU43iRv0=;
        b=G3as9BWU9pBvzkEthKD95RIlyJuLW2WRyYuw45wzM23xChpVfyw4IIhZUe4k1lxTgW
         XDVuMD3kyi1lhUOabnSeiOT2PXQYHW6nF/yCoAKrn/X1z5N6nj+wl2p39UpTwkFoIVd1
         mYvIFRFw5c2wOpw1XxfeMwpmhvLQSdvZXzBxpL+mCnNkkFLWZ4nH7WgCda2ZLaj4tmri
         0wgIVxwuzRif+nYVdDY4HqgA6DjtW8cvmkTB2TBrJWwCoDkg/tsimjPgz8h/NyufI528
         EBou3Vr67QyCekbj/gV9nIUvDqOXelzaFhnKz7hMTd7kA5CUGdSH32rbmBHgESTUKSA0
         zoQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RDs4rmVW;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id h15si34253plr.5.2019.03.06.01.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RDs4rmVW;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id i5so10153314oto.9
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 01:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=hZ983vr4+LvQZG7kfrfZcA61wrKAsSts5HfRU43iRv0=;
        b=RDs4rmVWRFXwthPmeRHZBn0hhUj3u2QiXmuK4V4PbxrPRMv24U4j8aXeRCe1/rz8Tf
         JiIZlm+bHXjlu9IY5hHsQZpJrrRZVBcskr6dTX+J6tE3jJ/NRBoGoVNGKWV7VRdaUobT
         Nuw/LofTn96Y39DtzQ0lvvI9JBB0x71ILeA+ZMf7FZx3hYBjBmH/BqZOQOIFVMIhhBo6
         rznh/0MnSGn52CBq1qShSscnAI8snGm3I/XwwZEbTSWjtziEkWzcqnPRPae0k4jR0++c
         AAkPknes+6fHihkTj7atLXjHhGziLfNvVT9xmIX11IP44gJIGcL6NX6ce2iLbUmrCEOH
         Uwfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=hZ983vr4+LvQZG7kfrfZcA61wrKAsSts5HfRU43iRv0=;
        b=IDI95lEDUGLzQy2TKys+vmchC5YVdYPh1dIzS+CB5IK1GXzjQpa6iJ8Auq8wL/30gH
         xsA8YFlvoOPfkEtTFly0x2WtgjMafqvhlMeULdkhCD/6P0q6JK3RznB/MqijjVVi3B/l
         Y8RWqtFOLMkl0wQcL8BueiOioiM/lK/n97LfZlFQUy5DVxVBkxmPGa795dRcLp+8e+J7
         srXKZoVDh4Syb3lrHjva91/PKSCdvyc4JLfhXLW9SOfJHpwR1CYB6OdSU4OiRF4/be5V
         uYKW7mVDltNOnsRrKtmqckDL5mP5G5UsqDc6cmcrM9wCnmK+t01fFQ2xj1hSHWAW/XNS
         1j5w==
X-Gm-Message-State: APjAAAUO0ot9bM6CgVo+BqIQJmAsl1X2EfBn1xcQh/mOOnhE4aSMdME/
	c1rMnTRO/H0f0VjL3HPczIWOqEOeQ9zit5EqVaQMLPCb
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr3784239otg.194.1551865602852;
 Wed, 06 Mar 2019 01:46:42 -0800 (PST)
MIME-Version: 1.0
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
 <20190305074018.GA6158@kroah.com> <CACw+u4FnMCpiBiYPqaz3R054wm2q3Rx9q2R7S15_2+EPhJmkNA@mail.gmail.com>
 <20190306091544.GE7927@kroah.com> <CACw+u4EWiZyqyYmuyK_5vMq+x5B-iB7-Z1JyeiT8_amOMyd3pQ@mail.gmail.com>
In-Reply-To: <CACw+u4EWiZyqyYmuyK_5vMq+x5B-iB7-Z1JyeiT8_amOMyd3pQ@mail.gmail.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, 6 Mar 2019 15:16:31 +0530
Message-ID: <CACw+u4GWyfOUDbRzxmKVM+fmK7q2rowyNyvEH-o6L3hrEiFvog@mail.gmail.com>
Subject: Fwd: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000ff4c31058369dd6e"

--000000000000ff4c31058369dd6e
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, Mar 6, 2019 at 3:10 PM
Subject: Re: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
To: Greg KH <gregkh@linuxfoundation.org>


On Wed, Mar 6, 2019 at 2:45 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 05, 2019 at 09:54:44PM +0530, Debleena Sen wrote:
> > On Tue, Mar 5, 2019 at 1:10 PM Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >
> > > On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:
> > > > Break the line and match the indentation to remove the
> > > > checkpatch.pl warning:
> > > > WARNING: line over 80 characters
> > > >
> > > > Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> > > > ---
> > > >  drivers/staging/pi433/rf69.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > What changed from the previous versions?  That information always goes
> > > below the --- line please.
> > >
> > > Please fix up and resend.
> > >
> > > thanks,
> > >
> > > greg k-h
> > >
> >
> > I'm not able to find the commit.
> >
> > I tried using "git reset --mixed e19b9ce" but it shows an error:
> >
> > error: object e19b9ce794a8534f0ad19bfa1c60260fd74b9bb9 is a blob, not a
> > commit
> > fatal: could not parse object 'e19b9ce'
> >
> > How can I recover it so that I can add the changes?
>
> I have no idea what you are trying to do here, sorry.  Why are you
> running 'git reset'?
>
> confused,
>
> greg k-h
>

In the tutorial it was written to edit a commit we need to use git reset
--mixed <file ID>

So I thought to use that.

It was my first patch probably. I already told you in another mail that
there were like 16 warnings of the same type and same styling issue in
pi433/rf69.c

So in this patch I had fixed only one warning. Yesterday I sent another
patch in which I've fixed the other 15 warnings.

In the tutorial, it was written to edit a commit we need to use git reset
--mixed <file ID>

So I thought to use that  to add the version change log.

But when I  tried it, this error popped.

I'm sorry. I think I've messed up.

--000000000000ff4c31058369dd6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">---------- Forwarded message ---------<br>From: <strong class=3D"gma=
il_sendername" dir=3D"auto">Debleena Sen</strong> <span dir=3D"ltr">&lt;<a =
href=3D"mailto:idebleenasen@gmail.com">idebleenasen@gmail.com</a>&gt;</span=
><br>Date: Wed, Mar 6, 2019 at 3:10 PM<br>Subject: Re: [PATCH v4] Staging: =
pi433: Fix line over 80 characters issue<br>To: Greg KH &lt;<a href=3D"mail=
to:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;<br></div>=
<br><br><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 6, 2019 at 2:45 PM Gr=
eg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">g=
regkh@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Mar 05, 2019 at=
 09:54:44PM +0530, Debleena Sen wrote:<br>
&gt; On Tue, Mar 5, 2019 at 1:10 PM Greg KH &lt;<a href=3D"mailto:gregkh@li=
nuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wro=
te:<br>
&gt; <br>
&gt; &gt; On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:<br>
&gt; &gt; &gt; Break the line and match the indentation to remove the<br>
&gt; &gt; &gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a> warning:<br>
&gt; &gt; &gt; WARNING: line over 80 characters<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Debleena Sen &lt;<a href=3D"mailto:idebleenas=
en@gmail.com" target=3D"_blank">idebleenasen@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/pi433/rf69.c | 3 ++-<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; What changed from the previous versions?=C2=A0 That information a=
lways goes<br>
&gt; &gt; below the --- line please.<br>
&gt; &gt;<br>
&gt; &gt; Please fix up and resend.<br>
&gt; &gt;<br>
&gt; &gt; thanks,<br>
&gt; &gt;<br>
&gt; &gt; greg k-h<br>
&gt; &gt;<br>
&gt; <br>
&gt; I&#39;m not able to find the commit.<br>
&gt; <br>
&gt; I tried using &quot;git reset --mixed e19b9ce&quot; but it shows an er=
ror:<br>
&gt; <br>
&gt; error: object e19b9ce794a8534f0ad19bfa1c60260fd74b9bb9 is a blob, not =
a<br>
&gt; commit<br>
&gt; fatal: could not parse object &#39;e19b9ce&#39;<br>
&gt; <br>
&gt; How can I recover it so that I can add the changes?<br>
<br>
I have no idea what you are trying to do here, sorry.=C2=A0 Why are you<br>
running &#39;git reset&#39;?<br>
<br>
confused,<br>
<br>
greg k-h<br></blockquote><div><br></div><div>In the tutorial it was written=
 to edit a commit we need to use git reset --mixed &lt;file ID&gt;</div><di=
v><br></div><div>So I thought to use that.</div><div><br></div><div>It was =
my first patch probably. I already told you in another mail that there were=
 like 16 warnings of the same type and same styling issue in pi433/rf69.c</=
div><div><br></div><div>So in this patch I had fixed only one warning. Yest=
erday I sent another patch in which I&#39;ve fixed the other 15 warnings.=
=C2=A0</div><div><br></div><div>In the tutorial, it was written to edit a c=
ommit we need to use git reset --mixed &lt;file ID&gt;</div><div><br></div>=
<div>So I thought to use that=C2=A0 to add the version change log.</div><di=
v><br></div><div>But when I=C2=A0 tried it, this error popped.</div><div><b=
r></div><div>I&#39;m sorry. I think I&#39;ve messed up.</div><br class=3D"m=
_6474735271085534072gmail-Apple-interchange-newline"></div></div>
</div></div>

--000000000000ff4c31058369dd6e--

