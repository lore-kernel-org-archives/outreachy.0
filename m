X-GM-THRID: 6668944264527872000
X-Received: by 2002:a1f:403:: with SMTP id 3mr5275654vke.25.1552739357936;
        Sat, 16 Mar 2019 05:29:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f7d8:: with SMTP id a24ls2518840vsp.6.gmail; Sat, 16 Mar
 2019 05:29:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzid6l1uepCskYt4FJt/wwvVKfi2mH6vZsePms1EXRCb0scgeX7sj19gMzhpG2u0e0AJ1U8
X-Received: by 2002:a67:fac9:: with SMTP id g9mr5190183vsq.22.1552739357206;
        Sat, 16 Mar 2019 05:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739357; cv=none;
        d=google.com; s=arc-20160816;
        b=m2wVjJL6rJ4/cArbI1m0RxXgloeL//m0kQB93sA0nrQ0SxJ3Vu6rO5ksJdkrQCJdNN
         0dLaNnWMpOzCSt19D2ndfyM/6WhMxlh++gM0Kq9tm6pQ30A7It554q1a5hOojf0D1Q77
         viHcwUUeiCtsJsX1zxcnpC8n2NVK9C33GpaxvmM4ejTiuOjXe4yEmi5hB9PIy7fzn2C2
         ASKwd5+3JPk4MNOjCzvDPBEocWKZj2+8Aadx47Z6XsIwn4bGGDpGvNiS5nomcMiNfCtp
         qQWx3Os5SlE+6fSw4NKDtMUNYvTcoHp+AMXcr89pKbLdVVTwSfTzJySZRLGlFC89XgFD
         Mh9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3WPCBMCPgdiIpRWX3GW8FCJbv3Oko+Pnp8ps7tBTpIQ=;
        b=eemYq71XsfftyGz21sJDG4dmN330/KILvGxotKz7yQS1LSiR0CkOLphgmd4X110rJv
         BrzxJl3jJ/c/MwQtwN6BxoFqAvcgF2XJtE8EXSKGU9UAonDpTzx3dwT0CSsTdPmQOQ04
         ephlbA3S0Gx86oYntCZc7GGJqzlyTGbtYKEmRLu5KI+S+K3GWIvbCYh1ADCJtZXKjVE9
         o6GvUM6DxnB3XEXclE1smbscLhtiJXbUKQTQJl2vg/zJGIl9Jx/JzuvPCT4832QJPQNK
         wu2Ab9yWlcJ3lc1yuHipJhqtP0y8DeNDFiP6wtqh4DeyDQkDS40y5hVmANP0opUjdXql
         N54Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J3uw8XuQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id k19si346141vsm.0.2019.03.16.05.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J3uw8XuQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id t206so9532283oib.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 05:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3WPCBMCPgdiIpRWX3GW8FCJbv3Oko+Pnp8ps7tBTpIQ=;
        b=J3uw8XuQzljG5ZFXo6evYcAEqCcaD4p+aX9b/tKGo37s4V5Ywxa7RN2wFKcX9GeAru
         D7epzwbRjdWtLIzm8wTkxyAD4GbtZRSWpIKSk/ZbmPGNj38N/YPk6Ye6Ztv10lNBfw2P
         R6Kw+VLxkikKBmJyi+xmd6CNloZSa0eH7ScJ76w0bzUfJkwJmzAykRffCHPSYGBX/7XG
         JAgWdHyeklvay+DlCaLS+HmCH4qdRLMOUp7NmMrwMSlRI9NUKFZpC+AlkY+tuibgEM23
         1y3JWqPpEPzOPytFdmUtOr3d5HeLOfONezLt7S9BUtY1FY9e7M0nhe2brMjaPLURSuEl
         Ol5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3WPCBMCPgdiIpRWX3GW8FCJbv3Oko+Pnp8ps7tBTpIQ=;
        b=FCKA/07JJG4cxNVcJr5bTYaEiaQKD3RJdezcxDiKZ/fDxPKcyeez2lmutpNRuL5J4w
         5ADgIpr6GOU9enITrX4BQJGT0n/v1+c+bkNfkwwrIZIQW09GT/aY0NJoH1euP9+z/Zb6
         X8rRgIJar3vg1tEx9O+EhH1ElZa968BbGrp6TBKZMC1plLTAHXWNQP/J/6ls73EgsJZa
         k7l8tmykJ9Yih0Fqx7rrB3FJL+42ru7pQTEzKFuGe3nPyrkYz84z5BNSeXdY3nPLznpZ
         W94cvqtoD/mz5QDvPt3rqaA4GW3L2fDIzxOv3vo1pOSHNNt0eZsetHOenTuN91ZjWW5W
         Kzhg==
