X-GM-THRID: 6208828760687378432
X-Received: by 10.112.198.33 with SMTP id iz1mr4929824lbc.8.1445607803455;
        Fri, 23 Oct 2015 06:43:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.133 with SMTP id o127ls378960lfo.38.gmail; Fri, 23 Oct
 2015 06:43:20 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr4885488lbd.6.1445607800897;
        Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c7si111435wiy.3.2015.10.23.06.43.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id p11so78047261wij.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/RsAS4h+Pz/mNpOkxvf5JuvLvL2r2F6CpWT0TFKu7dw=;
        b=obKiBEje55kyy1W1VnOXqOYLz/CJ1C5eleS3vHRiIV4YAZwaQxjYdpljNioLjz0FyC
         6eBW4bEDWXsi1iyhhz7ParAftC4TckTEUfNpTRRGno/D60gras7LsGpmOIKdGZmkk6b9
         N6l24viaEoNk8uV5U85/XkL9ZeJVVfVF2XKNkrn0C29mptStrdnmmZSQXUwozlTdU5yD
         Xi3umMBJ8vKGSx1oLuAZr5fYajCY4hi5DT2vle8bMHQMonj6gzYkchWZsX9g5mivaoGK
         Bcd86KN2QMpXRsVyGVlow0BdNlzQkiZb/6vuawSn2S3Om9QH4wrPxncsSzwLVUVanUk9
         84zA==
MIME-Version: 1.0
X-Received: by 10.194.186.238 with SMTP id fn14mr5289560wjc.128.1445607800696;
 Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Fri, 23 Oct 2015 06:43:20 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510231536090.2437@hadrien>
References: <1445605588-16640-1-git-send-email-shraddha.6596@gmail.com>
	<CAK-LDb+8RnwEbL95WiS0ednY3NCENOe=tnCoRekkJKEoEjOa0w@mail.gmail.com>
	<alpine.DEB.2.10.1510231536090.2437@hadrien>
Date: Fri, 23 Oct 2015 19:13:20 +0530
Message-ID: <CAK-LDbLWpLgDtxXWis4=aQH2juzwmjXTioWsqE8fHYe4omdyaQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use put_unaligned_le32
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Shraddha Barke <shraddha.6596@gmail.com>
Content-Type: multipart/alternative; boundary=047d7bb70de471f70b0522c5cbc2

--047d7bb70de471f70b0522c5cbc2
Content-Type: text/plain; charset=UTF-8

On 23 Oct 2015 19:06, "Julia Lawall" <julia.lawall@lip6.fr> wrote:
>
> On Fri, 23 Oct 2015, Vaishali Thakkar wrote:
>
> >
> >
> > On 23 Oct 2015 18:36, "Shraddha Barke" <shraddha.6596@gmail.com> wrote:
> > >
> > > Introduce the use of function put_unaligned_le32.
> > >
> > > Coccinelle semantic patch used -
> >
> > This is not whole patch which I wrote. So, it could be good to write
> > 'simplified semantic patch'.
> >
> > Also, you can check the whole patch in my github account if you are
> > interested. :)
>
> Was there someone who had a problem with this in some cases?  I don't
> remember...

Yes. I don't remember the name of person but the point was one need to
check if data is aligned from the start. If so then it's not good to use
put_unaligned_xxxx.

