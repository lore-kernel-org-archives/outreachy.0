X-GM-THRID: 6203392298463526912
X-Received: by 10.66.90.132 with SMTP id bw4mr9566592pab.7.1444370807901;
        Thu, 08 Oct 2015 23:06:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.164 with SMTP id o36ls777971ioi.64.gmail; Thu, 08 Oct
 2015 23:06:47 -0700 (PDT)
X-Received: by 10.107.170.104 with SMTP id t101mr10225591ioe.3.1444370807482;
        Thu, 08 Oct 2015 23:06:47 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id y6si1557620ywc.3.2015.10.08.23.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 23:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id g206so69735183ykd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 23:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=yQnPvbpCIoMkbAqrApT9V8s9nzrSOQxcc8CsmISatho=;
        b=W0bmlv4ojKkcPZF+JzLKjcksAAJ1NR+BWvMjyOFylK+PC/nj0Z0VYTTMAbspIeL78K
         VXQzS55mJjT0FRaXz/g0gq8KJJG8T6I2dj6qvIiWwYRPOB4lu48kXaZUAfNRIwycDS6J
         +m94inHQKXVw1myN2YsoMGh4WiQplTOdt4NGMM2kjVRFpNdgpB9vIDNPRSQLQQSc0VQk
         4kMmiuKIyENLgG3kTZfBRYPVKnTCoOj2YDi9Xqu/JEFQybAZobdkPXIMnNeRRfYvvxjR
         GClN5zOLzBHVURSOzc4b52V5p33oSBZW6pm8Z+lUT8h09Gmu/sr+ItL81NhrDUJftUAs
         rQgw==
MIME-Version: 1.0
X-Received: by 10.129.154.206 with SMTP id r197mr7926478ywg.195.1444370807323;
 Thu, 08 Oct 2015 23:06:47 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Thu, 8 Oct 2015 23:06:47 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Thu, 8 Oct 2015 23:06:47 -0700 (PDT)
In-Reply-To: <20151009035802.GA30302@kroah.com>
References: <1444339813-12063-1-git-send-email-ciorneiioana@gmail.com>
	<20151009035802.GA30302@kroah.com>
Date: Fri, 9 Oct 2015 09:06:47 +0300
Message-ID: <CAHWJYFk2fj5wh9bePhY5qjs+k6cQszKpHc1+bR1sCbQb5S1XAA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lent: add missing
 __user __user annotation
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c0b7efae5073a0521a5c836

--94eb2c0b7efae5073a0521a5c836
Content-Type: text/plain; charset=UTF-8

