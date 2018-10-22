X-GM-THRID: 6615126444577128448
X-Received: by 2002:a37:4f82:: with SMTP id d124-v6mr36532637qkb.57.1540218685685;
        Mon, 22 Oct 2018 07:31:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:bc45:: with SMTP id m66-v6ls323738qkf.5.gmail; Mon, 22
 Oct 2018 07:31:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV622h6srTFwg2MQco/WhpttUogdaL4KesNVJ202gU2XtmLxmIAy/0A/nWZyfETxoEi1NkWkn
X-Received: by 2002:ae9:e8c2:: with SMTP id a185-v6mr35187682qkg.22.1540218684806;
        Mon, 22 Oct 2018 07:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540218684; cv=none;
        d=google.com; s=arc-20160816;
        b=I/wIAlntRLqE1YswQPSgnNr+iasZb7EqJ2rtzWhMJ4OdoU/KVhB0PudoyAUlJSnOX4
         jhWAMlRmjSAt/J6tcE6frZPxfjV60RwiYHySyCaWp03fv5kwVJ4Eg9wK8URcvIBJgzpP
         7Twve4IrwmKOTM44eW9KMblZ4hlUoIbmJwzUOEJZrYocwv49E2TXyOr93QPG/Q6H1BC8
         mN2sRCrhia7/bIuRK4/nnjWffU3uyn9SPJUPtlL+zNWLS22SR82ySzmdnXvmJSQWROnI
         Z/RZvhK1ll9IgmBnp67rt6jcRAQCm67yF2bdiB/FdjtuI16yxE0ojHYe/hWqJI6r91KN
         MwpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J9F044ydYVxNPnruWZIqCIdAuxIyF76xi4qaXBNfPfE=;
        b=UcUvDLvBsSqCGwCyw+S+1IErH5DPkNpZOluiV6pEmSargmzkAo+oMYWUWxzJfkbJXM
         LtlEnMwMTrB6+tcrp3XI4tHmWhrinbDm70YL14mO5HCkVDPB5zvT6GW5+GHJGceQ1ntq
         2BpyppjKZuoyoDJ9PCtY+KLuHkUZbo2r/HqeYTvjPFKuQizB/b3DW5C2JjBB0BTkdFj5
         I8zLVanfsTrv7bRMM+ce6pwfW87zCHUVgSgkj+HsaTDwPlIOCrYnjQ54Kf+96NjcZvZH
         oqSPwx3LpPVT4qq8aeRCV/JpyeMyiz5Yjj8uAbyxfLgFXZMs9bDjHgb2yAnkQBaTY0fE
         5Qvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cIQFQAnK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u203-v6si1264529qka.2.2018.10.22.07.31.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 07:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cIQFQAnK;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id w81-v6so32378590oiw.9
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 07:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J9F044ydYVxNPnruWZIqCIdAuxIyF76xi4qaXBNfPfE=;
        b=cIQFQAnKkWiQzFmrJoXodFNQ555jhgQpo8UYVdNm4To8DZuQioz+O+TWcS1Ed9LUtV
         G1y8+1PwnuEk3BhVfW6QB9kZyGBObmjxw4KB1lZ4zt9nX9H9GqLqQP8xuFs9Ex/PifpK
         b1yglFGSzlNwtpaPWpOuiOSROyl30/ybF47/QWtQRO+lCVkG/Nj+Rs0ONN1cVIML8/Fs
         kuDasaCuXXZedAS1IqOpw1xPNbUcoi8jKQkBi7YT6luXOjKaKrvIsZ7Ep54nXVuqddPD
         B1U6d3FClnB4ocP/YVwdMLhta48NOhEVgrFGyXHyYo5KbpdrbZM/ud6TXE19fx73p12K
         owNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J9F044ydYVxNPnruWZIqCIdAuxIyF76xi4qaXBNfPfE=;
        b=D4LfSCbZvvodB/N/kGozthZoYgMK8rriysWonaFiC3iMwWcwSVWILyDfsP+9W0zYGX
         U/MTpAkBrBbEphsF5kqEJJOk6rlNSTlMaxfqvkyvLZb1QS0vM1BymfQZNqyX8VvkYfob
         3nqwZovwP/WxBTW4qR9UiJ7LA9Hz2sWLzLEZzMqr7YpKIqbKK31OiWo2I+THgd9deYPH
         vWhMfhcT7zsTDCJg9uHC5KGcJXgwNZOmITG7ohxxKafrx/n+i5T26KJKhXKgAxqPKa44
         c8hXQhKBFt8BxjuKOPExnHsIo91aYAYqo0jc3i4LNn8NthkqYcnGnx+K/UZZk3oZumqv
         deog==
