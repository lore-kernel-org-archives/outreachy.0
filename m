X-GM-THRID: 6671816179609239552
X-Received: by 2002:aa7:dd8a:: with SMTP id g10mr12064449edv.52.1553411391926;
        Sun, 24 Mar 2019 00:09:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:453:: with SMTP id e19ls2385877eja.9.gmail; Sun, 24
 Mar 2019 00:09:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNZrsqLppvJVvl1XFK4S3tJ4G405cTm53xebpPE757RTZHpnfUmBoC8emha2EHTyMkp0CG
X-Received: by 2002:a17:906:6408:: with SMTP id d8mr2284278ejm.185.1553411391062;
        Sun, 24 Mar 2019 00:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553411391; cv=none;
        d=google.com; s=arc-20160816;
        b=DVu1qgpmVEiugDE9ggwffu253pnQ4Otdgdbo+q+CHhfV1kQEdAr1gfhn+ehnVuUg1s
         Rjg10+u+2VfAYnk5kG1u8Wq0BRazhH8PXjWDjzO9UTIJNYTVRXCtK7d/CKoWY7QwnIVk
         Wsut77cGevlCsNClky/phNxLsxn0X8baJ+EfzgQXpht1keNH85Hrky3XIJD4pWsBCtqC
         a01wzVPwjfubNKcWobAG5NEeFKORx2Y0ZPv3dDlUnth6h7QzZqbxhTjxxPMTizEVatjB
         WfIku6thAuyqKXYbvQjiVRoNqQQ3OBnPo6QsqguNjM4/fR/Mk3lo8kLBhB1I4pzTn6Eu
         LOIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hXAwTDIRULNEEggM0GIeT98xWYVFuEIXAe0068Mf8/Q=;
        b=a1CzUIaYlYBfm1pg2Ibetd6lSuBcyAd8jpP2OU5sO7ymBAs/kYJF69NUIQdlw8xZ4S
         aRMBrs7fJa4SiDF93tf1oZryTMzHp4T2mnqC9VTJPOISjYCEQSj8NrnXMNv3rzlXYASY
         0X2h9RM36RoqBHMytFc/3EQyMfmN4wvohzcHORxkdOxAl3I1WychJg0gphPQGS934vK7
         HGHeXULoJUGixve0bpEgX5GFXraj4hqwwbH7ZEdsICVtdg/ze8imZ/C876YvSH801VZn
         +UL8CR7F3gGY1TvGHy3aAAUmrqpU/jICWNxGUnuhMUrP7zvhkBSxbzecV7x2/5XXW28G
         Ti2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDg+sIQd;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id jt16si289354ejb.0.2019.03.24.00.09.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 00:09:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDg+sIQd;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x131.google.com with SMTP id r25so3905420lfn.13
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 00:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hXAwTDIRULNEEggM0GIeT98xWYVFuEIXAe0068Mf8/Q=;
        b=uDg+sIQda8mlIfckZTQnTJgZWA4UTNK9pjTPn1r3LgFUXSu1+X8Vbhq87emKFi1Yuo
         uz1a5Mx18R8sqlmjSLPRDxpls0shzgnBmPG3sMMPrHbOU6g/p0pFe+0eTSfbvZx6uO9D
         TCxh+tU4IsikkeLnmkrdyEKZiPMIIlHWHXgsDvwFaNC70hUP/wusgyLsGU6pNKI1kJxn
         0OJ/75u9ljuiZpHvQpwzCqIbUef0DOWpuDKuZUpSolFifvRaaUGM2ra6RF1LdPgjlfSL
         S+IEIV8chE7+/NQjp2w6zjXyLsKsAgJZ4WI6n4oc5ZWBltl9QzFMgA9PnHkja/NcECU5
         trhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hXAwTDIRULNEEggM0GIeT98xWYVFuEIXAe0068Mf8/Q=;
        b=N7+AS6lVLfWQ5igCta4m9dnG0SWyzsm2am0T+kxed5vFm3ZYh+1g9bg/KPUV0IY5dV
         ABMhM98LpbsgiSf5KABRvO3DSXLIevBINj/MoZYqCAzL070ytMAfv+OJ5y8QMw3ZP0ZI
         X2UAn79sXwSPd+31gfa6vUm6RRf3HrnLNO3xZsZ+p1q7GXxU1FPFUMzfz8I4Hz2QPWkP
         LFC6u5Qhy7Y5Vy9bp/reIlZAFWlw4/eHBvQwfZGUKv2866OtyImg3lV+711K8zFkw2uh
         e7zKzDvLumRUqRR/UplBRS/DDmlcsCpx8MjSMaAxVo5wP7Z5nzWI77i3acR/MQip58cm
         P7BA==
