X-GM-THRID: 6751148085003419648
X-Received: by 2002:a17:90a:9306:: with SMTP id p6mr5319343pjo.68.1571903929278;
        Thu, 24 Oct 2019 00:58:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4c5e:: with SMTP id m30ls1517161pgl.13.gmail; Thu, 24
 Oct 2019 00:58:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxqjZVOpofyThdv4beUEdiTR1aqs8fnj7BpM1g0ORQEauUfkO4Rmnlr84Nz3OmC34lQaUCk
X-Received: by 2002:a62:1551:: with SMTP id 78mr9811732pfv.200.1571903928270;
        Thu, 24 Oct 2019 00:58:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571903928; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3Lb+vf9LomVHNLMX4uDid1tQXIhncJUCSWIudFT73c1aqykEm9DHlkrivc3LGYBmk
         fESoRHM9hpVcLGyiuzjhvwOPifhqHhGQG34Wr9kb3vmUTnBM/DUvFi19avYd+Z10SNhN
         Au9CJdE3Bsz0kdemjm2cHeu9T80ky2E4hpP9ZSGyJcObG3LkSTvaZofzGUHQimC/zHNB
         YGiHq162R0a3x/a9R/om6i2gJ2CbgUV6jj+tj9Daa+yu8gaTcp+3nTTIiZH55BsdLz5m
         HkItpOK7eTG/GD8c+hGd/Ti+mj03DZucquwrwjd/3IyAGWoyhoaBy2v5xetM5n9/1SO1
         d+2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hsuq+1j8b4KZPSZ/8sIzY9yrXd2jDEQ3l4RXYMnM0JM=;
        b=mg0W3K6K+VNX5iV2y3VPxAbCk79s7hK1gLVd9be+WGt6XCBaKvMbVM54vh8ukTnzgy
         0ug+925UpetHR2MMwmsL1iUy+HT+kcyfZhVpN7BsdjHOmKoGZIkuJ7owddT4OwK/RBvS
         es5Leq18JgDV8UbyUPZ35mmImYoadPIVyJQ/cVrJdfuWAG7Myd50RElmilOuJ0ov0ZhM
         m2CqxfOXW1EOi8HLrL9vzdGm+0kMaooYbngoslmtUsNcf3lsWRx1vPcOv39rnDkT2a8m
         rBqdL5tvLLxH1eLF7+2kRk6Hxv8e9Ghkp83TlrLdlKsPniXkpGqnhcmkXEyg86fOePTA
         efjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kTl2hvVj;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id d5si1228614pls.5.2019.10.24.00.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 00:58:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kTl2hvVj;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id v10so15620528vsc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 00:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hsuq+1j8b4KZPSZ/8sIzY9yrXd2jDEQ3l4RXYMnM0JM=;
        b=kTl2hvVjYrhNC3yYhQu6peXARzIfuxj1ulBn6exzCKBEb30450KKHaYqQMLVS3l3Fr
         PiGdaO/QBUhdfTYFh4F83J4zASEAJOiBJfAMGweBMAy2mNT/BH+cOWgryrYtmM5pdTu4
         2T7Y+yWz3zqjhMo1J5gHKdzpmeG3aJSm4wW8IvImElQ7E+Ht9zE83fLAzwPeUJGfhFYL
         Aqn9ixBsquw9RraTUYgurC8/Wj8Pu9l5/Xy7Ve1+ywuj3V+7VouiGiCHjZuaIqISpXai
         snEP7GxhPb18pmUPow76bsY3zG2wNlJPV3//F+FEVv8MRA7TL84ugo2bi3l/GW55Urml
         YobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hsuq+1j8b4KZPSZ/8sIzY9yrXd2jDEQ3l4RXYMnM0JM=;
        b=EHFaeqQAiPs+1P1R4xujgNswQesT8Yrxp1TCV6/A0MMfVuEk1GBAQsJo+pGiLDYo5d
         N64GE9cs9De6FkYSnEToVv5Ej8YM4gKALT4nzr6767urrRKbg9RAOOoWLST9HLoKPU5o
         /2blNWYSMcVJNM42UAZP1o7dnYSBU877Bvi3JTq40lCIsfFopxHYwIhghOGHTzDz4qkO
         KC2pgyBFbxlL5cJe+N9Shc1oooOhgjCCa0fZcoRoRNRe4b+gKx8mOg0siBr4bcj3Sgkm
         kcksv0SHYWhO0QMIA7YDx5Um4FN2WgbVwcwgpebKxIzqYTFIVDPc9n/OX0+Po9V+Vc2H
         YXbA==
X-Gm-Message-State: APjAAAWKbMLBEqm8bghfKEJM297qSEJEW2G0IshlNAGRiWeE9EtABQAZ
	5Bu+fF7VMKvytAEcKwLg7bxIiXiDSiUuceU5Z80=
