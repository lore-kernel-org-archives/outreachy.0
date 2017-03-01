X-GM-THRID: 6392549731830071296
X-Received: by 10.157.53.100 with SMTP id l33mr2939232ote.80.1488384084727;
        Wed, 01 Mar 2017 08:01:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.23 with SMTP id 23ls1281670ioh.50.gmail; Wed, 01 Mar
 2017 08:01:23 -0800 (PST)
X-Received: by 10.99.111.6 with SMTP id k6mr2985770pgc.131.1488384083759;
        Wed, 01 Mar 2017 08:01:23 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id g205si3056582ita.2.2017.03.01.08.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 08:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id 68so1674677ioh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 08:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zGCWYoW8VPbR+L1iTZDAsw9XvBDYBCyvB/xRdavj/UQ=;
        b=k4U+5WsXQFZgpXbA0GXIcJbjUld1qzbtgvdMJ+owu9M3uP5Le3Yg6sXU98uQMkIemh
         Kbp8zq1oNzw+zBScgVOT6Oudfw6PWPYqa2vVjx0icdWK3KdgAcCZz9+Ra4sohWkCeeFI
         NL+kUOxziS86FGDd0vkjUhMj2s3rcs+CYMbYGxYqptOTXEwKF7yt4ngtgY75QTN9IdRS
         iwhvrxu6VIF5fDyNfj8xtNLYuzZIu+mq95vHwdjleL8VndQ2/Af5luS98zaAnMGu44OW
         3bGD273ALAxBUkZD/XvGHbf9tRn985PaJ86Wceps7ZPd+hD1PkqknJHL8yQwxYfBIFKY
         zMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zGCWYoW8VPbR+L1iTZDAsw9XvBDYBCyvB/xRdavj/UQ=;
        b=jjbxL6PHDQmzR4aOGAGklt0sC50Qq9kOSplp32YiqrX9f8pGd5UCJsxZlvJwij6FnZ
         PeRwo3v9aQzew1tfQnPC6dHyd3e/CwC8rbJfwUJQfUSfM+1HshtBtjZO0bLdBwOuYHW9
         df/y+iPNVKUdRapDn3rxOhLqDMQYUIQwhDbIQsn8jKtZOBvhOUpclMl+roRu1zoVTGSC
         rR94ZGDUZrKeOj6dWoX1u8pESCon+b5Pp3tjEI1GmRnOQvSmlhSZ0vSr9ozS9hwYH//Z
         E/d0H9rtspEj7NxQZAgU4QX8bO/1PfD+7U+/ZGIATzMgs3xkyWkmVzLC1PdXrDvFc6Gz
         ucDw==
X-Gm-Message-State: AMke39lNmprQM6XRvns4lHsPHOJdjuMmOLaa0sk9NgmHpcSatb7vG+xlmxnBdEajfxn2I2SwGP9SEQ6xrtVdLQ==
X-Received: by 10.107.137.226 with SMTP id t95mr9562070ioi.79.1488384083492;
 Wed, 01 Mar 2017 08:01:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 1 Mar 2017 08:00:53 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703011619200.3941@hadrien>
References: <1488381326-7061-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703011619200.3941@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 1 Mar 2017 21:30:53 +0530
Message-ID: <CAOCi2DFyYaRwvypnHD1RXmQye4Nis9Mky4qPiEc94O7zujGQmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: constify
 ieee80211_qos_parameters structure
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a113ec7b6960cac0549ad6ce0

--001a113ec7b6960cac0549ad6ce0
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 8:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 1 Mar 2017, Gargi Sharma wrote:
>
> > Declare def_qos_parameters instance of the ieee80211_qos_parameters
> > structure as const since no modification is done to it. It is only
> > used in two other places in the driver where it is the src parameter
> > to memcpy.
> >
> > Done using Coccinelle script:
> >
> > @r1 disable optional_qualifier@
> > identifier i;
> > position p;
> > @@
> >
> > static struct ieee80211_qos_parameters i@p ={...};
> >
> > @@
> > identifier r1.i;
> > @@
> > +const
> > struct ieee80211_qos_parameters i
>
> I'm not sure that it makes that much sense to write such a Coccinelle
> script.  It is only being applied in one place.  And the script is not
> doing anything to ensure that the change is safe.  To make a structure
> const, you have to check on how it is used, to ensure that the fields are
> not modified anywhere.
The structure is only used inside memcpy as the src parameter. Perhaps what
you mean is that I should check using Coccinelle that the structure is not
modified anywhere?

>
> I'm not even sure that the second rule would parse?
I missed a ; at the end while writing the script in the mail. Once that is
included
the second rule parses.

