X-GM-THRID: 6675276130832875520
X-Received: by 2002:adf:f152:: with SMTP id y18mr2410279wro.21.1554211598055;
        Tue, 02 Apr 2019 06:26:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e14:: with SMTP id g20ls19892wmh.1.gmail; Tue, 02 Apr
 2019 06:26:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy344Z6mZdeu1ThOm+E7Kij03qcVoemxdDYf4rbgYhcA+wo5hM/+pjscAiy0WXI+Vq+FpCg
X-Received: by 2002:a1c:b782:: with SMTP id h124mr827462wmf.8.1554211597107;
        Tue, 02 Apr 2019 06:26:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554211597; cv=none;
        d=google.com; s=arc-20160816;
        b=rTCFq3g/0yexmG9aCDH3mAPErngr/eA/GTUXQ5chjn49rgFe8XkKcQ60y2x8Q2J+VE
         vbe/CxpB2q3KBKcrmpftlM2oNorDuxlnACk47NFD+Pw+fp6bsIIggM22Ehsc5vqoVftI
         jwl/N9uIkQnpwmM+suY7ES2u7h4QWi5iz9XWZoF1kdMS8ZMxRTfw/ea3dcMpV8as4xKR
         wYxGVgJHt3fnERfP978KeuPh8YBEAqY6tEco/TbBLjLvi+4eCZZTVel58Umtr/oFws7c
         vgn4jnP5NcjhU7gpkuT3as0z/LuD6x1FrkRMj0h1+7TQQpRKhwvyPRPefN44kCqn0XtW
         ji7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3murrpxfQN/AZT3GA6tduCrTQDHO7ZnI3LnGf8Uqcqk=;
        b=tkqTQh4GQO6N6VrUSt7L6prQx+oQrzj5f/+sU6vgwYXaXLJ8I7tpmEGlb65IV3jmCe
         SOe5l3QASbeUPpqDyAkVoXUsmTGkD4sKYkQjWUv40ZsW5cWB1frx+yyjSXFj+0egf1Ox
         TF41qliV5ethQ89Iv773p3gjUvcSyjNR9Rg1szGV1/y7XqsRkzNlj/QyMMo2O7C057ck
         teGgEeNvVJy5m5hIPG6z4mDw/uWGnDK2EjH7qMa1DXHCfxZlpFjTfmG7FOXntKd0ZBtx
         pJvgWnYgIDC8d86jSIF87OlaJPaRpSFhwYF6rnFzUnFZzJXedwUkRcJK4tS6wWTGNurJ
         khGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FkGo7B4g;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id v1si445561wrd.4.2019.04.02.06.26.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:26:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FkGo7B4g;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12e.google.com with SMTP id u21so9010031lfu.2
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3murrpxfQN/AZT3GA6tduCrTQDHO7ZnI3LnGf8Uqcqk=;
        b=FkGo7B4gbN/qztZUNHW/3Fwsmh24iyugjSpKYfjyz6j7s2e2F3IpXGOY0lrZzNqkHc
         HygVR9NfgqO1qJ+hjQNOiu9giKu3v/pznEO85LcumzMpjVFCPmauHrWs9MlNyEzKLCe3
         p1qk0p5xb1k6+AOk620rE6QnCYBsR6u8XTjMVb40vEikpFvicHw51qifvp9HXwhWPHK/
         nYxy5Z4P2rwX+jLI1Q6oGvFgbEJ+KaZNRqgBicmjSJWj5V5SvvCH4jMnRFmzKWqc8nN0
         sDz6Ofi2/tz/BiaG+XaZUbN6QpTtiSv5d8bHnJsNOI+8T5rPGr016UxHUtJYgHBpVD2s
         VppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3murrpxfQN/AZT3GA6tduCrTQDHO7ZnI3LnGf8Uqcqk=;
        b=iGKT0t9jxIx+0MDgG3BAlQV1Xl1yy9NQ6CKpaPci70dzcr9Fkg0eTwg+hL6T8o/s73
         T6MqriS6frHuRqLu1wz0z2ox9QpGa/fpJrSEadJ6W+kfb4fVJX8n1JK4xliubzRtq0Fg
         34EYp8LqFA0dhlQSKYG/ijaMFcZcohIHyUn38mI4LjiOm1rI08a4jKpl9xSEPLcdAjGn
         Jbx5m4+Gf0ZyAmSoiiDRZSKrtFsCnqA5juAJ/wpcc0GKTPTE4l+g6OnYiYqxiSZZ6oF8
         TqMwdw6YZuDcQT7pm8VCi0ARVVkAiNO0kLSe3dCbWGrQwYaLlQJLky51dVTrJKXrwMP0
         JKmw==
