X-GM-THRID: 6256304454696435712
X-Received: by 10.129.58.16 with SMTP id h16mr8637480ywa.56.1456664510086;
        Sun, 28 Feb 2016 05:01:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.10 with SMTP id to10ls925491obb.44.gmail; Sun, 28 Feb
 2016 05:01:49 -0800 (PST)
X-Received: by 10.182.243.135 with SMTP id wy7mr8532061obc.8.1456664509682;
        Sun, 28 Feb 2016 05:01:49 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id im4si274221igb.2.2016.02.28.05.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:01:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id xx9so801514obc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to;
        bh=xlgfLEoF+asTfOoUZi8lETym0doXF3zbr215+ubJRjg=;
        b=PS1lQYHdDB1R2Dr5w+lqz41hegc+vNDmlzbXU/fHEhbHx4aixcbBxBHOkuMJsWbTyL
         yU54edI8CGMFrrP38bXlmH6yZoynNEKQvSr4aNuN83rJ3c0VhFYQRZhNFbnIZe7x/g4w
         hlQ5XGIB8N161/sWQgpof/vSqqGGxxrIq25RbER/e3vVpka6l9kq4W5H2di/HttMZrU9
         xIqirEhNsXL7MLzEdB4uYUi2ijszsQXUFTSceTsdEnygipuGcmYVNyyKhg0kZYR34oPu
         ri4Pl2RrnCvv+kzleMjgsvbhmJs9q9SnAOsb46IpRMoPfIBZX0bxogKJ5eVEkjKGfuTh
         i6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to;
        bh=xlgfLEoF+asTfOoUZi8lETym0doXF3zbr215+ubJRjg=;
        b=ByJ3PwErQLmysVbQ9lI71OncJGqMQhOXgd8GIHEz6fHiS+kSGNRpXoHdT7uu3TK/zM
         EnMXq5W5O6W9+g7+UH3HeLwXQZagOx+DzgyqYYkg4uqSpAN/IuvtsP6Cu9eYFNesNu18
         DJonwumb+TdCp84VGkIpkX34p9EjWU0BC2Ax57GW2Rk/YJBFEHUlCMLtIFx5SAhUYENp
         0g5wq+Kve25cTwip37ByTI3aHUSwaUHDezN3K+He3jXVn54/SzuYvWTPmllvKJInIn2/
         ULwHbqcVW7e/FUhODgtJmaSDmUAgxhYl4myPU+ahbfu7kyo/1zF7lhf9MYLggAMBUYn6
         ZLMQ==
X-Gm-Message-State: AD7BkJJ3PkHXCLpWNodMJBszEao7hcQ+2RQ2vmMWpHTQr9flTgaKfzQg6Z2tNsHNJjTR0i9TxeqPtRMbbS2p9Q==
MIME-Version: 1.0
X-Received: by 10.60.150.163 with SMTP id uj3mr3180041oeb.67.1456664509502;
 Sun, 28 Feb 2016 05:01:49 -0800 (PST)
Received: by 10.157.47.239 with HTTP; Sun, 28 Feb 2016 05:01:49 -0800 (PST)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <alpine.DEB.2.02.1602281301100.2147@localhost6.localdomain6>
References: <20160228033629.GA7898@sandhya>
	<alpine.DEB.2.02.1602281301100.2147@localhost6.localdomain6>
Date: Sun, 28 Feb 2016 18:31:49 +0530
Message-ID: <CAA3ASzkJdckd-6yvhqPuVuRL71Uk5B7DGGoRbrJgkZqHK8o-2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Handle error condition.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7b5d98eba5615d052cd4222e

--047d7b5d98eba5615d052cd4222e
Content-Type: text/plain; charset=UTF-8

The mkimage(..) is returning error i.e return 1 from below error code path,
First error condition is if kzalloc(..) has failed,then return 1.
Second error condition is if chunk mismatch then it return 1.

I also checked the prism2_fwapply(..) in every error condition,it is
returning 1,so i have used return 1 in above patch.


Do you have any suggestion ?

