X-GM-THRID: 6663442013681090560
X-Received: by 2002:adf:ea81:: with SMTP id s1mr499092wrm.19.1551511833428;
        Fri, 01 Mar 2019 23:30:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:48c:: with SMTP id 134ls848287wme.5.gmail; Fri, 01 Mar
 2019 23:30:32 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYgdJbAFnaE/+d9pW4okD1hkvPlpcB4HIWHt2Jq/Gauy0kIpA16Q+zrdWoG1ujksaokFyKv
X-Received: by 2002:a1c:a943:: with SMTP id s64mr519983wme.4.1551511832390;
        Fri, 01 Mar 2019 23:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551511832; cv=none;
        d=google.com; s=arc-20160816;
        b=ti/ermV2od9EMeySaHW2O7gLv3rgTKsXApnxPFZBnTcApVteM7D8KBvvSbYAAvA81R
         WJMR5jfsAnJEuOcUPqGQ2Io+kO/e00/zDSwV66YohQEHUgL6kG+4fzYCECsJwabUs2NJ
         dPVE9nEryG3+o361hmtXB65uNhd0qbQ3siL6xftZ42TCJjcwrsb2YQpRdPxjtXZNuYfR
         ALOiCM5RIEmSOWXMorIYWWRbPoQ+pnrGiNUwP4vvUlAOg1Px2Bf9OhG9wNlxfoMO6DC2
         bs90CJGFRSpImBEL7Xud6t2UkmpqUL72DBGFpD+bkc5bnsIDnoAy1Sk+nxPhBSoSAd1b
         f+mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YWe/TVFwMeeZWm4pccDyxA8+zY9jgKj1kvULEAbHQBI=;
        b=j9a00SOI/2NJAZvXHpwd8CeXdvIX/VaUaFmUrClNOs3wRdIyfoKkku3RAADNdOk3l/
         t1wvWcSX7irxyTV2CZDPZMyIeWnj0fVhfj0lr+FvsAjtkyE90F9Ar1muisaJqvE0iLYv
         k9MJcwCiFYNhgB1gegSXAgDlsWqW7TMkKEz6s2AxLTXEKguY3qgI4Tc6fk9+gM0A5Slf
         x/T3R+AGn8RXe4dSGf0Z7ij9X5dpnYJPGrVzCcyNxlYqeAhQ8Dhq7DHq58oFbEZ2hkKH
         fxIP1M1FraUwaSbeI5TigjytspUDaf3CgIFRnt3HAPOzrPZFnt0h2HY7EIeN318j6Abf
         HG/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b4FnGWDL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b8si14608wru.1.2019.03.01.23.30.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:30:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b4FnGWDL;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x542.google.com with SMTP id a16so213913edn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 23:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YWe/TVFwMeeZWm4pccDyxA8+zY9jgKj1kvULEAbHQBI=;
        b=b4FnGWDLZCbrH+yAZqqhG46iV8m7ngBwtAPiAetRdbzg/jJYtOLr125C6rk7PUJiKU
         3+Ar0hcZLwp1QO71Mp+O/wl2SuIefmw3PgMVekfl+w5yf9jBIM7qeXgzqauM6jcFK4xd
         bUGSd4eRaW8PIGAS04m0Ux3yMeWFm8ezodOG/KA30KCTc4fFQ2051U7utSBP1JHgPTMt
         cLMJZoQg4XkO2GtGodnKtRyecSBbjWudN5ybLwoflyrwrNGJAKR52P+L8dGgr77s4rH2
         Q9ynt2MukG+Uyn1GKfNBEWnepQodiryNzQPkZB+rOvBISTBJnxdarb1PXQ6n2u/ulXen
         Ax3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YWe/TVFwMeeZWm4pccDyxA8+zY9jgKj1kvULEAbHQBI=;
        b=nXsQ4ruME+zE4Qu0ZiOLqMiQ5JKtVTNC76C0w9OH1hZFeoVKJK/XoACJK8KGMvLuIH
         Y50UgjYPsvZLqPvDGPMureAmslbGYGl63mJilekZyDZREowC06jym/AnK2AmMYrc/C0s
         VAquYwDw6N7gsy5yiLEZenpuzmpxlr6YcrdkwuDmojPO0Ed8rc5Oz8MXKqN1Uku6RZNv
         RPK1I5F6VJ4p4S2OqATqk60Fve+2d3cOgt6BlPU1Fl8ATzpeXmrapNymLCjT5uejtnVn
         ZFFYXdourR/Fhs7qkxUciu5loE7Ncfjy1oQ7tT42vKzFx1p3fYwk/NtFfhKBCDDimlhy
         tS4Q==
