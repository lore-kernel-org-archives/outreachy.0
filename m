X-GM-THRID: 6801912764487958528
X-Received: by 2002:a1c:a307:: with SMTP id m7mr20806883wme.144.1583754837656;
        Mon, 09 Mar 2020 04:53:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls4573777wrc.1.gmail; Mon, 09 Mar
 2020 04:53:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsOjMMxG9nu97CzHx1/FSNPHG1fQQC7lW2c2M8P+p+L5t8tpZqFYiJ4QH1g90YntwuqJuJf
X-Received: by 2002:adf:f00d:: with SMTP id j13mr21687727wro.207.1583754836384;
        Mon, 09 Mar 2020 04:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583754836; cv=none;
        d=google.com; s=arc-20160816;
        b=uh2cWTL1N5sxHtNnBdOO06iFFoWBwStse3YFtPz4mhH1KOQ+h0WtKeCpoFvhdincGv
         sc7ypsPwIOtmrmuFFc+8l44ajDzzzg7ftssDE1/VdGPUjGMk36+SsuT5gEP7gacTh2Yk
         n0lSi/DTxVAiyORnwCFkileqAWAr7LRcVnTNR46iRseU8OSvHmO8FQzpDLHkxG4jyDrW
         9p1jz1Ez0iQZ1EnuruHm8R6mq5fKJeGB0esrRPzgMfb/YgRyNW57XrE71IOhXs2+E12r
         0Kj3tx8KxENX/byRoYfF3x06vHcgMOH7eL5lPePNTTLq+lcsaOdffmQQ9wDhK7xzny7N
         wGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BX78PP+gvK3VfixeSSLeFyQSA1FkK2h9ljH0HtKTQEo=;
        b=ukRKy2RqXoIwgFpgkW6u14AKpB1tJlGqFchBWaepGJ1vtHOiLJgrn/1WCI+7h4AvMv
         /yl+U8mupUQGhtdI8zznE8KBFxdfpLRE7bVn6hFb2f1pafIy1G4sUa1VVl/dwbjymI0Z
         q7925EJ9KcJofiHLquH14kw+nRYyAyG83tPcqTsNt5zfXExu6+VFLZdLsD4Lr49jSs4h
         MzaTz+AY75am996QuEOrldKpPLJxjHUsPlsLBrNAe1gtga4tyCu5e2eEtlg78/O6m9i8
         DyS/9Rryw9td3MydK2Vdfo2NLW4N50YFDjRb9FXo1sNXPtAHcYMWa9gn3Lv9631D4dWL
         oq0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RK3WzPDP;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m2si882825wmi.3.2020.03.09.04.53.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 04:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RK3WzPDP;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id t11so10707781wrw.5
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 04:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BX78PP+gvK3VfixeSSLeFyQSA1FkK2h9ljH0HtKTQEo=;
        b=RK3WzPDPjpMUg7HE74WWxnjZ8gydYWtqa8XBDfSl6dzpoCB024nfxniwDjfvHs1q+T
         KUYXFMvzu5cFh2kTv+2mgrT0DmSko6eXzjaVNfNZkw4e5UidOfjP66sqPj+l2GIBkEHW
         +bK9Z/Nexaju+pv3mDGdr3R+BEYxk8DbhZCOdGKtflOeWfDVuV8keMIPh0KiEOwLp8HJ
         +Qt8D0qH0A+hgy+Fab/vk72N8QGVbeoc6KReB9ORx86GlPhq42OhykfpqYJXNVPHMbZI
         4Du6B/xvlk+Mrqq0vQypZaNat7uturRZwKI0ICCEeNBY2SZh1uMjKC8z7SEoAEFhnpsD
         OH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BX78PP+gvK3VfixeSSLeFyQSA1FkK2h9ljH0HtKTQEo=;
        b=mmQ6X8Q3a6LPjjooTaxJUxICPUcPJPFeGwcewvXE7EBqKESuP4wYyfOfNoLGo7cKuZ
         elHVC49kUqxAoTpVRtHqTq2wQ8Dcs9M2ZBZjl9LLg1Q46nVHEJWgYIQpRVBLMCyliTBg
         ohIMDSDIEwhLI8rLVmTO3+sC9KihkdoXETJDMXse9YIDEhPs4UkjnXeCZD/djkfhVIZX
         J0E7HjzaQ9m8Va0eGRUN+blLwVsCwT4ZAnTpo0OIqCZZVwN1ensRoa6ZSmHiLCWklf6Q
         o4Lk3Cdix/47xg24Nx2oqu46gCylIXgR9//5ZFk2UsUp+6uCU4aus6pVynGpXJSslQiZ
         sl3A==
