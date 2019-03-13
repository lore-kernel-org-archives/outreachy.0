X-GM-THRID: 6667588004037525504
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr2620545ljs.12.1552492316920;
        Wed, 13 Mar 2019 08:51:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:800a:: with SMTP id j10ls347655ljg.8.gmail; Wed, 13 Mar
 2019 08:51:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzMyfRmkh8hKCZC/m2xWjVpJ1kwLrMvDDZGYJJDLGv0k9hpV+DQ/TI4dvW7gfKO2HS60+S9
X-Received: by 2002:a2e:5bc9:: with SMTP id m70mr815205lje.18.1552492316072;
        Wed, 13 Mar 2019 08:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552492316; cv=none;
        d=google.com; s=arc-20160816;
        b=VWZ2qp8lHExKihglPMWrW2fw0YZpqHlLFy7icDhZNJtJ0GtbTx7BqI+cdG2vCWlTyI
         H48Ll3rO/IPotK0bxHuM2NFVTlx6luBksIPglRrOPjJBd6VFyYfU8V2kkTc/Q/Hp45nz
         /acDyp8ypto19colcPq0fSh1WGLnSJKKZgOrnYvujnUaSuzZ8Mn/gYPU+8hLTLKIO7rx
         wikYVXEZhHWDNBbZwOPhzHxs2ygkOSZmW1pUzlKL7VOwctHnWbzP3dPsPwWrvMOIjvI5
         BRx55eOfics8LoDH+KMegAtmPcs238X4owXthS1iZJbm7QJiJ2PsiPKJLratzXavfkpn
         YYjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WvaEuR8iP/LzTfETLuPkKp+K9bHvK+cfKGf0rKCN8wk=;
        b=SDC05Le1K2fsMjsEIInIAM3p2lEtJY4VKknc2ForuhaKa+FkF4T7b5gag90pKLUrnV
         NLP6f46JGW0Nn/uvrgak/js5I4cRSmCrzpUSnqWHBb0gOcek21ide0kihhBEiu7/eAPV
         PkHq89DgB5oNMNjS7KJ+JyJbg/GJ6awGxxjNXcRhLpmfKW5RnNucuds7H74zbwX5mbVm
         Tjk5a5GdtGAG4H0TeUHf99fSZlSQL2IOeXK12oFiFDGy9iUUSlhPc0aFYsju3g5u537H
         dl5yzS7uoXEWETUu5kbMpyNBTF63Y7sTy88Zb4jGnSoENCDnrUkYQEmcJ6gTc87bQhl0
         RDsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRxe2tQc;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id k13si608758lja.5.2019.03.13.08.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRxe2tQc;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x530.google.com with SMTP id n14so1959750edv.8
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 08:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WvaEuR8iP/LzTfETLuPkKp+K9bHvK+cfKGf0rKCN8wk=;
        b=jRxe2tQcPYZIiN/qyovGBEv+7g52rGTQF6KLQ7X9uLGC5UAvm9jIjnB+7vt34hZI9U
         443GND4ik/oVGW3JIsLTNvF2ap85fYx4RLWhSytQDgirEVFkzk/7zgwFrFwPaMnn2uVU
         4vQ+p8FL8a2VG8l8Tzh4V8Jk0D6tshMfSSkbCRwIvpjOntJ0rVz/DrYrCoadIkUeXDsA
         Bf74J2A0d0mwL/bKLo0xhYYNuTxzuWXut67ijW/4qDHfCFL2Rhh10Cr9qIb5Y2njHywj
         jbPe0Dd0qf8gcuaLBmhgLKDTUQIl77tgzR8grpKIggRo02p8CNmSsOsvuAPLkYY+YZEL
         FOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WvaEuR8iP/LzTfETLuPkKp+K9bHvK+cfKGf0rKCN8wk=;
        b=tmC9B99oyBxvF/CW23XenKop7gxWg7oLSUnhnUeNnyhuOhMZih2zboLlHjvzKHpCmH
         CXYwS1om6h/uSCyX7nnqH1uR8QW7L8nWgbG57t8HBGLZxVeo1CMj0qO5XH8IAGETgcyV
         4IGag8FaFbl9Em8Mf4f18BN6m+N/M8Dk1cSbr8p7pTFPQbitH/D27AtduObqhyaervKx
         95n0QJVbPAQQmRbdItF+dbJ/PtD86nidYJHYOdowV3moB90BUrZw+sSbkWDefAQjj7mk
         w7hSqsgUjxwjnaD93AWol1tSBTRARaqJSG6cOyKuzDpVGs1OrlWWvbhM0N0Dg1LhN9V/
         PKyQ==
