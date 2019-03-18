X-GM-THRID: 6669728292045586432
X-Received: by 2002:a1c:701a:: with SMTP id l26mr8050wmc.16.1552931644687;
        Mon, 18 Mar 2019 10:54:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls3433405wrp.16.gmail; Mon, 18
 Mar 2019 10:54:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw60sak4VW/grh5zWpNBIEqXHZ8iSGxT0d4dmVMAZ488pN8MQfFl8A4hC6BDPoG95YUrzuN
X-Received: by 2002:adf:fb0c:: with SMTP id c12mr828951wrr.28.1552931643426;
        Mon, 18 Mar 2019 10:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552931643; cv=none;
        d=google.com; s=arc-20160816;
        b=YH7OPVA4EG/R9wj8YoBljz4mxiWTYnRlCj60S0tywKwdAfV8St3JUb4pY480nubL+0
         M6e4ddypo3c1MEWRiRV0CyLE9q9dGEMBtNDthBmlGRTMlQCnprRwssYTXzS3qwcui9H6
         Kx/ycB56kqObV6s0iF8KiXPJC2niuSBxnjdA7mSIXQOTHlXh/6trBtKhnaCHpn3/sMO5
         NRXiI5dBCALY9Orw0WA/3eWf5cplghd9DBsKg7yQtA0qPzf/UG2s7XMK8IwURaJoFQnb
         JPg7xQbqIBLf6NhLrlgG4rew3ZIM4tFsNLkMAl1Z/CkCTTIKoarJMWCmtIEZ/0WTF0sy
         F9Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n8ydJurABWO47ZC+uhy7rdv1VTgV78h+DWq+VElaFng=;
        b=VPe9QeQpoqN8C2PJMN7oq1wobsCOR9+2jMRDOtUmAUPMAjgjayLPbeHykeyUYIWH6f
         XQUFUNDs3v9TG+hGWFD1VnHbyo4laRU6El5U2t21gVcIhvOt/ViR/+jhO1Ipr+TnkDCk
         cWsAIl0miBbf3S7xeDih26m2nABN9SVud4FVJS5NAsT3q8PE/8eRUK4OHnZ6wu+vgfAU
         WvTaDxyFAgIsuSNAq3PHONUttnaVzGpmX0U18uqKKwx5RIl55qGWi3YEjSD3h64yFNJ1
         10x8cNbF1YyEa+T7Q2zatwEaVoOMdXE7/PK9nWNcE8t5sDbIw9gFZhwXfxPpZzHCctRi
         I49Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fCEU+xvE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id m1si478159wrj.4.2019.03.18.10.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 10:54:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fCEU+xvE;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id y18so12424145lfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 10:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n8ydJurABWO47ZC+uhy7rdv1VTgV78h+DWq+VElaFng=;
        b=fCEU+xvE4ibV67aZ/eOV4ydFEq6xRwxRKFPNCWoVpD9ZRMj6DYr1DfRe56JIsJ9iqq
         t35T8bEPyKBRT5DOefv2PVRWC2jydxZRPrkH7vLCvTBeQJ4zQD+npvHpoxupgMD3fHIg
         jxC+W+J65RLPQRMszw+QSiKkYrlQOGCEEosHx4cAWtCEOiDDBIbumhSxWuwgUO13UH5b
         sKJHs8I7mqIbxAbLLWORxx8gjb3CmsQ4vBINyOvToFV25J3K/Ey+35xBROMsrbFskpU/
         SiYOS+0SlWiNq8656w/Lek1hR82qb60Aw3X1hs/Hn1gqpD5II+7EwFtE2ao24YlHBBsi
         VdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n8ydJurABWO47ZC+uhy7rdv1VTgV78h+DWq+VElaFng=;
        b=Wmt2GSKIwxQKCytDk/rFsGEfc3VcoQGQv8J78Y4o7Tqk3ndNZEYQdtu59jlhEQb5vH
         xzlyvEc2Ar11VjrBmFZso3PzDgnf0PzXz+ViYWEvviv01+Uxb/GUKA4deVArG4g1jv6X
         +W8g19PaIxh+rfORk3tupt6OG1nw3zo+0RwuXJuzn2rNXDPKdjDPXaRQwPpTFSVTTVZE
         /itL+k2UL5TsF331+jniFk8vjeT7McCp5L9fMgO8q9QGICAb/l7kHqChGRzFzLlnlYv/
         oSc+6aJ0yvDLNWKBQjYBktVMoUIvapuUuW5ULx7EpKF71kcpB+1Zoj+boWaturFftMt0
         L+Zw==
