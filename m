X-GM-THRID: 6671492660700643328
X-Received: by 2002:aa7:d954:: with SMTP id l20mr10021844eds.156.1553358177691;
        Sat, 23 Mar 2019 09:22:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b491:: with SMTP id w17ls660844edd.7.gmail; Sat, 23 Mar
 2019 09:22:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwAL1Dzr7eqQAji2fvLZI5d97FLLPBscTQ0x/z7ylLI4wUEBSpynW3mwb1DuK8JZBM/+E4C
X-Received: by 2002:a50:8854:: with SMTP id c20mr10259684edc.167.1553358176734;
        Sat, 23 Mar 2019 09:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553358176; cv=none;
        d=google.com; s=arc-20160816;
        b=xlTMnaq+jLjssh2ExytFIeNJRojS1gKOKZM5XBRRB1/CctHrt6yByL8Jegz9ooX+s+
         Ci4IQwHLfhGX1PexWfFmoLkLIR6x8B6n6auDfWdrURQ70aunDITWy/fMyy6S9FHoynHF
         7ynu9xucjcf7fwQgiPfUfDv/U0cRrWRUJAZbaWsga2m/6/sP/LnGt5t1V4QsuD4TW8E6
         aBrS+9MJiFopKntrbb8E/FJT6BrUQ3jpmVn3a3NXL563PQdiHAv+RQppxTqUpwbFNhgA
         RBA5c51ICRxrIcKpBf8/BXFbX4PGcs6OloYswP1GT2pBblMNKJcNjrPXjRL3d4hqmRzt
         BMng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SbHwhjfhBsRBuf6nithx9kSc0xLfwOeeoe2cuQmMd2w=;
        b=sxCoB5Hzp98rHrUCEDbJg/PwUeOwrR234MF1HNOVHe3dFTlL19xx15UXXXFdwU5WG5
         sNX1ioRpgGRz8jRrBYgOBU7X6ashHkVMkVfEW0Npt7JBbEFjFX3mUsw9ePsK9Nsg4CG+
         QOfrEDJmdRuhLdDvjOxYhBXZnfGgoEr/rnacyIbVu5X4eVZaLXlhlvXcP99uXvDNXXJ0
         oeb33Ew/nJKXRpyDMoPpRBoDpFMT7u7/XIqosb0meGLsFXSLVJuTEr6yT5EapWrtILLb
         BmukqU1h/gNXGbolPhlMryrYeAWOIFirUdvVpbLh2KNsiQKaqk0SzLJ3QnWlXoyqnMut
         /baw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gh1Z6xV7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id r10si659782eda.4.2019.03.23.09.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 09:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gh1Z6xV7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id f23so4465490ljc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 09:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SbHwhjfhBsRBuf6nithx9kSc0xLfwOeeoe2cuQmMd2w=;
        b=Gh1Z6xV7pNxQVsl7pckhgYA+GS1PuFPPioHg4LyYncT4KpVS1n2pG5OaBoEwh4ZYQd
         D1H2GqLFtpHmSveTGcfoYtpuYi/S8m5WmAWGttYwMNxYd9/aL+ZGTZqAoZW9eKQTk8uD
         k1EZSaq6tl+oz5YA+HoLal44IMl+DWI2lcAZsm/nmnqh9JW9BRtZU+jraDHkrEJqbVrj
         NX9UVeP8FkxBEAOFgsMkBrJUL2orPJNWsa5sYrG30IpQcbALctBNJmxyfbcExfLqgjtD
         SOJsuWhGaIROOJzB+rFV/7zCJOFT3mpz9KkYNZ8iktbsX1+S6iunwSR29o3EpOjls3k9
         ZEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SbHwhjfhBsRBuf6nithx9kSc0xLfwOeeoe2cuQmMd2w=;
        b=AgMDVZOhLtaWSqPNvAVgp8vvQuSMzpREF0CNx+1G1LqAd4sLR8SF4BtuwQ9MnaGuDa
         Oc5gzT63TphzCqIf01QUt6JVBq1a7hneV4RW2Cb4wcKfiI9vIGtDW2RsPEjMMacFRgNH
         XK7Uqb1ei2WW8UVNm4HLcbAOznT2B+mOyJqhZ1iC3Vb/eo8FfmBOlw2BGNyK3y7tf5qZ
         o3DlpIkbTUYUJBpnASvCLw3CVHv6hJfIdiUOU+ap6EuB9FU0lNlyFIVxmopvAH6pdHyu
         58CTz7RniLVkY63H/vJVzKKrSRaGLT/1EZCJosmS6M547KinDMlwypinczStXimOulNG
         PUoA==
X-Gm-Message-State: APjAAAWGbPAC+nrgkvzzi2r41P7A/ZcXLN0nNL5szLAYchxvPE39ufyz
	vG0nXLPgoHYEmHrTPBXuZPc0ifGV7707FZZVl65JmA==