gargi
>
> julia
>
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
b/drivers/staging/rtl8192u/r8192U_core.c
> > index b631990..bbb5f58 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device
*dev)
> >       }
> >  }
> >
> > -static struct ieee80211_qos_parameters def_qos_parameters = {
> > +static const struct ieee80211_qos_parameters def_qos_parameters = {
> >       {cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
> >       {cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
> >       {2, 2, 2, 2},/* aifs */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/1488381326-7061-1-git-send-email-gs051095%40gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a113ec7b6960cac0549ad6ce0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Mar 1, 2017 at 8:54 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br>&gt;<br>&gt;<br>&gt;<br>&gt; On Wed, 1 Mar 2017, Gargi Sharm=
a wrote:<br>&gt;<br>&gt; &gt; Declare def_qos_parameters instance of the ie=
ee80211_qos_parameters<br>&gt; &gt; structure as const since no modificatio=
n is done to it. It is only<br>&gt; &gt; used in two other places in the dr=
iver where it is the src parameter<br>&gt; &gt; to memcpy.<br>&gt; &gt;<br>=
&gt; &gt; Done using Coccinelle script:<br>&gt; &gt;<br>&gt; &gt; @r1 disab=
le optional_qualifier@<br>&gt; &gt; identifier i;<br>&gt; &gt; position p;<=
br>&gt; &gt; @@<br>&gt; &gt;<br>&gt; &gt; static struct ieee80211_qos_param=
eters i@p =3D{...};<br>&gt; &gt;<br>&gt; &gt; @@<br>&gt; &gt; identifier r1=
.i;<br>&gt; &gt; @@<br>&gt; &gt; +const<br>&gt; &gt; struct ieee80211_qos_p=
arameters i<br>&gt;<br>&gt; I&#39;m not sure that it makes that much sense =
to write such a Coccinelle<br>&gt; script.=C2=A0 It is only being applied i=
n one place.=C2=A0 And the script is not<br>&gt; doing anything to ensure t=
hat the change is safe.=C2=A0 To make a structure<br>&gt; const, you have t=
o check on how it is used, to ensure that the fields are<br>&gt; not modifi=
ed anywhere.<div>The structure is only used inside memcpy as the src parame=
ter. Perhaps what</div><div>you mean is that I should check using Coccinell=
e that the structure is not</div><div>modified anywhere?</div><div><br>&gt;=
<br>&gt; I&#39;m not even sure that the second rule would parse?<br>I misse=
d a ; at the end while writing the script in the mail. Once that is include=
d<div>the second rule parses.</div><div><br></div><div>gargi<br><div>&gt;<b=
r>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi Sharma =
&lt;<a href=3D"mailto:gs051095@gmail.com" target=3D"_blank">gs051095@gmail.=
com</a>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/rtl8192u/<w=
br>r8192U_core.c | 2 +-<br>&gt; &gt; =C2=A01 file changed, 1 insertion(+), =
1 deletion(-)<br>&gt; &gt;<br>&gt; &gt; diff --git a/drivers/staging/rtl819=
2u/<wbr>r8192U_core.c b/drivers/staging/rtl8192u/<wbr>r8192U_core.c<br>&gt;=
 &gt; index b631990..bbb5f58 100644<br>&gt; &gt; --- a/drivers/staging/rtl8=
192u/<wbr>r8192U_core.c<br>&gt; &gt; +++ b/drivers/staging/rtl8192u/<wbr>r8=
192U_core.c<br>&gt; &gt; @@ -1814,7 +1814,7 @@ static void rtl8192_link_cha=
nge(struct net_device *dev)<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 }<br>&gt; &gt=
; =C2=A0}<br>&gt; &gt;<br>&gt; &gt; -static struct ieee80211_qos_parameters=
 def_qos_parameters =3D {<br>&gt; &gt; +static const struct ieee80211_qos_p=
arameters def_qos_parameters =3D {<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 {cpu_t=
o_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 {cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_t=
o_le16(7)},<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 {2, 2, 2, 2},/* aifs */<br>&g=
t; &gt; --<br>&gt; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You=
 received this message because you are subscribed to the Google Groups &quo=
t;outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group=
 and stop receiving emails from it, send an email to <a href=3D"mailto:outr=
eachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">outreachy-ke=
rnel+unsubscribe@<wbr>googlegroups.com</a>.<br>&gt; &gt; To post to this gr=
oup, send email to <a href=3D"mailto:outreachy-kernel@googlegroups.com" tar=
get=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&gt; &gt; To =
view this discussion on the web visit <a href=3D"https://groups.google.com/=
d/msgid/outreachy-kernel/1488381326-7061-1-git-send-email-gs051095%40gmail.=
com" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outreachy-ker=
nel/<wbr>1488381326-7061-1-git-send-<wbr>email-gs051095%40gmail.com</a>.<br=
>&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/o=
ptout" target=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>&g=
t; &gt;</div></div></div></div>

--001a113ec7b6960cac0549ad6ce0--