X-Gm-Message-State: APjAAAVxnUFWXPTobO2bN4mGz3Bzi5WV/S8SBsX7zoFOLZELc3yNZ+Vo
	HDEBdUqv8iU/Y7xmueIpN/qBpfwAMWlrHR020/bTBw==
X-Received: by 2002:a19:5789:: with SMTP id l131mr9170343lfb.8.1553411390817;
 Sun, 24 Mar 2019 00:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
 <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903240744510.2526@hadrien> <CANTOzWGk8z4MRF1aJ5z628dB7XpR9axYsWrstKkVtaW5B=k8FA@mail.gmail.com>
 <alpine.DEB.2.21.1903240808100.2526@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903240808100.2526@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 24 Mar 2019 12:39:38 +0530
Message-ID: <CANTOzWGn1S_ocsDKdWYYzFLx=G-VVe+4m65Fr8+G9SKLNzztTA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8712: avoid camelcase
 variable name 'backupTKIPCountermeasure'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000023c90d0584d1c641"

--00000000000023c90d0584d1c641
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 24, 2019, 12:38 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 24 Mar 2019, Payal Kshirsagar wrote:
>
> >
> >
> > On Sun, Mar 24, 2019, 12:15 PM Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sun, 24 Mar 2019, Payal Kshirsagar wrote:
> >
> >       > Eliminate camelcase variable names to fix the style issue =E2=
=80=93
> >       =E2=80=98avoid
> >       > camelcase=E2=80=99.
> >       >
> >       > Signed-off-by: Payal Kshirsagar
> >       <payal.s.kshirsagar.98@gmail.com>
> >       > ---
> >       >  drivers/staging/rtl8712/mlme_linux.c | 6 +++---
> >       >  1 file changed, 3 insertions(+), 3 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8712/mlme_linux.c
> >       b/drivers/staging/rtl8712/mlme_linux.c
> >       > index 2463344..6323061 100644
> >       > --- a/drivers/staging/rtl8712/mlme_linux.c
> >       > +++ b/drivers/staging/rtl8712/mlme_linux.c
> >       > @@ -88,7 +88,7 @@ static struct RT_PMKID_LIST
> >        backup_PMKID_List[NUM_PMKID_CACHE];
> >       >  void r8712_os_indicate_disconnect(struct _adapter *adapter)
> >       >  {
> >       >       u8 backup_PMKID_index =3D 0;
> >       > -     u8 backupTKIPCountermeasure =3D 0x00;
> >       > +     u8 backup_TKIP_count_measure =3D 0x00;
> >       >
> >       >       r8712_indicate_wx_disassoc_event(adapter);
> >       >       netif_carrier_off(adapter->pnetdev);
> >       > @@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct
> >       _adapter *adapter)
> >       >                      &adapter->securitypriv.PMKIDList[0],
> >       >                      sizeof(struct RT_PMKID_LIST) *
> >       NUM_PMKID_CACHE);
> >       >               backup_PMKID_index =3D
> >       adapter->securitypriv.PMKIDIndex;
> >       > -             backupTKIPCountermeasure =3D
> >       > +             backup_TKIP_count_measure =3D
> >
> >       You actually changed the sense of the identifier here.  The
> >       original name
> >       ended with countermeasure, while your name ends with
> >       count_measure, which
> >       suggests something quite different.
> >
> > Okay I will drop this patch .
>
> You could also fix it to use the proper name.
>
Okay. I will change and resend it.
Thanks,
Payal

