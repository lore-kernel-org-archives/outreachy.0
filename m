X-GM-THRID: 6256304454696435712
X-Received: by 10.31.168.130 with SMTP id r124mr8907838vke.10.1456665588601;
        Sun, 28 Feb 2016 05:19:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.104 with SMTP id x8ls271800igr.18.gmail; Sun, 28 Feb
 2016 05:19:48 -0800 (PST)
X-Received: by 10.50.61.132 with SMTP id p4mr6133300igr.0.1456665588189;
        Sun, 28 Feb 2016 05:19:48 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x234.google.com (mail-oi0-x234.google.com. [2607:f8b0:4003:c06::234])
        by gmr-mx.google.com with ESMTPS id nt4si748397igb.2.2016.02.28.05.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) client-ip=2607:f8b0:4003:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x234.google.com with SMTP id x143so19944141oix.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=y/tGX+9ubFZCabBBX0IQCHnKkc0Gz+IuBJQAnk72PGU=;
        b=c6FKyt6Z55JHv47y3qt4XfnAkOoygUwBVe7F5R64wFlNjWyVS10xOFeWNJqrDP7JAB
         GCrvYdwAH1SoVtYuuWik1rZEJFEfnksY86MfdkUz7yfwHjMJk9a0hw23z7gyuOMjXgMY
         bT/j5tR2DojrGKFO+5pOTmImwOVmNdGg1VSFIbz7Hyhrcv81K7etTeGy3xbFHYHBEiYl
         HAID6wJP+RRokjfehYvt68ZLZIpDQjIkqwUqhRdng/1IzHLxzDRut5B9WsWHMLdurriI
         dr4r+Cy2fURf6gBn97SOAx9CRtcG6x8DBVLzsmkogmZxOjaEmBz18rinoHSNLn7914aR
         qQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=y/tGX+9ubFZCabBBX0IQCHnKkc0Gz+IuBJQAnk72PGU=;
        b=juheRC3BNJOxeWzzEIVzp4C+Zz1vxV30OcXAuEyZyDi/abICQAK5yiCG02mfPeFb/T
         Sg8iEmksTmIP73ZtZBi/ljqiZIbDIv91/BGWu3qiQYKQT2o5mbgqJrcDz7bNJKFLjS1o
         RPf3mJ5Y27o5ESqEQmHmVpp//I5f4WE74nOphTDnrpn1S9K2nkmIqr8J7WRFq/ve2el0
         HG+Nus3K6KtNI69QB1jUmwFrKqvNRqeL+1bCuH6LFzxzrDNWn7Ru95nxO4Worc1BrKpv
         qCL3abV8xThTBG/6ch0GM5iHK7s7a6B3SAftn9thnlYXJoCmNR3wKIdyA6CCATvcv1Wa
         BrQg==
X-Gm-Message-State: AD7BkJKnYvEeX4aHzK1h1W4LemT8oeJfnJ1YfjqOiTi7am2W5o0X1uK244K0YFRPmByyw4JkDDXmoKZN+w4RVA==
MIME-Version: 1.0
X-Received: by 10.202.222.5 with SMTP id v5mr8002591oig.82.1456665587986; Sun,
 28 Feb 2016 05:19:47 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Sun, 28 Feb 2016 05:19:47 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602281402280.2147@localhost6.localdomain6>
References: <20160228033629.GA7898@sandhya>
	<alpine.DEB.2.02.1602281301100.2147@localhost6.localdomain6>
	<CAA3ASzkJdckd-6yvhqPuVuRL71Uk5B7DGGoRbrJgkZqHK8o-2w@mail.gmail.com>
	<alpine.DEB.2.02.1602281402280.2147@localhost6.localdomain6>
Date: Sun, 28 Feb 2016 18:49:47 +0530
Message-ID: <CAA3ASzmFHGNWUMOWqPkDc3E2tXa0FFgK9O4-f+yyJcGe8dP8Lw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Handle error condition.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113ce7a8edbab8052cd4623b

--001a113ce7a8edbab8052cd4623b
Content-Type: text/plain; charset=UTF-8

Thanks for suggestion !!. I shall try to fix proper return error codes
through another patch .

