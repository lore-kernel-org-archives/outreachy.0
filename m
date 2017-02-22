X-GM-THRID: 6389640527251243008
X-Received: by 10.107.130.81 with SMTP id e78mr9538200iod.19.1487758574515;
        Wed, 22 Feb 2017 02:16:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls630327otc.36.gmail; Wed, 22 Feb
 2017 02:16:14 -0800 (PST)
X-Received: by 10.157.82.73 with SMTP id q9mr1943628otg.20.1487758574164;
        Wed, 22 Feb 2017 02:16:14 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id a17si255571itd.1.2017.02.22.02.16.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 02:16:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id m98so773967iod.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 02:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bTH3RIJHpIoIvdMGrPzHeJDEBVIqJhU4KG9pTJArZS0=;
        b=tL338caDEEnBOueyDCGLBc2/G7Gg6AIIRVUD8wwdoSK3xyFbPdp0wnmsG9AnehGG5E
         Q3xpQNrhMUQAz4vttHpL5Aijr6jxWh8NGLW82Txg48IOrIHA0zjK0pQ6sV8A71qYclVU
         KdwGEc2ueJt5d+CNIojorgfx0D8+jtmlA9w2pFwsBeHs81dzpV0KyJn4ASGYx9PGkQKW
         WUgA5qIu8GJign9Ad/fdVRHuVgonxMAQrYa32EdOnAXvmh0oBRp0BXot7YaechlvYohU
         u9FKXUxSWnRJAZmKCbdZ5l9Gy1DLyJ/+xnE9Jiadqi26TOjig7wgC5KYYInrJlCudbLf
         EPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bTH3RIJHpIoIvdMGrPzHeJDEBVIqJhU4KG9pTJArZS0=;
        b=n8SSYvnw22x6cfCyM0YKJ6yOajYjEuoyd1V2JWdAfk75jWYR5QnZ8DAm3rLS2/zwR4
         NUqrQT16QHTlm5jLu4gWXkIOXx5UJJse9Yt1XVuMc2Ng69RUnR/O7VL5z8Rrf3+SpmsR
         Q/8iRNVyyRdoAMU/ur4XnQlmdD09wH2prHgt6Epd+EDqTKwotOSubOqLpWGmzybdCmPH
         QHKFATBXH2T8pcTmPwciMNiDR8537jqx0DOPNnGrULSAeY4EnJrZ/iqN+j5KPEt7iDAi
         4SaxpkGcOTRlIitcw/xSCWYRN8DJWw2b1e6PG/uEGP+QDsgOKo5iG6qFOr1rlrDeq6gA
         FGaA==
X-Gm-Message-State: AMke39maEAkbPHJnSMwKqfI5T5eJFXmWpd1M0ojUII7PGdM+q1k4b74ai+dviS26Ijz4Cp+JDdPhrZcsO9o2Qw==
X-Received: by 10.107.39.200 with SMTP id n191mr26071126ion.111.1487758573944;
 Wed, 22 Feb 2017 02:16:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 22 Feb 2017 02:15:43 -0800 (PST)
In-Reply-To: <20170221195059.GF10245@localhost>
References: <1487703983-19655-1-git-send-email-gs051095@gmail.com> <20170221195059.GF10245@localhost>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 22 Feb 2017 15:45:43 +0530
Message-ID: <CAOCi2DHkHpakjYezcnCXF35ViB5+LW174r_=AYMCt22OYg3X5g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: greybus:
 loopback_test: fix device-name leak
To: Johan Hovold <johan@kernel.org>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	elder@kernel.org
Content-Type: multipart/alternative; boundary=001a1140e8964fc6bf05491bc9c6

--001a1140e8964fc6bf05491bc9c6
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 22, 2017 at 1:20 AM, Johan Hovold <johan@kernel.org> wrote:
>
> On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:
> > Change array index from the loop bound variable to loop index.
> > Memory leak was occuring whenever there was more than one
> > loopback device. The pointer to dirent structures must be
> > individually freed before freeing the pointer array.
> >
> > Coccinelle Script:
> > @@
> > expression arr,ex1,ex2;
> > @@
> >
> > for(ex1 = 0; ex1 < ex2; ex1++) { <...
> >   arr[
> > - ex2
> > + ex1
> >   ]
> >   ...> }
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> > Changes in v2:
> >       -Made the commit message clearer.
> > ---
> >  drivers/staging/greybus/tools/loopback_test.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/tools/loopback_test.c
b/drivers/staging/greybus/tools/loopback_test.c
> > index 18d7a3d..1c01833 100644
> > --- a/drivers/staging/greybus/tools/loopback_test.c
> > +++ b/drivers/staging/greybus/tools/loopback_test.c
> > @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
> >       ret = 0;
> >  done:
> >       for (i = 0; i < n; i++)
> > -             free(namelist[n]);
> > +             free(namelist[i]);
> >       free(namelist);
> >  baddir:
> >       return ret;
>