X-Gm-Message-State: ABuFfojzgfyeRkUI11MlmO7QN3n7iFd9Smr3ksifsSblZEf7Ypgnls3V
	HWxj2P6n8wJpKfv8nyRzm6Cn1yq9lkWclkaZlcg=
X-Received: by 2002:aca:3554:: with SMTP id c81-v6mr22953244oia.308.1540218684102;
 Mon, 22 Oct 2018 07:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20181022102752.GA12423@aakashd-VirtualBox> <CAK-LDbJLJNi4hxqFPE-8uuMfrpFOusXxPnMCz8q7yn17x8vACA@mail.gmail.com>
In-Reply-To: <CAK-LDbJLJNi4hxqFPE-8uuMfrpFOusXxPnMCz8q7yn17x8vACA@mail.gmail.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Mon, 22 Oct 2018 20:01:12 +0530
Message-ID: <CAB0Mk-NsLvS5fn8Hi58G1Y4ykVRquWqp1ybU=Yw6A1fvtSLZYg@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH] staging: rtlwifi: Unneeded function halbtc_get_wifi_rssi()
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000008added0578d21bfe"

--0000000000008added0578d21bfe
Content-Type: text/plain; charset="UTF-8"

Ok, will do that.  As I was asked to be imperative I did not elaborate the
commit log. Will change it and send.

Bhanusree



On Mon, 22 Oct 2018 19:32 Vaishali Thakkar, <vthakkar@vaishalithakkar.in>
wrote:

