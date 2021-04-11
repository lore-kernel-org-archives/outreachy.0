X-GM-THRID: 6949661210955481088
X-Received: by 2002:a05:6512:1d1:: with SMTP id f17mr15052128lfp.620.1618123839982;
        Sat, 10 Apr 2021 23:50:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7408:: with SMTP id p8ls143221ljc.1.gmail; Sat, 10 Apr
 2021 23:50:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyyHdKk0tJO+BoB6+FubcuJGZCvb6xVdGjOl7kjruKqoC7RJRnNxV1FTa7MDI9kk61/06Tx
X-Received: by 2002:a2e:921a:: with SMTP id k26mr6265470ljg.149.1618123838241;
        Sat, 10 Apr 2021 23:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618123838; cv=none;
        d=google.com; s=arc-20160816;
        b=rtAxD2O7nPg0hWyht2YRrRTtvD891w2IBlLZZZ+SA6PZ3pmPnr4+OXT9WgRW3YZwUi
         tR42+X679NMa1ofYMs85UJZt6T5F2do0fm/WBZP+PrhttMAMANN5Qu6Prh9ekyZ9a08F
         Glf+1+pChDlbbO5fRJnbVWk2c0FsjTtMouXhh6Mk2NqY4e/vruvm4R89yyJS0wRqGFW5
         pHj1WExF2lQbrNCcGwcXfPB7/XIHmb7CMZj2Gc154DzA4Ogc0EZUYNoiF563TfN5oKG/
         g7/qBPNy5f/CR7Cb5qXYrQQ0ZJ50o3fxdRhLu+zEMkv0NBnqX83dAlv5sLu0YROtweAk
         yEfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oBI47bU2S3REhJHh8NSK3kxTPCznmxFmMKKl9cgoeSs=;
        b=fY1reNFtxaE/ldiSkLBxkdRKfn3KAdDLSHuSOctkBDK5w7vKcIUoP0hMKQvLbUQLB+
         7xpOaGwOgSyWdUNMm/VzMM1giti0iUWLOYqVX5vihltcJ/XGCdonuiZ8gQFQxA02V/7J
         cIPasaBfrpnFyyg5TLz9ob/ZDc22K1IPZGh61UkPErYT1B0baEIsd+mnuC3oXOrFRJjx
         ug8eRVNIu6HzIcGz24fnP3t3XCR/c09U+7iogXeDZ95oho069FC3VY5xyQjDR5InxMyC
         BU5YUjJRjgvNQaZREKPIFjdLf0+wkua+rE7oUMKbSIGwEldOJhHaUH10oxBpT9lBBe7T
         IanA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMach5Vx;
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <siddmohamed19@gmail.com>
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id j7si123790ljc.6.2021.04.10.23.50.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aMach5Vx;
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22d.google.com with SMTP id a36so536332ljq.8
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 23:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oBI47bU2S3REhJHh8NSK3kxTPCznmxFmMKKl9cgoeSs=;
        b=aMach5VxrEsc0l3pQcYOvvrtx5X7vekx55ZwGacmMzXaekPoa0w0+GOl+ngTR4v+wA
         S2IZop7OLq8JBWLaWFOQxQIo/OuyUASy4Qjdh+88DUn1/FPQdDVPPVTSUChYZERzoZ3u
         9tMhUcLNOJ3pVNZPu1B9tHnNwZvr7t4crY79GMgKTA7pHZquW6reRNqkiFEducJs6psG
         GjZc+dm9j7VJUQxdgbt9MWVY7bflzWFxurQHdyZFaDApVA0j4CR8oES7h7Cp4e9xfNqe
         kE1GNLEXo3NKmtTuH9/xngrKfOE61etUKJfu06QQ/AClhu0wl7kx6it5IaQuiF42sHKT
         ZlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oBI47bU2S3REhJHh8NSK3kxTPCznmxFmMKKl9cgoeSs=;
        b=mvD3LoXbY54lutkzM5XwVleXg/42n72cB5PQOAKKbC3iVETwo8uFtMGqIMFNQENfyB
         TZNQAo+2yBqEx45e9sVE6+YM4i0Dd2AWh3TjwyzIH8ZtJXfdjhvNuqpmKXvtq1I6UmSG
         OeB1S7m1PyYaf7TN9SLPY0WxsdnagfTi3xF8Ooivi4OXFw8424ze3NXJjXWP+YeL0iJj
         DcYt5DhA2dRLSxC2MKxBKgowUFDlDwrewm3Anw7mBahL/9ZWgf1EKkejKfdbt7KABZn9
         69yrRWctVArcZlG6J0x67MuJwh+pSM3EwAW1WpN4c4bV9Ax9BS7EsFpvcB6t8i/4npTk
         sKNw==
X-Gm-Message-State: AOAM530EVx3HP7I101nIGFyYAOnHRkXeipMRfmSFbbek52EIsiNsW2T4
	5d7ZBoAgDhiPG5alNYgjSWeDaobbkerjzBK2uEaUsHgjE5PVFw==
X-Received: by 2002:a2e:b7c1:: with SMTP id p1mr14078024ljo.198.1618123837907;
 Sat, 10 Apr 2021 23:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210410223444.GA110316@Ali-Ubuntu> <20210411004755.GB2531743@casper.infradead.org>
