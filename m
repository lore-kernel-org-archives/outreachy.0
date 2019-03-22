X-GM-THRID: 6670800294132056064
X-Received: by 2002:a2e:9a46:: with SMTP id k6mr3716555ljj.119.1553223303764;
        Thu, 21 Mar 2019 19:55:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8013:: with SMTP id j19ls930977ljg.0.gmail; Thu, 21 Mar
 2019 19:55:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5xl/7JkU8FJR32igB/f7OF6uBDAZ3vf8Ih2uctdJsaCVHmc7uW7SIbgv4D9DoIEAeCZz0
X-Received: by 2002:a2e:1257:: with SMTP id t84mr4087996lje.115.1553223302834;
        Thu, 21 Mar 2019 19:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553223302; cv=none;
        d=google.com; s=arc-20160816;
        b=CmX6+SimerCNkmZXIeL3m0MS9tSpsrQFFcrc8gRVeqqi2rnxyGeW9XE451KEBma+GQ
         ye3uH1Mi7JVlbu7VxKMdN9BQMLtM1jjZgBveXwMXbSfwsmnwFAsCBPV3/SEwSfYLRRSA
         C9KvXp1FC0eo2Htsfj6YxpGLXBo1vPeaeT74AocMX+TJ8vu7U8vlErmdsd4WCCNr4TuG
         Lf2q3cGTpmNGC1mkC1mnq8j1aoUxsff+T9jpBYPketqVamAY3D8dyTn9HMETa3ytK4Ds
         ZuhSRbIrSm7QreWKz0E1KK53VizXPc/RgOf63mGtQTPFXjQpmBh6fiDl7mSUslxfWXhk
         JZIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QN8Sam/Ql1bbugWiVqHK/qttMMv8rrTmu6mshxCpj7w=;
        b=cKJzyDKVBUjHft/GiAXWVM27KrCRyht5VC/b8o5+npwHvMcQHRon8g/RmIokYEyw8k
         2fTmcMCEKsWKZghfOHNTOUi8cl4HFLFAtdpSphCpjYPe/WjEQqibZqdRWFsO+qtMp+jx
         LRJ+6GMlgKXpVTcLvVIixoXBYYiTHXO7iiyF1v5VcC3dxDVU7F12bTPP3x1uIwCgpDN7
         LH2Bs9OOlE2hUoqwbK4aRJUh6MFMXz5hLTgdLa4PaIgVDAVhVE0LNJFe7wKiAxDq/PUh
         wdV/k66lhE+WgJ4PDQbPkR0xqXzYjmgQmnTLfDBMIrE9giRaL4Eed38AXroabJ92nzKX
         f+LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+SFmYVq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m17si136726lfl.0.2019.03.21.19.55.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 19:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+SFmYVq;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id z26so722732lja.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 19:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QN8Sam/Ql1bbugWiVqHK/qttMMv8rrTmu6mshxCpj7w=;
        b=Q+SFmYVqY3d1tUXmC6CmTp4tuVcSkQb7k4mu561KzRkcuaCOD33r7u8ZbwO1hzMge0
         Muy/FS1DblLibYoKASDHPjuNiEjYkjkRSb8+ZZ6GQesTUnATnjTHAqicSksCrDxUaQxI
         tIkzfPMOHQ+hBt44AaMBUQSnoU+aWWdt+vwbVPAXKBRbu5SOAKreoafOM64yvz/vA1Fm
         88kOfLmdAE0kKddUetjkzYyy+rzSQwsAsClBNmvPwVX8THbXGwtyed3aFLD4oGCj7YJX
         2WQ19hW1/nDUMDdI4iVm6ZoEtVvI//g8GsJzXa2dbbDOahDuk9HDT0YDqcv4gNpmjMz5
         z1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QN8Sam/Ql1bbugWiVqHK/qttMMv8rrTmu6mshxCpj7w=;
        b=kYJS01T5FOewx6M4FGf1RdTPEM+m5czJx0TfOXHewXM2LSu2vzTvvhCRyBeUH2qK4I
         GaADAV1hQtX4ry4YYLq0An4CrwTbLWxFMKdu3xcvq8qiaLv2NoAeY8/v2r1N3L8P+Aa2
         9DkVFf4XtX3wtpptb6Piovg4krSW61OdQeRHAZi3aPcIa+d6pNQW2cEmAzseIET/ETo/
         XEvpdSRrZ0RExBAMuLNPnQGkLneE2rKhUp+afXjWc/cajnlcPW0ajsA5r3yCzAalBLSs
         n3y7CM5myppxXP5LTZI8k8Y/aKiSf7aKzf/naJLqdH9PrsJfiVbX/Wg7rePKMHze+Mu5
         dPGQ==