X-Gm-Message-State: APjAAAX6PhNSQpQRgtEQhfZCfjkKfgUN74dtSTFVcFI5dNwF/rsPFtk0
	O8PzHcYMWkuDk/a/m4ED2tDqnVlFgNSIBFR7ljXiJQ==
X-Received: by 2002:ac2:491a:: with SMTP id n26mr21142299lfi.122.1554211596917;
 Tue, 02 Apr 2019 06:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
 <629f050185c487686882839655603a6804e03ce9.1554208601.git.payal.s.kshirsagar.98@gmail.com>
 <20190402130906.GB32338@kroah.com>
In-Reply-To: <20190402130906.GB32338@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Tue, 2 Apr 2019 18:56:24 +0530
Message-ID: <CANTOzWG1tbRhNutksa0iiKsRgERDt7Mum34LjROGUeQK8FSd9Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtlwifi: base.c: Replace
 bit shifting with BIT macro
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000023df8105858c1678"

--00000000000023df8105858c1678
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019 at 18:39, Greg KH <greg@kroah.com> wrote:

> On Tue, Apr 02, 2019 at 06:10:23PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle.
> > Prefer using BIT and replace bit shifting with the BIT(x) macro.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/base.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtlwifi/base.c
> b/drivers/staging/rtlwifi/base.c
> > index 35df2cf..e9830b1 100644
> > --- a/drivers/staging/rtlwifi/base.c
> > +++ b/drivers/staging/rtlwifi/base.c
> > @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct
> ieee80211_hw *hw,
> >                                                 IEEE80211_STYPE_ACTION);
> >       action_frame->u.action.category = WLAN_CATEGORY_BACK;
> >       action_frame->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
> > -     params = (u16)(1 << 11);        /* bit 11 initiator */
> > +     params = (u16)BIT(11);  /* bit 11 initiator */
>
> Why are you still casting here?
>

Yes, there is a no need to cast.
I will correct it and send v2 for this patchset.
thanks,
payal


> thanks,
>
> greg k-h
>

--00000000000023df8105858c1678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Apr 2019 at 18:39, Greg KH =
&lt;<a href=3D"mailto:greg@kroah.com">greg@kroah.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Apr 02, 2019 at=
 06:10:23PM +0530, Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Prefer using BIT and replace bit shifting with the BIT(x) macro.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/base.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/=
base.c<br>
&gt; index 35df2cf..e9830b1 100644<br>
&gt; --- a/drivers/staging/rtlwifi/base.c<br>
&gt; +++ b/drivers/staging/rtlwifi/base.c<br>
&gt; @@ -2446,7 +2446,7 @@ struct sk_buff *rtl_make_del_ba(struct ieee80211=
_hw *hw,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IEEE80211_STYPE_ACTION);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0action_frame-&gt;u.action.category =3D WLAN_=
CATEGORY_BACK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0action_frame-&gt;u.action.u.delba.action_cod=
e =3D WLAN_ACTION_DELBA;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0params =3D (u16)(1 &lt;&lt; 11);=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /* bit 11 initiator */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0params =3D (u16)BIT(11);=C2=A0 /* bit 11 initiato=
r */<br>
<br>
Why are you still casting here?<br></blockquote><div><br></div><div>Yes, th=
ere is a no need to cast.</div><div>I will correct it and send v2 for this =
patchset.</div><div>thanks,</div><div>payal<br></div><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div>

--00000000000023df8105858c1678--