X-Gm-Message-State: APjAAAU9yc6TlPt+l9Hdg7L7VCKHOfDJmS6uLynrAMuL8m6m89yt7RXS
	Ta1a2p61rEMNfAViXJvCyw5JuaEiTUx/pp4ay/rkCC4=
X-Received: by 2002:a17:906:812:: with SMTP id e18mr5521382ejd.28.1551511831847;
 Fri, 01 Mar 2019 23:30:31 -0800 (PST)
MIME-Version: 1.0
References: <20190301151801.7886-1-jbi.octave@gmail.com> <20190301151801.7886-2-jbi.octave@gmail.com>
 <20190301153935.GA3877@kroah.com> <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com>
 <20190301200104.GA19353@kroah.com> <CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw@mail.gmail.com>
 <alpine.DEB.2.21.1903020729430.2572@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903020729430.2572@hadrien>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 2 Mar 2019 07:29:53 +0000
Message-ID: <CAOuULM40UOwHdzELPDS6=fj4NyHuV38P5zMtfBinaarApRqn4g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: mt7621-dma: add SPDX
 GPL-2.0 or later version license identifier
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009a269b0583177ff8"

--0000000000009a269b0583177ff8
Content-Type: text/plain; charset="UTF-8"

Apology, I did not  see that. I will change.

*Jules*
*..*
BCS West Yorkshire Secretary
Positive action combined with positive thinking results in success - Shiv
Khera