X-Gm-Message-State: APjAAAULQt6UaxFewohmiPaVlL4qm9nWRXfvbMU8pPXPf/UadKaZoMDg
	+YHIp7I3AhdsSfPVlGRRcutsi8RgMzv7e4nrB8B4DQ==
X-Received: by 2002:ac2:4561:: with SMTP id k1mr9564751lfm.95.1552931642947;
 Mon, 18 Mar 2019 10:54:02 -0700 (PDT)
MIME-Version: 1.0
References: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190318175135.GA23850@kroah.com>
In-Reply-To: <20190318175135.GA23850@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Mon, 18 Mar 2019 23:23:50 +0530
Message-ID: <CANTOzWG+ybnDB-7_mEDNJ8RZjToo+_FYsu4xNyr+TmExMb5DTA@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: gasket: replace symbolic permissions
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f03b01058462126c"

--000000000000f03b01058462126c
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 Mar 2019 at 23:21, Greg KH <greg@kroah.com> wrote:

> On Mon, Mar 18, 2019 at 07:21:54PM +0530, Payal Kshirsagar wrote:
> > Symbolic permissions 'S_IRUGO' are replaced by octal permissions '0444'
> > in file
> > drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> b/drivers/staging/gasket/gasket_sysfs.h
> > index 151e8ed..60590ea 100644
> > --- a/drivers/staging/gasket/gasket_sysfs.h
> > +++ b/drivers/staging/gasket/gasket_sysfs.h
> > @@ -40,7 +40,7 @@
> >   */
> >  #define GASKET_END_OF_ATTR_ARRAY
>        \
> >       {
>     \
> > -             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL,
> NULL),   \
> > +             .attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),
>  \
> >               .data.attr_type = 0,
>      \
> >       }
> >
> > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
> >
> >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)
>        \
> >       {
>     \
> > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),
>     \
> > +             .attr = __ATTR(_name, 0444, _show_function, NULL),
>   \
> >               .data.attr_type = _attr_type
>      \
> >       }
> >
>
> This patch does not apply at all, as others have made changes in this
> portion of the kernel.  Be sure you are working against the latest
> staging tree, it is staging.git on git.kernel.org and use the
> staging-testing branch.
>
> thanks,
>
> greg k-h
>

How do I update my staging tree ?

Thanks in advance!
payal

--000000000000f03b01058462126c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 18 Mar 2019 at 23:21, Greg KH=
 &lt;<a href=3D"mailto:greg@kroah.com">greg@kroah.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, Mar 18, 2019 a=
t 07:21:54PM +0530, Payal Kshirsagar wrote:<br>
&gt; Symbolic permissions &#39;S_IRUGO&#39; are replaced by octal permissio=
ns &#39;0444&#39;<br>
&gt; in file<br>
&gt; drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/gasket/gasket_sysfs.h | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/g=
asket/gasket_sysfs.h<br>
&gt; index 151e8ed..60590ea 100644<br>
&gt; --- a/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; +++ b/drivers/staging/gasket/gasket_sysfs.h<br>
&gt; @@ -40,7 +40,7 @@<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 #define GASKET_END_OF_ATTR_ARRAY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(GASK=
ET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),=C2=A0 =C2=A0\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(GASK=
ET_ARRAY_END_TOKEN, 0444, NULL, NULL),=C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.data.attr_type =
=3D 0,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(_nam=
e, S_IRUGO, _show_function, NULL),=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.attr =3D __ATTR(_nam=
e, 0444, _show_function, NULL),=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.data.attr_type =
=3D _attr_type=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
<br>
This patch does not apply at all, as others have made changes in this<br>
portion of the kernel.=C2=A0 Be sure you are working against the latest<br>
staging tree, it is staging.git on <a href=3D"http://git.kernel.org" rel=3D=
"noreferrer" target=3D"_blank">git.kernel.org</a> and use the<br>
staging-testing branch.<br>
<br>
thanks,<br>
<br>
greg k-h<br></blockquote><div>=C2=A0</div><div>How do I update my staging t=
ree ?</div><div><br></div><div>Thanks in advance!</div><div>payal<br></div>=
</div></div>

--000000000000f03b01058462126c--