> julia
>
> > > @@ identifier tmp; expression ptr; expression y,e; type T; @@
> > >
> > > - tmp = cpu_to_le32(y);
> > >
> > >   <+... when != tmp
> > > - memcpy(ptr, (T)&tmp, ...);
> > > + put_unaligned_le32(y,ptr);
> > >   ...+>
> > > ? tmp = e
> > >
> > > @@ type T; identifier tmp; @@
> > >
> > > - T tmp;
> > > ...when != tmp
> > >
> > > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > > index 9733aa6..1662c03c 100644
> > > --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > > +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c
> > > @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_adapter
> > *padapter, u32 mask, u8 arg)
> > >         u8 buf[5];
> > >
> > >         memset(buf, 0, 5);
> > > -       mask = cpu_to_le32(mask);
> > > -       memcpy(buf, &mask, 4);
> > > +       put_unaligned_le32(mask, buf);
> > >         buf[4]  = arg;
> > >
> > >         FillH2CCmd(padapter, MACID_CONFIG_EID, 5, buf);
> > > --
> > > 2.1.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com
.
> > > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-s
> > end-email-shraddha.6596%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAK-LDb%2B8RnwEbL95WiS0e
> > dnY3NCENOe%3DtnCoRekkJKEoEjOa0w%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--047d7bb70de471f70b0522c5cbc2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On 23 Oct 2015 19:06, &quot;Julia Lawall&quot; &lt;<a href=3D"mailto:julia.=
lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, 23 Oct 2015, Vaishali Thakkar wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On 23 Oct 2015 18:36, &quot;Shraddha Barke&quot; &lt;<a href=3D"m=
ailto:shraddha.6596@gmail.com">shraddha.6596@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Introduce the use of function put_unaligned_le32.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Coccinelle semantic patch used -<br>
&gt; &gt;<br>
&gt; &gt; This is not whole patch which I wrote. So, it could be good to wr=
ite<br>
&gt; &gt; &#39;simplified semantic patch&#39;.<br>
&gt; &gt;<br>
&gt; &gt; Also, you can check the whole patch in my github account if you a=
re<br>
&gt; &gt; interested. :)<br>
&gt;<br>
&gt; Was there someone who had a problem with this in some cases?=C2=A0 I d=
on&#39;t<br>
&gt; remember...</p>
<p dir=3D"ltr">Yes. I don&#39;t remember the name of person but the point w=
as one need to check if data is aligned from the start. If so then it&#39;s=
 not good to use put_unaligned_xxxx. </p>
<p dir=3D"ltr">&gt; julia<br>
&gt;<br>
&gt; &gt; &gt; @@ identifier tmp; expression ptr; expression y,e; type T; @=
@<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; - tmp =3D cpu_to_le32(y);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 &lt;+... when !=3D tmp<br>
&gt; &gt; &gt; - memcpy(ptr, (T)&amp;tmp, ...);<br>
&gt; &gt; &gt; + put_unaligned_le32(y,ptr);<br>
&gt; &gt; &gt; =C2=A0 ...+&gt;<br>
&gt; &gt; &gt; ? tmp =3D e<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; @@ type T; identifier tmp; @@<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; - T tmp;<br>
&gt; &gt; &gt; ...when !=3D tmp<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha=
.6596@gmail.com">shraddha.6596@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; =C2=A0drivers/staging/rtl8723au/hal/rtl8723a_cmd.c | 3 +--<b=
r>
&gt; &gt; &gt; =C2=A01 file changed, 1 insertion(+), 2 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br=
>
&gt; &gt; b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; &gt; &gt; index 9733aa6..1662c03c 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/rtl8723au/hal/rtl8723a_cmd.c<br>
&gt; &gt; &gt; @@ -127,8 +127,7 @@ int rtl8723a_set_raid_cmd(struct rtw_ada=
pter<br>
&gt; &gt; *padapter, u32 mask, u8 arg)<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 buf[5];<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(buf, 0, 5);<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0mask =3D cpu_to_le32(mask);<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(buf, &amp;mask, 4);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0put_unaligned_le32(mask, buf);<b=
r>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf[4]=C2=A0 =3D arg;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 FillH2CCmd(padapter, MACID_CONFI=
G_EID, 5, buf);<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.1.4<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; You received this message because you are subscribed to the =
Google Groups<br>
&gt; &gt; &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; &gt; To unsubscribe from this group and stop receiving emails fro=
m it, send an<br>
&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googleg=
roups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; &gt; To post to this group, send email to <a href=3D"mailto:outre=
achy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; &gt; &gt; To view this discussion on the web visithttps://<a href=3D"h=
ttp://groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-s">=
groups.google.com/d/msgid/outreachy-kernel/1445605588-16640-1-git-s</a><br>
&gt; &gt; end-email-shraddha.6596%<a href=3D"http://40gmail.com">40gmail.co=
m</a>.<br>
&gt; &gt; &gt; For more options, visit <a href=3D"https://groups.google.com=
/d/optout">https://groups.google.com/d/optout</a>.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups<br>
&gt; &gt; &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an<br>
&gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googleg=
roups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-=
kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visithttps://<a href=3D"http:/=
/groups.google.com/d/msgid/outreachy-kernel/CAK-LDb%2B8RnwEbL95WiS0e">group=
s.google.com/d/msgid/outreachy-kernel/CAK-LDb%2B8RnwEbL95WiS0e</a><br>
&gt; &gt; dnY3NCENOe%3DtnCoRekkJKEoEjOa0w%<a href=3D"http://40mail.gmail.co=
m">40mail.gmail.com</a>.<br>
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout">https://groups.google.com/d/optout</a>.<br>
&gt; &gt;<br>
&gt; &gt;</p>

--047d7bb70de471f70b0522c5cbc2--