> Oh, there's an illegal free here, which probably was what Julia was
> referring to. Yeah, not sure why things haven't blown up, perhaps there
> happens to be NULL pointer after?
>
> So we are in fact always leaking the device name here.
>

Um, should I assign null pointers to device names before freeing them? That
should fix illegal free I believe.

> No need to resend, unless you prefer. You can add my Reviewed-by tag if
> so.
Not sure what this means. I can send a v3 with the above suggested changes
if they are correct.

Thanks,
Gargi
>
> Thanks,
> Johan
>
> --

--001a1140e8964fc6bf05491bc9c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Feb 22, 2017 at 1:20 AM, Johan Hovold &lt;<a href=
=3D"mailto:johan@kernel.org">johan@kernel.org</a>&gt; wrote:<br>&gt;<br>&gt=
; On Wed, Feb 22, 2017 at 12:36:23AM +0530, Gargi Sharma wrote:<br>&gt; &gt=
; Change array index from the loop bound variable to loop index.<br>&gt; &g=
t; Memory leak was occuring whenever there was more than one<br>&gt; &gt; l=
oopback device. The pointer to dirent structures must be<br>&gt; &gt; indiv=
idually freed before freeing the pointer array.<br>&gt; &gt;<br>&gt; &gt; C=
occinelle Script:<br>&gt; &gt; @@<br>&gt; &gt; expression arr,ex1,ex2;<br>&=
gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; for(ex1 =3D 0; ex1 &lt; ex2; ex1++) {=
 &lt;...<br>&gt; &gt; =C2=A0 arr[<br>&gt; &gt; - ex2<br>&gt; &gt; + ex1<br>=
&gt; &gt; =C2=A0 ]<br>&gt; &gt; =C2=A0 ...&gt; }<br>&gt; &gt;<br>&gt; &gt; =
Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051=
095@gmail.com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; Changes in v2:<br>&gt; =
&gt; =C2=A0 =C2=A0 =C2=A0 -Made the commit message clearer.<br>&gt; &gt; --=
-<br>&gt; &gt; =C2=A0drivers/staging/greybus/tools/loopback_test.c | 2 +-<b=
r>&gt; &gt; =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>&gt; &gt=
;<br>&gt; &gt; diff --git a/drivers/staging/greybus/tools/loopback_test.c b=
/drivers/staging/greybus/tools/loopback_test.c<br>&gt; &gt; index 18d7a3d..=
1c01833 100644<br>&gt; &gt; --- a/drivers/staging/greybus/tools/loopback_te=
st.c<br>&gt; &gt; +++ b/drivers/staging/greybus/tools/loopback_test.c<br>&g=
t; &gt; @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test =
*t)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 ret =3D 0;<br>&gt; &gt; =C2=A0done:<b=
r>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; n; i++)<br>&gt; &gt; =
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(namelist[n]);<br>&gt; &gt;=
 + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(namelist[i]);<br>&gt; &gt=
; =C2=A0 =C2=A0 =C2=A0 free(namelist);<br>&gt; &gt; =C2=A0baddir:<br>&gt; &=
gt; =C2=A0 =C2=A0 =C2=A0 return ret;<br>&gt;<div><br></div><div><br>&gt; Oh=
, there&#39;s an illegal free here, which probably was what Julia was<br>&g=
t; referring to. Yeah, not sure why things haven&#39;t blown up, perhaps th=
ere<br>&gt; happens to be NULL pointer after?<br>&gt;<br>&gt; So we are in =
fact always leaking the device name here.<br>&gt;</div><div><br></div><div>=
Um, should I assign null pointers to device names before freeing them? That=
=C2=A0</div><div>should fix illegal free I believe.</div><div><br>&gt; No n=
eed to resend, unless you prefer. You can add my Reviewed-by tag if<br>&gt;=
 so.</div><div>Not sure what this means. I can send a v3 with the above sug=
gested changes</div><div>if they are correct.</div><div><br></div><div>Than=
ks,</div><div>Gargi<br>&gt;<br>&gt; Thanks,<br>&gt; Johan<br>&gt;<br>&gt; -=
-<br></div></div>

--001a1140e8964fc6bf05491bc9c6--