On Sun, Feb 28, 2016 at 5:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 28 Feb 2016, Sandhya Bankar wrote:
>
> > Handle error condition.
> > Below semantic patch found,their is double assignment to 'result'
> variable.so instead of deleting double assignment,handling error condition
> for "result = mkimage(..)".
> > @@
> > expression e1,e2,e3;
> > @@
> >
> > (
> >  (<+...e1++...+>)=e2;
> > |
> >  (<+...e1--...+>)=e2;
> > |
> >  (<+...++e1...+>)=e2;
> > |
> >  (<+...--e1...+>)=e2;
> > |
> > e1=e2;
> > e1 = <+...e1...+>;
> > |
> > *e1=e2;
> > *e1=e3;
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/prism2fw.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/staging/wlan-ng/prism2fw.c
> b/drivers/staging/wlan-ng/prism2fw.c
> > index 8fc80df..35fd5fb 100644
> > --- a/drivers/staging/wlan-ng/prism2fw.c
> > +++ b/drivers/staging/wlan-ng/prism2fw.c
> > @@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binrec
> *rfptr,
> >
> >       /* Make the image chunks */
> >       result = mkimage(fchunk, &nfchunks);
> > +     if (result) {
> > +             netdev_err(wlandev->netdev, "Failed to make image
> chunk.\n");
> > +             return 1;
> > +     }
>
> Perhaps it would be possible to move this code away from using 1 for
> failure, towards using actual error codes.
>
> julia
>
> >
> >       /* Do any plugging */
> >       result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
> > --
> > 1.8.3.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160228033629.GA7898%40sandhya
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--047d7b5d98eba5615d052cd4222e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>The mkimage(..) is returning error i.e retu=
rn 1 from below error code path, <br></div>First error condition is if kzal=
loc(..) has failed,then return 1.<br>Second error condition is if chunk mis=
match then it return 1.<br><br></div>I also checked the prism2_fwapply(..) =
in every error condition,it is returning 1,so i have used return 1 in above=
 patch.<br><br><br></div><div>Do you have any suggestion ?<br></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Feb 28, 20=
16 at 5:31 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.l=
awall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">=
<br>
<br>
On Sun, 28 Feb 2016, Sandhya Bankar wrote:<br>
<br>
&gt; Handle error condition.<br>
&gt; Below semantic patch found,their is double assignment to &#39;result&#=
39; variable.so instead of deleting double assignment,handling error condit=
ion for &quot;result =3D mkimage(..)&quot;.<br>
&gt; @@<br>
&gt; expression e1,e2,e3;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt;=C2=A0 (&lt;+...e1++...+&gt;)=3De2;<br>
&gt; |<br>
&gt;=C2=A0 (&lt;+...e1--...+&gt;)=3De2;<br>
&gt; |<br>
&gt;=C2=A0 (&lt;+...++e1...+&gt;)=3De2;<br>
&gt; |<br>
&gt;=C2=A0 (&lt;+...--e1...+&gt;)=3De2;<br>
&gt; |<br>
&gt; e1=3De2;<br>
&gt; e1 =3D &lt;+...e1...+&gt;;<br>
&gt; |<br>
&gt; *e1=3De2;<br>
&gt; *e1=3De3;<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wlan-ng/prism2fw.c | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan=
-ng/prism2fw.c<br>
&gt; index 8fc80df..35fd5fb 100644<br>
&gt; --- a/drivers/staging/wlan-ng/prism2fw.c<br>
&gt; +++ b/drivers/staging/wlan-ng/prism2fw.c<br>
&gt; @@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binre=
c *rfptr,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Make the image chunks */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D mkimage(fchunk, &amp;nfchunks);<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0if (result) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(wlandev-&g=
t;netdev, &quot;Failed to make image chunk.\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
<br>
</div></div>Perhaps it would be possible to move this code away from using =
1 for<br>
failure, towards using actual error codes.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Do any plugging */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D plugimage(fchunk, nfchunks, s3plu=
g, ns3plug, &amp;pda);<br>
&gt; --<br>
&gt; 1.8.3.4<br>
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
gle.com/d/msgid/outreachy-kernel/20160228033629.GA7898%40sandhya" rel=3D"no=
referrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ker=
nel/20160228033629.GA7898%40sandhya</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--047d7b5d98eba5615d052cd4222e--

