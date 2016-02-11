X-GM-THRID: 6250070785112670208
X-Received: by 10.13.213.208 with SMTP id x199mr14176227ywd.48.1455211314074;
        Thu, 11 Feb 2016 09:21:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.5 with SMTP id w5ls535602igw.21.gmail; Thu, 11 Feb 2016
 09:21:53 -0800 (PST)
X-Received: by 10.66.165.39 with SMTP id yv7mr44486117pab.28.1455211313704;
        Thu, 11 Feb 2016 09:21:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22c.google.com (mail-ob0-x22c.google.com. [2607:f8b0:4003:c01::22c])
        by gmr-mx.google.com with ESMTPS id mu6si600671igb.1.2016.02.11.09.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:21:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) client-ip=2607:f8b0:4003:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22c.google.com with SMTP id ba1so82965613obb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6r5IDKlPQSG/BB+GuuTFBtVF70TYM0LaSOy93uINGEQ=;
        b=GGFEFVs81yqks0sTPcyYakiMrYZSpAoBTcE95GjRNwQqnCVTBDF3wjLud+cJ5p5nKx
         VEWbSVVZebU5KuFIxqEIb3aahC2IVwDlBDJEqMiPzagb1I8YqldAIlQxK/CQoEPgyee7
         ShZKyjPMt0Y5gq6+cnQnFHrdUhPyLdRwJS4os4/kuw8bWQ7PpBp1QxA8MW6kZ+Ti6srN
         Mr1e2vMUPHZ/1PB6VSt7bKc3kfXx8NSj0yvvrkt1iAcXPakmhDUFpp6QN+PlMea6TQHy
         +O+X8cYfLXi4DiV7xAncLwGdeeLUAwyRSuIfTIjuIezhNuydw6ggVkVKDC58LYTzpvq2
         Q3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=6r5IDKlPQSG/BB+GuuTFBtVF70TYM0LaSOy93uINGEQ=;
        b=L/HqaA4K/oldV55ZhoGVaj8ek5YA9NWD8XWBIkUZAkaDIUTAZTk1qrWhjFWJKfDAOZ
         py4TwEgUzIM++1b4IkqvN5qpBdJPqDZ5dTThBp0i5/ZfSquprpNlUeB9edEKdVDvCRPq
         IDQ5sxv4IIcsQOmW45XlfZxKt9l3rw8D1Cn7HMuctvFW+Mhj9YUC4tfy6GZbWNHiSgpR
         wutYnS6kCJOedWJBdUoIqR91shdkgo+UH40W1ABaW0p+f/tQfxJo3oapHAL6zP75Ro3o
         +TY25F+fLKCSctzBXYb/dTaro4f45rtEL5ycuIqEpipRUjmvU9XPEBXee9K1Oi+sFwHY
         K+Sg==
X-Gm-Message-State: AG10YORDPXSyqbaqQyc4ixnLc7o2y3EusaekjXuRXNkcVvUMynJI4MfiR6gLznEe4syDYJM5pppvm9B3UlwqWQ==
MIME-Version: 1.0
X-Received: by 10.182.63.42 with SMTP id d10mr7926482obs.65.1455211313545;
 Thu, 11 Feb 2016 09:21:53 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Thu, 11 Feb 2016 09:21:53 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602111816220.2517@hadrien>
References: <20160211212603.GA4216@janani-Inspiron-3521>
	<alpine.DEB.2.10.1602111816220.2517@hadrien>
Date: Thu, 11 Feb 2016 12:21:53 -0500
Message-ID: <CANnt6Xkv7-7Rq_0xwUOAK3Kru87Go=1==V0sbs008myByt=5-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: goldfish: Remove unneeded
 parentheses in assignment
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=e89a8f838ca96aca44052b81c914