X-Received: by 2002:a67:1a47:: with SMTP id a68mr5325971vsa.147.1571903927423;
 Thu, 24 Oct 2019 00:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191023234427.GA4613@ik-ubuntu> <alpine.DEB.2.21.1910240645570.2771@hadrien>
 <CANR89jZA3yy124EDWogZkVoqtRKmx-0+npxP6=_=yTcmTmHKLw@mail.gmail.com> <alpine.DEB.2.21.1910240951390.4479@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910240951390.4479@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Thu, 24 Oct 2019 08:58:36 +0100
Message-ID: <CANR89jY8rhbgVNBp4D_PsCdaeVT6HZ4GaLpogGj-HNZ1KK+Y9w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] Staging: comedi: Remove wrapper
 function declarartion
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: abbotti@mev.co.uk, gregkh@linuxfoundation.org, 
	hsweeten@visionengravers.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003717050595a36767"

--0000000000003717050595a36767
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Cheers mate

On Thu, 24 Oct 2019 at 08:54, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 24 Oct 2019, evan chime wrote:
>
> >
> > Hello Julia
> >
> >
> > Thanks for the reply. I see what you mean, the kernel compiles when I
> make
> > changes to three files, for each of two of the functions. The other
> function
> > is static, so it compiles on a change of only one file
> >
> >
> > Please Julia, I=E2=80=99ve two questions:
> >
> > A) So I should change three files for a function, then make a single
> commit,
> > for that, and that will be a patch of the patch set, right?
>
> You can do as you like.  For example, you could have one commit for all o=
f
> the uses in a given file, and then one commit for the definition and the
> header.  Or you could do as you propose - just adjust everything in a
> single commit.  In this case, where there are a small number of uses and
> all of the patches go to the same people, the second solution may be
> simpler.  In a more general vase, where the uses are all across the
> kernel, the first approach could be better.
>
> >
> >
> > B) I will now have three patches for this patch set, and as obviously t=
he
> > previous patch set won=E2=80=99t be accepted, so my next patch set subm=
ission,
> won=E2=80=99t
> > be a patch set review( PATCH v2, 1,2,3,4,5,6,7/7) since I will be havin=
g
> > only three patches now, right?. So I need to make a fresh patch set of
> three
> > submission
>
> No, it's a v2.  Greg needs to ignore the first set of patches and take
> this one instead.
>
> julia
>
> >
> > You=E2=80=99re superstar
> >
> >
> > Kind regards
> >
> > Evan
> >
> >
> > On Thu, 24 Oct 2019 at 05:47, Julia Lawall <julia.lawall@lip6.fr> wrote=
:
> >
> >
> >       On Thu, 24 Oct 2019, Evan Chime wrote:
> >
> >       > Remove wrapper function "comedi_buf_map_put" declaration
> >       > as part of remove all wrappers in drivers/staging/comedi/TODO
> >       >
> >       > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> >       > ---
> >       >  drivers/staging/comedi/comedi_internal.h | 2 --
> >       >  1 file changed, 2 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/comedi/comedi_internal.h
> >       b/drivers/staging/comedi/comedi_internal.h
> >       > index df3b1af109f7..73131e625fe5 100644
> >       > --- a/drivers/staging/comedi/comedi_internal.h
> >       > +++ b/drivers/staging/comedi/comedi_internal.h
> >       > @@ -23,12 +23,10 @@ struct comedi_device
> >       *comedi_alloc_board_minor(struct device *hardware_device);
> >       >  void comedi_release_hardware_device(struct device
> >       *hardware_device);
> >       >  int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);
> >       >  void comedi_free_subdevice_minor(struct comedi_subdevice *s);
> >       > -
> >
> >       Removing this blank line is not relevant to your change.
> >
> >       >  int comedi_buf_alloc(struct comedi_device *dev, struct
> >       comedi_subdevice *s,
> >       >                    unsigned long new_size);
> >       >  void comedi_buf_reset(struct comedi_subdevice *s);
> >       >  bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
> >       > -int comedi_buf_map_put(struct comedi_buf_map *bm);
> >
> >       It looks suspicious that you are removing a prototype here and
> >       calls
> >       afterwards.  Does the kernel compile after you apply this patch
> >       and before
> >       you apply the remaining ones?  The kernel should compile before
> >       and after
> >       every single patch, not before and after every series.
> >
> >       julia
> >
> >       >  int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned
> >       long offset,
> >       >                         void *buf, int len, int write);
> >       >  struct comedi_buf_map *comedi_buf_map_from_subdev_get(
> >       > --
> >       > 2.17.1
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20191023234427.GA4613%40
> >       ik-ubuntu.
> >       >
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CANR89jZA3yy124EDWogZkVo
> > qtRKmx-0%2BnpxP6%3D_%3DyTcmTmHKLw%40mail.gmail.com.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.191024=
0951390.4479%40hadrien
> .
>

--0000000000003717050595a36767
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Cheers mate=C2=A0</div></div><div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 24 Oct 2019 at 0=
8:54, Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall=
@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 24 Oct 2019, evan chime wrote:<br>
<br>
&gt;<br>
&gt; Hello Julia<br>
&gt;<br>
&gt;<br>
&gt; Thanks for the reply. I see what you mean, the kernel compiles when I =
make<br>
&gt; changes to three files, for each of two of the functions. The other fu=
nction<br>
&gt; is static, so it compiles on a change of only one file<br>
&gt;<br>
&gt;<br>
&gt; Please Julia, I=E2=80=99ve two questions:<br>
&gt;<br>
&gt; A) So I should change three files for a function, then make a single c=
ommit,<br>
&gt; for that, and that will be a patch of the patch set, right?<br>
<br>
You can do as you like.=C2=A0 For example, you could have one commit for al=
l of<br>
the uses in a given file, and then one commit for the definition and the<br=
>
header.=C2=A0 Or you could do as you propose - just adjust everything in a<=
br>
single commit.=C2=A0 In this case, where there are a small number of uses a=
nd<br>
all of the patches go to the same people, the second solution may be<br>
simpler.=C2=A0 In a more general vase, where the uses are all across the<br=
>
kernel, the first approach could be better.<br>
<br>
&gt;<br>
&gt;<br>
&gt; B) I will now have three patches for this patch set, and as obviously =
the<br>
&gt; previous patch set won=E2=80=99t be accepted, so my next patch set sub=
mission, won=E2=80=99t<br>
&gt; be a patch set review( PATCH v2, 1,2,3,4,5,6,7/7) since I will be havi=
ng<br>
&gt; only three patches now, right?. So I need to make a fresh patch set of=
 three<br>
