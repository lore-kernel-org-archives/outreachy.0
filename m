X-GM-THRID: 6465665383361675264
X-Received: by 10.202.168.88 with SMTP id r85mr12605310oie.14.1505407896952;
        Thu, 14 Sep 2017 09:51:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.246.135 with SMTP id u129ls5357955ith.13.gmail; Thu, 14 Sep
 2017 09:51:30 -0700 (PDT)
X-Received: by 10.129.109.13 with SMTP id i13mr13773900ywc.83.1505407890353;
        Thu, 14 Sep 2017 09:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505407890; cv=none;
        d=google.com; s=arc-20160816;
        b=CVlfiw4sOoIRD2cgDdoyNrDaMbdbFoBojTjoc5ay3HeC945kAp/ww1fxliUZHm74zs
         gyRYf4nf638U5l+RNbLEOUF+mbTa2A1nBm2CAHWUDxrj3cTHqJrz0M/yDfA82afrKiIF
         iVCIY4DNvE6XOTk8DgSUlXbyx4AXo+xLqOLNlzjtdbjNqPtvuPn5Gz9B6HVS3UVfh+RE
         1hZnC+YkY4+vEiVlFoa974UBdvyrVraiDZXPPQbbS2ONhIWqNRFRGfTylEwX0iePTAIS
         NdLhRgxwJBJPjyiGpQyD/7/AD5hev/sc46C8V0QXbRXD8cnpFzoBkcXpfFY0BxpK9LbQ
         haGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=44395bk3BMO3i02tw1bsa4j6Fj+GNXlMDF1X4HRw88g=;
        b=vaedlAiXV+SIz3UyRyrAVoBwxf+bqL3UmslJWq/srL+s4NLrxi4ar7Ejt7jOu8PxvM
         SIj8a1RjXCpmTihShi9HXAOGLdZCB3tTPnswpReinnjpdtdzD3cjRHzLLIPxpiXQKceB
         DeUiFhVEMGPME5SVZ1Ju9JdPGXf8ZcpvfypuK9giGUxn5yOa/OrNpdcfJaj0WATQS2Wd
         uD1uVladt1IFDjefjJg4mqTxyS+whraI9MZAkAmqRpbL0NeUMWhRk9CxdYNCx5/qKVSE
         kP+kiDiLP4h2G6TFBjG65sLTI/2As/S2Dr+IMccuonPnS9oJJgkRqxKq2Fk/4i44YU2F
         X/7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkHwR0Qx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id v62si686257vkb.10.2017.09.14.09.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 09:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkHwR0Qx;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id s15so1088043uag.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 09:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=44395bk3BMO3i02tw1bsa4j6Fj+GNXlMDF1X4HRw88g=;
        b=LkHwR0QxUiHAuBfHacETUrUnNkfxFcFtUOyMxSTTx9eVzYJmHxyuZgbxa5/+/Lp7Rt
         0ILmnDHV8pal/qsbS8nZBlJJNq9AVCM4GwEwb5XXTISnvkxerbduaKwT5WU2x9clgyUf
         msHAJ0WJojt7TUqq4SHpZuhoGTeRVaekIVmglcH9MilBmN8cyvevu/NbnUa2n1bAGGOI
         pWZnvhPJKFOZNHmm8PneVSwlze0NYuC+tH6nQwYUUV6iFOJMxSRcWhuzOmYSj2XWJ1hg
         WkKax6iKajjdO4giHJaoo6RfWmvzSN5ciOdf5GoaOLhJv6G/1KjqKvHPxixX4J9p7cAh
         ttwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=44395bk3BMO3i02tw1bsa4j6Fj+GNXlMDF1X4HRw88g=;
        b=JUYhIw9tjwubYBCOaekivGbpM8PhUCI2jZuf0dbN71IwvnWhkMwp6r9b0gQldFk7Kx
         aUy81cCyw3tcxhYB195nf7fIvMUPDWIXbTDShIB5/hnYpjgJJ0v616fGc43eoH2/+YAF
         6s/BakP4JGvp+Jfmz5/AfeaaiFFw2hOfz5tfwehkAWUiX80GPZfmmtVZ8pel3eGJm8pT
         K1d40pl/fV33MwSA/aJfXg8Dkl1cfrExBkMkGMLXvA5GuGrBBDBzs4tWqxiiWheeRoq/
         RgWkQGgvqWKB8rbkr9S455QdpOl6jW9L+rS0cveEcCbROG+cqbY08Ru+WCz+LxC+shpp
         +M8g==
X-Gm-Message-State: AHPjjUjfv3TiyS+uV8Fo4cYesDlkwguWzqXhoF6qWn68iPZHAPmoIiTY
	JjoRq/clYIQ5Y3gmPJTKXnBjlEZCO8h0g8k/sDc=
X-Google-Smtp-Source: ADKCNb7/sq+Q+LVAzYfX5ybO8G/XtDaAOSzD4NG7BdKSwmN9cu6VSYSJNi5eIbOMUtnfsnbT1tvON5MK80vm4deWzu8=
X-Received: by 10.176.6.8 with SMTP id f8mr16705343uaf.38.1505407890049; Thu,
 14 Sep 2017 09:51:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Thu, 14 Sep 2017 09:51:29 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709141807561.3185@hadrien>