--e89a8f838ca96aca44052b81c914
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 11, 2016 at 12:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 11 Feb 2016, Janani Ravichandran wrote:
>
> > Remove parentheses around the right hand side of assignments as they are
> > not needed. Semantic patch used:
> >
> > @@
> > expression a, b, c;
> > @@
> >
> > (
> >   a = (b == c)
> > |
> >   a =
> > - (
> >   b
> > - )
> > )
> > Reply-To:
> >
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/goldfish/goldfish_audio.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/goldfish/goldfish_audio.c
> b/drivers/staging/goldfish/goldfish_audio.c
> > index 364fdcd..8ef2d02 100644
> > --- a/drivers/staging/goldfish/goldfish_audio.c
> > +++ b/drivers/staging/goldfish/goldfish_audio.c
> > @@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp,
> char __user *buf,
> >               return -ENODEV;
> >
> >       while (count > 0) {
> > -             length = (count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE :
> count);
> > +             length = count > READ_BUFFER_SIZE ? READ_BUFFER_SIZE :
> count;
> >               AUDIO_WRITE(data, AUDIO_START_READ, length);
> >
> >               wait_event_interruptible(data->wait, data->buffer_status &
> > @@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip,
> struct file *fp)
> >
> >       if (atomic_inc_return(&open_count) == 1) {
> >               fp->private_data = audio_data;
> > -             audio_data->buffer_status =
> (AUDIO_INT_WRITE_BUFFER_1_EMPTY |
> > -
> AUDIO_INT_WRITE_BUFFER_2_EMPTY);
> > +             audio_data->buffer_status = AUDIO_INT_WRITE_BUFFER_1_EMPTY
> |
> > +
> AUDIO_INT_WRITE_BUFFER_2_EMPTY;
>
> Do these need to be lined up, or is it just a tab issue?
>
They will look better if lined up. I'll do it.

Janani.

>
> julia
>
> >               AUDIO_WRITE(audio_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);
> >               return 0;
> >       }
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160211212603.GA4216%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--e89a8f838ca96aca44052b81c914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 11, 2016 at 12:16 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOE=
nZb"><div class=3D"h5"><br>
<br>
On Thu, 11 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Remove parentheses around the right hand side of assignments as they a=
re<br>
&gt; not needed. Semantic patch used:<br>
&gt;<br>
&gt; @@<br>
&gt; expression a, b, c;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 =C2=A0a =3D (b =3D=3D c)<br>
&gt; |<br>
&gt;=C2=A0 =C2=A0a =3D<br>
&gt; - (<br>
&gt;=C2=A0 =C2=A0b<br>
&gt; - )<br>
&gt; )<br>
&gt; Reply-To:<br>
&gt;<br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/goldfish/goldfish_audio.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/stagi=
ng/goldfish/goldfish_audio.c<br>
&gt; index 364fdcd..8ef2d02 100644<br>
&gt; --- a/drivers/staging/goldfish/goldfish_audio.c<br>
&gt; +++ b/drivers/staging/goldfish/goldfish_audio.c<br>
&gt; @@ -122,7 +122,7 @@ static ssize_t goldfish_audio_read(struct file *fp=
, char __user *buf,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (count &gt; 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0length =3D (count &gt=
; READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0length =3D count &gt;=
 READ_BUFFER_SIZE ? READ_BUFFER_SIZE : count;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_WRITE(data=
, AUDIO_START_READ, length);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wait_event_inter=
ruptible(data-&gt;wait, data-&gt;buffer_status &amp;<br>
&gt; @@ -197,8 +197,8 @@ static int goldfish_audio_open(struct inode *ip, s=
truct file *fp)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (atomic_inc_return(&amp;open_count) =3D=
=3D 1) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fp-&gt;private_d=
ata =3D audio_data;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0audio_data-&gt;buffer=
_status =3D (AUDIO_INT_WRITE_BUFFER_1_EMPTY |<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 AUDIO_INT_WRITE_BUFFER_2_EMPTY);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0audio_data-&gt;buffer=
_status =3D AUDIO_INT_WRITE_BUFFER_1_EMPTY |<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 AUDIO_INT_WRITE_BUFFER_2_EMPTY;<br>
<br>
</div></div>Do these need to be lined up, or is it just a tab issue?<br></b=
lockquote><div>They will look better if lined up. I&#39;ll do it.<br><br></=
div><div>Janani. <br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AUDIO_WRITE(audi=
o_data, AUDIO_INT_ENABLE, AUDIO_INT_MASK);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160211212603.GA4216%40janani-Inspiron-35=
21" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/=
outreachy-kernel/20160211212603.GA4216%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--e89a8f838ca96aca44052b81c914--