X-Received: by 2002:a2e:924c:: with SMTP id v12mr8248730ljg.185.1553358176246;
 Sat, 23 Mar 2019 09:22:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903230910120.2537@hadrien> <CANTOzWFyaovbYWFXJZhwL3LygV-As8CTbWOKR7K0eY50uj8ryg@mail.gmail.com>
 <alpine.DEB.2.21.1903230942200.2537@hadrien> <CANTOzWHuq3Nxb+fFnJ6PovgfOhxdo2gu38kzBsG0XHAq-5FcOQ@mail.gmail.com>
In-Reply-To: <CANTOzWHuq3Nxb+fFnJ6PovgfOhxdo2gu38kzBsG0XHAq-5FcOQ@mail.gmail.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sat, 23 Mar 2019 21:52:43 +0530
Message-ID: <CANTOzWErsHcftn-TDWdSQPnPORxVxEbzVRgjT6WPZ=rX_sURJA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: rtl8712: avoid camelcase
 variable name 'bPowerOn'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004de7810584c562b7"

--0000000000004de7810584c562b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 23 Mar 2019 at 14:17, Payal Kshirsagar <
payal.s.kshirsagar.98@gmail.com> wrote:

>
>
> On Sat, Mar 23, 2019, 2:12 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>>
>>
>> On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>>
>> >
>> >
>> > On Sat, 23 Mar 2019 at 13:43, Julia Lawall <julia.lawall@lip6.fr>
>> wrote:
>> >       When you make a series, it is nice to make a cover letter as
>> >       well, so that
>> >       one can see the scope of the changes all at once.  see the
>> >       tutorial if you
>> >       don't know how to do this.
>> >
>> > Sending.
>> >
>> >       On Sat, 23 Mar 2019, Payal Kshirsagar wrote:
>> >
>> >       > Eliminate camelcase variable names to fix the style issue =E2=
=80=93
>> >       =E2=80=98avoid
>> >       > camelcase=E2=80=99
>> >       >
>> >       > Signed-off-by: Payal Kshirsagar
>> >       <payal.s.kshirsagar.98@gmail.com>
>> >       > ---
>> >       >  drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
>> >       >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >       >
>> >       > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
>> >       b/drivers/staging/rtl8712/rtl8712_efuse.c
>> >       > index 00babd0..3275f7a 100644
>> >       > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
>> >       > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
>> >       > @@ -23,11 +23,11 @@
>> >       >  /* reserve 3 bytes for HW stop read */
>> >       >  static int efuse_available_max_size =3D EFUSE_MAX_SIZE - 3
>> >       /*0x1FD*/;
>> >       >
>> >       > -static void efuse_reg_ctrl(struct _adapter *padapter, u8
>> >       bPowerOn)
>> >       > +static void efuse_reg_ctrl(struct _adapter *padapter, u8
>> >       power_on)
>> >
>> >       It seems that bPowerOn always has a boolean value.  It would be
>> >       nice to
>> >       add other patches to the series that declare the variables as
>> >       type bool
>> >       instead of u8 (or int in one case).
>> >
>> >       Actually, this particular function is only called once and only
>> >       called
>> >       with the argument false.  The function that looks like it should
>> >       call this
>> >       one with the argument true currently just returns true,  I don't
>> >       know if
>> >       this function should be specialized to the false case and then
>> >       inlined
>> >       into the call site, or if it is considered that the true case
>> >       gives useful
>> >       information about the device, even if the code is not used.
>> >
>> >
>> > Do you want me to do further changes?
>>
>> Please do the change from u8 to bool.
>
>
>> Okay I will change and resend it.
> Thanks,
> Payal
>

Can I send this change in new patch?, because subject will be
different than this patchset.
Regards payal.