References: <1505404910-11548-1-git-send-email-harshasharmaiitr@gmail.com> <alpine.DEB.2.20.1709141807561.3185@hadrien>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Thu, 14 Sep 2017 22:21:29 +0530
Message-ID: <CANMOCy2qhAaEdwLGM3L7sJmFNkNTqeRnwoy4am5yFt6ie5QhOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unused
 variable ret
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="94eb2c123fe487514c055929166f"

--94eb2c123fe487514c055929166f
Content-Type: text/plain; charset="UTF-8"

Hi,
Yes, you are right but the function returns 0 in the end and the changes
compiles well .
Thanks a lot for your feedback.

Regards,
Harsha Sharma

On Thu, Sep 14, 2017 at 9:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 14 Sep 2017, Harsha Sharma wrote:
>
> > Remove unused variable ret as it is not used anywhere.
> > Remove multiple blank lines.
> > Done using following coccinelle semantic patch
> >
> > @@
> > type T;
> > identifier i;
> > constant C;
> > @@
> >
> > (
> > extern T i;
> > |
> > - T i;
> >   <+... when != i
> > - i = C;
> >   ...+>
> > )
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index ffbb35a..7935dc5 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -2337,10 +2337,6 @@ static int rtw_wx_read32(struct net_device *dev,
> >       u32 data32;
> >       u32 bytes;
> >       u8 *ptmp;
> > -     int ret;
> > -
> > -
> > -     ret = 0;
> >       padapter = (struct adapter *)rtw_netdev_priv(dev);
> >       p = &wrqu->data;
> >       len = p->length;
> > @@ -2352,7 +2348,6 @@ static int rtw_wx_read32(struct net_device *dev,
> >               return -ENOMEM;
> >
> >       if (copy_from_user(ptmp, p->pointer, len)) {
> > -             ret = -EFAULT;
> >               goto exit;
> >       }
> >
> > @@ -2375,7 +2370,6 @@ static int rtw_wx_read32(struct net_device *dev,
> >                       break;
> >               default:
> >                       DBG_871X(KERN_INFO "%s: usage> read
> [bytes],[address(hex)]\n", __func__);
> > -                     ret = -EINVAL;
> >                       goto exit;
>
> One could have the impression that the function should instead return ret.
> One would have to figure out where the function is called from and what
> happens there to the return value.
>
> julia
>
> >       }
> >       DBG_871X(KERN_INFO "%s: addr = 0x%08X data =%s\n", __func__, addr,
> extra);
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1505404910-11548-1-git-send-email-harshasharmaiitr%
> 40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--94eb2c123fe487514c055929166f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Yes, you are right but the function returns 0 in t=
he end and the changes compiles well .</div><div>Thanks a lot for your feed=
back.</div><div><br></div><div>Regards,</div><div>Harsha Sharma</div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 14, 2=
017 at 9:39 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.=
lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"=
><br>
<br>
On Thu, 14 Sep 2017, Harsha Sharma wrote:<br>
<br>
&gt; Remove unused variable ret as it is not used anywhere.<br>
&gt; Remove multiple blank lines.<br>
&gt; Done using following coccinelle semantic patch<br>
&gt;<br>
&gt; @@<br>
&gt; type T;<br>
&gt; identifier i;<br>
&gt; constant C;<br>
&gt; @@<br>
&gt;<br>
&gt; (<br>
&gt; extern T i;<br>
&gt; |<br>
&gt; - T i;<br>
&gt;=C2=A0 =C2=A0&lt;+... when !=3D i<br>
&gt; - i =3D C;<br>
&gt;=C2=A0 =C2=A0...+&gt;<br>
&gt; )<br>
&gt;<br>
&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gm=
ail.com">harshasharmaiitr@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_<wbr>dep/ioctl_linux.c | 6 ------<b=
r>
&gt;=C2=A0 1 file changed, 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c b/dri=
vers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; index ffbb35a..7935dc5 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/<wbr>os_dep/ioctl_linux.c<br>
&gt; @@ -2337,10 +2337,6 @@ static int rtw_wx_read32(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 data32;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 bytes;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *ptmp;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; -<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ret =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0padapter =3D (struct adapter *)rtw_netdev_pr=
iv(dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0p =3D &amp;wrqu-&gt;data;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0len =3D p-&gt;length;<br>
&gt; @@ -2352,7 +2348,6 @@ static int rtw_wx_read32(struct net_device *dev,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (copy_from_user(ptmp, p-&gt;pointer, len)=
) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -EFAULT;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -2375,7 +2370,6 @@ static int rtw_wx_read32(struct net_device *dev,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0DBG_871X(KERN_INFO &quot;%s: usage&gt; read [bytes],[address(h=
ex)]\n&quot;, __func__);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ret =3D -EINVAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto exit;<br>
<br>
</div></div>One could have the impression that the function should instead =
return ret.<br>
One would have to figure out where the function is called from and what<br>
happens there to the return value.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(KERN_INFO &quot;%s: addr =3D 0x%08X=
 data =3D%s\n&quot;, __func__, addr, extra);<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1505404910-11548-1-git-send-email-harshash=
armaiitr%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.g=
oogle.com/d/<wbr>msgid/outreachy-kernel/<wbr>1505404910-11548-1-git-send-<w=
br>email-harshasharmaiitr%<wbr>40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c123fe487514c055929166f--