X-Gm-Message-State: APjAAAVqYLE/JnBKXgCL0bN8Xd8OIWjC4BOaJxsQfcuLWGd4b5WCJ4fR
	0XfSt6SDgbf9z9thgI/lULY28kjnTZ3WGzTujoc=
X-Received: by 2002:a2e:3311:: with SMTP id d17mr3714824ljc.165.1553223302697;
 Thu, 21 Mar 2019 19:55:02 -0700 (PDT)
MIME-Version: 1.0
References: <1553166709-12186-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
 <20190321190547.GA23519@kroah.com>
In-Reply-To: <20190321190547.GA23519@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 22 Mar 2019 08:24:50 +0530
Message-ID: <CANTOzWGEuBNXWUOxLT_xRQOatDFLZGSq3zW_HjguHcPMJwK66g@mail.gmail.com>
Subject: Re: [PATCH 2/3] [Outreachy kernel] staging: sm750fb: avoid camelcase
 structure fields
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000036d8e50584a5fbf8"

--00000000000036d8e50584a5fbf8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2019, 12:35 AM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 21, 2019 at 04:41:49PM +0530, Payal Kshirsagar wrote:
> > Eliminate camelcase structure fields to fix the style issue =E2=80=93 =
=E2=80=98avoid
> > camelcase=E2=80=99.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/sm750fb/ddk750_mode.c | 52
> +++++++++++++++++------------------
> >  1 file changed, 26 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/staging/sm750fb/ddk750_mode.c
> b/drivers/staging/sm750fb/ddk750_mode.c
> > index 5e35fec..b55cd96 100644
> > --- a/drivers/staging/sm750fb/ddk750_mode.c
> > +++ b/drivers/staging/sm750fb/ddk750_mode.c
> > @@ -13,13 +13,13 @@
> >   * HW only supports 7 predefined pixel clocks, and clock select is
> >   * in bit 29:27 of Display Control register.
> >   */
> > -static unsigned long display_control_adjust_SM750LE(struct
> mode_parameter *pModeParam,
> > +static unsigned long display_control_adjust_SM750LE(struct
> mode_parameter *p_mode_param,
>
> Why did you put "p_" as the prefix here?
>
> The original code is trying to use the horrible Hungarian Notation way
> of naming variables (and doing a bad job of it), which is not needed in
> the kernel at all.  No need to keep following that, this should just be
> "mode_param", right?  We "know" it is a pointer by virtue that the
> compiler will tell us if we get it wrong.
>

I will do corrections and will resend it in v2.
Thanks,
Payal

thanks,
>
> greg k-h
>

--00000000000036d8e50584a5fbf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 22, 2019, 12:35 AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Thu, Mar 21, 2019 at 04:41:49PM +0530, Payal Kshirs=
agar wrote:<br>
&gt; Eliminate camelcase structure fields to fix the style issue =E2=80=93 =
=E2=80=98avoid<br>
&gt; camelcase=E2=80=99.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/sm750fb/ddk750_mode.c | 52 +++++++++++++++++----=
--------------<br>
&gt;=C2=A0 1 file changed, 26 insertions(+), 26 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/s=
m750fb/ddk750_mode.c<br>
&gt; index 5e35fec..b55cd96 100644<br>
&gt; --- a/drivers/staging/sm750fb/ddk750_mode.c<br>
&gt; +++ b/drivers/staging/sm750fb/ddk750_mode.c<br>
&gt; @@ -13,13 +13,13 @@<br>
&gt;=C2=A0 =C2=A0* HW only supports 7 predefined pixel clocks, and clock se=
lect is<br>
&gt;=C2=A0 =C2=A0* in bit 29:27 of Display Control register.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; -static unsigned long display_control_adjust_SM750LE(struct mode_param=
eter *pModeParam,<br>
&gt; +static unsigned long display_control_adjust_SM750LE(struct mode_param=
eter *p_mode_param,<br>
<br>
Why did you put &quot;p_&quot; as the prefix here?<br>
<br>
The original code is trying to use the horrible Hungarian Notation way<br>
of naming variables (and doing a bad job of it), which is not needed in<br>
the kernel at all.=C2=A0 No need to keep following that, this should just b=
e<br>
&quot;mode_param&quot;, right?=C2=A0 We &quot;know&quot; it is a pointer by=
 virtue that the<br>
compiler will tell us if we get it wrong.<br></blockquote></div></div><div =
dir=3D"auto"><br></div><div dir=3D"auto">I will do corrections and will res=
end it in v2.</div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Payal</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--00000000000036d8e50584a5fbf8--

