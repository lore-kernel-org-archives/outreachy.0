X-GM-THRID: 6669728292045586432
X-Received: by 2002:a1c:6c12:: with SMTP id h18mr17464wmc.18.1552933357482;
        Mon, 18 Mar 2019 11:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9609:: with SMTP id y9ls73173wmd.0.gmail; Mon, 18 Mar
 2019 11:22:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzM9Erdyqn7V/rYsk35PYj76Q8w3vgw9sBbDwtYv2IddaP4t3E7+lVrie+SFTSigKxicwEo
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr15710wmf.3.1552933355547;
        Mon, 18 Mar 2019 11:22:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552933355; cv=none;
        d=google.com; s=arc-20160816;
        b=F5hq+6QVFpQK++lHFs6FwJi4VZx0ywCGzoHHaxdelF9RtGYYAgWIGJDDZ1UytcURaA
         nfhJJN+1Yhg1xT6tVK/Vx+MiB0Ow/GOX3/fuivySLfsuR8+/8dboGVQW1tpWb3HtQR/k
         +Q9nwkA86n92tNrnug8QkgHyf02quVnqkwZvUaDYhL0M/oi0bGx02887Di5aj0I9CYHc
         LvKc/A1ZJW3GjJ+f/sGLZHzgyOKPtEuixi25G6wJ5IzkQkUjjfFOcFQzdjY4kTNBQ0Kn
         tx0vP0qFoOpUmB/s31tKdaIG6Zd4Pk1ax4Kug2T+iX25dXfGzvNLBWVHfIqM5VSQPRKy
         eJKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zifJs+CEg+KRdRWI93w03sY2lkfE6mxEAkrmQ+Uj0/E=;
        b=SpOFOhlDlNKxJMG4b1VP5oQnSHaHSUWznw6nafQm9ReSDOoTQR2cwSP3PJoaVqZVuR
         OESq9Bt5tbTlSEWnhh7Nh/Rf4ndk3OUMxpv2iB8nmFn0Bf/1HO2tgrrP0yz5lwrXmy+c
         aVxkQ/P5fOpJXCYbZL63j8gsaYz+1UpPsxndn5DnT2TmAmsOeYS3PhKddrKy4Zpiu/O9
         /TK+xqaShXdNyvQM21zINskDTIaxqXhlzn8zu3WqYCGLvWOAhZuPW9JbTJC/CbNF69mk
         HF2IPAlKh8OJCCDmCE+t8voW4ppb5eP6YCJ47aoisRMfcLyd6KujicQBQ1Xps9jIlNQL
         bjvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rAFtpG+s;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id p4si7561wmh.0.2019.03.18.11.22.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 11:22:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rAFtpG+s;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22e.google.com with SMTP id v22so9205765lje.9
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 11:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zifJs+CEg+KRdRWI93w03sY2lkfE6mxEAkrmQ+Uj0/E=;
        b=rAFtpG+s7r0OIPvqSZ2h4sSwyHE3HyD6TzEKBSbxJfTkkBss+wv52rPE5kwC6rk04I
         /hMhBLZj5qIPFVsgd36O8zzEXka2dg/0OkdjW8ANkTxoLxUPvbF7ViSzSnzlaWcovQQn
         HQdsJWUzosihF4oKI82l5mtg3Ae6UuucZNih8hIhJCNPqxiaIK7HWbtLNkW9Csal8iL1
         RNFI3+nYU1UUm4/zcmDX64fZOd+1EUvE2XXj8nqcRo3dJW938jWQSPnYHtTsHH8TEvyK
         Cjzbwd5cjEU+BaNpo1UcSUo1VQQhaSO278/u45jf/JfVgy+y7AImZHAG73rjawKTHrxk
         9XrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zifJs+CEg+KRdRWI93w03sY2lkfE6mxEAkrmQ+Uj0/E=;
        b=lt7rkUA096KG6KmpzdEo7JU6ou8i5sa3Nm7JofzJq4JobN1HBN2RTRzu/5HhreCsXz
         D6m3Cpanss70W8CkaojQvTLDuJjDdbXJOEXETYz/zchStGMGNU39X4E+MS7ZzHn5lT+K
         Zgn4NxfpbPrb4Kj6jGGLtckx6+Z5Ty1WnbxxiPZMUPytaVdao89xGEk5A2Zz7yvI0xyA
         CtTxHLSrPiLo8x29ZJqrZr4cZ3JG2Mx3IKXssUVlGfO3QmrTBkmM4l4rk4/W4a4G57ZO
         bSoZb5O3OXWNfkYVGkTm2Ja3EU1x1Pn6bLgbP27Qrd/wiImB+SllEWl+ythElyxv2hBi
         DxLw==
X-Gm-Message-State: APjAAAW303tadk/21/3b5OxMGNQt8jR+K8zG8aSPHWJQrCfvpBX6vm8Q
	lOds7XB+0l4XzEbGRMaK/8+FciG0+PWfDgYxjmY=
X-Received: by 2002:a2e:974d:: with SMTP id f13mr256470ljj.140.1552933355350;
 Mon, 18 Mar 2019 11:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190318175135.GA23850@kroah.com> <CANTOzWG+ybnDB-7_mEDNJ8RZjToo+_FYsu4xNyr+TmExMb5DTA@mail.gmail.com>
 <20190318180027.GA7136@kroah.com>