X-Gm-Message-State: ANhLgQ0kdEl+lb447kCW391Y4KnGW9tFk6+nnOML6xcAnBCLXAqLqngt
	bsZx5vaZ429y7mkcPq3XHDvGxeOx52lftQuOe78=
X-Received: by 2002:a05:6000:ca:: with SMTP id q10mr20360043wrx.78.1583754835877;
 Mon, 09 Mar 2020 04:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200308185518.5838-1-payalskshirsagar1234@gmail.com> <20200309124106.703d5e1a@elisabeth>
In-Reply-To: <20200309124106.703d5e1a@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Mon, 9 Mar 2020 17:23:42 +0530
Message-ID: <CAJyzNhmr11fNVVdKTUQeTGJE+a81mr4kJN_exk=Hn3Z2tVGDBg@mail.gmail.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: alignment should match
 open parenthesis
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000067647205a06aa822"

--00000000000067647205a06aa822
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 9, 2020, 5:11 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Mon,  9 Mar 2020 00:25:18 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > Align code to open parenthesis.
> >
> > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > ---
> >  drivers/staging/wfx/data_tx.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/wfx/data_tx.c
> b/drivers/staging/wfx/data_tx.c
> > index 8b0c52392319..0038dc7666cf 100644
> > --- a/drivers/staging/wfx/data_tx.c
> > +++ b/drivers/staging/wfx/data_tx.c
> > @@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif,
> struct ieee80211_hdr *hdr,
> >  }
> >
> >  static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
> > -                                   struct ieee80211_sta *sta,
> > -                                   struct ieee80211_hdr *hdr)
> > +                              struct ieee80211_sta *sta,
> > +                              struct ieee80211_hdr *hdr)
> >  {
> >       struct wfx_sta_priv *sta_priv =
> >               sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
> > @@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct
> ieee80211_tx_rate *rates)
> >  }
> >
> >  static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
> > -                               struct ieee80211_tx_info *tx_info)
> > +                          struct ieee80211_tx_info *tx_info)
> >  {
> >       bool tx_policy_renew = false;
> >       u8 rate_id;
>
> Change looks good, more Cc:'s needed.
>

Is is needed to resend all these patches to send them to the other
maintainers?

Payal


-- 
> Stefano
>
>

--00000000000067647205a06aa822
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Mar 9, 2020, 5:11 PM Stefano Brivio &lt;<a href=3D"mailto:sbrivio@r=
edhat.com">sbrivio@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">On Mon,=C2=A0 9 Mar 2020 00:25:18 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@gmail.com</a>&gt; wro=
te:<br>
<br>
&gt; Align code to open parenthesis.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar=
1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshirsagar1234@g=
mail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wfx/data_tx.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_=
tx.c<br>
&gt; index 8b0c52392319..0038dc7666cf 100644<br>
&gt; --- a/drivers/staging/wfx/data_tx.c<br>
&gt; +++ b/drivers/staging/wfx/data_tx.c<br>
&gt; @@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif,=
 struct ieee80211_hdr *hdr,<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_st=
a *sta,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_hd=
r *hdr)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ieee80211_sta *sta,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ieee80211_hdr *hdr)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct wfx_sta_priv *sta_priv =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sta ? (struct wf=
x_sta_priv *) &amp;sta-&gt;drv_priv : NULL;<br>
&gt; @@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx=
_rate *rates)<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_tx_info *tx_info=
)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 struct ieee80211_tx_info *tx_info)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool tx_policy_renew =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 rate_id;<br>
<br>
Change looks good, more Cc:&#39;s needed.<br></blockquote></div></div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Is is needed to resend all these p=
atches to send them to the other maintainers?</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Payal</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
-- <br>
Stefano<br>
<br>
</blockquote></div></div></div>

--00000000000067647205a06aa822--