> julia
>
> > Thanks,
> > Payal
> >
> >       julia
> >
> >       >
> >        adapter->securitypriv.btkip_countermeasure;
> >       >               memset((unsigned char *)&adapter->securitypriv,
> >       0,
> >       >                      sizeof(struct security_priv));
> >       > @@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct
> >       _adapter *adapter)
> >       >                      sizeof(struct RT_PMKID_LIST) *
> >       NUM_PMKID_CACHE);
> >       >               adapter->securitypriv.PMKIDIndex =3D
> >       backup_PMKID_index;
> >       >               adapter->securitypriv.btkip_countermeasure =3D
> >       > -
> >       backupTKIPCountermeasure;
> >       > +
> >       backup_TKIP_count_measure;
> >       >       } else { /*reset values in securitypriv*/
> >       >               struct security_priv *psec_priv =3D
> >       &adapter->securitypriv;
> >       >
> >       > --
> >       > 2.7.4
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/78d3539092434900b454aaa6
> >       76e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98%40gmail.com=
.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from
> >       it, send an email to
> >       outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> >       outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032407
> >       44510.2526%40hadrien.
> >       For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CANTOzWGk8z4MRF1aJ5z628d
> > B7XpR9axYsWrstKkVtaW5B%3Dk8FA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.190324=
0808100.2526%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000023c90d0584d1c641
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 24, 2019, 12:38 PM Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sun, 24 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Mar 24, 2019, 12:15 PM Julia Lawall &lt;<a href=3D"mailto:juli=
a.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia.lawall@lip6.fr=
</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 24 Mar 2019, Payal Kshirsagar wrote:=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Eliminate camelcase variable names to f=
ix the style issue =E2=80=93<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=98avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; camelcase=E2=80=99.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Payal Kshirsagar<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:payal.s.kshirsagar.98@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98@gmail=
.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8712/mlme_linu=
x.c | 6 +++---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 3 insertions(+), =
3 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8712/ml=
me_linux.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtl8712/mlme_linux.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 2463344..6323061 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8712/mlme_linu=
x.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8712/mlme_linu=
x.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -88,7 +88,7 @@ static struct RT_PMKI=
D_LIST=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0backup_PMKID_List[NUM_PMKID_CACHE];<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 void r8712_os_indicate_disconnect=
(struct _adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 backup_PMK=
ID_index =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0u8 backupTKIPCount=
ermeasure =3D 0x00;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0u8 backup_TKIP_cou=
nt_measure =3D 0x00;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_indicat=
e_wx_disassoc_event(adapter);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netif_carrier=
_off(adapter-&gt;pnetdev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -103,7 +103,7 @@ void r8712_os_indic=
ate_disconnect(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0_adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;adapter-&gt;securitypriv.PMKIDL=
ist[0],<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(struct RT_PMKID_LIST) *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NUM_PMKID_CACHE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0backup_PMKID_index =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;securitypriv.PMKIDIndex;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0backupTKIPCountermeasure =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0backup_TKIP_count_measure =3D<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You actually changed the sense of the identi=
fier here.=C2=A0 The<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0original name<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ended with countermeasure, while your name e=
nds with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0count_measure, which<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0suggests something quite different.<br>
&gt;<br>
&gt; Okay I will drop this patch .<br>
<br>
You could also fix it to use the proper name.<br></blockquote></div></div><=
div dir=3D"auto">Okay. I will change and resend it.</div><div dir=3D"auto">=
Thanks,</div><div dir=3D"auto">Payal=C2=A0</div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt; Thanks,<br>
&gt; Payal<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0adapter-&gt;securitypriv.btkip_counter=
measure;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0memset((unsigned char *)&amp;adapter-&gt;securitypriv,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A00,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(struct security_priv));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -117,7 +117,7 @@ void r8712_os_indic=
ate_disconnect(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0_adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(struct RT_PMKID_LIST) *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0NUM_PMKID_CACHE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0adapter-&gt;securitypriv.PMKIDIndex =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0backup_PMKID_index;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0adapter-&gt;securitypriv.btkip_countermeasure =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0backupTKIPCountermeasure;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0backup_TKIP_count_measure;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else { /*re=
set values in securitypriv*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct security_priv *psec_priv =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;adapter-&gt;securitypriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
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
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/78d35=
39092434900b454aaa6" rel=3D"noreferrer noreferrer" target=3D"_blank">groups=
.google.com/d/msgid/outreachy-kernel/78d3539092434900b454aaa6</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A076e29c3be320fd31.1553403095.git.payal.s.kshi=
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
ribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@googlegroups=
.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visithttp=
s://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB=
.2.21.19032407" rel=3D"noreferrer noreferrer" target=3D"_blank">groups.goog=
le.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032407</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A044510.2526%40hadrien.<br>
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
.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CANTOzWGk8z4MRF1aJ5z628d" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CANTOzWGk8z4MRF1aJ5z628d</a><br>
&gt; B7XpR9axYsWrstKkVtaW5B%3Dk8FA%<a href=3D"http://40mail.gmail.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
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
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903240808100.2526%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903240808100.2526%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000023c90d0584d1c641--