On Sat, 2 Mar 2019 at 06:30, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 2 Mar 2019, Jules Octave wrote:
>
> > Thanks . I have just changed it. I take good note.
>
> Greg told you not to top post.  But you are top posting again.  Please
> move down to the thing that you are responding to and put your response
> right under it, like I have done in this message.
>
> julia
>
> >
> > Jules
> > ..
> > BCS West Yorkshire Secretary
> > Positive action combined with positive thinking results in success -
> Shiv Khera
> >
> >
> > On Fri, 1 Mar 2019 at 20:01, Greg KH <gregkh@linuxfoundation.org> wrote:
> >       A: http://en.wikipedia.org/wiki/Top_post
> >       Q: Were do I find info about this thing called top-posting?
> >       A: Because it messes up the order in which people normally read
> text.
> >       Q: Why is top-posting such a bad thing?
> >       A: Top-posting.
> >       Q: What is the most annoying thing in e-mail?
> >
> >       A: No.
> >       Q: Should I include quotations after my reply?
> >
> >
> >       http://daringfireball.net/2007/07/on_top
> >
> >       On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave wrote:
> >       > Some people say  GPL-2.0+ has deprecated (
> >       > https://www.drupal.org/project/lightning/issues/2938910 ) but I
> will
> >
> >       That is drupal, not the kernel.
> >
> >       > change it to GPL-2.0+.
> >       > I tried looking  on  https://spdx.org/licenses/
> >
> >       That's a nice place to read as well, but we are using an "older"
> version
> >       of spdx.
> >
> >       Always read the in-kernel documentation, we write it for a reason
> :)
> >
> >       Look at Documentation/process/license-rules.rst please, it shows
> that
> >       you should use the "GPL-2.0+" marking.
> >
> >       thanks,
> >
> >       greg k-h
> >
> >       --
> >       You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190301200104.GA19353%40kroah.com
> .
> >       For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw%40mail.gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--0000000000009a269b0583177ff8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apology, I did not=C2=A0 see that. I will change.</di=
v><div><br> </div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><div>=
<b><font size=3D"2" color=3D"#0078d7">Jules</font></b></div></div><div><div=
><font size=3D"1" color=3D"#0078d7"><b>..</b></font></div><div><font size=
=3D"1" color=3D"#000000">BCS West Yorkshire Secretary</font></div><div><spa=
n style=3D"color:rgb(51,51,51);font-family:&quot;helvetica neue&quot;,Helve=
tica,Arial,sans-serif"><font size=3D"1">Positive action combined with posit=
ive thinking results in success - Shiv Khera</font></span></div></div><div>=
<b></b></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div><br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 2 Mar 2019 at 06:30, Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br=
>
<br>
On Sat, 2 Mar 2019, Jules Octave wrote:<br>
<br>
&gt; Thanks . I have just changed it. I take good note.<br>
<br>
Greg told you not to top post.=C2=A0 But you are top posting again.=C2=A0 P=
lease<br>
move down to the thing that you are responding to and put your response<br>
right under it, like I have done in this message.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Jules<br>
&gt; ..<br>
&gt; BCS West Yorkshire Secretary<br>
&gt; Positive action combined with positive thinking results in success - S=
hiv Khera<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 1 Mar 2019 at 20:01, Greg KH &lt;<a href=3D"mailto:gregkh@linu=
xfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wrote=
:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0A: <a href=3D"http://en.wikipedia.org/wiki/T=
op_post" rel=3D"noreferrer" target=3D"_blank">http://en.wikipedia.org/wiki/=
Top_post</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Q: Were do I find info about this thing call=
ed top-posting?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0A: Because it messes up the order in which p=
eople normally read text.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Q: Why is top-posting such a bad thing?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0A: Top-posting.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Q: What is the most annoying thing in e-mail=
?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0A: No.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Q: Should I include quotations after my repl=
y?<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://daringfireball.net/2007/07=
/on_top" rel=3D"noreferrer" target=3D"_blank">http://daringfireball.net/200=
7/07/on_top</a><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri, Mar 01, 2019 at 05:38:58PM +0000, Ju=
les Octave wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Some people say=C2=A0 GPL-2.0+ has depr=
ecated (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"https://www.drupal.org/proje=
ct/lightning/issues/2938910" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.drupal.org/project/lightning/issues/2938910</a> ) but I will<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0That is drupal, not the kernel.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; change it to GPL-2.0+.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I tried looking=C2=A0 on=C2=A0 <a href=
=3D"https://spdx.org/licenses/" rel=3D"noreferrer" target=3D"_blank">https:=
//spdx.org/licenses/</a><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0That&#39;s a nice place to read as well, but=
 we are using an &quot;older&quot; version<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0of spdx.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Always read the in-kernel documentation, we =
write it for a reason :)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Look at Documentation/process/license-rules.=
rst please, it shows that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0you should use the &quot;GPL-2.0+&quot; mark=
ing.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2=
Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscri=
be@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank">outreachy-k=
ernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visit <a =
href=3D"https://groups.google.com/d/msgid/outreachy-kernel/20190301200104.G=
A19353%40kroah.com" rel=3D"noreferrer" target=3D"_blank">https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190301200104.GA19353%40kroah.com</a>.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https://gro=
ups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3G=
i2EOqAyXw%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://gr=
oups.google.com/d/msgid/outreachy-kernel/CAOuULM6csFS6UCZMfefDZhOdraTspMBKr=
XT5JiL3Gi2EOqAyXw%40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
&gt;</blockquote></div>

--0000000000009a269b0583177ff8--