X-Gm-Message-State: APjAAAXi3ojtgMFYHr+e1SB9TZnJ8IiaBdCdmdP3oVisceS4AQOVs38y
	Kk+GURf7P35jVTON1OFgDw+Rjxplf4T4FGmd+Ik=
X-Received: by 2002:a17:906:7c49:: with SMTP id g9mr30157849ejp.31.1552492315734;
 Wed, 13 Mar 2019 08:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
 <20190312194137.GA29260@kroah.com> <20190312194836.GB6580@kroah.com>
 <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com>
 <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com> <20190313142008.GC5328@kroah.com>
In-Reply-To: <20190313142008.GC5328@kroah.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Wed, 13 Mar 2019 21:21:43 +0530
Message-ID: <CAO-bXGBuEaenZB-7c-Nr+jZuTZkEnYMjfL3XPB_7MJELNeWaJg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <Julia.Lawall@lip6.fr>
Content-Type: multipart/alternative; boundary="000000000000fef9460583fbc8a3"

--000000000000fef9460583fbc8a3
Content-Type: text/plain; charset="UTF-8"

Please...ignore this patch. I have resend the patch using mutt...kindly do
consider that patch which I sent and suggest me the changes...:)

Thanks
Sanjana

On Wed, 13 Mar 2019, 19:50 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Wed, Mar 13, 2019 at 08:39:04AM +0530, Sanjana Sanikommu wrote:
> > Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
>
> Why is this line in the body of the email?  It should be the subject of
> the email itself.  Using 'git send-email' should do all of that for you
> automatically.
>
> >
> > Fix a tab issue in 2 lines which removed no extra space before starting
> > a line warning. This warning appeared when I compiled checkpatch.pl in
> > rtw_recv.c,
> >
> > Signed-off-by: Sanjana Sanikommu<sanjana99reddy99@gmail.com>
>
> We need a space after your name and before the '<' character.
>
> >
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
> > b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > index 1d83affc08ce..cc6f1a23da01 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
> > 0xf3};
> >
> >  /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
> >  static u8 rtw_bridge_tunnel_header[] = {
> > -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> > +        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> >  };
>
> All tabs were turned into spaces by your email client, making this patch
> impossible to apply.  Also it was line-wrapped :(
>
> You can not cut-paste a patch into an email, please use 'git send-email'
> to send a patch out properly.
>
> thanks,
>
> greg k-h
>

--000000000000fef9460583fbc8a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Please...ignore this patch. I have resend the patch using=
 mutt...kindly do consider that patch which I sent and suggest me the chang=
es...:)<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks=C2=A0</div><div=
 dir=3D"auto">Sanjana</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, 13 Mar 2019, 19:50 Greg KH, &lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On Wed, Mar 13, 2019 at 08:39=
:04AM +0530, Sanjana Sanikommu wrote:<br>
&gt; Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issu=
e<br>
<br>
Why is this line in the body of the email?=C2=A0 It should be the subject o=
f<br>
the email itself.=C2=A0 Using &#39;git send-email&#39; should do all of tha=
t for you<br>
automatically.<br>
<br>
&gt; <br>
&gt; Fix a tab issue in 2 lines which removed no extra space before startin=
g<br>
&gt; a line warning. This warning appeared when I compiled <a href=3D"http:=
//checkpatch.pl" rel=3D"noreferrer noreferrer" target=3D"_blank">checkpatch=
.pl</a> in<br>
&gt; rtw_recv.c,<br>
&gt; <br>
&gt; Signed-off-by: Sanjana Sanikommu&lt;<a href=3D"mailto:sanjana99reddy99=
@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.com=
</a>&gt;<br>
<br>
We need a space after your name and before the &#39;&lt;&#39; character.<br=
>
<br>
&gt; <br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; b/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; index 1d83affc08ce..cc6f1a23da01 100644<br>
&gt; --- a/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c<br>
&gt; @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] =3D {0x8=
0,<br>
&gt; 0xf3};<br>
&gt; <br>
&gt;=C2=A0 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX=
) */<br>
&gt;=C2=A0 static u8 rtw_bridge_tunnel_header[] =3D {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8<br>
&gt;=C2=A0 };<br>
<br>
All tabs were turned into spaces by your email client, making this patch<br=
>
impossible to apply.=C2=A0 Also it was line-wrapped :(<br>
<br>
You can not cut-paste a patch into an email, please use &#39;git send-email=
&#39;<br>
to send a patch out properly.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--000000000000fef9460583fbc8a3--