On Oct 9, 2015 6:58 AM, "Greg KH" <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Oct 09, 2015 at 12:30:13AM +0300, Ioana Ciornei wrote:
> > Add missing __user annotation when using copy_{to/from}_user() to
indicate that is
> > a pointer from userspace and that it should not be derefenced.
> > Also, remove sparse warnings such as:
> >
> > drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning:
incorrect type in argument 1 (different address spaces)
> >   1 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    expected
void [noderef] <asn:1>*to
> >   2 drivers/staging/lustre/lnet/selftest/console.c:1474:26:    got
struct sfw_counters_t [usertype] *[assigned] sfwk_stat
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/selftest/console.c | 44
+++++++++++++-------------
> >  1 file changed, 22 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/selftest/console.c
b/drivers/staging/lustre/lnet/selftest/console.c
> > index 024aaee..7ba9022 100644
> > --- a/drivers/staging/lustre/lnet/selftest/console.c
> > +++ b/drivers/staging/lustre/lnet/selftest/console.c
> > @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t *msg,
> >       case LST_TRANS_SESQRY:
> >               rep = &msg->msg_body.dbg_reply;
> >
> > -             if (copy_to_user(&ent_up->rpe_priv[0],
> > +             if (copy_to_user((void __user *)&ent_up->rpe_priv[0],
> >                                    &rep->dbg_timeout, sizeof(int)) ||
> > -                 copy_to_user(&ent_up->rpe_payload[0],
> > +                 copy_to_user((void __user *)&ent_up->rpe_payload[0],
> >                                    &rep->dbg_name, LST_NAME_SIZE))
> >                       return -EFAULT;
> >
>
> The __user annotation in the lustre code is a mess, lots of work needs
> to be done here, but it's complex and tricky, and in the end is going to
> probably require some API changes to do correctly.  I strongly recommend
> just leaving it alone and letting the lustre developers fix it up
> properly sometime in the future, papering over the warnings with these
> casts just gives the impression that the issue is fixed, when it really
> isn't.
>
> sorry, but I can't take this change.

It's ok. Even so, I learnt a lot of new things while reading about
annotations and memory spaces.

Thanks for the feedback,
Ioana

--94eb2c0b7efae5073a0521a5c836
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Oct 9, 2015 6:58 AM, &quot;Greg KH&quot; &lt;<a href=3D"mailto:gregkh@li=
nuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Oct 09, 2015 at 12:30:13AM +0300, Ioana Ciornei wrote:<br>
&gt; &gt; Add missing __user annotation when using copy_{to/from}_user() to=
 indicate that is<br>
&gt; &gt; a pointer from userspace and that it should not be derefenced.<br=
>
&gt; &gt; Also, remove sparse warnings such as:<br>
&gt; &gt;<br>
&gt; &gt; drivers/staging/lustre/lnet/selftest/console.c:1474:26: warning: =
incorrect type in argument 1 (different address spaces)<br>
&gt; &gt;=C2=A0 =C2=A01 drivers/staging/lustre/lnet/selftest/console.c:1474=
:26:=C2=A0 =C2=A0 expected void [noderef] &lt;asn:1&gt;*to<br>
&gt; &gt;=C2=A0 =C2=A02 drivers/staging/lustre/lnet/selftest/console.c:1474=
:26:=C2=A0 =C2=A0 got struct sfw_counters_t [usertype] *[assigned] sfwk_sta=
t<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@g=
mail.com">ciorneiioana@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 drivers/staging/lustre/lnet/selftest/console.c | 44 +++++++=
++++++-------------<br>
&gt; &gt;=C2=A0 1 file changed, 22 insertions(+), 22 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/dri=
vers/staging/lustre/lnet/selftest/console.c<br>
&gt; &gt; index 024aaee..7ba9022 100644<br>
&gt; &gt; --- a/drivers/staging/lustre/lnet/selftest/console.c<br>
&gt; &gt; +++ b/drivers/staging/lustre/lnet/selftest/console.c<br>
&gt; &gt; @@ -384,9 +384,9 @@ lstcon_sesrpc_readent(int transop, srpc_msg_t=
 *msg,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case LST_TRANS_SESQRY:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rep =3D &am=
p;msg-&gt;msg_body.dbg_reply;<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_to_user=
(&amp;ent_up-&gt;rpe_priv[0],<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_to_user=
((void __user *)&amp;ent_up-&gt;rpe_priv[0],<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;rep-&gt;db=
g_timeout, sizeof(int)) ||<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
py_to_user(&amp;ent_up-&gt;rpe_payload[0],<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
py_to_user((void __user *)&amp;ent_up-&gt;rpe_payload[0],<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;rep-&gt;db=
g_name, LST_NAME_SIZE))<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return -EFAULT;<br>
&gt; &gt;<br>
&gt;<br>
&gt; The __user annotation in the lustre code is a mess, lots of work needs=
<br>
&gt; to be done here, but it&#39;s complex and tricky, and in the end is go=
ing to<br>
&gt; probably require some API changes to do correctly.=C2=A0 I strongly re=
commend<br>
&gt; just leaving it alone and letting the lustre developers fix it up<br>
&gt; properly sometime in the future, papering over the warnings with these=
<br>
&gt; casts just gives the impression that the issue is fixed, when it reall=
y<br>
&gt; isn&#39;t.<br>
&gt;<br>
&gt; sorry, but I can&#39;t take this change.</p>
<p dir=3D"ltr">It&#39;s ok. Even so, I learnt a lot of new things while rea=
ding about annotations and memory spaces. </p>
<p dir=3D"ltr">Thanks for the feedback,=C2=A0 <br>
Ioana</p>

--94eb2c0b7efae5073a0521a5c836--