> On Mon, Oct 22, 2018 at 3:59 PM Bhanusree Pola
> <bhanusreemahesh@gmail.com> wrote:
> >
> > In the function halbtc_get_wifi_rssi:
> >
> > if and else are functionally identical.
> > Unneeded return variable undec_sm_pwdb.
> > Function not needed and so assigned value rtlpriv->dm.undec_sm_pwdb where
> > the function halbtc_get_wifi_rssi() is called.
>
> Hi Bhanusree,
>
> The subject line is not clear here. It should be something like
> 'Remove unneeded function ... '. Always write what patch is
> doing rather than just mentioning keywords.
>
> Similarly for the commit log, I feel that it can improved a bit with
> have proper sentences and structure. Probably something like:
>
> 'In function x, <insert_reason_one> and <insert_reason_two>.
> So, function is not needed. And then <insert_what_patch_is_doing>.
>
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13 +------------
> >  1 file changed, 1 insertion(+), 12 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> > index 24e19ff..b519d18 100644
> > --- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> > +++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
> > @@ -476,17 +476,6 @@ static u32 halbtc_get_wifi_link_status(struct
> btc_coexist *btcoexist)
> >         return ret_val;
> >  }
> >
> > -static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)
> > -{
> > -       int undec_sm_pwdb = 0;
> > -
> > -       if (rtlpriv->mac80211.link_state >= MAC80211_LINKED)
> > -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
> > -       else /* associated entry pwdb */
> > -               undec_sm_pwdb = rtlpriv->dm.undec_sm_pwdb;
> > -       return undec_sm_pwdb;
> > -}
> > -
> >  static bool halbtc_get(void *void_btcoexist, u8 get_type, void *out_buf)
> >  {
> >         struct btc_coexist *btcoexist = (struct btc_coexist
> *)void_btcoexist;
> > @@ -585,7 +574,7 @@ static bool halbtc_get(void *void_btcoexist, u8
> get_type, void *out_buf)
> >                 *bool_tmp = false;
> >                 break;
> >         case BTC_GET_S4_WIFI_RSSI:
> > -               *s32_tmp = halbtc_get_wifi_rssi(rtlpriv);
> > +               *s32_tmp = rtlpriv->dm.undec_sm_pwdb;
> >                 break;
> >         case BTC_GET_S4_HS_RSSI:
> >                 *s32_tmp = 0;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181022102752.GA12423%40aakashd-VirtualBox
> .
> > For more options, visit https://groups.google.com/d/optout.
>

--0000000000008added0578d21bfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, will do that.=C2=A0 As I was asked to be imperative I=
 did not elaborate the commit log. Will change it and send.=C2=A0<div dir=
=3D"auto"><br></div><div dir=3D"auto">Bhanusree</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">On Mon, 22 Oct 2018 19:32 Vaishali Thakkar, &lt;<a href=3D"mai=
lto:vthakkar@vaishalithakkar.in">vthakkar@vaishalithakkar.in</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On Mon, Oct 22, 2018 at 3:59 PM Bh=
anusree Pola<br>
&lt;<a href=3D"mailto:bhanusreemahesh@gmail.com" target=3D"_blank" rel=3D"n=
oreferrer">bhanusreemahesh@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; In the function halbtc_get_wifi_rssi:<br>
&gt;<br>
&gt; if and else are functionally identical.<br>
&gt; Unneeded return variable undec_sm_pwdb.<br>
&gt; Function not needed and so assigned value rtlpriv-&gt;dm.undec_sm_pwdb=
 where<br>
&gt; the function halbtc_get_wifi_rssi() is called.<br>
<br>
Hi Bhanusree,<br>
<br>
The subject line is not clear here. It should be something like<br>
&#39;Remove unneeded function ... &#39;. Always write what patch is<br>
doing rather than just mentioning keywords.<br>
<br>
Similarly for the commit log, I feel that it can improved a bit with<br>
have proper sentences and structure. Probably something like:<br>
<br>
&#39;In function x, &lt;insert_reason_one&gt; and &lt;insert_reason_two&gt;=
.<br>
So, function is not needed. And then &lt;insert_what_patch_is_doing&gt;.<br=
>
<br>
&gt; Signed-off-by: Bhanusree Pola &lt;<a href=3D"mailto:bhanusreemahesh@gm=
ail.com" target=3D"_blank" rel=3D"noreferrer">bhanusreemahesh@gmail.com</a>=
&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c | 13 +---------=
---<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 12 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c b/driver=
s/staging/rtlwifi/btcoexist/halbtcoutsrc.c<br>
&gt; index 24e19ff..b519d18 100644<br>
&gt; --- a/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c<br>
&gt; +++ b/drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c<br>
&gt; @@ -476,17 +476,6 @@ static u32 halbtc_get_wifi_link_status(struct btc=
_coexist *btcoexist)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret_val;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -static s32 halbtc_get_wifi_rssi(struct rtl_priv *rtlpriv)<br>
&gt; -{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0int undec_sm_pwdb =3D 0;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rtlpriv-&gt;mac80211.link_state &gt;=
=3D MAC80211_LINKED)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0undec_sm_pwdb =
=3D rtlpriv-&gt;dm.undec_sm_pwdb;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0else /* associated entry pwdb */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0undec_sm_pwdb =
=3D rtlpriv-&gt;dm.undec_sm_pwdb;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return undec_sm_pwdb;<br>
&gt; -}<br>
&gt; -<br>
&gt;=C2=A0 static bool halbtc_get(void *void_btcoexist, u8 get_type, void *=
out_buf)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct btc_coexist *btcoexist =3D (st=
ruct btc_coexist *)void_btcoexist;<br>
&gt; @@ -585,7 +574,7 @@ static bool halbtc_get(void *void_btcoexist, u8 ge=
t_type, void *out_buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*bool_tmp=
 =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case BTC_GET_S4_WIFI_RSSI:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*s32_tmp =3D h=
albtc_get_wifi_rssi(rtlpriv);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*s32_tmp =3D r=
tlpriv-&gt;dm.undec_sm_pwdb;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case BTC_GET_S4_HS_RSSI:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*s32_tmp =
=3D 0;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181022102752.GA12423%40aakashd-VirtualBo=
x" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.co=
m/d/msgid/outreachy-kernel/20181022102752.GA12423%40aakashd-VirtualBox</a>.=
<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
</blockquote></div>

--0000000000008added0578d21bfe--