X-Gm-Message-State: APjAAAUXxyY+SAGKgqBXH8ViUjQ/wbFiywQuHSCeWf5KnD5I5FBJJQgq
	y/Ml5eg1OUeOYitY1yIrC2lK5dtkXzng6oYEGqI=
X-Received: by 2002:aca:62c1:: with SMTP id w184mr4493441oib.127.1552739356443;
 Sat, 16 Mar 2019 05:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190316102759.20272-1-himadri18.07@gmail.com>
 <20190316102759.20272-4-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161317440.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161317440.2487@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 16 Mar 2019 17:59:04 +0530
Message-ID: <CAPnhUpYy8H7h-0UqK6fu+Kjd9mSMCkXJ87W7kJJYqhX4AZSrZg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: hal: Remove
 comparision to NULL
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c507ab0584354d8e"

--000000000000c507ab0584354d8e
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Mar, 2019, 5:48 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
> > Remove comparision to NULL. Suggested by Coccinelle.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----
> >  drivers/staging/rtl8723bs/hal/hal_com.c    | 8 ++++----
> >  2 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> > index 2b43f6d3c762..8eb28f97ebcc 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> > @@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;
> >
> >  static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
> >  {
> > -     if (NULL == pinfo)
> > +     if (!pinfo)
> >               return;
> >
> >       memset(pinfo, 0, sizeof(BTCDBGINFO));
> > @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
> >
> >       pinfo = &GLBtcDbgInfo;
> >
> > -     if (NULL == pinfo->info)
> > +     if (!pinfo->info)
> >               return;
> >
> >       msglen = strlen(dbgmsg);
> > @@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter,
> u32 *pDbgModule)
> >       u32 i;
> >
> >
> > -     if (NULL == pDbgModule)
> > +     if (!pDbgModule)
> >               return;
> >
> >       for (i = 0; i < BTC_MSG_MAX; i++)
> > @@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, u8
> *pStrBuf, u32 bufSize)
> >       u32 leftSize;
> >
> >
> > -     if ((NULL == pStrBuf) || (0 == bufSize))
> > +     if (!pStrBuf || (0 == bufSize))
>
> It's another issue, so not for this patch, but the kernel prefers
> constants on the right.
>
> julia
>

I couldn't understand. Should I resend this patch as well? Or it should not
be part of this patchset?

Constants on the right means "pStrBuf == NULL" instead of "NULL ==
pStrBuf", right? In that case, if I'm removing the comparison itself, I
guess it is okay. Please correct me if I'm mistaken.

Thank you.

- Himadri


