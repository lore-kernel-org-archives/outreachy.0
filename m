X-GM-THRID: 6250228823501045760
X-Received: by 10.50.150.98 with SMTP id uh2mr1656549igb.2.1455251667599;
        Thu, 11 Feb 2016 20:34:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.88.132 with SMTP id bg4ls799136obb.4.gmail; Thu, 11 Feb
 2016 20:34:27 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr47036590obx.4.1455251667202;
        Thu, 11 Feb 2016 20:34:27 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-ig0-x22c.google.com (mail-ig0-x22c.google.com. [2607:f8b0:4001:c05::22c])
        by gmr-mx.google.com with ESMTPS id 17si60725igj.2.2016.02.11.20.34.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 20:34:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) client-ip=2607:f8b0:4001:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c05::22c as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x22c.google.com with SMTP id hb3so2734564igb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 20:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=Q/T6QKijLhKzTgHk53CR4P0jUrO0DCtEiIhESTuEubs=;
        b=W5RlrZi7nzc1EKIdTk1Q8L2C/whxStik2bxWU9jvcbGpn8Tx8KKVmBNjfpC/L+e78w
         gEtQwZSSMFwxWBTVuP6/LYv8h18PliCQfvVGJNkHk/LEF/ss9g9jFpF+JxS6rLyIB8Jl
         APM5JBa4L7KiA8HbLeoRpiaETKi7qss6sQH7VMuuIP+kHJRMezKOmjGbf5ronmh2UJsI
         MWkvNvNSQq231Df8+riu9sIC+lkjPhR06iJIJZ6O4QFe1+e6Ech8YQJ9v6IKBqzAVbIF
         7EdxT6hE6NP3mEz21vl6C0pWWLpl7dBj6DIlogv+xF+Tt2cmjjF0jQZAbsIRSaJfyf5Z
         mhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=Q/T6QKijLhKzTgHk53CR4P0jUrO0DCtEiIhESTuEubs=;
        b=nGcYIy/6lqWxG4Z09wo6KalDIIZEphEPcDkt6SRU1UiKBlgKhBH62CY6UidVTHSbEx
         bErlIVE79EKdUlkrV/EyEcFXx7vqIl057j8Xv7EsN8qDXDmvEkPV1SXNw4oAkYI2lQbD
         x65MJhay9KOJCHksBnpY6dajO9Dh0CiExLhJBwneN7mtgUznnoFOdzSqsGuGTnsU1xGG
         6jJmv9TUncvV9BUoIK33WPNjyb+5PLZ3i8OQNJlGLFINuMmnhnk9Gxf2jj9LOM4W75jF
         Q/N/XiqVmLsiYDiW013FKY5OfGYpdL92R6yXeN1GOcj7eku1I7CQSf3KTq1Q0z4x4omL
         dwoQ==
X-Gm-Message-State: AG10YOTP3XmyH8covQHtPTnVeDfSCjJP2wLiDZm3CUvbNe9t94/J8iSucWMRyUSIEo8O6kbo7F3xVD0geHX3ww==
X-Received: by 10.50.111.111 with SMTP id ih15mr1902352igb.78.1455251667076;
 Thu, 11 Feb 2016 20:34:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Thu, 11 Feb 2016 20:33:47 -0800 (PST)
In-Reply-To: <20160212031015.GA9936@kroah.com>
References: <1455244786-6824-1-git-send-email-rakhish1994@gmail.com> <20160212031015.GA9936@kroah.com>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Fri, 12 Feb 2016 10:03:47 +0530
Message-ID: <CAMnyiXvOgTT-cO1YHJJ3xx1Bvvi44JSV=82yAbu5sZg61R5fZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8712: Replace kmalloc
 by kzalloc.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, 
	Daniel Baluta <daniel.baluta@gmail.com>
Content-Type: multipart/alternative; boundary=089e0149be34accd51052b8b2eca