&gt; submission<br>
<br>
No, it&#39;s a v2.=C2=A0 Greg needs to ignore the first set of patches and =
take<br>
this one instead.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; You=E2=80=99re superstar<br>
&gt;<br>
&gt;<br>
&gt; Kind regards=C2=A0<br>
&gt;<br>
&gt; Evan<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 24 Oct 2019 at 05:47, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Thu, 24 Oct 2019, Evan Chime wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove wrapper function &quot;comedi_bu=
f_map_put&quot; declaration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; as part of remove all wrappers in drive=
rs/staging/comedi/TODO<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Evan Chime &lt;<a href=
=3D"mailto:chime.evan.dri.devel@gmail.com" target=3D"_blank">chime.evan.dri=
.devel@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/comedi/comedi_int=
ernal.h | 2 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 deletions(-)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/comedi/com=
edi_internal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/comedi/comedi_internal.h<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index df3b1af109f7..73131e625fe5 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/comedi/comedi_int=
ernal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/comedi/comedi_int=
ernal.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -23,12 +23,10 @@ struct comedi_devic=
e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*comedi_alloc_board_minor(struct device *har=
dware_device);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 void comedi_release_hardware_devi=
ce(struct device<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*hardware_device);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 int comedi_alloc_subdevice_minor(=
struct comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 void comedi_free_subdevice_minor(=
struct comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Removing this blank line is not relevant to =
your change.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 int comedi_buf_alloc(struct comed=
i_device *dev, struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_subdevice *s,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long new_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 void comedi_buf_reset(struct come=
di_subdevice *s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 bool comedi_buf_is_mmapped(struct=
 comedi_subdevice *s);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -int comedi_buf_map_put(struct comedi_b=
uf_map *bm);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It looks suspicious that you are removing a =
prototype here and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0calls<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0afterwards.=C2=A0 Does the kernel compile af=
ter you apply this patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and before<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0you apply the remaining ones?=C2=A0 The kern=
el should compile before<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and after<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0every single patch, not before and after eve=
ry series.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 int comedi_buf_map_access(struct =
comedi_buf_map *bm, unsigned<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0long offset,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0void *buf, int len, int=
 write);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 struct comedi_buf_map *comedi_buf=
_map_from_subdev_get(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.17.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" target=3D"_blank">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/20191=
023234427.GA4613%40" rel=3D"noreferrer" target=3D"_blank">groups.google.com=
/d/msgid/outreachy-kernel/20191023234427.GA4613%40</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ik-ubuntu.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<=
br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANR89jZA3yy124EDWogZkVo" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/CANR8=
9jZA3yy124EDWogZkVo</a><br>
&gt; qtRKmx-0%2BnpxP6%3D_%3DyTcmTmHKLw%<a href=3D"http://40mail.gmail.com" =
rel=3D"noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910240951390.4479%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1910240951390.4479%40hadrien</a>.<br>
</blockquote></div></div>

--0000000000003717050595a36767--

