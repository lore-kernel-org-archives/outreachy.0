X-GM-THRID: 1888775831552
X-Received: by 10.236.30.41 with SMTP id j29mr3011071yha.28.1424533373674;
        Sat, 21 Feb 2015 07:42:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.75.227 with SMTP id f3ls492497obw.4.gmail; Sat, 21 Feb
 2015 07:42:52 -0800 (PST)
X-Received: by 10.182.33.97 with SMTP id q1mr3231859obi.42.1424533372402;
        Sat, 21 Feb 2015 07:42:52 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-ig0-x234.google.com (mail-ig0-x234.google.com. [2607:f8b0:4001:c05::234])
        by gmr-mx.google.com with ESMTPS id t6si407795igz.3.2015.02.21.07.42.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) client-ip=2607:f8b0:4001:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c05::234 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x234.google.com with SMTP id b16so9623216igk.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xUgzJCH12OqDnCZdjGW4BP1SrNuSu4+gjpUMoexIbMo=;
        b=yutdSOf+nGAjsWtVzSYMb4WrcZKs8cm9GqQYC06OObEPi/DzlQcN1X3Z9itOdAd79G
         JHgECFWL49OLIrDlwkeqBVQjRFQBTT/rWcArMuMbNU2zZRr5Ft2/DcgjQCQKqVIYYbkh
         aV2HvAhyolQqpiYkWSNGhtWrx3PxJOEtbgNVVh3xDld0reTU/AQEQY+uJLLAGEu81O2i
         pWdu16Kefk9XtQtUn04/xhYuosrtfYf/eiT/MxZ/n+rcwTwlSWN0OIo+U4YBYImlRjlQ
         Fyj033PzN/U44c90gd/EKyqUgWY983a3u76xODj83mNRnUg8QyN20Lz/XjhVRr5APhk5
         KMAg==
MIME-Version: 1.0
X-Received: by 10.50.73.99 with SMTP id k3mr3134583igv.21.1424533371257; Sat,
 21 Feb 2015 07:42:51 -0800 (PST)
Received: by 10.64.142.49 with HTTP; Sat, 21 Feb 2015 07:42:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502211632380.2480@hadrien>
References: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
	<alpine.DEB.2.10.1502211632380.2480@hadrien>
Date: Sat, 21 Feb 2015 17:42:51 +0200
Message-ID: <CAPYvaxMU3Wk9BbwNOD-1zXMi_Babtkwgt5zWRd9MdAx1968vKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: used complete
From: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01184e22908a09050f9b052e

--089e01184e22908a09050f9b052e
Content-Type: text/plain; charset=UTF-8

Yes, I compiled this code and I've never met an error.

2015-02-21 17:33 GMT+02:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Sat, 21 Feb 2015, Melike Yurtoglu wrote:
>
> > WARNING:consider using a completion
> > completion for the static was added.That was found by running checkpatch
> >
> > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/lnet/router.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/lnet/router.c
> b/drivers/staging/lustre/lnet/lnet/router.c
> > index 52ec0ab..e6907b7 100644
> > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > @@ -1032,7 +1032,7 @@ lnet_router_checker_start(void)
> >           dead_router_check_interval <= 0)
> >               return 0;
> >
> > -     sema_init(&the_lnet.ln_rc_signal, 0);
> > +     static sema_init(&the_lnet.ln_rc_signal, 0);
>
> I don't understand this code at all.  Does it compile?
>
> julia
>
> >       /* EQ size doesn't matter; the callback is guaranteed to get every
> >        * event */
> >       eqsz = 0;
> > --
> > 1.8.3.2
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1424531114-12823-1-git-send-email-aysemelikeyurtoglu%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--089e01184e22908a09050f9b052e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I compiled this code and I&#39;ve never met an error.=
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02=
-21 17:33 GMT+02:00 Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sat, 21 Feb 2015, Mel=
ike Yurtoglu wrote:<br>
<br>
&gt; WARNING:consider using a completion<br>
&gt; completion for the static was added.That was found by running checkpat=
ch<br>
&gt;<br>
&gt; Signed-off-by: Melike Yurtoglu &lt;<a href=3D"mailto:aysemelikeyurtogl=
u@gmail.com">aysemelikeyurtoglu@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/lnet/router.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/stagi=
ng/lustre/lnet/lnet/router.c<br>
&gt; index 52ec0ab..e6907b7 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/lnet/router.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/lnet/router.c<br>
&gt; @@ -1032,7 +1032,7 @@ lnet_router_checker_start(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dead_router_check_interval &lt=
;=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0sema_init(&amp;the_lnet.ln_rc_signal, 0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0static sema_init(&amp;the_lnet.ln_rc_signal, 0);<=
br>
<br>
</span>I don&#39;t understand this code at all.=C2=A0 Does it compile?<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* EQ size doesn&#39;t matter; the callback =
is guaranteed to get every<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * event */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0eqsz =3D 0;<br>
&gt; --<br>
&gt; 1.8.3.2<br>
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
gle.com/d/msgid/outreachy-kernel/1424531114-12823-1-git-send-email-aysemeli=
keyurtoglu%40gmail.com" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/1424531114-12823-1-git-send-email-aysemelikeyurtoglu%40gm=
ail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e01184e22908a09050f9b052e--