--089e0149be34accd51052b8b2eca
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 8:40 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Feb 12, 2016 at 08:09:46AM +0530, Rakhi Sharma wrote:
> > Mainly the issue is that bool variables can have invalid values.
> > So as memory allocated with kmalloc() is essentially random, any struct
> > that contains bools, is allocated with kmalloc() and doesn't have the
> > bools explicitly set might have invalid values.
> > This is easily fixed by allocating it with kzalloc().
> >
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_io.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_io.c
> b/drivers/staging/rtl8712/rtl871x_io.c
> > index fbbc635..2891b82 100644
> > --- a/drivers/staging/rtl8712/rtl871x_io.c
> > +++ b/drivers/staging/rtl8712/rtl871x_io.c
> > @@ -60,7 +60,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
> >       set_intf_funs = &(r8712_usb_set_intf_funs);
> >       set_intf_ops = &r8712_usb_set_intf_ops;
> >       init_intf_priv = &r8712_usb_init_intf_priv;
> > -     pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct
> intf_priv),
> > +     pintf_priv = pintf_hdl->pintfpriv = kzalloc(sizeof(struct
> intf_priv),
> >                                                   GFP_ATOMIC);
>
> Hi Greg,

> Why is this needed?  Don't do a zero-fill unless the code is
> expecting/wanting it.


Sure I will take care of it in future.


>   Are you sure that the fields don't already get
> set properly?  Is this a waste of time?
>
> I was going through this file and found the kmalloc function I read the
code and thought
it need change, as it is always better to use kzalloc.May be it will
usefull in future or
may be not. In my previous contribution (before outreachy round), one of
maintainer
advise me to do this in case if I found it ok. and I really don't think
this is waste of time.
Please let me know if I am doing wrong :)



> We need a lot more information, you can't just blindly convert these
> calls, especially on "fast paths", like I think this might be.
>
> Please let me know what information you need, I will try to deliver that
:)

sorry,
>
> greg k-h
>

--089e0149be34accd51052b8b2eca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Feb 12, 2016 at 8:40 AM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<span class=3D"">On Fri, Feb 12, 2016 at 08:09:46AM +0530, Rakhi Sharma wro=
te:<br>
&gt; Mainly the issue is that bool variables can have invalid values.<br>
&gt; So as memory allocated with kmalloc() is essentially random, any struc=
t<br>
&gt; that contains bools, is allocated with kmalloc() and doesn&#39;t have =
the<br>
&gt; bools explicitly set might have invalid values.<br>
&gt; This is easily fixed by allocating it with kzalloc().<br>
&gt;<br>
&gt; Signed-off-by: Rakhi Sharma &lt;<a href=3D"mailto:rakhish1994@gmail.co=
m">rakhish1994@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_io.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rt=
l8712/rtl871x_io.c<br>
&gt; index fbbc635..2891b82 100644<br>
&gt; --- a/drivers/staging/rtl8712/rtl871x_io.c<br>
&gt; +++ b/drivers/staging/rtl8712/rtl871x_io.c<br>
&gt; @@ -60,7 +60,7 @@ static uint _init_intf_hdl(struct _adapter *padapter=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0set_intf_funs =3D &amp;(r8712_usb_set_intf_f=
uns);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0set_intf_ops =3D &amp;r8712_usb_set_intf_ops=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0init_intf_priv =3D &amp;r8712_usb_init_intf_=
priv;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0pintf_priv =3D pintf_hdl-&gt;pintfpriv =3D kmallo=
c(sizeof(struct intf_priv),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0pintf_priv =3D pintf_hdl-&gt;pintfpriv =3D kzallo=
c(sizeof(struct intf_priv),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_ATOMIC);<br>
<br></span></blockquote><div>Hi Greg,<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><span class=3D"">
</span>Why is this needed?=C2=A0 Don&#39;t do a zero-fill unless the code i=
s<br>
expecting/wanting it.</blockquote><div><br>Sure I will take care of it in f=
uture.<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>=C2=A0 Are you sure that the fields don&#39;t already get<br>
set properly?=C2=A0 Is this a waste of time?<br>
<br></blockquote><div>I was going through this file and found the kmalloc f=
unction I read the code and thought <br>it need change, as it is always bet=
ter to use kzalloc.May be it will usefull in future or <br>may be not. In m=
y previous contribution (before outreachy round), one of maintainer <br>adv=
ise me to do this in case if I found it ok. and I really don&#39;t think th=
is is waste of time.<br>Please let me know if I am doing wrong :)<br></div>=
<div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
We need a lot more information, you can&#39;t just blindly convert these<br=
>
calls, especially on &quot;fast paths&quot;, like I think this might be.<br=
>
<br></blockquote><div>Please let me know what information you need, I will =
try to deliver that :) <br><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
sorry,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--089e0149be34accd51052b8b2eca--