In-Reply-To: <20210411004755.GB2531743@casper.infradead.org>
From: Mo Jauhar <siddmohamed19@gmail.com>
Date: Sun, 11 Apr 2021 12:20:26 +0530
Message-ID: <CAHLYjjX1-H+Mdh+SVXZibPRZ9bS=WBR29Hzbs2spd9M_w5KrdA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0] Staging(VT6656): Modified camelCase Variables
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="0000000000008fa4a205bfacd03f"

--0000000000008fa4a205bfacd03f
Content-Type: text/plain; charset="UTF-8"

Hi Matt,

Thanks for the feedback. Since this was my first patch, I was kinda only
looking for checkpatch warnings. But this is a good lesson for me.

I will now rename the variables to 'var' and 'modulo' and generate the
changelog without the *''' *marks. Please let me know if I should instead
remove the macro and make it inline, since then I will also have to look
into files that import 'device.h' and use the macro.

On Sun, Apr 11, 2021 at 6:18 AM Matthew Wilcox <willy@infradead.org> wrote:

> On Sun, Apr 11, 2021 at 04:04:44AM +0530, majauhar wrote:
> > '''
>
> Please generate your changelog without these quote marks.
>
> > Variables 'uVar' and 'uModulo' were generating camelCase style issue.
> > Modified them as 'u_var' and 'u_modulo' and the issue disappeared.
>
> The 'uVar' naming is an indication of the bad kind of Hungarian notation.
> https://www.joelonsoftware.com/2005/05/11/making-wrong-code-look-wrong/
>
> > -#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {    \
> > -     if ((uVar) >= ((uModulo) - 1))                  \
> > -             (uVar) = 0;                             \
> > +#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {  \
> > +     if ((u_var) >= ((u_modulo) - 1))                \
> > +             (u_var) = 0;                            \
> >       else                                            \
> > -             (uVar)++;                               \
> > +             (u_var)++;                              \
> >  }
>
> it would be better to rename these to 'var' and 'modulo'.
>
> But then we start to question the entire premise of this macro.  It should
> probably be written as 'var = (var + 1) % modulo' (because arithmetic
> is generally cheaper than branches).  And when you write it like that,
> you wonder why it's a macro at all instead of just written out.  Not to
> mention that 'ADD_ONE' is generally spelled as 'INC'.
>
> So ... the checkpatch warnings are good, but often they raise more
> questions than the obvious one.
>

--0000000000008fa4a205bfacd03f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Matt,<div><br></div><div>Thanks for the feedback. Since=
 this was my first patch, I was kinda only looking for checkpatch warnings.=
 But this is a good lesson for me.=C2=A0</div><div><br></div><div>I will no=
w rename the variables to &#39;var&#39; and &#39;modulo&#39; and generate t=
he changelog without the <b>&#39;&#39;&#39; </b>marks. Please let me know i=
f I should instead remove the macro and make it inline, since then I will a=
lso have to look into files that import &#39;device.h&#39; and use the macr=
o.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Apr 11, 2021 at 6:18 AM Matthew Wilcox &lt;<a href=3D"mailt=
o:willy@infradead.org">willy@infradead.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Sun, Apr 11, 2021 at 04:04:44A=
M +0530, majauhar wrote:<br>
&gt; &#39;&#39;&#39;<br>
<br>
Please generate your changelog without these quote marks.<br>
<br>
&gt; Variables &#39;uVar&#39; and &#39;uModulo&#39; were generating camelCa=
se style issue.<br>
&gt; Modified them as &#39;u_var&#39; and &#39;u_modulo&#39; and the issue =
disappeared.<br>
<br>
The &#39;uVar&#39; naming is an indication of the bad kind of Hungarian not=
ation.<br>
<a href=3D"https://www.joelonsoftware.com/2005/05/11/making-wrong-code-look=
-wrong/" rel=3D"noreferrer" target=3D"_blank">https://www.joelonsoftware.co=
m/2005/05/11/making-wrong-code-look-wrong/</a><br>
<br>
&gt; -#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {=C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((uVar) &gt;=3D ((uModulo) - 1))=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(uVar) =3D 0;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {=C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((u_var) &gt;=3D ((u_modulo) - 1))=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u_var) =3D 0;=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(uVar)++;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(u_var)++;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 }<br>
<br>
it would be better to rename these to &#39;var&#39; and &#39;modulo&#39;.<b=
r>
<br>
But then we start to question the entire premise of this macro.=C2=A0 It sh=
ould<br>
probably be written as &#39;var =3D (var + 1) % modulo&#39; (because arithm=
etic<br>
is generally cheaper than branches).=C2=A0 And when you write it like that,=
<br>
you wonder why it&#39;s a macro at all instead of just written out.=C2=A0 N=
ot to<br>
mention that &#39;ADD_ONE&#39; is generally spelled as &#39;INC&#39;.<br>
<br>
So ... the checkpatch warnings are good, but often they raise more<br>
questions than the obvious one.<br>
</blockquote></div>

--0000000000008fa4a205bfacd03f--

