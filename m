X-GM-THRID: 6609263444479705088
X-Received: by 2002:a9d:3c41:: with SMTP id j1mr24030870ote.12.1539177070056;
        Wed, 10 Oct 2018 06:11:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:530f:: with SMTP id g15ls3815455oth.7.gmail; Wed, 10 Oct
 2018 06:11:09 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61mGLH7HSNAAifqK8jioSfx7R+xcf17ALRLjl4Qfn1+AvMmGQF8/l7gVpY6kMZUi8w6Y1xt
X-Received: by 2002:a9d:4793:: with SMTP id b19mr7583263otf.64.1539177069265;
        Wed, 10 Oct 2018 06:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539177069; cv=none;
        d=google.com; s=arc-20160816;
        b=Ujs243HOiMgaqeB/TMIKCahALfRCiBAnfy9RQp+dEBzVGEEO0NKnDzd4qS8vPJ0yp0
         HE+D94tCYPMb/O4q7cfMfoEQd28nhBJKPAlEXwrdwDG+MQq5z0MI7m0qVU+6DrEF7HIm
         zAW8WLG/CpNPej1M3sgKaH858x9sJvbHtVBay9kihzE3ZnRCoOEev3ltKSOgZoBlM2vO
         batfaaAivxLRwrFTf3Zz/r9HFg7AcflwxKjEOLa+8UxoF3FeUDAQXEmpFc16IcECBBvN
         0L6oCqZqUjeIRsFnNFulNzgm7dNH3/d/XBVFI/Emu9UOaWOu87U9ZuG2yzqCAKKXV/db
         5KEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mhmab43JRW1JX0AvzG8UzXy6Em81rc8LiOcxHLVN7mA=;
        b=t1T0peN+V1k+QtEwLiiEcF29ckS5ircOw3MQgtIsNRS0huAUp97VHfJopNEkbfDGTr
         jBj51sGvuGxRyH7n0bg43reYc1J1Rq/m70rBHIq9W1dckyb00E8xXmrr9DBzGY8/jlb/
         GZpurPrbOG2oJbvQeTQauPxbQU/rma9ck0TuIi81nsYRxQFFd6BIj6ymEJ/B7Paoftju
         pfQcnCDndD81euMsJHYDqpfuMlY14MG11mDhGvgNuY2icLDPuDqLBUqI275OHaqWiXoB
         RsUwxUyf2Mpq+DhtgT1raxjGPoxxBilGuOmhXsfZ5HkH3sU845IdUDiiPCBZ4srFhMXS
         FuZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSiaY+2D;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id j66-v6si391691otc.3.2018.10.10.06.11.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 06:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZSiaY+2D;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd42.google.com with SMTP id x26-v6so3794093iog.11
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Oct 2018 06:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mhmab43JRW1JX0AvzG8UzXy6Em81rc8LiOcxHLVN7mA=;
        b=ZSiaY+2Dt/zcVsumt5kia1c5RXzagKV38AynusrXQz0vRDiz06HGC8yJAtgUKy2b6r
         wzF7Lii2mbDlcn2Z9zDvp/DV9mze4Ys2NuteEAvrcrrJjEVHDLGaRw8chGSVkLO5adFW
         wGG+/hDyAvTcyLbdL6oPFaHYcdnZW3b0t+RgMNYa4sqYhXNNcyw/Lyl6WsduWDOax+KE
         TWAS+lAyfk6CdV13el8qA3iqg3U4MGvTaLzWJsq1VpAMvlqH2V9XFdRUBx+VezWHnopw
         xrWUezD1zSp0aN4OY6Fp5+wf9xKL5yAswIU5MRpZbAQ5AIMLmvmE6O8PApFeFOLO3Ety
         6BhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mhmab43JRW1JX0AvzG8UzXy6Em81rc8LiOcxHLVN7mA=;
        b=dpMxNuIijwnEU5kTU5fv63dATiMG1elwkcakOYhh5a91u9zd09wwvpgg/hL9ht6Bab
         0ja1qKVVD6MBXEHdrTHuRHziIUJIym6wTMP3C+S+yIfgcPO1yRkitAgXdIcdYWZogsW6
         BRZokyKFiPDxvFPvrrIEkr4zz+hx8bo1WAORjnpqMy9pmR9YRFIbRMDZe+tqdrym9zHH
         MURe24Zp2uj3KkngTiesGG9QMzCWLP2mEVpT6dmiS7K26B8W85bfFFcGAMoFtmlZT4Cj
         lkd9Z1ieSdgcr1tiynU4XzcopwFjtD8YTeNeMIn8nUXg5w9Cq96WBIwJ6yM7sdWMHkHy
         iAQg==