> >               return 0;
> >
> >       pstr = pStrBuf;
> > diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c
> b/drivers/staging/rtl8723bs/hal/hal_com.c
> > index 7f8ec55b08f1..b97b53c34449 100644
> > --- a/drivers/staging/rtl8723bs/hal/hal_com.c
> > +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
> > @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
> >       if (is_primary_adapter(padapter)) {     /* if
> (padapter->isprimary) */
> >               padapter->hal_data_sz = sizeof(struct hal_com_data);
> >               padapter->HalData = vzalloc(padapter->hal_data_sz);
> > -             if (padapter->HalData == NULL) {
> > +             if (!padapter->HalData) {
> >                       DBG_8192C("cannot alloc memory for HAL DATA\n");
> >                       return _FAIL;
> >               }
> > @@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8
> *buf)
> >       int i;
> >       u8 trigger;
> >
> > -     if (buf == NULL)
> > +     if (!buf)
> >               goto exit;
> >
> >       trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
> > @@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter
> *padapter, struct sta_info *pst
> >       u8 i, rf_type, limit;
> >       u32 tx_ra_bitmap;
> >
> > -     if (psta == NULL)
> > +     if (!psta)
> >               return;
> >
> >       tx_ra_bitmap = 0;
> > @@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32
> *pu4bVal, u32 *pu4bMove)
> >       char *szScan = szStr;
> >
> >       /*  Check input parameter. */
> > -     if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
> > +     if (!szStr || !pu4bVal || !pu4bMove) {
> >               DBG_871X("GetHexValueFromString(): Invalid input
> arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
> >                        szStr, pu4bVal, pu4bMove);
> >               return false;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161317440.2487%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000c507ab0584354d8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 16 Mar, 2019, 5:48 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sat, 16 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Remove comparision to NULL. Suggested by Coccinelle.<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal_com.c=C2=A0 =C2=A0 | 8 ++++---=
-<br>
&gt;=C2=A0 2 files changed, 8 insertions(+), 8 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/stag=
ing/rtl8723bs/hal/hal_btcoex.c<br>
&gt; index 2b43f6d3c762..8eb28f97ebcc 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c<br>
&gt; @@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;<br>
&gt;<br>
&gt;=C2=A0 static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 si=
ze)<br>
&gt;=C2=A0 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pinfo)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pinfo)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(pinfo, 0, sizeof(BTCDBGINFO));<br>
&gt; @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo =3D &amp;GLBtcDbgInfo;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pinfo-&gt;info)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pinfo-&gt;info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0msglen =3D strlen(dbgmsg);<br>
&gt; @@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter *padapter,=
 u32 *pDbgModule)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 i;<br>
&gt;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pDbgModule)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pDbgModule)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; BTC_MSG_MAX; i++)<br>
&gt; @@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter *padapter, =
u8 *pStrBuf, u32 bufSize)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 leftSize;<br>
&gt;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((NULL =3D=3D pStrBuf) || (0 =3D=3D bufSize))<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pStrBuf || (0 =3D=3D bufSize))<br>
<br>
It&#39;s another issue, so not for this patch, but the kernel prefers<br>
constants on the right.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I couldn&#39;t understand. Should I resend this patch as well? Or it s=
hould not be part of this patchset?=C2=A0</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Constants on the right means &quot;pStrBuf =3D=3D NULL&qu=
ot; instead of &quot;NULL =3D=3D pStrBuf&quot;, right? In that case, if I&#=
39;m removing the comparison itself, I guess it is okay. Please correct me =
if I&#39;m mistaken.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Tha=
nk you.</div><div dir=3D"auto"><br></div><div dir=3D"auto">- Himadri</div><=
div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pstr =3D pStrBuf;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging=
/rtl8723bs/hal/hal_com.c<br>
&gt; index 7f8ec55b08f1..b97b53c34449 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/hal/hal_com.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/hal/hal_com.c<br>
&gt; @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (is_primary_adapter(padapter)) {=C2=A0 =
=C2=A0 =C2=A0/* if (padapter-&gt;isprimary) */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;hal=
_data_sz =3D sizeof(struct hal_com_data);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&gt;Hal=
Data =3D vzalloc(padapter-&gt;hal_data_sz);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;HalD=
ata =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!padapter-&gt;Hal=
Data) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0DBG_8192C(&quot;cannot alloc memory for HAL DATA\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 =
*buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 trigger;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (buf =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0trigger =3D rtw_read8(adapter, REG_C2HEVT_CL=
EAR);<br>
&gt; @@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *=
padapter, struct sta_info *pst<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 i, rf_type, limit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 tx_ra_bitmap;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tx_ra_bitmap =3D 0;<br>
&gt; @@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4=
bVal, u32 *pu4bMove)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *szScan =3D szStr;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 Check input parameter. */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (szStr =3D=3D NULL || pu4bVal =3D=3D NULL || p=
u4bMove =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!szStr || !pu4bVal || !pu4bMove) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;G=
etHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu=
4bMove: %p\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 szStr, pu4bVal, pu4bMove);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return false;<br=
>
&gt; --<br>
&gt; 2.17.1<br>
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
gle.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161317440.2487%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903161317440.2487%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--000000000000c507ab0584354d8e--