On Sun, Feb 28, 2016 at 6:34 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sun, 28 Feb 2016, sandhya bankar wrote:
>
> > The mkimage(..) is returning error i.e return 1 from below error code
> path,
> > First error condition is if kzalloc(..) has failed,then return 1.
> > Second error condition is if chunk mismatch then it return 1.
> >
> > I also checked the prism2_fwapply(..) in every error condition,it is
> > returning 1,so i have used return 1 in above patch.
>
> Yes, I see that they are returning 1 everywhere, so there is no problem
> with the patch.  But the whole code should be improved to return proper
> error codes, like -ENOMEM on allocation failure, rather than 1.  There are
> even some comments in the code saying that typically an error code is
> returned on failure, but that is not the case.  1 indeed looks more like
> success (true).
>
> julia
>
> >
> >
> > Do you have any suggestion ?
> >
> > On Sun, Feb 28, 2016 at 5:31 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sun, 28 Feb 2016, Sandhya Bankar wrote:
> >
> >       > Handle error condition.
> >       > Below semantic patch found,their is double assignment to
> >       'result' variable.so instead of deleting double
> >       assignment,handling error condition for "result = mkimage(..)".
> >       > @@
> >       > expression e1,e2,e3;
> >       > @@
> >       >
> >       > (
> >       >  (<+...e1++...+>)=e2;
> >       > |
> >       >  (<+...e1--...+>)=e2;
> >       > |
> >       >  (<+...++e1...+>)=e2;
> >       > |
> >       >  (<+...--e1...+>)=e2;
> >       > |
> >       > e1=e2;
> >       > e1 = <+...e1...+>;
> >       > |
> >       > *e1=e2;
> >       > *e1=e3;
> >       >
> >       > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> >       > ---
> >       >  drivers/staging/wlan-ng/prism2fw.c | 4 ++++
> >       >  1 file changed, 4 insertions(+)
> >       >
> >       > diff --git a/drivers/staging/wlan-ng/prism2fw.c
> >       b/drivers/staging/wlan-ng/prism2fw.c
> >       > index 8fc80df..35fd5fb 100644
> >       > --- a/drivers/staging/wlan-ng/prism2fw.c
> >       > +++ b/drivers/staging/wlan-ng/prism2fw.c
> >       > @@ -333,6 +333,10 @@ static int prism2_fwapply(const struct
> >       ihex_binrec *rfptr,
> >       >
> >       >       /* Make the image chunks */
> >       >       result = mkimage(fchunk, &nfchunks);
> >       > +     if (result) {
> >       > +             netdev_err(wlandev->netdev, "Failed to make
> >       image chunk.\n");
> >       > +             return 1;
> >       > +     }
> >
> > Perhaps it would be possible to move this code away from using 1 for
> > failure, towards using actual error codes.
> >
> > julia
> >
> > >
> > >       /* Do any plugging */
> > >       result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
> > > --
> > > 1.8.3.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to
> > outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20160228033629.GA7898%4
> > 0sandhya.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> >
> >
> >
>

--001a113ce7a8edbab8052cd4623b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for suggestion !!. I shall try to fix proper return=
 error codes through another patch . <br></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Sun, Feb 28, 2016 at 6:34 PM, Julia Lawall=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_b=
lank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><span class=3D"">On Sun, 28 Feb 2016, sandhya bankar wrote:<br>
<br>
&gt; The mkimage(..) is returning error i.e return 1 from below error code =
path,<br>
&gt; First error condition is if kzalloc(..) has failed,then return 1.<br>
&gt; Second error condition is if chunk mismatch then it return 1.<br>
&gt;<br>
&gt; I also checked the prism2_fwapply(..) in every error condition,it is<b=
r>
&gt; returning 1,so i have used return 1 in above patch.<br>
<br>
</span>Yes, I see that they are returning 1 everywhere, so there is no prob=
lem<br>
with the patch.=C2=A0 But the whole code should be improved to return prope=
r<br>
error codes, like -ENOMEM on allocation failure, rather than 1.=C2=A0 There=
 are<br>
even some comments in the code saying that typically an error code is<br>
returned on failure, but that is not the case.=C2=A0 1 indeed looks more li=
ke<br>
success (true).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt; Do you have any suggestion ?<br>
&gt;<br>
&gt; On Sun, Feb 28, 2016 at 5:31 PM, Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 28 Feb 2016, Sandhya Bankar wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Handle error condition.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Below semantic patch found,their is dou=
ble assignment to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;result&#39; variable.so instead of dele=
ting double<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0assignment,handling error condition for &quo=
t;result =3D mkimage(..)&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; expression e1,e2,e3;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; (<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 (&lt;+...e1++...+&gt;)=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 (&lt;+...e1--...+&gt;)=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 (&lt;+...++e1...+&gt;)=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 (&lt;+...--e1...+&gt;)=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; e1=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; e1 =3D &lt;+...e1...+&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; |<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; *e1=3De2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; *e1=3De3;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Sandhya Bankar &lt;<a hr=
ef=3D"mailto:bankarsandhya512@gmail.com">bankarsandhya512@gmail.com</a>&gt;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/wlan-ng/prism2fw.=
c | 4 ++++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 4 insertions(+)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/wlan-ng/pr=
ism2fw.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/wlan-ng/prism2fw.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 8fc80df..35fd5fb 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/wlan-ng/prism2fw.=
c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/wlan-ng/prism2fw.=
c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -333,6 +333,10 @@ static int prism2_=
fwapply(const struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ihex_binrec *rfptr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Make the i=
mage chunks */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D mk=
image(fchunk, &amp;nfchunks);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (result) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0netdev_err(wlandev-&gt;netdev, &quot;Failed to make<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0image chunk.\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return 1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; Perhaps it would be possible to move this code away from using 1 for<b=
r>
&gt; failure, towards using actual error codes.<br>
&gt;<br>
&gt; julia<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do any plugging */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D plugimage(fchunk, nfchunks, =
s3plug, ns3plug, &amp;pda);<br>
&gt; &gt; --<br>
&gt; &gt; 1.8.3.4<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e<br>
&gt; Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
<br>
&gt; send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@goog=
legroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to<br>
&gt; <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@=
googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/20160228033629.GA7898%4" rel=3D=
"noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/2=
0160228033629.GA7898%4</a><br>
&gt; 0sandhya.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/opto=
ut</a>.<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; </div></div></blockquote></div><br></div>

--001a113ce7a8edbab8052cd4623b--