X-Gm-Message-State: ABuFfohwSorOB1+x50hvAhojKGywQt9GsHQmAPU8DHr5+96fcZSjXDcj
	7PA0nFJ6AR7MMxSqCdpA0hDCI+qa6B8hHWgROF4=
X-Received: by 2002:a6b:9183:: with SMTP id t125-v6mr20816698iod.191.1539177068740;
 Wed, 10 Oct 2018 06:11:08 -0700 (PDT)
MIME-Version: 1.0
References: <20181006143316.GA23864@armorer> <20181009125546.GA2700@kroah.com>
In-Reply-To: <20181009125546.GA2700@kroah.com>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Wed, 10 Oct 2018 18:40:54 +0530
Message-ID: <CAMNCNOUWh4XCOxJ_Ovy2CmEs=zT8PQzGr_8U4H-0uAqfifhzgQ@mail.gmail.com>
Subject: Re: [PATCH] staging: gasket: Replace symbolic permissions with octal permissions
To: greg@kroah.com
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.com, 
	Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Content-Type: multipart/alternative; boundary="0000000000006dcc480577df961b"

--0000000000006dcc480577df961b
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 9, 2018 at 6:25 PM Greg KH <greg@kroah.com> wrote:

> On Sat, Oct 06, 2018 at 08:03:16PM +0530, Mamta Shukla wrote:
> > Use octal permissions in place of symbolic permissions to fix checkpatch
> > warning.
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider
> > using octal permissions '0444'.
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >  drivers/staging/gasket/gasket_sysfs.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_sysfs.h
> b/drivers/staging/gasket/gasket_sysfs.h
> > index f32eaf8..8b563d2 100644
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
>
> >This is very odd, why is this define even needed?
>

This  gasket_sysfs.h and gasket_sysfs.c utility allows gasket driver
framework to maintain their own set of sysfs entries. This was for
terminating
gasket_sysfs_attr array.
Is this understanding correct?



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
>
> >This should use __ATTR_RO() instead, right?
>

Yes, this should be of Read only type attribute.This driver deals with
'raw' sysfs attributes.
Can I write a different patch for this?



>
> >thanks,
>
> >greg k-h
>


-- 
Mamta Shukla.

--0000000000006dcc480577df961b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Tue, Oct 9, 2018 at 6:25 PM Greg KH &lt;<a h=
ref=3D"mailto:greg@kroah.com">greg@kroah.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Sat, Oct 06, 2018 at 08:03:1=
6PM +0530, Mamta Shukla wrote:<br>
&gt; Use octal permissions in place of symbolic permissions to fix checkpat=
ch<br>
&gt; warning.<br>
&gt; WARNING: Symbolic permissions &#39;S_IRUGO&#39; are not preferred. Con=
sider<br>
&gt; using octal permissions &#39;0444&#39;.<br>
&gt; <br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/gasket/gasket_sysfs.h | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/g=
asket/gasket_sysfs.h<br>
&gt; index f32eaf8..8b563d2 100644<br>
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
<br>
&gt;This is very odd, why is this define even needed?<br></blockquote><div>=
=C2=A0</div><div>This=C2=A0 gasket_sysfs.h and gasket_sysfs.c utility allow=
s gasket driver framework to maintain their own set of sysfs entries. This =
was for=C2=A0 terminating<br>gasket_sysfs_attr array. <br></div><div>Is thi=
s understanding correct?<br></div><div><br><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
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
<br>
&gt;This should use __ATTR_RO() instead, right?<br></blockquote><div><br></=
div><div>Yes, this should be of Read only type attribute.This driver deals =
with &#39;raw&#39; sysfs attributes. </div><div>Can I write a different pat=
ch for this? <br></div><div><br></div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
<br>
&gt;thanks,<br>
<br>
&gt;greg k-h<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif=
">Mamta Shukla.</font></div></div></div></div></div>

--0000000000006dcc480577df961b--