In-Reply-To: <20190318180027.GA7136@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Mon, 18 Mar 2019 23:52:19 +0530
Message-ID: <CANTOzWHZQZX4Gq5xO+CK4OUfqKNncxSi-eyiHTTzqd+K7wVoQw@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: gasket: replace symbolic permissions
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000016e5b058462792f"

--000000000000016e5b058462792f
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 18, 2019, 11:30 PM Greg KH <greg@kroah.com> wrote:

> On Mon, Mar 18, 2019 at 11:23:50PM +0530, Payal Kshirsagar wrote:
> > On Mon, 18 Mar 2019 at 23:21, Greg KH <greg@kroah.com> wrote:
> >
> > > On Mon, Mar 18, 2019 at 07:21:54PM +0530, Payal Kshirsagar wrote:
> > > > Symbolic permissions 'S_IRUGO' are replaced by octal permissions
> '0444'
> > > > in file
> > > > drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.
> > > >
> > > > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > > > ---
> > > >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> > > b/drivers/staging/gasket/gasket_sysfs.h
> > > > index 151e8ed..60590ea 100644
> > > > --- a/drivers/staging/gasket/gasket_sysfs.h
> > > > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > > > @@ -40,7 +40,7 @@
> > > >   */
> > > >  #define GASKET_END_OF_ATTR_ARRAY
> > >        \
> > > >       {
> > >     \
> > > > -             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL,
> > > NULL),   \
> > > > +             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL,
> NULL),
> > >  \
> > > >               .data.attr_type = 0,
> > >      \
> > > >       }
> > > >
> > > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> > > >
> > > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
> > >        \
> > > >       {
> > >     \
> > > > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),
> > >     \
> > > > +             .attr = __ATTR(_name, 0444, _show_function, NULL),
> > >   \
> > > >               .data.attr_type = _attr_type
> > >      \
> > > >       }
> > > >
> > >
> > > This patch does not apply at all, as others have made changes in this
> > > portion of the kernel.  Be sure you are working against the latest
> > > staging tree, it is staging.git on git.kernel.org and use the
> > > staging-testing branch.
> > >
> > > thanks,
> > >
> > > greg k-h
> > >
> >
> > How do I update my staging tree ?
>
> There are lots of tutorials for how to update your local branches based
> on an "upstream" tree/branch.  I suggest following them, and if you have
> any specific questions, please let us know.
>
> thanks,
>
> greg k-h
>

Okay thank you ,

Payal

>

--000000000000016e5b058462792f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Mar 18, 2019, 11:30 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com=
">greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Mon, Mar 18, 2019 at 11:23:50PM +0530, Payal Kshirsagar wrote:<br>
&gt; On Mon, 18 Mar 2019 at 23:21, Greg KH &lt;<a href=3D"mailto:greg@kroah=
.com" target=3D"_blank" rel=3D"noreferrer">greg@kroah.com</a>&gt; wrote:<br=
>
&gt; <br>
&gt; &gt; On Mon, Mar 18, 2019 at 07:21:54PM +0530, Payal Kshirsagar wrote:=
<br>
&gt; &gt; &gt; Symbolic permissions &#39;S_IRUGO&#39; are replaced by octal=
 permissions &#39;0444&#39;<br>
&gt; &gt; &gt; in file<br>
&gt; &gt; &gt; drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.<=
br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.=
s.kshirsagar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.ksh=
irsagar.98@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/gasket/gasket_sysfs.h | 4 ++--<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; &gt; b/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; &gt; &gt; index 151e8ed..60590ea 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; &gt; &gt; +++ b/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; &gt; &gt; @@ -40,7 +40,7 @@<br>
&gt; &gt; &gt;=C2=A0 =C2=A0*/<br>
&gt; &gt; &gt;=C2=A0 #define GASKET_END_OF_ATTR_ARRAY<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D _=
_ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL,<br>
&gt; &gt; NULL),=C2=A0 =C2=A0\<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D _=
_ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),<br>
&gt; &gt;=C2=A0 \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.data.=
attr_type =3D 0,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 #define GASKET_SYSFS_RO(_name, _show_function, _attr_t=
ype)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D _=
_ATTR(_name, S_IRUGO, _show_function, NULL),<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0\<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D _=
_ATTR(_name, 0444, _show_function, NULL),<br>
&gt; &gt;=C2=A0 =C2=A0\<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.data.=
attr_type =3D _attr_type<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; This patch does not apply at all, as others have made changes in =
this<br>
&gt; &gt; portion of the kernel.=C2=A0 Be sure you are working against the =
latest<br>
&gt; &gt; staging tree, it is staging.git on <a href=3D"http://git.kernel.o=
rg" rel=3D"noreferrer noreferrer" target=3D"_blank">git.kernel.org</a> and =
use the<br>
&gt; &gt; staging-testing branch.<br>
&gt; &gt;<br>
&gt; &gt; thanks,<br>
&gt; &gt;<br>
&gt; &gt; greg k-h<br>
&gt; &gt;<br>
&gt; <br>
&gt; How do I update my staging tree ?<br>
<br>
There are lots of tutorials for how to update your local branches based<br>
on an &quot;upstream&quot; tree/branch.=C2=A0 I suggest following them, and=
 if you have<br>
any specific questions, please let us know.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></block=
quote></div></div><div dir=3D"auto">Okay thank you ,</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Payal</div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000016e5b058462792f--