>
> julia
>>
>> > thanks,
>> > payal
>> >       julia
>> >
>> >       >  {
>> >       >       u8 tmpu8 =3D 0;
>> >       >
>> >       > -     if (bPowerOn) {
>> >       > +     if (power_on) {
>> >       >               /* -----------------e-fuse pwr & clk reg ctrl
>> >       ---------------
>> >       >                * Enable LDOE25 Macro Block
>> >       >                */
>> >       > --
>> >       > 2.7.4
>> >       >
>> >       > --
>> >       > You received this message because you are subscribed to the
>> >       Google Groups "outreachy-kernel" group.
>> >       > To unsubscribe from this group and stop receiving emails from
>> >       it, send an email to
>> >       outreachy-kernel+unsubscribe@googlegroups.com.
>> >       > To post to this group, send email to
>> >       outreachy-kernel@googlegroups.com.
>> >       > To view this discussion on the web visithttps://
>> groups.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda
>> >       6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98%40gmail.co=
m
>> .
>> >       > For more options, visit https://groups.google.com/d/optout.
>> >       >
>> >
>> >       --
>> >       You received this message because you are subscribed to the
>> >       Google Groups "outreachy-kernel" group.
>> >       To unsubscribe from this group and stop receiving emails from
>> >       it, send an email to
>> >       outreachy-kernel+unsubscribe@googlegroups.com.
>> >       To post to this group, send email to
>> >       outreachy-kernel@googlegroups.com.
>> >       To view this discussion on the web visithttps://
>> groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032309
>> >       10120.2537%40hadrien.
>> >       For more options, visit https://groups.google.com/d/optout.
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> Groups
>> > "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> an
>> > email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com=
.
>> > To view this discussion on the web visithttps://
>> groups.google.com/d/msgid/outreachy-kernel/CANTOzWFyaovbYWFXJZhwL3L
>> > ygV-As8CTbWOKR7K0eY50uj8ryg%40mail.gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032=
30942200.2537%40hadrien
>> .
>> For more options, visit https://groups.google.com/d/optout.
>>
>

--0000000000004de7810584c562b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, 23 Mar 2019 at 14:17, Payal K=
shirsagar &lt;<a href=3D"mailto:payal.s.kshirsagar.98@gmail.com">payal.s.ks=
hirsagar.98@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Sat, Mar 23, 2019, 2:12 PM Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 23 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sat, 23 Mar 2019 at 13:43, Julia Lawall &lt;<a href=3D"mailto:julia=
.lawall@lip6.fr" rel=3D"noreferrer" target=3D"_blank">julia.lawall@lip6.fr<=
/a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0When you make a series, it is nice to make a=
 cover letter as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0well, so that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0one can see the scope of the changes all at =
once.=C2=A0 see the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tutorial if you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0don&#39;t know how to do this.<br>
&gt;<br>
&gt; Sending.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 23 Mar 2019, Payal Kshirsagar wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Eliminate camelcase variable names to f=
ix the style issue =E2=80=93<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=98avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; camelcase=E2=80=99<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Payal Kshirsagar<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:payal.s.kshirsagar.98@=
gmail.com" rel=3D"noreferrer" target=3D"_blank">payal.s.kshirsagar.98@gmail=
.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8712/rtl8712_e=
fuse.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8712/rt=
l8712_efuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtl8712/rtl8712_efuse.c<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 00babd0..3275f7a 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8712/rtl8712_e=
fuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8712/rtl8712_e=
fuse.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -23,11 +23,11 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 /* reserve 3 bytes for HW stop re=
ad */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 static int efuse_available_max_si=
ze =3D EFUSE_MAX_SIZE - 3<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*0x1FD*/;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -static void efuse_reg_ctrl(struct _ada=
pter *padapter, u8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bPowerOn)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +static void efuse_reg_ctrl(struct _ada=
pter *padapter, u8<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0power_on)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It seems that bPowerOn always has a boolean =
value.=C2=A0 It would be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0nice to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0add other patches to the series that declare=
 the variables as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0type bool<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0instead of u8 (or int in one case).<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Actually, this particular function is only c=
alled once and only<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0called<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0with the argument false.=C2=A0 The function =
that looks like it should<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0call this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0one with the argument true currently just re=
turns true,=C2=A0 I don&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0know if<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0this function should be specialized to the f=
alse case and then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inlined<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0into the call site, or if it is considered t=
hat the true case<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0gives useful<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0information about the device, even if the co=
de is not used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt;<br>
&gt; Do you want me to do further changes?<br>
<br>
Please do the change from u8 to bool.</blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br></blockquote></div></div><div dir=3D"auto">Oka=
y I will change and resend it.</div><div dir=3D"auto">Thanks,</div><div dir=
=3D"auto">Payal</div></div></blockquote><div>=C2=A0</div><div>Can I send th=
is change in new patch?, because subject will be</div><div>different than t=
his patchset.</div><div>Regards payal.<br></div><div><br></div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt; thanks,<br>
&gt; payal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 tmpu8 =3D =
0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (bPowerOn) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (power_on) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* -----------------e-fuse pwr &amp; clk reg ctrl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0---------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 * Enable LDOE25 Macro Block<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.7.4<br>
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
ribe@googlegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/6b2be=
ffe41d8256284179eda" rel=3D"noreferrer noreferrer" target=3D"_blank">groups=
.google.com/d/msgid/outreachy-kernel/6b2beffe41d8256284179eda</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A06eadd8b9cf0a24fb.1553327467.git.payal.s.kshi=
rsagar.98%<a href=3D"http://40gmail.com" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel%2Bunsubsc=
ribe@googlegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visithttp=
s://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.19032309" rel=3D"noreferrer noreferrer" target=3D"_blank">groups.goog=
le.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032309</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A010120.2537%40hadrien.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANTOzWFyaovbYWFXJZhwL3L" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CANTOzWFyaovbYWFXJZhwL3L</a><br>
&gt; ygV-As8CTbWOKR7K0eY50uj8ryg%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
rel=3D"noreferrer" target=3D"_blank">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903230942200.2537%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903230942200.2537%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>
</blockquote></div></div>

--0000000000004de7810584c562b7--

